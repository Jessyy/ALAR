/*
 *	Any Last Administrative Requests - i_formatex.inc
 *		Formatex handling
 *	
 *	Based on formatex by Slice from http://forum.sa-mp.com/showthread.php?t=313488
 *		@released: 26/01/2012
 *	
 *	Worth mentioning is this is a superset of format, meaning it has exactly all
 *		the features of format and those behave like always (the only exception is
 *		it's a bit friendlier to packed strings, though %s still doesn't support it).
 *		It actually uses the original native "format" function to do the heavy lifting.
 *	
 *	Copyright (c) 2015 [SNIP][zL]Jessyy
 */

#if defined _inc_formatex_included
	#endinput
#endif
#define _inc_formatex_included

#include <a_samp>

/*
	native _@_i_formatex_inc@_();
	native InitializeFormatSpecifiers();
	
	native formatex(szOutput[], iLength = sizeof(szOutput), const szFormatString[], {FORMAT_TAGS}:...);
	native printfex(const szFormatString[], {FORMAT_TAGS}:...);
*/

/*
 *  
 */
#define FORMAT_BUFFER_SIZE					(2048)
#define FORMAT_PRINT_BUFFER_SIZE			(512)
#define FORMAT_CUSTOM_SPEC_BUFFER_SIZE		(512)

/*
 *  
 */
#if defined FORMAT_EXTRA_TAGS
	#define FORMAT_TAGS  _, PlayerText3D, Text, Text3D, Menu, DB, DBResult, File, Float, FORMAT_EXTRA_TAGS
#else
	#define FORMAT_TAGS  _, PlayerText3D, Text, Text3D, Menu, DB, DBResult, File, Float
#endif

/*
 *  FormatSpecifier<'C'>(output[], color)			i_formatex.inc
 *  FormatSpecifier<'P'>(output[], playerid)		i_players.inc
 *  FormatSpecifier<'W'>(output[], weaponid)		i_weapons.inc
 *  FormatSpecifier<'V'>(output[], modelid)			i_vehicles.inc
 *  FormatSpecifier<'Z'>(output[], zoneid)			i_zones.inc
 */
#define FormatSpecifier<'%1'>(%2[%3],%4)  FMAT@1:F@%1(%2[FORMAT_CUSTOM_SPEC_BUFFER_SIZE],FMAT@2:___unused,%4)
#define FMAT@2:___unused,%1[              %1[
#define FMAT@1:%1(%2)                     forward %1(%2); public %1(%2)

/*
 *  
 */
static stock gs_CustomFormatFunctions[127] = {-1, ...},
	bool:gs_bIsInitialized = false;

/*
 *  
 */
forward _@_i_formatex_inc@_();
public _@_i_formatex_inc@_()
{
	new szOutput[1];
	format(szOutput, 0, "");
}

/*
 *  
 */
static stock InitializeFormatSpecifiers()
{
	new	szFunctionName[4 char] = !"F@_",
		iIndex,
		iFunctionAddress;
	
	gs_bIsInitialized = true;
	
	for(new c = '@'; c <= 'z'; c++) {
		// Skip the chars that can't be used in function names
		if(c == 'Z' + 1) {
			c = '_';
		}
		else if(c == '_' + 1) {
			c = 'a';
		}
		szFunctionName{2} = c;
		
		// Get the function's address if it exists
		if(-1 != (iIndex = funcidx(szFunctionName))) {
			#emit LCTRL        1
			#emit NEG
			#emit MOVE.alt
			#emit ADD.C        32
			#emit STOR.S.pri   iFunctionAddress
			#emit LREF.S.pri   iFunctionAddress
			#emit ADD
			#emit LOAD.S.alt   iIndex
			#emit SHL.C.alt    3
			#emit ADD
			#emit STOR.S.pri   iFunctionAddress
			#emit LREF.S.pri   iFunctionAddress
			#emit STOR.S.pri   iFunctionAddress
			
			gs_CustomFormatFunctions[c] = iFunctionAddress;
		}
	}
}

/*
 *  formatex(buffer, sizeof(buffer), "You were given a %W by %P", weaponid, playerid);
 */
