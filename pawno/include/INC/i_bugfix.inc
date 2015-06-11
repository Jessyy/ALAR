/**
 *	Any Last Administrative Requests - i_bugfix.inc
 *		Fixes for sa-mp bugs
 *	
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_bugfix_included
	#endinput
#endif
#define _inc_bugfix_included

#include <a_samp>

/**
	native bf_db_close(&DB:handle);
	native bf_fclose(&File:handle);
	
	native bf_strval(const string[]);
	native Float:bf_floatstr(const string[]);
	native bf_strins(string[], const substr[], pos, maxlength = sizeof(string));
	
	native bf_Kick(playerid);
	native bf_Ban(playerid);
	
	native bf_GetPVarString(playerid, varname[], string_return[], len);
	native bf_SetPVarString(playerid, varname[], string_value[]);
	native bf_GetVehicleTrailer(vehicleid);
	
	native OnPlayerExitVehicle(playerid, vehicleid);
	
*/

/**
 *  Add tags to the constants below, without changing their values
 *  Store the values in symbolic constants and add tags
 */
const Menu:@INVALID_MENU = Menu:INVALID_MENU;
const Text:@INVALID_TEXT_DRAW = Text:INVALID_TEXT_DRAW;
const Text3D:@INVALID_3DTEXT_ID = Text3D:INVALID_3DTEXT_ID;
const PlayerText3D:@INVALID_PLAYER3DTEXT_ID = PlayerText3D:(0xFFFF);

/**
 *  Undefine the macros then make them refer to the symbolic constants above
 */
#if defined INVALID_MENU
	#undef INVALID_MENU
#endif
#define INVALID_MENU				@INVALID_MENU

#if defined INVALID_TEXT_DRAW
	#undef INVALID_TEXT_DRAW
#endif
#define INVALID_TEXT_DRAW			@INVALID_TEXT_DRAW

#if defined INVALID_3DTEXT_ID
	#undef INVALID_3DTEXT_ID
#endif
#define INVALID_3DTEXT_ID			@INVALID_3DTEXT_ID

#if defined INVALID_PLAYER3DTEXT_ID
	#undef INVALID_PLAYER3DTEXT_ID
#endif
#define INVALID_PLAYER3DTEXT_ID		@INVALID_PLAYER3DTEXT_ID

/**
 *  Close a SQLite database that was opened with db_open
 *  @param	DB:handle	The ID of the database you wish to close
 *  @return	1 on success, otherwise 0
 *
stock bf_db_close(&DB:handle)
{
	new ret = db_close(handle);
	handle = DB:0;
	return ret;
}
#if defined _ALS_db_close
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_db_close
#endif
#define db_close    bf_db_close
*/
/**
 *  Close a File that was opened with fopen
 *  @param	handle	The ID of the file you wish to close
 *  @return	1 on success, otherwise 0
 *  
 *  @fixes	Crashes on an invalid handle
 *
stock bf_fclose(&File:handle)
{
	if(handle) {
		new ret = fclose(handle);
		handle = File:0;
		return ret;
	}
	return 0;
}
#if defined _ALS_fclose
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_fclose
#endif
#define fclose      bf_fclose
*/
/**
 *  Can be used to convert a string to an integer
 *  @param	string[]	The string you want to convert to an integer
 *  @return	The integer value of the string
 *  
 *  @fixes	Returns 0 for large strings
 */
stock bf_strval(const string[])
{
	new val, i, neg = 1;
	if(ispacked(string)) {
		if(string{0} == '-') {
			i = 1;
			neg = -1;
		}
		for( ; i < 20 && string{i} >= '0' && string{i} <= '9'; i++) {
			val = (val * 10) + string{i} - '0';
		}
	}
	else {
		if(string[0] == '-') {
			i = 1;
			neg = -1;
		}
		for( ; i < 20 && string[i] >= '0' && string[i] <= '9'; i++) {
			val = (val * 10) + string[i] - '0';
		}
	}
	return val * neg;
}
#if defined _ALS_strval
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_strval
#endif
#define strval      bf_strval

/**
 *  Can be used to convert a string to an float
 *  @param	string[]	The string you want to convert to an float
 *  @return	The float value of the string
 */
stock Float:bf_floatstr(const string[])
{
	new buf[30];
	if(ispacked(string)) {
		strunpack(buf, string);
	}
	else {
		strcat(buf, string);
	}
	return floatstr(buf);
}
#if defined _ALS_floatstr
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_floatstr
#endif
#define floatstr    bf_floatstr

