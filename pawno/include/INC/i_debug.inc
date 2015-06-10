/**
 *	Any Last Administrative Requests - i_debug.inc
 *		Debug setup
 *	
 *	Based on y_debug v1.0 by Y_Less from YSI-3.1
 *		@released: 06/08/2010
 *	
 *	Copyright (c) 2015 [SNIP][zL]Jessyy
 */

#if defined _inc_debug_included || defined _inc_y_debug
	#endinput
#endif
#define _inc_debug_included

#include <a_samp>

/**
	native _@_y_funcinc_@_();
	native Debug_Print_0(str[], {Float,_}:...);
*/

#if !defined INC_DEBUG
	#define INC_DEBUG	0
#endif

#if !defined YSI_DEBUG
	#define YSI_DEBUG	false
#endif

/**
 *  General debug levels:
 *  	0 - No debug information
 *  	1 - Callbacks and timers
 *  	2 - Remote functions
 *  	3 - Stock functions
 *  	4 - Static functions
 *  	5 - Code
 *  	6 - Loops
 *  	7 - Extra loop code
 */
#define C:%1(%2);	Debug_Code_%1(%2);

/**
 *  Definitions:
 *  	P:<0-7> - Print a message
 *  	P:C - Run debug code
 *  	P:I - Print an info message
 *  	P:W - Print an warning message
 *  	P:E - Print an error message
 *  	P:F - Print an fatal error message
 *  	P:Y - Print an YSI debug message
 */
#define P:%1(%2);	Debug_Print_%1(%2);

/**
 *  Code is not a variable, it's a code chunk and may be written as so. The 
 *  code must all be on one line to avoid errors. This isn't really a function
 *  as the first parameter is part of the name.
 *  
 *  Debug_Code:
 *  	Debug_Code_1(if(bla == 2) { bla++; printf("%d", bla); });
 *  
 *  Debug_Print:
 *  	Debug_Print_1("variables: %d, %d", i, j);
 */

#if INC_DEBUG >= 1
	#define Debug_Code_1(%1);	%1
	#define Debug_Print_1(%1);	printf(%1);
#else
	#define Debug_Code_1(%1);
	#define Debug_Print_1(%1);
#endif

#if INC_DEBUG >= 2
	#define Debug_Code_2(%1);	%1
	#define Debug_Print_2(%1);	printf(%1);
#else
	#define Debug_Code_2(%1);
	#define Debug_Print_2(%1);
#endif

#if INC_DEBUG >= 3
	#define Debug_Code_3(%1);	%1
	#define Debug_Print_3(%1);	printf(%1);
#else
	#define Debug_Code_3(%1);
	#define Debug_Print_3(%1);
#endif

#if INC_DEBUG >= 4
	#define Debug_Code_4(%1);	%1
	#define Debug_Print_4(%1);	printf(%1);
#else
	#define Debug_Code_4(%1);
	#define Debug_Print_4(%1);
#endif

#if INC_DEBUG >= 5
	#define Debug_Code_5(%1);	%1
	#define Debug_Print_5(%1);	printf(%1);
#else
	#define Debug_Code_5(%1);
	#define Debug_Print_5(%1);
#endif

#if INC_DEBUG >= 6
	#define Debug_Code_6(%1);	%1
	#define Debug_Print_6(%1);	printf(%1);
#else
	#define Debug_Code_6(%1);
	#define Debug_Print_6(%1);
#endif

#if INC_DEBUG >= 7
	#define Debug_Code_7(%1);	%1
	#define Debug_Print_7(%1);	printf(%1);
#else
	#define Debug_Code_7(%1);
	#define Debug_Print_7(%1);
#endif

#define Debug_Print_C(%1);	Debug_Code_1(%1);

#define Debug_Print_I(%1);	Debug_Print_0("*** Info: " #%1);

#define Debug_Print_W(%1);	Debug_Print_0("\7*** Warning: " #%1);

#define Debug_Print_E(%1);	Debug_Print_0("\7\7\7*** Error: " #%1);

#define Debug_Print_F(%1);	Debug_Print_0("\7\7\7\7\7*** Fatal Error: " #%1);

#if YSI_DEBUG == true
	#define Debug_Print_Y(%1);	Debug_Print_0("[YSI] " #%1);
#else
	#define Debug_Print_Y(%1);
#endif

/**
 *  This function calls any functions used in assembly code in YSI to ensure
 *  that they are included in the native function table.
 */
forward _@_y_funcinc_@_();
public _@_y_funcinc_@_()
{
	printf("");
	new _funcinc_a[1 char];
	strunpack(_funcinc_a, "");
	memcpy("", "", 0, 0, 0);
	format("", 0, "");
	strfind("", "", false, 0);
	strcat(_funcinc_a, "", 0);
	strlen("");
	CallRemoteFunction("", "");
	CallLocalFunction("", "");
	SetTimerEx("", 0, 0, "");
}

stock Debug_Print_0(str[], {Float,_}:...)
{
	// This uses the variable parameter passing method based on code by Zeex.
	// See page 15 of the code optimisations topic.
	new n = (numargs() - 1) * 4;
	if(n) {
		new arg_start, arg_end;
		
		//#emit BREAK
		
		// Load the real address of the last static parameter.  Do this by
		// loading the address of the parameter and then adding the value of
		// [FRM] (frame pointer).
		#emit CONST.alt                 str
		#emit LCTRL                     5
		#emit ADD
		#emit STOR.S.pri                arg_start
		
		// Load the address of the last variable parameter.  Do this by adding
		// the number of variables on the value just loaded.
		#emit LOAD.S.alt                n
		#emit ADD
		#emit STOR.S.pri                arg_end
		
		// Push the variable arguments.  This is done by loading the value of
		// each one in reverse order and pushing them.  I'd love to be able to
		// rewrite this to use the values of pri and alt for comparison, instead
		// of having or constantly reload two variables.
		do {
			#emit LOAD.I
			#emit PUSH.pri
			arg_end -= 4;
			#emit LOAD.S.pri            arg_end
		} while(arg_end > arg_start);
		
		// Push the static parameter.
		#emit PUSH.S                    str
		
		// Now push the number of parameters sent and call the function.
		n += 4;
		#emit PUSH.S                    n
		#emit SYSREQ.C                  printf
		
		// Clear the stack, including the return.
		n += 4;
		#emit LCTRL                     4
		#emit LOAD.S.alt                n
		#emit ADD
		#emit SCTRL                     4
	}
	else {
		print(str);
	}
}
