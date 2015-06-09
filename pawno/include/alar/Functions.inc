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

#include <alar/YSI_bit>

#if defined INVALID_TEXT_DRAW
	#undef INVALID_TEXT_DRAW
	#define INVALID_TEXT_DRAW (Text:0xFFFF)
#endif

#if !defined INFINITY
	#define INFINITY (Float:0x7F800000)
#endif

#if !defined WEAPON_NVGOGGLES
	#define WEAPON_NVGOGGLES 44
#endif

#if !defined WEAPON_IRGOGGLES
	#define WEAPON_IRGOGGLES 45
#endif

#if !defined MAX_IP
	#define MAX_IP 16
#endif

#if !defined MAX_STRING
	#define MAX_STRING 256
#endif

#if !defined MAX_INPUT
	#define MAX_INPUT 128
#endif

#if !defined isnull
	#define isnull(%1) (%1[0] == 0 || (%1[0] == 1 && %1[1] == 0))
#endif

// Temporary solution for strval crashes
stock strvalEx(const string[])
{
	new val, i, neg = 1;
	if(string[0] == '-') {
		i = 1;
		neg = -1;
	}
	for(; i < 30 && string[i] >= '0' && string[i] <= '9'; i++) {
		val = (val * 10) + string[i] - '0';
	}
	return val * neg;
}
#define strval(%1) strvalEx(%1)

// Temporary solution for floatstr bugs
stock Float:floatstrEx(const string[])
{
	new pos, bool:decimal, buf[40];
	if(string[0] == '-' || string[0] == '+') {
		buf[0] = string[0];
		pos++;
	}
	for(;string[pos] > ' ' && pos < sizeof(buf) - 1; pos++) {
		if(string[pos] == '.') {
			if(decimal) return 0.0;
			decimal = true;
		}
		else if(string[pos] > '9' || string[pos] < '0') return 0.0;
		buf[pos] = string[pos];
	}
	if((pos == 1 && buf[0] == '.') || (pos == 2 && (buf[0] == '-' || buf[0] == '+') && buf[1] == '.')) return 0.0;
	return floatstr(buf);
}
#define floatstr(%1) floatstrEx(%1)

// Temorary solution for strins crashes
stock strinsEx(string[], const substr[], pos, maxlength=sizeof(string))
{
	if(substr[0] == '\0' || pos >= maxlength) return;

	new len = strlen(string);
	if(len >= maxlength) return;

	if(pos > len) pos = len;
	else if(pos < 0) pos = 0;

	new sublen = strlen(substr);

	// make room in string
	for(new i = len + sublen < maxlength - 1 ? len : maxlength - sublen - 2; i >= pos; i--) {
		string[i + sublen] = string[i];
	}

	// insert substring
	for(new i; i < sublen; i++) {
		if(pos + i == maxlength - 1) {
			string[maxlength - 1] = '\0';
			return;
		}
		string[pos + i] = substr[i];
	}
}
#define strins(%1) strinsEx(%1)

stock ReturnPlayerName(playerid)
{
	new pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof(pname));
	return pname;
}

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

stock ReturnPlayerIP(playerid)
{
	new pIP[MAX_IP];
	GetPlayerIp(playerid, pIP, sizeof(pIP));
	return pIP;
}

stock ReturnServerVar(const string[])
{
	new buffer[MAX_INPUT];
	GetServerVarAsString(string, buffer, sizeof(buffer));
	return buffer;
}

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
	return -1;
}

stock bool:IsSpawned(playerid)
{
	new pstate = GetPlayerState(playerid);
	if((pstate >= PLAYER_STATE_ONFOOT && pstate <= PLAYER_STATE_ENTER_VEHICLE_PASSENGER) || pstate == PLAYER_STATE_SPAWNED) return true;
	return false;
}