/**
 *  Strins has buffer overflows
 */

#if !defined isnull
	#define isnull(%1)	((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#endif

#if !defined cellchars
	#define cellchars	(cellbits/charbits)
#endif

/**
 *  Inserts a string into another string, defined by substr and string
 *  @param	string[]	The string you want to insert substr in
 *  @param	substr[]	The string you want to insert into string
 *  @param	pos			The position to start inserting
 *  @param	maxlength	The maximum size to insert
 */
stock bf_strins(string[], const substr[], pos, maxlength = sizeof(string))
{
	if(isnull(substr)) {
		return;
	}
	
	new len = strlen(string),
		sublen = strlen(substr);
	
	if(pos > len) {
		pos = len;
	}
	else if(pos < 0) {
		pos = 0;
	}
	
	if(ispacked(string)) {
		maxlength *= cellchars;
		if(ispacked(substr)) {
			for(new i = len + sublen < maxlength - 1 ? len : maxlength - sublen - 2; i >= pos; i--) {
				string{i + sublen} = string{i};
			}
			for(new i; i < sublen; i++) {
				if(pos + i == maxlength - 1) {
					string{maxlength - 1} = '\0';
					return;
				}
				string{pos + i} = substr{i};
			}
		}
		else {
			for(new i = len + sublen < maxlength - 1 ? len : maxlength - sublen - 2; i >= pos; i--) {
				string{i + sublen} = string{i};
			}
			for(new i; i < sublen; i++) {
				if(pos + i == maxlength - 1) {
					string{maxlength - 1} = '\0';
					return;
				}
				string{pos + i} = substr[i];
			}
		}
	}
	else {
		if(ispacked(substr)) {
			for(new i = len + sublen < maxlength - 1 ? len : maxlength - sublen - 2; i >= pos; i--) {
				string[i + sublen] = string[i];
			}
			for(new i; i < sublen; i++) {
				if(pos + i == maxlength - 1) {
					string[maxlength - 1] = '\0';
					return;
				}
				string[pos + i] = substr{i};
			}
		}
		else {
			for(new i = len + sublen < maxlength - 1 ? len : maxlength - sublen - 2; i >= pos; i--) {
				string[i + sublen] = string[i];
			}
			for(new i; i < sublen; i++) {
				if(pos + i == maxlength - 1) {
					string[maxlength - 1] = '\0';
					return;
				}
				string[pos + i] = substr[i];
			}
		}
	}
}
#if defined _ALS_strins
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_strins
#endif
#define strins      bf_strins

/**
 *  Can be used to kick a player who currently is in your server
 *  @param	playerid	The playerid of the player
 *  
 *  @fixes	Dialogs stuck on screen when a player is kicked
 */
stock bf_Kick(playerid)
{
	ShowPlayerDialog(playerid, -1, DIALOG_STYLE_INPUT, "", "", "", "");
	return Kick(playerid);
}
#if defined _ALS_Kick
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_Kick
#endif
#define Kick        bf_Kick

/**
 *  Can be used to ban a player who currently is in your server
 *  @param	playerid	The playerid of the player
 *  
 *  @fixes	Dialogs stuck on screen when a player is banned
 */
stock bf_Ban(playerid)
{
	ShowPlayerDialog(playerid, -1, DIALOG_STYLE_INPUT, "", "", "", "");
	return Ban(playerid);
}
#if defined _ALS_Ban
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_Ban
#endif
#define Ban         bf_Ban

/**
 *  Can be used to ban a player with a reason who currently is in your server
 *  @param	playerid	The playerid of the player
 *  @param	reason[]	The reason for the ban
 *  
 *  @fixes	Dialogs stuck on screen when a player is banned
 */
stock bf_BanEx(playerid, const reason[])
{
	ShowPlayerDialog(playerid, -1, DIALOG_STYLE_INPUT, "", "", "", "");
	return BanEx(playerid, reason);
}
#if defined _ALS_BanEx
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_BanEx
#endif
#define BanEx       bf_BanEx

/**
 *  PVars crashing when setting to empty strings
 */
stock bf_GetPVarString(playerid, varname[], string_return[], len)
{
	new ret = GetPVarString(playerid, varname, string_return, len);
	if(isnull(string_return)) {
		string_return[0] = '\0';
	}
	return ret;
}
#if defined _ALS_GetPVarString
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_GetPVarString
#endif
#define GetPVarString   bf_GetPVarString

