/*
 *	Any Last Administrative Requests - alar.inc
 *		Alar gamemode include
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


#if defined _alar_included
	#endinput
#endif
#define _alar_included

#include <a_samp>

// --------------------------------------------------
// Defines
// --------------------------------------------------

#define FREE_SPECTATE_ID	-1
#define ALAR_PROPERTY_ID	41412

enum (<<=1) {
	ADMIN_STATE_MUTED = 1,
	ADMIN_STATE_FROZEN,
	ADMIN_STATE_JAILED,
	ADMIN_STATE_HIDDEN,
	ADMIN_STATE_DESYNCED
};

enum (<<=1) {
	HISTORY_ADMIN_ONLY = 1,
	HISTORY_PLAYER_ONLY,
	HISTORY_WRAPPED
};

enum E_SPAWNTYPE {
	SPAWN_ALAR_SPAWN = -3,
	SPAWN_ALAR_STATE,
	SPAWN_ALAR_TIMER,
	SPAWN_DEFAULT,
	SPAWN_GAMEMODE_TIMER,
	SPAWN_GAMEMODE_STATE,
	SPAWN_GAMEMODE_SPAWN
};

enum E_INFOTYPE (<<=1) {
	INFOTYPE_POSITION = 1,
	INFOTYPE_WORLD,
	INFOTYPE_WEAPONS,
	INFOTYPE_CASH,
	INFOTYPE_HEALTH,
	INFOTYPE_ARMOUR
};

// --------------------------------------------------
// Functions
// --------------------------------------------------

/*
	native GetAlarVersion(version[]="", maxlength=sizeof(version));

	native AddJoinLine(playerid, colour, const string[]);
	native AddAdminLogLine(colour, const string[]);

	native BanPlayer(const playername[]="\01", const playerip[]="\01", const reason[]="No reason", const adminname[]="\01");
	native BanPlayerid(playerid, const reason[]="No reason", const adminname[]="\01");
	native SuspendPlayer(const playername[]="\01", const playerip[]="\01", Float:hours, const reason[]="No reason", const adminname[]="\01");
	native SuspendPlayerid(playerid, Float:hours, const reason[]="No reason", const adminname[]="\01");

	native IsPlayerScriptAdmin(playerid);
	native GetAdminLevel(playerid);

	native GetAdminSpectating(playerid);
	native SetAdminSpectating(playerid, targetid, bool:saveplayer);
	native DisableAdminSpectating(playerid);
	native ClearAdminSpawnData(playerid);
	native SetSpawnType(spawntype, E_INFOTYPE:spawnsaves);

	native GetAdminState(playerid);
	native SetAdminState(playerid, newstate, seconds);
	native ClearAdminState(playerid, newstate);

	native HistoryAddMessage(const playername[], colour, const message[], flags=0);
	native HistoryAddLine(colour, const message[], flags=0);
	native HistoryClear();
*/

/**
 *  Send a custom join message just before kicking a player
 *  @param	playerid	The playerid of the player to be kicked
 *  @param	colour		The colour of the message
 *  @param	string		The kick reason
 *  @return	1 if the message was sent successfully, otherwise 0
 */
#define AddJoinLine(%1,%2,%3)		(CallRemoteFunction("alar_AddJoinLine", "iis", %1, %2, %3))

/**
 *  Add a message to the admin log
 *  @param	colour		The colour of the message
 *  @param	string		The message
 *  @return	1 if the message was added successfully, otherwise 0
 */
#define AddAdminLogLine(%1,%2)		(CallRemoteFunction("alar_AddAdminLogLine", "is", %1, %2))

/**
 *  Get a player's admin level
 *  @param	playerid	The playerid of the player
 *  @return	The level of the player, or 0 if no player is found
 */
#define GetAdminLevel(%1)			(CallRemoteFunction("alar_GetAdminLevel", "i", %1))

/**
 *  Remove an admin from admin spec
 *  @param	playerid	The playerid of the admin
 *  @return	1 if the player was spawned, otherwise 0
 */
#define DisableAdminSpectating(%1)	(CallRemoteFunction("alar_DisableAdminSpectating", "i", %1))

/**
 *  Clear the spawn data of an admin is admin spec, forcing them to use the gamemode spawn info
 *  @param	playerid	The playerid of the admin
 *  @return	1 if the data was cleared, otherwise 0
 */
#define ClearAdminSpawnData(%1)		(CallRemoteFunction("alar_ClearAdminSpawnData", "i", %1))

/**
 *  Get the state of a player (muted/frozen etc)
 *  @param	playerid	The playerid of the player
 *  @return	A mask of the state bits (ADMIN_STATE_MUTED/ADMIN_STATE_FROZEN etc)
 */
#define GetAdminState(%1)			(CallRemoteFunction("alar_GetAdminState", "i", %1))