/*----------------------------------------------------------------------------*-
Function:
	sscanf
Params:
	string[] - String to extract parameters from.
	format[] - Parameter types to get.
	{Float,Unsigned,_}:... - Data return variables.
Return:
	0 - Successful, not 0 - fail.
Notes:
	A fail is either insufficient variables to store the data or insufficient
	data for the format string - excess data is disgarded.

	A string in the middle of the input data is extracted as a single word, a
	string at the end of the data collects all remaining text. The length of
	a string must be passed after the string.

	The format codes are:

	c - A character.
	d, i - An integer.
	u - An unsigned integer.
	h, x - A hex number (e.g. a colour).
	f - A float.
	s - A string.
	z - An optional string.
	_ - Skip a parameter.
	pX - An additional delimiter where X is another character.

	Now has IsNumeric integrated into the code.

	Added additional delimiters in the form of all whitespace and an
	optionally specified one in the format string.
-*----------------------------------------------------------------------------*/

stock sscanf(string[], format[], {Float,Unsigned,_}:...)
{
	if (isnull(string))
	{
		return format[0];
	}
	new
		formatPos = 0,
		stringPos = 0,
		paramPos = 2,
		paramCount = numargs(),
		delim = ' ';
	while (paramPos < paramCount && string[stringPos])
	{
		switch (format[formatPos++])
		{
			case '\0':
			{
				return 0;
			}
			case 'i', 'd':
			{
				new
					neg = 1,
					num = 0,
					ch = string[stringPos];
				if (ch == '-')
				{
					neg = -1;
					ch = string[++stringPos];
				}
				do
				{
					stringPos++;
					if (ch >= '0' && ch <= '9')
					{
						num = (num * 10) + (ch - '0');
					}
					else
					{
						return -1;
					}
				}
				while ((ch = string[stringPos]) > ' ' && ch != delim);
				setarg(paramPos, 0, num * neg);
			}
			case 'u':
			{
				new
					num = 0,
					ch = string[stringPos];
				do
				{
					stringPos++;
					if (ch >= '0' && ch <= '9')
					{
						num = (num * 10) + (ch - '0');
					}
					else
					{
						return -1;
					}
				}
				while ((ch = string[stringPos]) > ' ' && ch != delim);
				setarg(paramPos, 0, num);
			}
			case 'h', 'x':
			{
				new
					num = 0,
					ch = string[stringPos];
				do
				{
					stringPos++;
					switch (ch)
					{
						case 'x', 'X':
						{
							num = 0;
							continue;
						}
						case '0' .. '9':
						{
							num = (num << 4) | (ch - '0');
						}
						case 'a' .. 'f':
						{
							num = (num << 4) | (ch - ('a' - 10));
						}
						case 'A' .. 'F':
						{
							num = (num << 4) | (ch - ('A' - 10));
						}
						default:
						{
							return -1;
						}
					}
				}
				while ((ch = string[stringPos]) > ' ' && ch != delim);
				setarg(paramPos, 0, num);
			}
			case 'c':
			{
				setarg(paramPos, 0, string[stringPos++]);
			}
			case 'f':
			{
				setarg(paramPos, 0, _:floatstr(string[stringPos]));
			}
			case 'p':
			{
				delim = format[formatPos++];
				continue;
			}
			case 's', 'z':
			{
				new
					i = 0,
					len = getarg(paramPos + 1, 0) - 1,
					ch;
				if (format[formatPos])
				{
					while (i < len && (ch = string[stringPos]) > ' ' && ch != delim)
					{
						setarg(paramPos, i++, ch);
						stringPos++;
					}
					if (!i && len > 1)
					{
						return -1;
					}
				}
				else
				{
					while (i < len && (ch = string[stringPos]))
					{
						setarg(paramPos, i++, ch);
						stringPos++;
					}
				}
				setarg(paramPos++, i, '\0');
			}
			case '_':
			{
				goto Dengo;	// Eh, screw good practice. How bad can it be?
			}
			default:
			{
				continue;
			}
		}
		paramPos++;
		Dengo:
		while (string[stringPos] && string[stringPos] != delim && string[stringPos] > ' ')
		{
			stringPos++;
		}
		while (string[stringPos] && (string[stringPos] == delim || string[stringPos] <= ' '))
		{
			stringPos++;
		}
	}
	while (format[formatPos] == 'z')
	{
		formatPos++;
	}
	if (format[formatPos] > ' ')
	{
		return format[formatPos];
	}
	return 0;
}

