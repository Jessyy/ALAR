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

enum (<<=1) {
	ADMIN_STATE_MUTED = 1,
	ADMIN_STATE_FROZEN,
	ADMIN_STATE_JAILED,
	ADMIN_STATE_HIDDEN,
	ADMIN_STATE_DESYNCED
};

// --------------------------------------------------
// Functions
// --------------------------------------------------

/*
	native AddJoinLine(playerid, colour, const string[]);
	native AddAdminLogLine(colour, const string[]);

	native BanPlayerid(playerid, const reason[]="No reason", const adminname[]="\01");
	native SuspendPlayerid(playerid, Float:hours, const reason[]="No reason", const adminname[]="\01");

	native IsPlayerScriptAdmin(playerid);
	native GetAdminLevel(playerid);
	native GetAdminSpectating(playerid);
	native SetAdminSpectating(playerid, targetid, bool:saveplayer);
	native DisableAdminSpectating(playerid);
	native ClearAdminSpawnData(playerid);
	native GetAdminState(playerid);
	native SetAdminState(playerid, newstate, seconds);
	native ClearAdminState(playerid, newstate);
*/

#define AddJoinLine(%1,%2,%3)		(CallRemoteFunction("alar_AddJoinLine", "iis", %1, %2, %3))
#define AddAdminLogLine(%1,%2)		(CallRemoteFunction("alar_AddAdminLogLine", "is", %1, %2))
#define GetAdminLevel(%1)			(CallRemoteFunction("alar_GetAdminLevel", "i", %1))
#define DisableAdminSpectating(%1)	(CallRemoteFunction("alar_DisableAdminSpectating", "i", %1))
#define ClearAdminSpawnData(%1)		(CallRemoteFunction("alar_ClearAdminSpawnData", "i", %1))
#define GetAdminState(%1)			(CallRemoteFunction("alar_GetAdminState", "i", %1))
#define ClearAdminState(%1,%2)		(CallRemoteFunction("alar_ClearAdminState", "ii", %1, %2))
#define IsPlayerScriptAdmin(%1)		(IsPlayerAdmin(%1) || CallRemoteFunction("alar_GetAdminLevel", "i", %1) > 0)

stock GetAdminSpectating(playerid)
{
	new specID = CallRemoteFunction("alar_GetAdminSpectating", "i", playerid);
	if(specID) {
		if(specID == FREE_SPECTATE_ID) return FREE_SPECTATE_ID;
		return specID - 1;
	}
	return INVALID_PLAYER_ID;
}

stock SetAdminSpectating(playerid, targetid=INVALID_PLAYER_ID, bool:saveplayer=false)
{
	return CallRemoteFunction("alar_SetAdminSpectating", "iii", playerid, targetid, saveplayer);
}

stock SetAdminState(playerid, newstate, seconds=0)
{
	return CallRemoteFunction("alar_SetAdminState", "iii", playerid, newstate, seconds);
}

stock BanPlayerid(playerid, const reason[]="No reason", const adminname[]="\01")
{
	return CallRemoteFunction("alar_BanPlayer", "iss", playerid, reason, adminname);
}

stock SuspendPlayerid(playerid, Float:hours, const reason[]="No reason", const adminname[]="\01")
{
	return CallRemoteFunction("alar_SuspendPlayer", "ifss", playerid, hours, reason, adminname);
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

// --------------------------------------------------
// Forwards (Callback declarations)
// --------------------------------------------------

forward OnAdminLogin(playerid, level);
forward OnAdminLogout(playerid);

forward OnAdminStateChange(playerid, newstate, oldstate);
forward OnAdminNameChange(playerid, newname[], oldname[]);
forward OnAdminSpectate(playerid, newid, oldid);
