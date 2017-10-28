/*
 *	Any Last Administrative Requests - i_functions.inc
 *		Assorted functions
 *
 *	Shamelessly borrowed from their respective authors
 *
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_functions_included
	#endinput
#endif
#define _inc_functions_included

#include <a_samp>

/*
	native ReturnServerVar(const string[]);

	native bool:IsSpawned(playerid);
	native bool:IsValidName(const string[], bool:wildcards = false);
	native bool:IsValidEmail(const szString[])

	native SendWrappedMessageToAll(colour, const msg[], maxlength = 85, const prefix[] = "    ");
	native SendWrappedMessageToPlayer(playerid, colour, const msg[], maxlength = 85, const prefix[] = "    ");
	native SendWrappedMessageToClients(BitArray:players<MAX_PLAYERS>, colour, const msg[], maxlength = 85, const prefix[] = "    ");

	native ReturnGameText(const text[]);
	native bool:IsValidGameText(const string[]);

	native ReturnTimeStamp();
	native bool:IsValidTimeStamp(const string[]);
*/

#include "i_bitcore"
#include "i_foreach"
#include "i_string"

/*
 *  Return a server variable
 *  @param	string	The name of the server variable to retrive
 *  @return	A string containing the server variable
 */
stock ReturnServerVar(const string[])
{
	new buffer[MAX_INPUT_LENGTH];
	GetServerVarAsString(string, buffer, sizeof(buffer));
	return buffer;
}

/*
 *  Checks if a player is spawned
 *  @param	playerid	The playerid of the player
 *  @return	true if the player is spawned, false otherwise
 */
stock bool:IsSpawned(playerid)
{
	new pstate = GetPlayerState(playerid);
	if((pstate >= PLAYER_STATE_ONFOOT && pstate <= PLAYER_STATE_ENTER_VEHICLE_PASSENGER) || pstate == PLAYER_STATE_SPAWNED) {
		return true;
	}
	return false;
}

/*
 *  Checks if a player name is valid
 *  @param	string		The string to check
 *  @param	wildcards	If wildcards (* and ?) are allowed
 *  @return	true if the name is valid, false otherwise
 */
stock bool:IsValidName(const string[], bool:wildcards = false)
{
	new chars, bool:wildfound;
	for(new pos; string[pos] != '\0'; pos++) {
		switch(string[pos]) {
			case 'a'..'z', 'A'..'Z', '0'..'9', '_', '[', ']', '@', '$', '=', '.', '(', ')': {
				chars++;
			}
			case '?': {
				if(!wildcards) {
					return false;
				}
				chars++;
			}
			case '*': {
				if(!wildcards) {
					return false;
				}
				wildfound = true;
			}
			default: {
				return false;
			}
		}
	}
	return (wildfound || chars >= 3) && (chars <= 20);
}

/*
 *  Checks if a string is syntactically valid
 *  @param	string	The string to check
 *  @return	true if the string is valid email, false otherwise
 */
stock bool:IsValidEmail(const szString[])
{
	if(isnull(szString)) {
		return false;
	}

	new iLength = strlen(szString);
	if(iLength < 5 || strfindchar(szString, '@') == -1 || strfindchar(szString, ' ') != -1) {
		return false;
	}

	new szLocal[MAX_EMAIL_LENGTH], szDomain[MAX_EMAIL_LENGTH];
	strscan(szString, "-@ ss", szLocal, sizeof(szLocal), szDomain, sizeof(szDomain));

	if(isnull(szLocal) || isnull(szDomain)) {
		return false;
	}

	new iCharacters, iNumbers, iSymbols, iDots;
	for(new i, j=strlen(szLocal); i < j; i++) {
		if('a' <= tolower(szLocal[i]) <= 'z') {
			iCharacters++;
			continue;
		}
		if('0' <= szLocal[i] <= '9') {
			iNumbers++;
			continue;
		}
		if(szLocal[i] == '_' || szLocal[i] == '.' || szLocal[i] == '-') {
			iSymbols++;
			continue;
		}
		return false;
	}
	if(iCharacters == 0 && iNumbers == 0) {
		return false;
	}

	iCharacters = 0;
	iNumbers = 0;
	iSymbols = 0;
	iDots = 0;
	for(new i, j=strlen(szDomain); i < j; i++) {
		if('a' <= tolower(szDomain[i]) <= 'z') {
			iCharacters++;
			continue;
		}
		if('0' <= szDomain[i] <= '9') {
			iNumbers++;
			continue;
		}
		if(szDomain[i] == '-') {
			iSymbols++;
			continue;
		}
		if(szDomain[i] == '.') {
			if(i == j - 1 || (iCharacters == 0 && iNumbers == 0)) {
				return false;
			}
			iCharacters = 0;
			iNumbers = 0;
			iSymbols = 0;
			iDots++;
			continue;
		}
		return false;
	}
	if(iCharacters == 0 || iNumbers != 0 || iSymbols != 0 || iDots == 0) {
		return false;
	}

	return true;
}

/*
 *  Sends a wrapped message to all players with indentation
 *  @param	colour		The colour of the message
 *  @param	msg			The message to send
 *  @param	maxlength	The length to wrap to
 *  @param	prefix		The string to indent with
 */