stock bool:isNumeric(const string[])
{
	if(string[0] == '\0') return false;
	for(new i; string[i] != '\0'; i++) if(string[i] > '9' || string[i] < '0') return false;
	return true;
}

stock bool:isInteger(const string[])
{
	if(string[0] == '\0') return false;
	for(new i = ((string[0] == '-' || string[0] == '+') && string[1] != '\0') ? 1 : 0; string[i] != '\0'; i++) if(string[i] > '9' || string[i] < '0') return false;
	return true;
}

stock bool:isFloat(const string[])
{
	if(string[0] == '\0') return false;
	new unary = string[0] == '-' || string[0] == '+',
		i = unary ? 1 : 0;
	for(new bool:decimal; string[i] != '\0'; i++) {
		if(string[i] == '.') {
			if(decimal) return false;
			decimal = true;
		}
		else if(string[i] > '9' || string[i] < '0') return false;
	}
	if(i == 1 && string[0] == '.') return false;
	if(i == 2 && unary && (string[1] == '.' || string[1] == '\0')) return false;
	return true;
}

stock wildcmp(const wild[], const string[], bool:ignorecase=false)
{
	new idx, idx2, cp, mp;

	while((string[idx]) && (wild[idx2] != '*')) {
		if (wild[idx2] != string[idx] && (!ignorecase || (toupper(wild[idx2]) != toupper(string[idx]))) && (wild[idx2] != '?')) {
			return 0;
		}
		idx2++;
		idx++;
	}

	while(string[idx]) {
		if(wild[idx2] == '*') {
			if (!wild[++idx2]) {
				return 1;
			}
			mp = idx2;
			cp = idx+1;
		} else if((wild[idx2] == string[idx] || (ignorecase && (toupper(wild[idx2]) == toupper(string[idx])))) || wild[idx2] == '?') {
			idx2++;
			idx++;
		} else {
			idx2 = mp;
			idx = cp++;
		}
	}

	while (wild[idx2] == '*') {
		idx2++;
	}

	return !wild[idx2];
}

stock strcpy(dest[], const source[], maxlength=sizeof(dest), end=cellmax)
{
	new pos;
	end = maxlength > end ? end : maxlength - 1;
	for(;source[pos] != '\0' && pos < end; pos++) dest[pos] = source[pos];
	dest[pos] = '\0';
}

stock strreplace(string[], const find[], const replace[], bool:ignorecase=false, maxlength=sizeof(string))
{
	if(find[0] == '\0' || string[0] == '\0') return 0;
	new matches;
	for(new idx, flen = strlen(find), rlen = strlen(replace), pos = strfind(string, find, ignorecase); pos != -1 && idx < maxlength; pos = strfind(string, find, ignorecase, idx)) {
		strdel(string, pos, pos + flen);
		if(rlen) strins(string, replace, pos, maxlength);	// Crashy
		idx = pos + rlen;
		matches++;
	}
	return matches;
}

stock strreplacechar(string[], oldchar, newchar)
{
	for(new i; string[i] != '\0'; i++) {
		if(string[i] == oldchar) string[i] = newchar;
	}
}

stock strcatnodup(dest[], const source[], maxlength=sizeof(dest))
{
	new idx, tmp[MAX_STRING];
	for(tmp = strtok(source, idx); tmp[0] != '\0'; tmp = strtok(source, idx)) {
		if(strfindword(dest, tmp) == -1) {
			format(dest, maxlength, "%s %s", dest, tmp);
		}
	}
}