stock formatex(szOutput[], iLength = sizeof(szOutput), const szFormatString[], {FORMAT_TAGS}:...)
{
	static s_szBuffer[FORMAT_BUFFER_SIZE], bool:s_bIsInCustomSpecifier = false;
	
	// If formatex is called inside a custom specifier, the original "format" will be used
	// to prevent having s_szBuffer overwritten. Specifiers shouldn't depend on other specifiers, anyway.
	if(s_bIsInCustomSpecifier) {
		new iNumArgs,
			i;
		
		#emit LOAD.S.pri  8
		#emit STOR.S.pri  iNumArgs
		#emit SHR.C.pri   2
		#emit STOR.S.pri  i
		
		while(--i >= 0) {
			#emit LOAD.S.pri  i
			#emit SHL.C.pri   2
			#emit ADD.C       12
			#emit MOVE.alt
			#emit LCTRL       5
			#emit ADD
			#emit LOAD.I
			#emit PUSH.pri
		}
		
		#emit LOAD.S.pri  iNumArgs
		#emit PUSH.pri
		#emit MOVE.alt
		#emit SYSREQ.C    format
		#emit CONST.pri   4
		#emit ADD
		#emit MOVE.alt
		#emit LCTRL       4
		#emit ADD
		#emit SCTRL       4
	}
	else {
		new iPos = -1,
			iArg = 12 + (3 * 4),
			iArgCount,
			iAddress,
			iArgValue,
			aiArgs[128],
			i;
		
		if(!gs_bIsInitialized) {
			InitializeFormatSpecifiers();
		}
		
		iLength = min(FORMAT_BUFFER_SIZE, iLength);
		
		s_szBuffer[0] = 0;
		
		strunpack(s_szBuffer, szFormatString);
		
		while(-1 != (iPos = strfind(s_szBuffer, !"%", _, ++iPos))) {
			while(s_szBuffer[++iPos]) {
				// Look for custom formats
				if(1 <= s_szBuffer[iPos] < sizeof(gs_CustomFormatFunctions) && gs_CustomFormatFunctions[s_szBuffer[iPos]] != -1) {
					new iFunc = gs_CustomFormatFunctions[s_szBuffer[iPos]];
					
					static s_szCustomFormatBuffer[FORMAT_CUSTOM_SPEC_BUFFER_SIZE];
					
					strdel(s_szBuffer, iPos - 1, iPos + 1);
					
					s_szCustomFormatBuffer[0] = 0;
					
					#emit LCTRL       5
					#emit LOAD.S.alt  iArg
					#emit ADD
					#emit LOAD.I
					#emit MOVE.alt
					#emit LOAD.I
					#emit PUSH.pri
					#emit PUSH.alt
					
					iArg += 4;
					
					s_bIsInCustomSpecifier = true;
					
					#emit PUSH.C      s_szCustomFormatBuffer
					#emit PUSH.C      12
					#emit LCTRL       6
					#emit ADD.C       28
					#emit PUSH.pri
					#emit LOAD.S.pri  iFunc
					#emit SCTRL       6
					
					s_bIsInCustomSpecifier = false;
					
					strins(s_szBuffer, s_szCustomFormatBuffer, iPos - 1);
					
					break;
				}
				
				switch (s_szBuffer[iPos]) {
					// Handled by the original format function
					case '*', 'i', 'd', 'x', 'h', 'c', 's', 'f', 'b': {
						// Get the argument address and save it for later
						#emit LCTRL        5
						#emit LOAD.S.alt  iArg
						#emit ADD
						#emit LOAD.I
						#emit STOR.S.pri  iAddress
						#emit MOVE.pri
						#emit ADD.C       4
						#emit STOR.S.pri  iArg
						
						aiArgs[iArgCount++] = iAddress;
						
						if(s_szBuffer[iPos] == '*') {
							continue;
						}
						
						break;
					}
					
					// Unsigned numbers
					case 'u': {
						new szBuffer[11];
						
						#emit LCTRL       5
						#emit LOAD.S.alt  iArg
						#emit ADD
						#emit LOAD.I
						#emit LOAD.I
						#emit STOR.S.pri  iArgValue
						#emit MOVE.pri
						#emit ADD.C       4
						#emit STOR.S.pri  iArg
						
						strdel(s_szBuffer, iPos - 1, iPos + 1);
						
						if(!iArgValue) {
							strins(s_szBuffer, "0", iPos - 1);
						}
						else {
							new j = sizeof(szBuffer) - 1;
							
							while(iArgValue) {
								// szBuffer[--i]
								#emit ADDR.alt    szBuffer  // alt = *szBuffer
								#emit LOAD.S.pri  j         // pri = i
								#emit DEC.pri               // pri -= 1
								#emit STOR.S.pri  j         // i = pri
								#emit IDXADDR               // pri = alt + i * 4
								#emit PUSH.pri              // Store pri for later
								
								// Now do an unsigned divide on uValue then use both the quotient and remainder!
								#emit LOAD.S.pri  iArgValue // pri = uValue
								#emit CONST.alt   10
								#emit UDIV                  // pri = uValue / 10; alt = uValue % 10
								#emit STOR.S.pri  iArgValue // uValue = pri
								#emit CONST.pri   '0'
								#emit ADD                   // pri = '0' + (uValue % 10)
								#emit POP.alt               // alt = szBuffer[i]
								#emit STOR.I                // szBuffer[i] = pri
							}
							
							strins(s_szBuffer, szBuffer[j], iPos - 1);
						}
					}
					
					case '0' .. '9', ' ', '.', '-': {
						continue;
					}
					
					case '%': {
						break;
					}
					
					default: {
						break;
					}
				}
			}
		}
		
		i = iArgCount;
		
		// Push the arguments we stored above
		while(--i >= 0) {
			#emit ADDR.alt    aiArgs
			#emit LOAD.S.pri  i
			#emit LIDX
			#emit PUSH.pri
			#emit STOR.S.pri iAddress
		}
		
		// New format specifier
		#emit PUSH.C     s_szBuffer
		
		// Max length
		#emit PUSH.S     iLength
		
		// Output string
		#emit PUSH.S     szOutput
		
		// Argument count
		#emit LOAD.S.pri iArgCount
		#emit SHL.C.pri  2
		#emit ADD.C      12
		#emit PUSH.pri
		
		// Save the argument count for later
		#emit MOVE.alt
		
		// Call format (duh)
		#emit SYSREQ.C   format
		
		// Add 4 to the argument count
		#emit CONST.pri  4
		#emit ADD
		#emit MOVE.alt
		
		// Remove <argument count> from the stack
		#emit LCTRL      4
		#emit ADD
		#emit SCTRL      4
	}
	
	// Return in case anyone uses it
	return 1;
}