/**
 *  PVars crashing when setting to empty strings
 */
stock bf_SetPVarString(playerid, varname[], string_value[])
{
	if(string_value[0] == '\0') {	//if(!string_value[0]) {
		return SetPVarString(playerid, varname, "\1");
	}
	return SetPVarString(playerid, varname, string_value);
}
#if defined _ALS_SetPVarString
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_SetPVarString
#endif
#define SetPVarString   bf_SetPVarString

/**
 *  GetVehicleTrailer doesn't work for trains
 */
stock bf_GetVehicleTrailer(vehicleid)
{
	new modelid = GetVehicleModel(vehicleid);
	if((modelid == 537 || modelid == 538 || modelid == 570) && GetVehicleModel(vehicleid + 1) == 570) {
		return vehicleid + 1;	// lets just blindly assume this is right
	}
	return GetVehicleTrailer(vehicleid);
}
#if defined _ALS_GetVehicleTrailer
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_GetVehicleTrailer
#endif
#define GetVehicleTrailer   bf_GetVehicleTrailer

/**
 *  Camera gets stuck on trains
 */
public OnPlayerExitVehicle(playerid, vehicleid)
{
	new modelid = GetVehicleModel(vehicleid);
	if(modelid == 449 || modelid == 537 || modelid == 538 || modelid == 569 || modelid == 570 || modelid == 590) {
		SetCameraBehindPlayer(playerid);
	}
	
	#if defined bf_OnPlayerExitVehicle
		return bf_OnPlayerExitVehicle(playerid, vehicleid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerExitVehicle
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerExitVehicle
#endif
#define OnPlayerExitVehicle bf_OnPlayerExitVehicle

#if defined bf_OnPlayerExitVehicle
	forward bf_OnPlayerExitVehicle(playerid, vehicleid);
#endif

/**
 *  Spectate is FUCKED
 */
stock static
	bool:sPlayerBorked[MAX_PLAYERS] = {false, ...},
	sPlayerSpecMode[MAX_PLAYERS] = {SPECTATE_MODE_NORMAL, ...},
	sPlayerSpectating[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...},
	sVehicleSpectating[MAX_PLAYERS] = {INVALID_VEHICLE_ID, ...};

/**
 *  GetPlayerColor returns 0
 *
public OnPlayerConnect(playerid)
{
	static const playerColors[] = {
		0xFF8C13FF, 0xC715FFFF, 0x20B2AAFF, 0xDC143CFF, 0x6495EDFF, 0xf0e68cFF, 0x778899FF, 0xFF1493FF, 0xF4A460FF, 0xEE82EEFF,
		0xFFD720FF, 0x8b4513FF, 0x4949A0FF, 0x148b8bFF, 0x14ff7fFF, 0x556b2fFF, 0x0FD9FAFF, 0x10DC29FF, 0x534081FF, 0x0495CDFF,
		0xEF6CE8FF, 0xBD34DAFF, 0x247C1BFF, 0x0C8E5DFF, 0x635B03FF, 0xCB7ED3FF, 0x65ADEBFF, 0x5C1ACCFF, 0xF2F853FF, 0x11F891FF,
		0x7B39AAFF, 0x53EB10FF, 0x54137DFF, 0x275222FF, 0xF09F5BFF, 0x3D0A4FFF, 0x22F767FF, 0xD63034FF, 0x9A6980FF, 0xDFB935FF,
		0x3793FAFF, 0x90239DFF, 0xE9AB2FFF, 0xAF2FF3FF, 0x057F94FF, 0xB98519FF, 0x388EEAFF, 0x028151FF, 0xA55043FF, 0x0DE018FF,
		0x93AB1CFF, 0x95BAF0FF, 0x369976FF, 0x18F71FFF, 0x4B8987FF, 0x491B9EFF, 0x829DC7FF, 0xBCE635FF, 0xCEA6DFFF, 0x20D4ADFF,
		0x2D74FDFF, 0x3C1C0DFF, 0x12D6D4FF, 0x48C000FF, 0x2A51E2FF, 0xE3AC12FF, 0xFC42A8FF, 0x2FC827FF, 0x1A30BFFF, 0xB740C2FF,
		0x42ACF5FF, 0x2FD9DEFF, 0xFAFB71FF, 0x05D1CDFF, 0xC471BDFF, 0x94436EFF, 0xC1F7ECFF, 0xCE79EEFF, 0xBD1EF2FF, 0x93B7E4FF,
		0x3214AAFF, 0x184D3BFF, 0xAE4B99FF, 0x7E49D7FF, 0x4C436EFF, 0xFA24CCFF, 0xCE76BEFF, 0xA04E0AFF, 0x9F945CFF, 0xDCDE3DFF,
		0x10C9C5FF, 0x70524DFF, 0x0BE472FF, 0x8A2CD7FF, 0x6152C2FF, 0xCF72A9FF, 0xE59338FF, 0xEEDC2DFF, 0xD8C762FF, 0x3FE65CFF
	};
	if(!GetPlayerColor(playerid)) {
		SetPlayerColor(playerid, playerColors[playerid % 100]);
	}
	
	#if defined bf_OnPlayerConnect
		return bf_OnPlayerConnect(playerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerConnect
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect     bf_OnPlayerConnect

#if defined bf_OnPlayerConnect
	forward bf_OnPlayerConnect(playerid);
#endif
*/
/**
 *
 *
public OnPlayerDisconnect(playerid, reason)
{
	sPlayerSpecMode[playerid] = SPECTATE_MODE_NORMAL;
	sPlayerSpectating[playerid] = INVALID_PLAYER_ID;
	sVehicleSpectating[playerid] = INVALID_VEHICLE_ID;
	
	#if defined bf_OnPlayerDisconnect
		return bf_OnPlayerDisconnect(playerid, reason);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerDisconnect
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerDisconnect
#endif
#define OnPlayerDisconnect      bf_OnPlayerDisconnect

#if defined bf_OnPlayerDisconnect
	forward bf_OnPlayerDisconnect(playerid, reason);
#endif
*/
/**
 *
 */
public OnPlayerStreamIn(playerid, forplayerid)
{
	if(sPlayerSpectating[forplayerid] == playerid) {
		PlayerSpectatePlayer(forplayerid, playerid, sPlayerSpecMode[forplayerid]);
	}
	
	#if defined bf_OnPlayerStreamIn
		return bf_OnPlayerStreamIn(playerid, forplayerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerStreamIn
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerStreamIn
#endif
#define OnPlayerStreamIn    bf_OnPlayerStreamIn

#if defined bf_OnPlayerStreamIn
	forward bf_OnPlayerStreamIn(playerid, forplayerid);
#endif

/**
 *
 */
public OnPlayerStreamOut(playerid, forplayerid)
{
	if(sPlayerSpectating[forplayerid] == playerid) {
		PlayerSpectatePlayer(forplayerid, playerid, sPlayerSpecMode[forplayerid]);
	}
	
	#if defined bf_OnPlayerStreamOut
		return bf_OnPlayerStreamOut(playerid, forplayerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerStreamOut
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerStreamOut
#endif
#define OnPlayerStreamOut   bf_OnPlayerStreamOut

#if defined bf_OnPlayerStreamOut
	forward bf_OnPlayerStreamOut(playerid, forplayerid);
#endif

/**
 *
 */
public OnVehicleStreamIn(vehicleid, forplayerid)
{
	if(sVehicleSpectating[forplayerid] == vehicleid) {
		PlayerSpectateVehicle(forplayerid, vehicleid, sPlayerSpecMode[forplayerid]);
	}
	
	#if defined bf_OnVehicleStreamIn
		return bf_OnVehicleStreamIn(vehicleid, forplayerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnVehicleStreamIn
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnVehicleStreamIn
#endif
#define OnVehicleStreamIn   bf_OnVehicleStreamIn

#if defined bf_OnVehicleStreamIn
	forward bf_OnVehicleStreamIn(vehicleid, forplayerid);
#endif

/**
 *
 */
public OnVehicleStreamOut(vehicleid, forplayerid)
{
	if(sVehicleSpectating[forplayerid] == vehicleid) {
		PlayerSpectateVehicle(forplayerid, vehicleid, sPlayerSpecMode[forplayerid]);
	}
	
	#if defined bf_OnVehicleStreamOut
		return bf_OnVehicleStreamOut(vehicleid, forplayerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnVehicleStreamOut
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnVehicleStreamOut
#endif
#define OnVehicleStreamOut  bf_OnVehicleStreamOut

#if defined bf_OnVehicleStreamOut
	forward bf_OnVehicleStreamOut(vehicleid, forplayerid);
#endif

/**
 *
 */
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(sPlayerBorked[playerid]) {
		sPlayerBorked[playerid] = false;
		
		#if defined bf_OnPlayerStateChange
			return bf_OnPlayerStateChange(playerid, newstate, PLAYER_STATE_NONE);
		#else
			return 1;
		#endif
	}
	else if(sPlayerSpectating[playerid] != INVALID_PLAYER_ID || sVehicleSpectating[playerid] != INVALID_VEHICLE_ID) {
		if(newstate == PLAYER_STATE_SPAWNED) {
			sPlayerSpectating[playerid] = INVALID_PLAYER_ID;
			sVehicleSpectating[playerid] = INVALID_VEHICLE_ID;
			sPlayerSpecMode[playerid] = SPECTATE_MODE_NORMAL;
			
			#if defined bf_OnPlayerStateChange
				return bf_OnPlayerStateChange(playerid, PLAYER_STATE_SPAWNED, PLAYER_STATE_SPECTATING);
			#else
				return 1;
			#endif
		}
		for(new i, j = GetMaxPlayers(); i < j; i++) {
			if(sPlayerSpectating[i] == playerid) {
				PlayerSpectatePlayer(i, playerid, sPlayerSpecMode[i]);
			}
		}
		return 1;
	}
	
	#if defined bf_OnPlayerStateChange
		return bf_OnPlayerStateChange(playerid, newstate, oldstate);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerStateChange
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerStateChange
#endif
#define OnPlayerStateChange bf_OnPlayerStateChange

#if defined bf_OnPlayerStateChange
	forward bf_OnPlayerStateChange(playerid, newstate, oldstate);
#endif

/**
 *
 */
public OnPlayerRequestClass(playerid, classid)
{
	if(GetPlayerState(playerid) == PLAYER_STATE_SPECTATING) {
		sPlayerBorked[playerid] = true;
		
		#if defined bf_OnPlayerStateChange
			bf_OnPlayerStateChange(playerid, PLAYER_STATE_NONE, PLAYER_STATE_SPECTATING);
		#endif
	}
	
	sPlayerSpecMode[playerid] = SPECTATE_MODE_NORMAL;
	sPlayerSpectating[playerid] = INVALID_PLAYER_ID;
	sVehicleSpectating[playerid] = INVALID_VEHICLE_ID;
	
	#if defined bf_OnPlayerRequestClass
		return bf_OnPlayerRequestClass(playerid, classid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerRequestClass
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_OnPlayerRequestClass
#endif
#define OnPlayerRequestClass    bf_OnPlayerRequestClass

#if defined bf_OnPlayerRequestClass
	forward bf_OnPlayerRequestClass(playerid, classid);
#endif

/**
 *
 */
stock bf_PlayerSpectatePlayer(playerid, targetplayerid, mode = SPECTATE_MODE_NORMAL)
{
	sPlayerSpecMode[playerid] = mode;
	sPlayerSpectating[playerid] = targetplayerid;
	sVehicleSpectating[playerid] = INVALID_VEHICLE_ID;
	return PlayerSpectatePlayer(playerid, targetplayerid, mode);
}
#if defined _ALS_PlayerSpectatePlayer
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_PlayerSpectatePlayer
#endif
#define PlayerSpectatePlayer    bf_PlayerSpectatePlayer

/**
 *
 */
stock bf_PlayerSpectateVehicle(playerid, targetvehicleid, mode = SPECTATE_MODE_NORMAL)
{
	sPlayerSpecMode[playerid] = mode;
	sPlayerSpectating[playerid] = INVALID_PLAYER_ID;
	sVehicleSpectating[playerid] = targetvehicleid;
	return PlayerSpectateVehicle(playerid, targetvehicleid, mode);
}
#if defined _ALS_PlayerSpectateVehicle
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_PlayerSpectateVehicle
#endif
#define PlayerSpectateVehicle   bf_PlayerSpectateVehicle

/**
 *
 */
stock bf_TogglePlayerSpectating(playerid, toggle)
{
	sPlayerSpecMode[playerid] = SPECTATE_MODE_NORMAL;
	sPlayerSpectating[playerid] = INVALID_PLAYER_ID;
	sVehicleSpectating[playerid] = INVALID_VEHICLE_ID;
	return TogglePlayerSpectating(playerid, toggle);
}
#if defined _ALS_TogglePlayerSpectating
	#error "Bugfix.inc must be included immediately after a_samp.inc"
#else
	#define _ALS_TogglePlayerSpectating
#endif
#define TogglePlayerSpectating  bf_TogglePlayerSpectating