/**
 *  Clear the state of a player (ie unmute/unjail etc)
 *  @param	playerid	The playerid of the player
 *  @param	newstate	A mask of the states to clear
 *  @return	1 if alar is loaded and the player is connected, otherwise 0
 */
#define ClearAdminState(%1,%2)		(CallRemoteFunction("alar_ClearAdminState", "ii", %1, %2))

/**
 *  Check if a player is either and RCON or alar admin
 *  @param	playerid	The playerid of the player
 *  @return	true if the player is an admin, otherwise false
 */
#define IsPlayerScriptAdmin(%1)		(IsPlayerAdmin(%1) || CallRemoteFunction("alar_GetAdminLevel", "i", %1) > 0)

/**
 *  Check if a player is either and RCON or alar admin
 *  @return	1 if the history was cleared, otherwise 0
 */
#define HistoryClear(%1)			(CallRemoteFunction("alar_ClearHistory", ""))

/**
 *  Get the version number of alar
 *  @param	version		A string to store the version number in
 *  @param	maxlength	The size of the version string
 *  @return	true if alar is loaded, otherwise false
 */
stock GetAlarVersion(version[]="", maxlength=sizeof(version))
{
	if(existproperty(.value = ALAR_PROPERTY_ID)) {
		if(maxlength > 1) {
			new tmp[128];
			getproperty(.value = ALAR_PROPERTY_ID, .string = tmp);
			strunpack(version, tmp, maxlength);
		}
		return true;
	}
	return false;
}

/**
 *  Get the playerid of the person an admin is spectating
 *  @param	playerid	The playerid of the admin
 *  @return	The playerid of the player being spectated, FREE_SPECTATE_ID if the admin is in free spec,
 *			or INVALID_PLAYER_ID if they are not spectating anyone
 */
stock GetAdminSpectating(playerid)
{
	new specID = CallRemoteFunction("alar_GetAdminSpectating", "i", playerid);
	if(specID) {
		if(specID == FREE_SPECTATE_ID) return FREE_SPECTATE_ID;
		return specID - 1;
	}
	return INVALID_PLAYER_ID;
}

/**
 *  Set an admin spectating another player
 *  @param	playerid	The playerid of the admin
 *  @param	targetid	The playerid of player to be spectated
 *  @param	saveplayer	Whether the playerid should be saved as the last person the admin spectated
 *  @return	1 if the admin was put into spectate mode, otherwise 0
 */
stock SetAdminSpectating(playerid, targetid=INVALID_PLAYER_ID, bool:saveplayer=false)
{
	return CallRemoteFunction("alar_SetAdminSpectating", "iii", playerid, targetid, saveplayer);
}

/**
 *  Set which data should be saved when an admin goes into spectate mode, and how it should be restored
 *  @param	spawnytype	How the data should be restored (SPAWN_ALAR_SPAWN/SPAWN_ALAR_STATE etc)
 *  @param	spawnsaves	A mask of which data should be stored (INFOTYPE_POSITION/INFOTYPE_WORLD etc)
 *  @return	1 if alar is loaded, otherwise 0
 */
stock SetSpawnType(E_SPAWNTYPE:spawnytype, E_INFOTYPE:spawnsaves=INFOTYPE_POSITION|INFOTYPE_WORLD|INFOTYPE_WEAPONS|INFOTYPE_CASH|INFOTYPE_HEALTH|INFOTYPE_ARMOUR)
{
	return CallRemoteFunction("alar_SetSpawnType", "ii", _:spawnytype, _:spawnsaves);
}

/**
 *  Set the state of a player (muted/jailed etc)
 *  @param	newstate	A mask of the states to be set (ADMIN_STATE_MUTED/ADMIN_STATE_JAILED etc)
 *  @param	seconds		The number of seconds to set the state for (0 or less for it to be permanent)
 *  @return	1 if the player is connected, otherwise false
 */
stock SetAdminState(playerid, newstate, seconds=0)
{
	return CallRemoteFunction("alar_SetAdminState", "iii", playerid, newstate, seconds);
}

/**
 *  Ban a player
 *  @param	playername	The name to be banned
 *  @param	playerip	The IP to be banned
 *  @param	reason		The reason for the ban
 *  @param	adminname	The name of the admin responsible the ban
 *  @return	1 if alar is loaded
 */
stock BanPlayer(const playername[]="\01", const playerip[]="\01", const reason[]="No reason", const adminname[]="\01")
{
	return CallRemoteFunction("alar_Ban", "ssss", playername, playerip, reason, adminname);
}

/**
 *  Ban a player
 *  @param	playerid	The playerid of the player to be banned
 *  @param	reason		The reason for the ban
 *  @param	adminname	The name of the admin responsible the ban
 *  @return	1 if alar is loaded
 */