/*
 *  printfex("You were given a %W by %P", weaponid, playerid);
 */
stock printfex(const szFormatString[], {FORMAT_TAGS}:...)
{
	const iBufferSize = FORMAT_PRINT_BUFFER_SIZE;
	static s_szBuffer[FORMAT_PRINT_BUFFER_SIZE];
	
	new iNumArgs = numargs(),
		i = iNumArgs - 1;
	
	while(--i >= 0) {
		#emit LOAD.S.pri  i
		#emit SHL.C.pri   2
		#emit ADD.C       16
		#emit MOVE.alt
		#emit LCTRL       5
		#emit ADD
		#emit LOAD.I
		#emit PUSH.pri
	}
	
	#emit PUSH.S      szFormatString
	#emit PUSH.C      iBufferSize
	#emit PUSH.C      s_szBuffer
	#emit LOAD.S.pri  iNumArgs
	#emit SHL.C.pri   2
	#emit ADD.C       8
	#emit PUSH.pri
	#emit LCTRL       6
	#emit ADD.C       28
	#emit PUSH.pri
	#emit CONST.pri   formatex
	#emit SCTRL       6
	
	print(s_szBuffer);
}

/*
 *  Inline colour
 */
FormatSpecifier<'C'>(output[], color)
{
	format(output, sizeof(output), "{%06x}", color >>> 8);
}
