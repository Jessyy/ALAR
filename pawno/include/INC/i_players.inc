/**
 *	Any Last Administrative Requests - i_players.inc
 *		Player functions
 *	
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_players_included
	#endinput
#endif
#define _inc_players_included

#include <a_samp>

/**
	native ReturnPlayerName(playerid);
	native ReturnPlayerID(const playername[]);
	
	native ReturnPlayerIP(playerid);
	
	native FindPlayer(const string[]);
	native FindClosestPlayer(playerid);
	
	FormatSpecifier<'P'>(output[], playerid);
*/

#include "i_foreach"
#include "i_string"

/**
 *  Return a player's name
 *  @param	playerid	The playerid of the player
 *  @return	A string containing the player's name
 */
stock ReturnPlayerName(playerid)
{
	new pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof(pname));
	return pname;
}

/**
 *  Finds a playerid from a player's name, or part of a player's name
 *  @param	playername	The full or partial name of a player
 *  @return	The playerid of the player, or INVALID_PLAYER_ID if there were no matches
 */
stock ReturnPlayerID(const playername[])
{
	if(playername[0] == 0) {
		return INVALID_PLAYER_ID;
	}
	
	new pid = INVALID_PLAYER_ID,
		bool:found,
		pname[MAX_PLAYER_NAME],
		length = strlen(playername);
	
	foreach(new i : Player) {
		GetPlayerName(i, pname, sizeof(pname));
		new j = strfind(pname, playername, true);
		if((j == 0) && (strlen(pname) == length)) {
			return i;
		}
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
 *  Return a player's IP
 *  @param	playerid	The playerid of the player
 *  @return	A string containing the player's IP
 */
stock ReturnPlayerIP(playerid)
{
	new pIP[MAX_IP];
	GetPlayerIp(playerid, pIP, sizeof(pIP));
	return pIP;
}

/**
 *  Finds a playerid from a player's name, part of a player's name, or a playerid
 *  @param	string	The full or partial name of a player, or a playerid
 *  @return	The playerid of the player, or INVALID_PLAYER_ID if there were no matches
 */
stock FindPlayer(const string[])
{
	new id = strval(string);
	if(isNumeric(string) && id >= 0 && id < GetMaxPlayers()) {
		return IsPlayerConnected(id) ? (id) : (INVALID_PLAYER_ID);
	}
	return ReturnPlayerID(string);
}

/**
 *  Finds the closest player to a player, looking first for players in the same virtual world
 *  @param	playerid	The playerid of the player to search around
 *  @return	The playerid of the closest player, or INVALID_PLAYER_ID if noone was found
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
		sameid = INVALID_PLAYER_ID, Float:samedist = FLOAT_POS_INFINITY,
		id = INVALID_PLAYER_ID, Float:dist = FLOAT_POS_INFINITY;
	
	GetPlayerPos(playerid, px, py, pz);
	world = GetPlayerVirtualWorld(playerid);
	
	foreach(new i : Player) {
		if(i != playerid && IsSpawned(i)) {
			GetPlayerPos(i, tmpx, tmpy, tmpz);
			new Float:tmpdist = tmpx * tmpx + tmpy * tmpy + tmpz * tmpz;
			if(GetPlayerVirtualWorld(i) == world) {
				if(tmpdist < samedist) {
					sameid = i;
				}
			}
			else {
				if(tmpdist < dist) {
					id = i;
				}
			}
		}
	}
	return (sameid == INVALID_PLAYER_ID) ? (id) : (sameid);
}

#if defined _inc_formatex_included
	/**
	 *  
	 */
	FormatSpecifier<'P'>(output[], playerid)
	{
		strcat(output, ReturnPlayerName(playerid));
	}
#endif