stock SendWrappedMessageToAll(colour, const msg[], maxlength = 85, const prefix[] = "    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		SendClientMessageToAll(colour, msg);
		return;
	}
	new string[MAX_INPUT_LENGTH], idx;
	for(new i, space, plen, bool:useprefix; i < length; i++) {
		if(i - idx + plen >= maxlength) {
			if(idx == space || i - space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			}
			else {
				strmid(string, msg, idx, space);
				idx = space + 1;
			}
			if(useprefix) {
				strins(string, prefix, 0);
			}
			else {
				plen = strlen(prefix);
				useprefix = true;
			}
			SendClientMessageToAll(colour, string);
		}
		else if(msg[i] == ' ') {
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

/*
 *  Sends a wrapped message to player with indentation
 *  @param	playerid	The playerid to send the message to
 *  @param	colour		The colour of the message
 *  @param	msg			The message to send
 *  @param	maxlength	The length to wrap to
 *  @param	prefix		The string to indent with
 */
stock SendWrappedMessageToPlayer(playerid, colour, const msg[], maxlength = 85, const prefix[] = "    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		SendClientMessage(playerid, colour, msg);
		return;
	}
	new string[MAX_INPUT_LENGTH], idx;
	for(new i, space, plen, bool:useprefix; i < length; i++) {
		if(i - idx + plen >= maxlength) {
			if(idx == space || i - space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			}
			else {
				strmid(string, msg, idx, space);
				idx = space + 1;
			}
			if(useprefix) {
				strins(string, prefix, 0);
			}
			else {
				plen = strlen(prefix);
				useprefix = true;
			}
			SendClientMessage(playerid, colour, string);
		}
		else if(msg[i] == ' ') {
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

/*
 *  Sends a wrapped message to players with indentation
 *  @param	players		A bit array of the players to send the message to
 *  @param	colour		The colour of the message
 *  @param	msg			The message to send
 *  @param	maxlength	The length to wrap to
 *  @param	prefix		The string to indent with
 */
stock SendWrappedMessageToClients(BitArray:players<MAX_PLAYERS>, colour, const msg[], maxlength = 85, const prefix[] = "    ")
{
	new length = strlen(msg);
	if(length <= maxlength) {
		foreach(new i : Bits(players)) {
			SendClientMessage(i, colour, msg);
		}
		return;
	}
	new string[MAX_INPUT_LENGTH], idx;
	for(new i, space, plen, bool:useprefix; i < length; i++) {
		if(i - idx + plen >= maxlength) {
			if(idx == space || i - space >= 25) {
				strmid(string, msg, idx, i);
				idx = i;
			}
			else {
				strmid(string, msg, idx, space);
				idx = space + 1;
			}
			if(useprefix) {
				strins(string, prefix, 0);
			}
			else {
				plen = strlen(prefix);
				useprefix = true;
			}
			foreach(new j : Bits(players)) {
				SendClientMessage(j, colour, string);
			}
		}
		else if(msg[i] == ' ') {
			space = i;
		}
	}
	if(idx < length) {
		strmid(string, msg, idx, length);
		strins(string, prefix, 0);
		foreach(new i : Bits(players)) {
			SendClientMessage(i, colour, string);
		}
	}
	return;
}

/*
 *  Returns a copy of the text which will display some common charachters in gta properly
 *  @param	text	The text to copy
 *  @return	The modified gametext
 */
stock ReturnGameText(const text[])
{
	new string[MAX_STRING_LENGTH];
	for(new i; text[i] != '\0' && i < sizeof(string) - 1; i++) {
		switch(text[i]) {
			case '[': {
				string[i] = '(';
			}
			case ']': {
				string[i] = ')';
			}
			case '*': {
				string[i] = ']';
			}
			default: {
				string[i] = text[i];
			}
		}
	}
	return string;
}

/*
 *  Checks if a string is valid gametext (won't crash the server)
 *  @param	string	The string to check
 *  @return	true if the string is valid gametext, false otherwise
 */
stock bool:IsValidGameText(const string[])
{
	if(isnull(string)) {
		return false;
	}
	for(new i; string[i] != '\0'; ) {
		if(string[i] == '~') {
			switch(string[i + 1]) {
				case 'b','g','l','p','r','w','y','h','n','u','d','<','>','k': {
					i += 2;
				}
				default: {
					return false;
				}
			}
			if(string[i] != '~') {
				return false;
			}
		}
		i += 1;
	}
	return true;
}

/*
 *  Get a timestamp for the current server time
 *  @return	A string containing the timestamp formatted as 'YYYY-MM-DD HH:MM:SS'
 */
stock ReturnTimeStamp()
{
	new datetime[MAX_TIMESTAMP_LENGTH],
		year, month, day, hour, minute, second;

	getdate(year, month, day);
	gettime(hour, minute, second);

	format(datetime, sizeof(datetime), "%04i-%02i-%02i %02i:%02i:%02i", year, month, day, hour, minute, second);
	return datetime;
}

/*
 *  Check if a timestamp is valid (quick and ugly)
 *  @return	true if the string is in the form 'YYYY-MM-DD HH:MM:SS'
 */
stock bool:IsValidTimeStamp(const string[])
{
	new year, month, day, hour, minute, second;

	if(!strwild("????-??-?? ??:??:??", string) || strscan(string, "-- iii -: iii", year, month, day, hour, minute, second)) return false;
	return 1970 <= year <= 2038 && 1 <= month <= 12 && 00 <= day <= 31 && 00 <= hour <= 23 && 00 <= minute <= 59 && 00 <= second <= 59;
}

/*
 *  Return a floating point random number
 *
stock Float:frandom(Float:max, Float:min = 0.0, dp = 4)
{
	new Float:mul = floatpower(10.0, dp),
		imin = floatround(min * mul),
		imax = floatround(max * mul);
	return float(random(imax - imin) + imin) / mul;
}
*/