stock strfindchar(const string[], const character, bool:ignorecase=false, pos=0)
{
	for(new i = pos; string[i] != '\0'; i++) {
		if(string[i] == character || (ignorecase && tolower(string[i]) == tolower(character))) return i;
	}
	return -1;
}

/*
//Ah my poor function, so very very slow
stock strfindword(const string[], const word[], bool:ignorecase=false, pos=0)
{
	for(new i = pos; string[i] != '\0'; i++) {
		if((string[i] == word[0] || (ignorecase && tolower(string[i]) == tolower(word[0]))) && (i == 0 || string[i-1] <= ' ')) {
			new j = 1;
			for(; word[j] != '\0'; j++) {
				if(!(string[i+j] == word[j] || (ignorecase && tolower(string[i+j]) == tolower(word[j])))) break;
			}
			if(word[j] == '\0' && string[i+j] <= ' ') return i;
		}
	}
	return -1;
}
*/

stock strfindword(const string[], const word[], bool:ignorecase=false, pos=0)
{
	if(word[0] == '\0') return -1;
	new wlen = strlen(word);
	for(new i = strfind(string, word, ignorecase, pos); i != -1; i = strfind(string, word, ignorecase, ++i)) {
		if((i == 0 || string[i-1] <= ' ') && string[i+wlen] <= ' ') {
			return i;
		}
	}
	return -1;
}

stock strmakeroom(string[], space, length=sizeof(string)) {
	if(space >= length) {
		string[0] = '\0';
		return;
	}
	if(strlen(string) + space <= length) return;
	while(string[space] != '\0' && string[space - 1] != ' ') {
		space++;
	}
	strdel(string, 0, space);
}

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

stock SendWrappedMessageToPlayer(playerid, colour, const msg[], maxlength=85, const prefix[]="    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		SendClientMessage(playerid, colour, msg);
		return 1;
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
	return true;
}

stock SendWrappedMessageToClients(Bit:players[], colour, const msg[], maxlength=85, const prefix[]="    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		for(new i, j = GetMaxPlayers(); i < j; i++) {
			if(Bit_GetBit(players, i)) {
				SendClientMessage(i, colour, msg);
			}
		}
		return 1;
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
	return true;
}

stock SendWrappedMessageToAll(colour, const msg[], maxlength=85, const prefix[]="    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		SendClientMessageToAll(colour, msg);
		return 1;
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
	return 1;
}

/**
 *  Returns an element of a string splitted by ' ', default index is 0.
 *  @param	string
 *		index
 */
stock strtok(const string[], &index, seperator=' ')
{
	while (string[index] != '\0' && string[index] <= ' ') index++;
	new result[MAX_STRING], offset = index;
	while ((string[index] != '\0') && (string[index] != seperator) && ((index - offset) < (sizeof(result) - 1))) result[index - offset] = string[index++];
	result[index - offset] = '\0';
	if (string[index] == seperator) index++;
	return result;
}

/**
 *  Strips Newline from the end of a string.
 *  Idea: Y_Less, Bugfixing (when length=1) by DracoBlue
 *  @param	string
 */
stock StripNewLine(string[])
{
	if (string[0] == '\0') return;
	new len = strlen(string);
	if ((string[len - 1] == '\n') || (string[len - 1] == '\r')) {
		string[len - 1] = '\0';
		if (string[0] == '\0') return;
		if ((string[len - 2] == '\n') || (string[len - 2] == '\r')) string[len - 2] = '\0';
	}
}

// stolen from Xadmin
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
	return -1;
}

stock FindPlayer(const string[])
{
	new id = strval(string);
	if(isNumeric(string) && id >= 0 && id < GetMaxPlayers()) {
		return IsPlayerConnected(id) ? id : INVALID_PLAYER_ID;
	}
	return ReturnPlayerID(string);
}

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

