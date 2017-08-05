/*
 *	Any Last Administrative Requests - i_utils.inc
 *		Util Functions
 *	
 *	CallLocalFunctionEx originally by oscar-broman from PAWN-Boilerplate
 *	
 *	Copyright (c) 2015 [SNIP][zL]Jessyy
 */

#if defined _inc_utils_included
	#endinput
#endif
#define _inc_utils_included

#include <a_samp>

/*
 *  
 */
#define MAX_INPUT		(128)
#define MAX_STRING		(256)

#define MAX_IP			(16)
#define MAX_TIMESTAMP	(30)

/*
 *  Define many tag types for function calls
 */
#if !defined GLOBAL_TAG_TYPES
	#define GLOBAL_TAG_TYPES	{_,Bit,File,Float,Menu,PlayerText,Text,Text3D}
#endif

/*
 *  
 */
#define cellchars	(cellbits/charbits)

/*
 *  Checks if a string is null
 */
#define isnull(%1)	((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))

/*
 *  Convert RGB color code to HEX (Hexadecimal)
 *  
 *  MK_RGB(255, 238, 187)			// output: "0xFFEEBBAA"
 *  MK_RGBA(255, 238, 187, 0xFF)	// output: "0xFFEEBBFF"
 */
#define MK_RGB(%0,%1,%2)		((%0)<<24|(%1)<<16|(%2)<<8|0xAA)
#define MK_RGBA(%0,%1,%2,%3)	((%0)<<24|(%1)<<16|(%2)<<8|(%3))

/*
 *  Detecting holding / pressing / releasing a key
 *  
 *  HOLDING(KEY_FIRE)				// Holding one key
 *  HOLDING(KEY_FIRE | KEY_CROUCH)	// Holding multiple keys
 */
#define HOLDING(%0)		((newkeys & (%0)) == (%0))
#define PRESSED(%0)		(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define RELEASED(%0)	(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))

/*
 *
 */
#if !defined TRUE
new stock bool:TRUE = true;
#endif

/*
 *
 */
#if !defined FALSE
new stock bool:FALSE = false;
#endif

/*
 *
 */
#if !defined NULL
new stock NULL[2] = {1, 0};
#endif

/*
 *
 */
#define FLOAT_POS_INFINITY		(Float:0x7F800000)
#define FLOAT_NAN				(Float:0x7FFFFFFF)
#define FLOAT_NEG_INFINITY		(Float:0xFF800000)

/*
 *  String to unpack. Mainly used for debugging
 */
stock unpack(const str[])
{
	new ret[130] = {0};
	if(strlen(str) <= 130) {
		strunpack(ret, str);
	}
	return ret;
}

/*
 *  Improved version of CallLocalFunction. Supports strings and arrays better.
 *  Variables can be passed by reference (format specifier "v").
 *  
 *  Format specifiers:
 *  	d - inserts an integer (whole) number
 *  	i - inserts an integer (whole) number
 *  	f - inserts a floating point number
 *  	x - inserts a number in hexadecimal notation
 *  	c - inserts a single character
 *  Format specifiers passed by reference:
 *  	v - inserts a variables passed by reference
 *  	s - inserts a string passed by reference
 *  	a - inserts a array passed by reference
 */
stock CallLocalFunctionEx(const function[], const fmat[] = "", GLOBAL_TAG_TYPES:...) {
	new
		func,
		idx,
		temp,
		args = strlen(fmat),
		arg = args,
		bool:packed_format = ispacked(fmat)
	;
	
	// Get the function's address
	if(-1 != (idx = funcidx(function))) {
		// Load the offset to DAT from the prefix
		#emit LCTRL        1
		
		// Invert it so we have the offset to the prefix from DAT
		#emit NEG
		
		// Copy it to alt for use later
		#emit MOVE.alt
		
		// Add 32 to jump to the offset containing the public function's table
		#emit ADD.C        32
		
		// Read the value there; must be done using LREF because
		// it's outside of the DAT section
		#emit STOR.S.pri   temp
		#emit LREF.S.pri   temp
		
		// Add the value we just loaded to the prefix (that we stored in alt)
		#emit ADD
		
		// Add index * 8 (each entry contains 2 cells - a pointer to the function's name
		// and a pointer to the function itself, relative to COD).
		#emit LOAD.S.alt   idx
		#emit SHL.C.alt    3
		
		// Add that to the offset
		#emit ADD
		
		// Now get the address it's pointing to. This seems to only work
		// using LREF (as opposed to LOAD.I, for example).
		#emit STOR.S.pri   temp
		#emit LREF.S.pri   temp
		
		// Now store it
		#emit STOR.S.pri   func
	}
	else {
		return 0;
	}
	
	while(--arg >= 0) {
		switch(packed_format ? fmat{arg} : fmat[arg]) {
			// String, array, and variables passed by reference
			case 's', 'a', 'v': {
				// Load the frame pointer
				#emit LCTRL 5
				
				// Add 12 + (2 + arg) * 4 to get the argument we want
				#emit LOAD.S.alt  arg
				#emit SHL.C.alt   2
				#emit ADD
				#emit ADD.C       20
				
				// Load the address there
				#emit LOAD.I
				
				// Push that address
				#emit PUSH.pri
			}
			
			// Single-cell arguments passed by value; I used "default"
			// here because it seems that's what CallLocalFunction does.
			default: {
				// Load the frame pointer
				#emit LCTRL 5
				
				// Add 12 + (2 + arg) * 4 to get the argument we want
				#emit LOAD.S.alt  arg
				#emit SHL.C.alt   2
				#emit ADD
				#emit ADD.C       20
				
				// Load the address there
				#emit LOAD.I
				
				// Load the value that address points to
				#emit LOAD.I
				
				// Push that value
				#emit PUSH.pri
			}
		}
	}
	
	// Push args * 4
	#emit LOAD.S.pri  args
	#emit SHL.C.pri   2
	#emit PUSH.pri
	
	// Push the return address
	#emit LCTRL       6
	#emit ADD.C       28
	#emit PUSH.pri
	
	// Call the function
	#emit LOAD.S.pri  func
	#emit SCTRL       6
	
	// Restore the stack
	#emit STACK       24
	
	// Return (pri is the return value, which comes from func)
	#emit RETN
	
	// Never actually happens
	return 0;
}
