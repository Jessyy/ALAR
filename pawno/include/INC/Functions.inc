/*
 *	Any Last Administrative Requests - Functions.inc
 *		Assorted functions
 *
 *	Shamelessly borrowed from their respective authors
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

#if defined _alar_functions_included
  #endinput
#endif

#define _alar_functions_included

/*
	native ReturnPlayerName(playerid);
	native ReturnPlayerID(const playername[]);
	native ReturnPlayerIP(playerid);
	native ReturnServerVar(const string[]);
	native ReturnWeaponName(weaponid);
	native GetDefaultColour(playerid);
	native GetWeaponSlot(weaponid);
	native bool:IsSpawned(playerid);
	native bool:isValidName(const string[], wildcards=false);
	native SendWrappedMessageToPlayer(playerid, colour, const msg[], maxlength=85, const prefix[]="    ");
	native SendWrappedMessageToClients(Bit:players[], colour, const msg[], maxlength=85, const prefix[]="    ");
	native SendWrappedMessageToAll(colour, const msg[], maxlength=85, const prefix[]="    ");
	native ReturnWeaponID(const WeaponName[]);
	native FindPlayer(const string[]);
	native FindClosestPlayer(playerid);
	native isValidGameText(const string[]);
	native ReturnGameText(const text[]);
	native DatePlusHours(Float:addhours, &year, &month, &day, &Float:hour);
	native ReturnTimeStamp();
*/

#include <a_samp>

#tryinclude "alar/YSI_bit"
#if !defined _YSI_bit_included
	#include <alar/YSI_bit>
#endif

#tryinclude "alar/YSI_foreach"
#if !defined _foreach_included
	#tryinclude <alar/YSI_foreach>
#endif

#tryinclude "alar/String"
#if !defined _alar_string_included
	#include <alar/String>
#endif

#if defined INVALID_TEXT_DRAW
	#undef INVALID_TEXT_DRAW
#endif
#define INVALID_TEXT_DRAW (Text:0xFFFF)

#if defined INVALID_3DTEXT_ID
	#undef INVALID_3DTEXT_ID
#endif
#define INVALID_3DTEXT_ID (Text3D:0xFFFF)

#if defined INVALID_PLAYER3DTEXT_ID
	#undef INVALID_PLAYER3DTEXT_ID
#endif
#define INVALID_PLAYER3DTEXT_ID (PlayerText3D:0xFFFF)

#if !defined FLOAT_INF
	#define FLOAT_INF (Float:0x7F800000)
#endif

#if !defined FLOAT_NAN
	#define FLOAT_NAN (Float:0xFFFFFFFF)
#endif

#if !defined MAX_COMM_FUNC_NAME
	#define MAX_COMM_FUNC_NAME (32)
#endif

#if !defined WEAPON_NVGOGGLES
	#define WEAPON_NVGOGGLES	(44)
#endif

#if !defined WEAPON_IRGOGGLES
	#define WEAPON_IRGOGGLES	(45)
#endif

#if !defined INVALID_WEAPON_ID
	#define INVALID_WEAPON_ID	(-1)
#endif

#if !defined INVALID_WEAPON_SLOT
	#define INVALID_WEAPON_SLOT	(-1)
#endif

#if !defined MAX_IP
	#define MAX_IP	(16)
#endif

#if !defined MAX_INPUT
	#define MAX_INPUT	(128)
#endif

#if !defined MAX_TIMESTAMP
	#define MAX_TIMESTAMP	(30)
#endif

/**
 *	Return a player's name
 *	@param	playerid	The playerid of the player
 *	@return A string containing the player's name
 */
stock ReturnPlayerName(playerid)
{
	new pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof(pname));
	return pname;
}

/**
 *	Finds a playerid from a player's name, or part of a player's name
 *	@param	playername	The full or partial name of a player
 *	@return The playerid of the player, or INVALID_PLAYER_ID if there were no matches
 */