stock BanPlayerid(playerid, const reason[]="No reason", const adminname[]="\01")
{
	return CallRemoteFunction("alar_BanPlayer", "iss", playerid, reason, adminname);
}

/**
 *  Suspend a player
 *  @param	playername	The name to be suspended
 *  @param	playerip	The IP to be suspended
 *  @param	hours		The number of hours to suspend for
 *  @param	reason		The reason for the suspension
 *  @param	adminname	The name of the admin responsible the suspension
 *  @return	1 if alar is loaded
 */
stock SuspendPlayer(const playername[]="\01", const playerip[]="\01", Float:hours, const reason[]="No reason", const adminname[]="\01")
{
	return CallRemoteFunction("alar_Suspend", "ssfss", playername, playerip, hours, reason, adminname);
}

/**
 *  Suspend a player
 *  @param	playerid	The playerid for the player to be suspended
 *  @param	hours		The number of hours to suspend for
 *  @param	reason		The reason for the suspension
 *  @param	adminname	The name of the admin responsible the suspension
 *  @return	1 if alar is loaded
 */
stock SuspendPlayerid(playerid, Float:hours, const reason[]="No reason", const adminname[]="\01")
{
	return CallRemoteFunction("alar_SuspendPlayer", "ifss", playerid, hours, reason, adminname);
}

/**
 *  Add a message to the chat history
 *  @param	playername	The name of the player who sent the message
 *  @param	colour		The colour of the message
 *  @param	message		The message
 *  @param	flags		A mask of the message flags (HISTORY_ADMIN_ONLY, HISTORY_PLAYER_ONLY and HISTORY_WRAPPED)
 *  @return	1 if the message was added to the chat history, otherwise 0
 */
stock HistoryAddMessage(const playername[], colour, const message[], flags=0)
{
	return CallRemoteFunction("alar_AddMessageToHistory", "sisi", playername, colour, message, flags);
}

/**
 *  Add a line to the chat history
 *  @param	colour		The colour of the line
 *  @param	message		The message
 *  @param	flags		A mask of the message flags (HISTORY_ADMIN_ONLY, HISTORY_PLAYER_ONLY and HISTORY_WRAPPED)
 *  @return	1 if the message was added to the chat history, otherwise 0
 */
stock HistoryAddLine(colour, const message[], flags=0)
{
	return CallRemoteFunction("alar_AddLineToHistory", "isi", colour, message, flags);
}

// --------------------------------------------------
// Redefined functions
// --------------------------------------------------

stock alarSetPlayerVirtualWorld(playerid, worldid)
{
	if(SetPlayerVirtualWorld(playerid, worldid)) {
		CallRemoteFunction("alar_OnPlayerWorldChange", "ii", playerid, worldid);
		return 1;
	}
	return 0;
}
#define SetPlayerVirtualWorld(%1)	alarSetPlayerVirtualWorld(%1)

stock alarPutPlayerInVehicle(playerid, vehicleid, seatid)
{
	new vid = GetPlayerVehicleID(playerid),
		ret = PutPlayerInVehicle(playerid, vehicleid, seatid);
	if(vid && ret && vid != vehicleid) {
		CallRemoteFunction("alar_OnPlayerVehicleChange", "ii", playerid, vehicleid);
	}
	return ret;
}
#define PutPlayerInVehicle(%1)		alarPutPlayerInVehicle(%1)

stock alarPlayerSpectatePlayer(playerid, targetplayerid, mode = SPECTATE_MODE_NORMAL)
{
	if(PlayerSpectatePlayer(playerid, targetplayerid, mode)) {
		CallRemoteFunction("alar_OnPlayerSpectate", "ii", playerid, targetplayerid);
		return 1;
	}
	return 0;
}
#define PlayerSpectatePlayer(%1)	alarPlayerSpectatePlayer(%1)

stock alarPlayerSpectateVehicle(playerid, targetvehicleid, mode = SPECTATE_MODE_NORMAL)
{
	if(PlayerSpectatePlayer(playerid, targetvehicleid, mode)) {
		CallRemoteFunction("alar_OnPlayerSpectateVehicle", "ii", playerid, targetvehicleid);
		return 1;
	}
	return 0;
}
#define PlayerSpectateVehicle(%1)	alarPlayerSpectateVehicle(%1)

// --------------------------------------------------
// Forwards (Callback declarations)
// --------------------------------------------------

forward OnAlarInit();
forward OnAlarExit();

forward OnAdminLogin(playerid, level);
forward OnAdminLogout(playerid);

forward OnAdminStateChange(playerid, newstate, oldstate);
forward OnAdminNameChange(playerid, newname[], oldname[]);
forward OnAdminSpectate(playerid, newid, oldid);
