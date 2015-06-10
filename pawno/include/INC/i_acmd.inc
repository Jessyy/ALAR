/**
 *	Any Last Administrative Requests - i_acmd.inc
 *		Command handling
 *	
 *	based on zcmd v0.3.1 by ZeeX and y_commands by Y_Less
 *		@released: 31/10/2009
 *	
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_acmd_included
	#endinput
#endif
#define _inc_acmd_included

#include <a_samp>

/**
	native ACMD_CommandProcess(playerid, const cmdtext[], bool:help = false)
	native ACMD_CommandHelp(const playerid, const command[]);
*/

#include "i_utils"

/**
 *  Definitions
 */
#define MAX_COMMAND_LENGTH		(32)	// The maximum length of a command string
#define hcmd:%1->%2;			acmd:%2(const playerid, const params[], const bool:help) { return acmd_%1(playerid, params, help); }
#define acmd:%1(%2)				forward acmd_%1(%2); public acmd_%1(%2)

/**
 *  Basic command flags
 */
enum E_COMMFLAG (<<=1) {
	E_COMMFLAG_OPCR = 1,	// On player command received
	E_COMMFLAG_OPCP,		// On player command performed
};

/**
 *  Variables
 */
static stock E_COMMFLAG:gCommandFlags = E_COMMFLAG:0;

#if defined FILTERSCRIPT
public OnFilterScriptInit()
#else
public OnGameModeInit()
#endif

{
	if(funcidx("OnPlayerCommandReceived") != -1) {
		gCommandFlags |= E_COMMFLAG_OPCR;
	}
	if(funcidx("OnPlayerCommandPerformed") != -1) {
		gCommandFlags |= E_COMMFLAG_OPCP;
	}
	
	#if defined FILTERSCRIPT
		#if defined ACMD_OnFilterScriptInit
			return ACMD_OnFilterScriptInit();
		#else
			return 1;
		#endif
	#else
		#if defined ACMD_OnGameModeInit
			return ACMD_OnGameModeInit();
		#else
			return 1;
		#endif
	#endif
}

#if defined FILTERSCRIPT
	#if defined _ALS_OnFilterScriptInit
		#undef OnFilterScriptInit
	#else
		#define _ALS_OnFilterScriptInit
	#endif
	#define OnFilterScriptInit ACMD_OnFilterScriptInit
	
	#if defined ACMD_OnFilterScriptInit
		forward ACMD_OnFilterScriptInit();
	#endif
#else
	#if defined _ALS_OnGameModeInit
		#undef OnGameModeInit
	#else
		#define _ALS_OnGameModeInit
	#endif
	#define OnGameModeInit ACMD_OnGameModeInit
	
	#if defined ACMD_OnGameModeInit
		forward ACMD_OnGameModeInit();
	#endif
#endif

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(isnull(cmdtext)) {
		return 1;
	}
	
	if(gCommandFlags & E_COMMFLAG_OPCR) {
		new ret = CallRemoteFunction("OnPlayerCommandReceived", "is", playerid, cmdtext);
		switch(ret)
		{
			case  0: return 1;
			case -1: return 0;
		}
	}
	
	if(gCommandFlags & E_COMMFLAG_OPCP) {
		new ret = ACMD_CommandProcess(playerid, cmdtext);
		switch(CallRemoteFunction("OnPlayerCommandPerformed", "isi", playerid, cmdtext, ret))
		{
			case 1: return 1;
			case 0: return 0;
		}
		return ret;
	}
	else {
		new ret = ACMD_CommandProcess(playerid, cmdtext);
		return ret;
	}
}
#if defined _ALS_OnPlayerCommandText
	#undef OnPlayerCommandText
#else
	#define _ALS_OnPlayerCommandText
#endif
#define OnPlayerCommandText ACMD_OnPlayerCommandText

#if defined ACMD_OnPlayerCommandText
	forward ACMD_OnPlayerCommandText(playerid, cmdtext[]);
#endif

/**
 *  Forwards for initial command callbacks
 */
forward OnPlayerCommandReceived(playerid, cmdtext[]);
forward OnPlayerCommandPerformed(playerid, cmdtext[], success);

/**
 *  Called from OnPlayerCommandText to process entered commands
 *  @param	playerid	-
 *  @param	command		-
 *  @param	help		-
 *  @return	-
 */
stock ACMD_CommandProcess(playerid, const cmdtext[], bool:help = false)
{
	new function[MAX_COMMAND_LENGTH], index;
	while(cmdtext[++index] > ' ') {
		function[index - 1] = tolower(cmdtext[index]);	// cmdtext[pos] |= 0x20;
	}
	while(cmdtext[index] == ' ') {
		index += 1;
	}
	
	format(function, sizeof(function), "acmd_%s", function);
	
	if(cmdtext[index]) {
		return CallLocalFunction(function, "isi", playerid, cmdtext[index], help);
	}
	else {
		return CallLocalFunction(function, "isi", playerid, "\1", help);
	}
}

/**
 *  Call a function to have it show it's usage
 *  @param	playerid	The playerid to send the info to
 *  @param	command		The command name
 *  @return	what the function returns if it exists, otherwise 0
 */
stock ACMD_CommandHelp(playerid, const command[])
{
	new function[MAX_COMMAND_LENGTH] = "acmd_";
	for(new pos = 5; pos < sizeof(function) - 1 && command[pos - 5] > ' '; pos++) {
		function[pos] = tolower(command[pos - 5]);	// funcname[pos] = command[pos - 5] | 0x20;
	}
	return CallLocalFunction(function, "isi", playerid, "\1", true);
}