stock ReturnPlayerID(const playername[])
{
	if(playername[0] == 0) return INVALID_PLAYER_ID;
	new pid = INVALID_PLAYER_ID,
		bool:found,
		pname[MAX_PLAYER_NAME],
		length = strlen(playername);
#if defined _foreach_included
	foreach(Player, i) {
#else 
	for(new i, maxp = GetMaxPlayers(); i < maxp; i++) {
		if(!IsPlayerConnected(i)) continue;
#endif
		GetPlayerName(i, pname, sizeof(pname));
		new j = strfind(pname, playername, true);
		if((j == 0) && (strlen(pname) == length)) return i;
		if(!found) {
			if(j == 0) {
				pid = i;
				found = true;
			}
			else if(j != -1 && pid == INVALID_PLAYER_ID) {
				pid = i;
			}
		}
	}
	return pid;
}

/**
 *	Return a player's IP
 *	@param	playerid	The playerid of the player
 *	@return A string containing the player's IP
 */
stock ReturnPlayerIP(playerid)
{
	new pIP[MAX_IP];
	GetPlayerIp(playerid, pIP, sizeof(pIP));
	return pIP;
}

/**
 *	Return a server variable
 *	@param	string	The name of the server variable to retrive
 *	@return A string containing the server variable
 */
stock ReturnServerVar(const string[])
{
	new buffer[MAX_INPUT];
	GetServerVarAsString(string, buffer, sizeof(buffer));
	return buffer;
}

/**
 *	Return a weapon's name
 *	@param	weaponid	The id of the weapon
 *	@return A string containing the weapon's name
 */
stock ReturnWeaponName(weaponid)
{
	new wname[20];
	switch(weaponid) {
		case 18: wname = "Molotovs";
		case 40: wname = "Detonator";
		case 44: wname = "Nightvision Goggles";
		case 45: wname = "Thermal Goggles";
		default: GetWeaponName(weaponid, wname, sizeof(wname));
	}
	return wname;
}

/**
 *	Return a weapons's slot
 *	@param	weaponid	The id of the weapon
 *	@return The slot of the weapon, INVALID_WEAPON_SLOT if the weaponid is invalid
 */
stock GetWeaponSlot(weaponid)
{
	switch(weaponid) {
		case WEAPON_BRASSKNUCKLE:
			return 0;
		case WEAPON_GOLFCLUB .. WEAPON_CHAINSAW:
			return 1;
		case WEAPON_COLT45 .. WEAPON_DEAGLE:
			return 2;
		case WEAPON_SHOTGUN .. WEAPON_SHOTGSPA:
			return 3;
		case WEAPON_UZI, WEAPON_MP5, WEAPON_TEC9:
			return 4;
		case WEAPON_AK47, WEAPON_M4:
			return 5;
		case WEAPON_RIFLE, WEAPON_SNIPER:
			return 6;
		case WEAPON_ROCKETLAUNCHER .. WEAPON_MINIGUN:
			return 7;
		case WEAPON_GRENADE .. WEAPON_MOLTOV, WEAPON_SATCHEL:
			return 8;
		case WEAPON_SPRAYCAN .. WEAPON_CAMERA:
			return 9;
		case WEAPON_DILDO .. WEAPON_FLOWER:
			return 10;
		case WEAPON_NVGOGGLES, WEAPON_IRGOGGLES, WEAPON_PARACHUTE:
			return 11;
		case WEAPON_BOMB:
			return 12;
	}
	return INVALID_WEAPON_SLOT;
}

/**
 *	Checks if a player is spawned
 *	@param	playerid	The playerid of the player
 *	@return true if the player is spawned, false otherwise
 */
stock bool:IsSpawned(playerid)
{
	new pstate = GetPlayerState(playerid);
	if((pstate >= PLAYER_STATE_ONFOOT && pstate <= PLAYER_STATE_ENTER_VEHICLE_PASSENGER) || pstate == PLAYER_STATE_SPAWNED) return true;
	return false;
}

/**
 *	Checks if a player name is valid
 *	@param	string		The string to check
 *	@param	wildcards	If wildcards (* and ?) are allowed
 *	@return true if the name is valid, false otherwise
 */
stock bool:isValidName(const string[], wildcards=false)
{
	new chars, bool:wildfound;
	for(new pos; string[pos] != '\0'; pos++) {
		switch(string[pos]) {
			case 'a'..'z', 'A'..'Z', '0'..'9', '_', '[', ']', '@', '$', '=', '.', '(', ')': chars++;
			case '?': {
				if(!wildcards) return false;
				chars++;
			}
			case '*': {
				if(wildcards) wildfound = true;
				else return false;
			}
			default: return false;
		}
	}
	return (wildfound || chars >= 3) && (chars <= 20);
}

/**
 *	Sends a wrapped message to player with indentation
 *	@param	playerid	The playerid to send the message to
 *	@param	colour		The colour of the message
 *	@param	msg			The message to send
 *	@param	maxlength	The length to wrap to
 *	@param	prefix		The string to indent with
 */
stock SendWrappedMessageToPlayer(playerid, colour, const msg[], maxlength=85, const prefix[]="    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		SendClientMessage(playerid, colour, msg);
		return;
	}
	new string[MAX_INPUT], idx;
	for(new i, space, plen, bool:useprefix; i < length; i++) {
		if(i - idx + plen >= maxlength) {
			if(idx == space || i - space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			} else {
				strmid(string, msg, idx, space);
				idx = space + 1;
			}
			if(useprefix) {
				strins(string, prefix, 0);
			} else {
				plen = strlen(prefix);
				useprefix = true;
			}
			SendClientMessage(playerid, colour, string);
		} else if(msg[i] == ' ') {
			space = i;
		}
	}
	if(idx < length) {
		strmid(string, msg, idx, length);
		strins(string, prefix, 0);
		SendClientMessage(playerid, colour, string);
	}
	return;
}

