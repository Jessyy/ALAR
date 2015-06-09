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
*/

#include <alar/YSI_bit>
#include <alar/String>

#if defined INVALID_TEXT_DRAW
	#undef INVALID_TEXT_DRAW
	#define INVALID_TEXT_DRAW (Text:0xFFFF)
#endif

#if !defined INFINITY
	#define INFINITY (Float:0x7F800000)
#endif

#if !defined WEAPON_NVGOGGLES
	#define WEAPON_NVGOGGLES	44
#endif

#if !defined WEAPON_IRGOGGLES
	#define WEAPON_IRGOGGLES	45
#endif

#if !defined INVALID_WEAPON_ID
	#define INVALID_WEAPON_ID	-1
#endif

#if !defined INVALID_WEAPON_SLOT
	#define INVALID_WEAPON_SLOT	-1
#endif

#if !defined MAX_IP
	#define MAX_IP	16
#endif

#if !defined MAX_INPUT
	#define MAX_INPUT	128
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
	new pid = INVALID_PLAYER_ID;
	for(new i, maxp = GetMaxPlayers(), bool:found, pname[MAX_PLAYER_NAME], length = strlen(playername); i < maxp; i++) {
		if(!IsPlayerConnected(i)) continue;
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
 *	Return the default colour for a player
 *	@param	playerid	The playerid of the player
 *	@return The default colour of the player
 */
stock GetDefaultColour(playerid)
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
	return playerColors[playerid % sizeof(playerColors)];
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
			case 'a'..'z', 'A'..'Z', '0'..'9', '_', '[', ']': chars++;
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
	return (wildfound || chars >= 3) && (chars <= 16);
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
	new string[MAX_INPUT], idx, space, plen, bool:useprefix;
	for(new i;i<length;i++) {
		if(i-idx+plen >= maxlength) {
			if(idx == space || i-space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			}
			else {
				strmid(string, msg, idx, space);
				idx = space+1;
			}
			if(useprefix) strins(string, prefix, 0);
			else {
				plen = strlen(prefix);
				useprefix = true;
			}
			SendClientMessage(playerid, colour, string);
		}
		else if(msg[i]==' ') space = i;
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
		for(new i, j = GetMaxPlayers(); i < j; i++) {
			if(Bit_GetBit(players, i)) {
				SendClientMessage(i, colour, msg);
			}
		}
		return;
	}
	new string[MAX_INPUT], idx, space, plen, bool:useprefix;
	for(new i;i<length;i++) {
		if(i-idx+plen >= maxlength) {
			if(idx == space || i-space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			}
			else {
				strmid(string, msg, idx, space);
				idx = space+1;
			}
			if(useprefix) strins(string, prefix, 0);
			else {
				plen = strlen(prefix);
				useprefix = true;
			}
			for(new j, k = GetMaxPlayers(); j < k; j++) {
				if(Bit_GetBit(players, j)) {
					SendClientMessage(j, colour, string);
				}
			}
		}
		else if(msg[i]==' ') space = i;
	}
	if(idx < length) {
		strmid(string, msg, idx, length);
		strins(string, prefix, 0);
		for(new i, j = GetMaxPlayers(); i < j; i++) {
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
	new string[MAX_INPUT], idx, space, plen, bool:useprefix;
	for(new i;i<length;i++) {
		if(i-idx+plen >= maxlength) {
			if(idx == space || i-space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			}
			else {
				strmid(string, msg, idx, space);
				idx = space+1;
			}
			if(useprefix) strins(string, prefix, 0);
			else {
				plen = strlen(prefix);
				useprefix = true;
			}
			SendClientMessageToAll(colour, string);
		}
		else if(msg[i]==' ') space = i;
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
		sameid = INVALID_PLAYER_ID, Float:samedist = INFINITY,
		id = INVALID_PLAYER_ID, Float:dist = INFINITY;

	GetPlayerPos(playerid, px, py, pz);
	world = GetPlayerVirtualWorld(playerid);
	for(new i; i < GetMaxPlayers(); i++) {
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
 *	Adds a number of hours to the current time
 *	@param	addhours	The number of hours to add
 *	@param	year		The year of the current time plus the hours
 *	@param	month		The month of the current time plus the hours
 *	@param	day			The day of the current time plus the hours
 *	@param	hour		The hour of the current time plus the hours
 */
stock DatePlusHours(Float:addhours, &year, &month, &day, &Float:hour)
{
	new currenthour,
		currentminute,
		currentsecond;

	getdate(year, month, day);
	gettime(currenthour, currentminute, currentsecond);
	hour = currenthour + floatdiv(currentminute, 60) + floatdiv(currentminute, 3600) + addhours;

	day += floatround(hour / 24, floatround_tozero);
	hour = floatsub(hour, floatround(hour / 24, floatround_tozero) * 24);

	new const DaysInMonths[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

	for(new thismonth;;) {
		thismonth = DaysInMonths[month-1] + ((month == 2 && (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))) ? 1 : 0);
		if(day <= thismonth) return;
		month++;
		day -= thismonth;
		if(month == 13) {
			year++;
			month = 1;
		}
	}
}

