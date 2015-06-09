/*
 *	Any Last Administrative Requests - Acmd.inc
 *		Command handling
 *
 *	Based on zcmd 0.2.3 by ZeeX
 *
 *	Copyright © 2009 [DRuG]Dabombber
 *
 *	This file is part of Alar.
 *
 * 	Alar is free software: you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License as published by
 *	the Free Software Foundation, either version 3 of the License, or
 *	(at your option) any later version.
 *
 * 	Alar is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *	GNU General Public License for more details.
 *
 *	You should have received a copy of the GNU General Public License
 *	along with Alar.  If not, see <http://www.gnu.org/licenses/>.
 */


#if defined _alar_acmd_included
	#endinput
#endif
#define _alar_acmd_included

/*
	native ACMD_FunctionHelp(const playerid, const command[]);
*/

#include <a_samp>

#if !defined MAX_COMM_FUNC_NAME
	#define MAX_COMM_FUNC_NAME (32)
#endif

#define acmd:%1(%2,%3,%4)				\
			forward acmd_%1(%2,%3,%4);	\
			public acmd_%1(%2,%3,%4)

#if !defined isnull
	#define isnull(%1) (((%1[0]) == '\0') || (((%1[0]) == '\1') && ((%1[1]) == '\0')))
#endif

public OnPlayerCommandText(playerid, cmdtext[])
{
    if(ACMD_OnPlayerCommandText(playerid, cmdtext)) {
		return 1;
	}
	new pos,
		funcname[MAX_COMM_FUNC_NAME];
	do { cmdtext[pos] = tolower(cmdtext[pos]); } while(cmdtext[++pos] > ' ');
	if(cmdtext[pos] == '\0') {
		format(funcname, sizeof(funcname), "acmd_%s", cmdtext[1]);
	} else {
		format(funcname, sizeof(funcname), "acmd_%.*s", pos-1, cmdtext[1]);
		while('\0' < cmdtext[++pos] <= ' ') {}
		if(cmdtext[pos]) {
			return CallLocalFunction(funcname, "isi", playerid, cmdtext[pos], false);
		}
	}
	return CallLocalFunction(funcname, "isi", playerid, "\1", false);
}

#if defined _ALS_OnPlayerCommandText
    #undef OnPlayerCommandText
#else
    #define _ALS_OnPlayerCommandText
#endif
#define OnPlayerCommandText ACMD_OnPlayerCommandText
forward ACMD_OnPlayerCommandText(playerid, cmdtext[]);

/**
 *  Call a function to have it show it's usage
 *  @param	playerid	The playerid to send the info to
 *  @param	command		The command name
 *  @return	what the function returns if it exists, otherwise 0
 */
stock ACMD_FunctionHelp(const playerid, const command[])
{
	new funcname[MAX_COMM_FUNC_NAME] = "acmd_";
	for(new pos = 5; pos < sizeof(funcname) - 1 && command[pos - 5] > ' '; pos++) {
		funcname[pos] = tolower(command[pos - 5]);
	}
	return CallLocalFunction(funcname, "isi", playerid, "\1", true);
}