/**
 *	Sends a wrapped message to players with indentation
 *	@param	players		A bit array of the players to send the message to
 *	@param	colour		The colour of the message
 *	@param	msg			The message to send
 *	@param	maxlength	The length to wrap to
 *	@param	prefix		The string to indent with
 */
stock SendWrappedMessageToClients(Bit:players[Bit_Bits(MAX_PLAYERS)], colour, const msg[], maxlength=85, const prefix[]="    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
#if defined _foreach_included
		foreach(Player, i) {
#else
		for(new i, j = GetMaxPlayers(); i < j; i++) {
#endif
			if(Bit_GetBit(players, i)) {
				SendClientMessage(i, colour, msg);
			}
		}
		return;
	}
	new string[MAX_INPUT], idx;
	for(new i, space, plen, bool:useprefix; i < length; i++) {
		if(i - idx + plen >= maxlength) {
			if(idx == space || i - space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			} else {
				strmid(string, msg, idx, space);
				idx = space + 1;
			}
			if(useprefix) {
				strins(string, prefix, 0);
			} else {
				plen = strlen(prefix);
				useprefix = true;
			}
#if defined _foreach_included
			foreach(Player, j) {
#else
			for(new j, k = GetMaxPlayers(); j < k; j++) {
#endif
				if(Bit_GetBit(players, j)) {
					SendClientMessage(j, colour, string);
				}
			}
		} else if(msg[i] == ' ') {
			space = i;
		}
	}
	if(idx < length) {
		strmid(string, msg, idx, length);
		strins(string, prefix, 0);
#if defined _foreach_included
		foreach(Player, i) {
#else
		for(new i, j = GetMaxPlayers(); i < j; i++) {
#endif
			if(Bit_GetBit(players, i)) {
				SendClientMessage(i, colour, string);
			}
		}
	}
	return;
}

/**
 *	Sends a wrapped message to all players with indentation
 *	@param	colour		The colour of the message
 *	@param	msg			The message to send
 *	@param	maxlength	The length to wrap to
 *	@param	prefix		The string to indent with
 */
stock SendWrappedMessageToAll(colour, const msg[], maxlength=85, const prefix[]="    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		SendClientMessageToAll(colour, msg);
		return;
	}
	new string[MAX_INPUT], idx;
	for(new i, space, plen, bool:useprefix; i < length; i++) {
		if(i - idx + plen >= maxlength) {
			if(idx == space || i - space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			} else {
				strmid(string, msg, idx, space);
				idx = space + 1;
			}
			if(useprefix) {
				strins(string, prefix, 0);
			} else {
				plen = strlen(prefix);
				useprefix = true;
			}
			SendClientMessageToAll(colour, string);
		} else if(msg[i] == ' ') {
			space = i;
		}
	}
	if(idx < length) {
		strmid(string, msg, idx, length);
		strins(string, prefix, 0);
		SendClientMessageToAll(colour, string);
	}
	return;
}

/**
 *	Return a weapon's id
 *	@param	WeaponName	The full or partial name of the weapon
 *	@return The weapon's id, or INVALID_WEAPON_ID if no match was found
 */
stock ReturnWeaponID(const WeaponName[])
{
	if(strfind("Molotovs",WeaponName,true) != -1) return 18;
	if(strfind("Deagle",WeaponName,true) != -1) return 24;
	if(strfind("Detonator",WeaponName,true) != -1) return 40;
	//if(strfind("Nightvision Goggles",WeaponName,true) != -1) return 44;
	//if(strfind("Thermal Goggles",WeaponName,true) != -1) return 45;
	for(new i=1; i <= 46; i++) {
		switch(i) {
			case 18,19,20,21,40,44,45: continue;
			default: {
				new name[24];
				GetWeaponName(i, name, sizeof(name));
				if(strfind(name, WeaponName, true) != -1) return i;
			}
		}
	}
	return INVALID_WEAPON_ID;
}

/**
 *	Finds a playerid from a player's name, part of a player's name, or a playerid
 *	@param	string	The full or partial name of a player, or a playerid
 *	@return The playerid of the player, or INVALID_PLAYER_ID if there were no matches
 */
stock FindPlayer(const string[])
{
	new id = strval(string);
	if(isNumeric(string) && id >= 0 && id < GetMaxPlayers()) {
		return IsPlayerConnected(id) ? id : INVALID_PLAYER_ID;
	}
	return ReturnPlayerID(string);
}

/**
 *	Finds the closest player to a player, looking first for players in the same virtual world
 *	@param	playerid	The playerid of the player to search around
 *	@return The playerid of the closest player, or INVALID_PLAYER_ID if noone was found
 */
stock FindClosestPlayer(playerid)
{
	new Float:px,
		Float:py,
		Float:pz,
		Float:tmpx,
		Float:tmpy,
		Float:tmpz,
		world,
		sameid = INVALID_PLAYER_ID, Float:samedist = FLOAT_INF,
		id = INVALID_PLAYER_ID, Float:dist = FLOAT_INF;

	GetPlayerPos(playerid, px, py, pz);
	world = GetPlayerVirtualWorld(playerid);
#if defined _foreach_included
	foreach(Player, i) {
#else
	for(new i, j = GetMaxPlayers(); i < j; i++) {
		if(!IsPlayerConnected(i)) continue;
#endif
		if(i != playerid && IsSpawned(i)) {
			GetPlayerPos(i, tmpx, tmpy, tmpz);
			new Float:tmpdist = tmpx * tmpx + tmpy * tmpy + tmpz * tmpz;
			if(GetPlayerVirtualWorld(i) == world) {
				if(tmpdist < samedist) {
					sameid = i;
				}
			} else {
				if(tmpdist < dist) {
					id = i;
				}
			}
		}
	}
	return sameid == INVALID_PLAYER_ID ? id : sameid;
}

/**
 *	Checks if a string is valid gametext (won't crash the server)
 *	@param	string	The string to check
 *	@return true if the string is valid gametext, false otherwise
 */
stock isValidGameText(const string[])
{
	if(string[0] == '\0') return false;
	for(new i; string[i] != '\0';) {
		if(string[i] == '~') {
			switch(string[i+1]) {
				case 'g','r','b','l','w','y','p','h','<','>','u','d','n','s': i += 2;
				default: return false;
			}
			if(string[i] != '~') return false;
		}
		i++;
	}
	return true;
}

/**
 *	Returns a copy of the text which will display some common charachters in gta properly
 *	@param	text	The text to copy
 *	@return The modified gametext
 */
stock ReturnGameText(const text[])
{
	new string[MAX_STRING];
	for(new i; text[i] != '\0' && i < sizeof(string) - 1; i++) {
		switch(text[i]) {
			case '[': string[i] = '(';
			case ']': string[i] = ')';
			case '*': string[i] = ']';
			default:  string[i] = text[i];
		}
	}
	return string;
}

/**
 *	Get a timestamp for the current server time
 *	@return A string containing the timestamp formatted as 'YYYY-MM-DD HH:MM:SS'
 */
stock ReturnTimeStamp()
{
	new datetime[MAX_TIMESTAMP],
		year, month, day,
		hour, minute, second;

	getdate(year, month, day);
	gettime(hour, minute, second);
	format(datetime, sizeof(datetime), "%04i-%02i-%02i %02i:%02i:%02i", year, month, day, hour, minute, second);

	return datetime;
}

/**
 *	Check if a timestamp is valid (quick and ugly)
 *	@return true if the string is in the form 'YYYY-MM-DD HH:MM:SS'
 */
stock bool:isValidTimestamp(const string[])
{
	new year, month, day,
		hour, minute, second;

	if(!strwild("????-??-?? ??:??:??", string) || strscan(string, "-- iii -: iii", year, month, day, hour, minute, second)) return false;
	return 1970 <= year <= 2038 &&
			1 <= month <= 12 &&
			00 <= day <= 31 &&
			00 <= hour <= 23 &&
			00 <= minute <= 59 &&
			00 <= second <= 59;
}