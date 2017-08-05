/*
 *	Any Last Administrative Requests - Data.inc
 *		Data saving interface (SQL)
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


#if defined _alar_data_included
	#endinput
#endif
#define _alar_data_included

/*
	native Admin_Init(DB:db);
	native Admin_GetHighestLevel(DB:db, const playername[]="", const playerip[]="");
	native bool:Admin_GetData(DB:db, const playername[], LoginData[E_LOGINDATA]);
	native bool:Admin_SetAdmin(DB:db, const playername[], LoginData[E_LOGINDATA], bool:online=true);
	native bool:Admin_RemoveAdmin(DB:db, const playername[]);
	native bool:Admin_Hidden(DB:db, const playername[], bool:hidden);
	native bool:Admin_Manuallogin(DB:db, const playername[]);
	native bool:Admin_Password(DB:db, const playername[], const password[]);
	native bool:Admin_Update(DB:db, const playername[], const playerip[], bool:hidden, logpage, bool:spechud);

	native Alias_Init(DB:db);
	native bool:Alias_Add(DB:db, const playername[], const playerip[]);
	native bool:Alias_Update(DB:db, const playername[], const playerip[], seconds);
	native Alias_GetLastIP(DB:db, const playername[]);
	native Alias_GetAliasFromName(DB:db, const playername[], names[], maxlength=sizeof(names));
	native Alias_GetAliasFromIP(DB:db, const playerip[], names[], maxlength=sizeof(names));
	native Alias_GetAlias2FromName(DB:db, const playername[], names[], maxlength=sizeof(names));
	native Alias_GetAlias2FromIP(DB:db, const playerip[], names[], maxlength=sizeof(names));
	native Alias_GetAlias3FromName(DB:db, const playername[], names[], maxlength=sizeof(names));
	native Alias_GetIPsFromName(DB:db, const playername[], IPs[], maxlength=sizeof(IPs));

	native Gamemodes_Init(DB:db);
	native bool:Gamemodes_Exists(DB:db, const search[], name[], maxlength=sizeof(name));
	native Gamemodes_List(DB:db, string[], const seperator[]="  ", maxlength=sizeof(string));

	native Player_Init(DB:db);
	native bool:Player_GetData(DB:db, const playername[], const playerip[], SaveData[E_SAVEDATA]);
	native bool:Player_SetImmune(DB:db, const playername[], bool:immune);
	native bool:Player_SetJointext(DB:db, const playername[], bool:jointext);
	native bool:Player_SetStatus(DB:db, const playerip[], status, time=0);
	native bool:Player_ClearStatus(DB:db, const playerip[], status);
	native bool:Player_ClearAllStatus(DB:db);

	native Setting_Init(DB:db);
	native bool:Setting_LoadString(DB:db, const setting[], const value[], dest[], maxlength=sizeof(dest));
	native bool:Setting_LoadBool(DB:db, const setting[], bool:value, &bool:dest);
	native bool:Setting_LoadInt(DB:db, const setting[], value, &dest);
	native bool:Setting_GetString(DB:db, const setting[], dest[], maxlength=sizeof(dest));
	native bool:Setting_GetBool(DB:db, const setting[], &bool:dest);
	native bool:Setting_GetInt(DB:db, const setting[], &dest);
	native bool:Setting_SetString(DB:db, const setting[], const value[]);
	native bool:Setting_SetBool(DB:db, const setting[], bool:value);
	native bool:Setting_SetInt(DB:db, const setting[], value);
*/

#include <a_samp>
/*
#tryinclude "alar/String"
#if !defined _alar_string_included
	#include <alar/String>
#endif

#tryinclude "alar/IP2c"
#if !defined _alar_ip2c_included
	#include <alar/IP2c>
#endif

#tryinclude "alar/Hash"
#if !defined _alar_hash_included
	#include <alar/Hash>
#endif
*/
enum E_LOGINDATA {
	E_LOGIN_LEVEL,
	E_LOGIN_IP[MAX_IP],
	E_LOGIN_HASH[MAX_HASH_LENGTH],
	bool:E_LOGIN_HIDDEN,
	E_LOGIN_PAGE,
	bool:E_LOGIN_MANUAL,
	bool:E_LOGIN_HUD
}; stock SIZE_E_LOGINDATA[E_LOGINDATA];

enum E_SAVEDATA {
	E_SAVE_JOINTEXT,
	bool:E_SAVE_IMMUNE,
	bool:E_SAVE_MUTED,
	E_SAVE_MUTETIME,
	bool:E_SAVE_JAILED,
	E_SAVE_JAILTIME,
	bool:E_SAVE_FROZEN,
	E_SAVE_FREEZETIME,
}; stock SIZE_E_SAVEDATA[E_SAVEDATA];

/*
 *  Initialise the admin table
 *	@param	db			The database
 */
stock Admin_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Admins` ( `name` TEXT NOT NULL PRIMARY KEY COLLATE NOCASE , `ip` TEXT , `level` INTEGER NOT NULL CHECK ( typeof (`level`) = 'integer' AND `level` > 0 ) , `password` TEXT NOT NULL , `lastonline` TEXT DEFAULT CURRENT_TIMESTAMP , `hidden` TEXT DEFAULT 'false' , `logpage` INTEGER DEFAULT 1 , `manuallogin` TEXT DEFAULT 'false' , `spechud` TEXT DEFAULT 'false' )"));
	}
}

/*
 *  Find the highest admin level with the matching name or ip
 *  @param	db			The database
 *  @param	playername	The admin name ("" for any)
 *  @param	playerid	The admin IP ("" for any)
 *  @return The highest admin level
 */
stock Admin_GetHighestLevel(DB:db, const playername[]="", const playerip[]="")
{
	if(db) {
		new string[170 + MAX_PLAYER_NAME + MAX_IP];
		if(isnull(playername)) {
			if(isnull(playerip)) {
				string = "SELECT `level` FROM `Admins` ORDER BY `level` DESC LIMIT 1";
			} else {
				format(string, sizeof(string), "SELECT `level` FROM `Admins` WHERE ( `ip` GLOB '%s' ) ORDER BY `level` DESC LIMIT 1", playerip);
			}
		} else {
			if(isnull(playerip)) {
				format(string, sizeof(string), "SELECT `level` FROM `Admins` WHERE ( `name` LIKE replace(replace(replace('%s','_','~_'),'*','%%'),'?','_') ESCAPE '~' ) ORDER BY `level` DESC LIMIT 1", playername);
			} else {
				format(string, sizeof(string), "SELECT `level` FROM `Admins` WHERE ( `ip` GLOB '%s' OR `name` LIKE replace(replace(replace('%s','_','~_'),'*','%%'),'?','_') ESCAPE '~' ) ORDER BY `level` DESC LIMIT 1", playerip, playername);
			}
		}
		new DBResult:result = db_query(DB:db, string);
		if(db_num_rows(result)) {
			db_get_field(result, 0, string, sizeof(string));
			db_free_result(result);
			return strval(string);
		}
		db_free_result(result);
	}
	return 0;
}

/*
 *  Get the account info of an admin
 *  @param	db			The database
 *  @param	playername	The admin name
 *  @param	LoginData	The admin data
 */
stock bool:Admin_GetData(DB:db, const playername[], LoginData[E_LOGINDATA])
{
	if(db) {
		new string[270 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ifnull(`ip`,'') AS `ip` , `level` , `password` , ifnull(`hidden`,'false') AS `hidden` , ifnull(`logpage`,0) AS `logpage` , ifnull(`manuallogin`,'false') AS `manuallogin` , ifnull(`spechud`,'false') AS `spechud` FROM `Admins` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "ip", LoginData[E_LOGIN_IP], sizeof(SIZE_E_LOGINDATA[E_LOGIN_IP]));
			db_get_field_assoc(result, "password", LoginData[E_LOGIN_HASH], sizeof(SIZE_E_LOGINDATA[E_LOGIN_HASH]));

			db_get_field_assoc(result, "level", string, sizeof(string));
			LoginData[E_LOGIN_LEVEL] = strval(string);

			db_get_field_assoc(result, "hidden", string, sizeof(string));
			LoginData[E_LOGIN_HIDDEN] = string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0);

			db_get_field_assoc(result, "logpage", string, sizeof(string));
			LoginData[E_LOGIN_PAGE] = strval(string);

			db_get_field_assoc(result, "manuallogin", string, sizeof(string));
			LoginData[E_LOGIN_MANUAL] = string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0);

			db_get_field_assoc(result, "spechud", string, sizeof(string));
			LoginData[E_LOGIN_HUD] = string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0);

			db_free_result(result);
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/*
 *  Add or overwrite an admin account
 *  @param	db			The database
 *  @param	playername	The admin name
 *  @param	LoginData	The admin data
 *  @param	online		If the admin is currently online
 */
stock bool:Admin_SetAdmin(DB:db, const playername[], LoginData[E_LOGINDATA], bool:online=true)
{
	if(db) {
		new string[280 + MAX_PLAYER_NAME + MAX_HASH_LENGTH + MAX_IP];
		format(string, sizeof(string), "SELECT ROWID FROM `Admins` WHERE ( `name` = '%s' )", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			if(online) {
				format(string, sizeof(string), "UPDATE `Admins` SET `ip` = '%s' , `level` = %i , `password` = '%s' , `lastonline` = CURRENT_TIMESTAMP , `hidden` = '%s' , `logpage` =  %i , `manuallogin` = '%s' , `spechud` = '%s' WHERE ( `name` = '%s' )", LoginData[E_LOGIN_IP], LoginData[E_LOGIN_LEVEL], LoginData[E_LOGIN_HASH], LoginData[E_LOGIN_HIDDEN] ? ("true") : ("false"), LoginData[E_LOGIN_PAGE], LoginData[E_LOGIN_MANUAL] ? ("true") : ("false"), LoginData[E_LOGIN_HUD] ? ("true") : ("false"), playername);
			} else {
				if(isnull(LoginData[E_LOGIN_IP])) {
					format(string, sizeof(string), "UPDATE `Admins` SET `ip` = NULL , `level` = %i , `password` = '%s' , `lastonline` = NULL , `hidden` = '%s' , `logpage` = %i , `manuallogin` = '%s' , `spechud` = '%s' WHERE ( `name` = '%s' )", LoginData[E_LOGIN_LEVEL], LoginData[E_LOGIN_HASH], LoginData[E_LOGIN_HIDDEN] ? ("true") : ("false"), LoginData[E_LOGIN_PAGE], LoginData[E_LOGIN_MANUAL] ? ("true") : ("false"), LoginData[E_LOGIN_HUD] ? ("true") : ("false"), playername);
				} else {
					format(string, sizeof(string), "UPDATE `Admins` SET `ip` = '%s' , `level` = %i , `password` = '%s' , `lastonline` = NULL , `hidden` = '%s' , `logpage` = %i , `manuallogin` = '%s' , `spechud` = '%s' WHERE ( `name` = '%s' )", LoginData[E_LOGIN_IP], LoginData[E_LOGIN_LEVEL], LoginData[E_LOGIN_HASH], LoginData[E_LOGIN_HIDDEN] ? ("true") : ("false"), LoginData[E_LOGIN_PAGE], LoginData[E_LOGIN_MANUAL] ? ("true") : ("false"), LoginData[E_LOGIN_HUD] ? ("true") : ("false"), playername);
				}
			}
		} else {
			if(online) {
				format(string, sizeof(string), "REPLACE INTO `Admins` ( `name` , `ip` , `level` , `password` , `hidden` , `logpage` , `manuallogin` , `spechud` ) VALUES ( '%s' , '%s' , %i , '%s' , '%s' , %i , '%s' , '%s' )", playername, LoginData[E_LOGIN_IP], LoginData[E_LOGIN_LEVEL], LoginData[E_LOGIN_HASH], LoginData[E_LOGIN_HIDDEN] ? ("true") : ("false"), LoginData[E_LOGIN_PAGE], LoginData[E_LOGIN_MANUAL] ? ("true") : ("false"), LoginData[E_LOGIN_HUD] ? ("true") : ("false"));
			} else {
				if(isnull(LoginData[E_LOGIN_IP])) {
					format(string, sizeof(string), "REPLACE INTO `Admins` ( `name` , `level` , `password` , `lastonline` , `hidden` , `logpage` , `manuallogin` , `spechud` ) VALUES ( '%s' , %i , '%s' , NULL , '%s' , %i , '%s' , '%s' )", playername, LoginData[E_LOGIN_LEVEL], LoginData[E_LOGIN_HASH], LoginData[E_LOGIN_HIDDEN] ? ("true") : ("false"), LoginData[E_LOGIN_PAGE], LoginData[E_LOGIN_MANUAL] ? ("true") : ("false"), LoginData[E_LOGIN_HUD] ? ("true") : ("false"));
				} else {
					format(string, sizeof(string), "REPLACE INTO `Admins` ( `name` , `ip` , `level` , `password` , `lastonline` , `hidden` , `logpage` , `manuallogin` , `spechud` ) VALUES ( '%s' , '%s' , %i , '%s' , NULL , '%s' , %i , '%s' , '%s' )", playername, LoginData[E_LOGIN_IP], LoginData[E_LOGIN_LEVEL], LoginData[E_LOGIN_HASH], LoginData[E_LOGIN_HIDDEN] ? ("true") : ("false"), LoginData[E_LOGIN_PAGE], LoginData[E_LOGIN_MANUAL] ? ("true") : ("false"), LoginData[E_LOGIN_HUD] ? ("true") : ("false"));
				}
			}
		}

		db_free_result(result);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Remove an admin account
 *  @param	db			The database
 *  @param	playername	The admin name
 */
stock bool:Admin_RemoveAdmin(DB:db, const playername[])
{
	if(db) {
		new string[50 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "DELETE FROM `Admins` WHERE ( `name` = '%s' )", playername);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Set if an admin is hidden
 *  @param	db			The database
 *  @param	playername	The admin name
 *  @param	hidden		If they are hidden
 */
stock bool:Admin_Hidden(DB:db, const playername[], bool:hidden)
{
	if(db) {
		new string[70 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "UPDATE `Admins` SET `hidden` = '%s' WHERE ( `name` = '%s' )", hidden ? ("true") : ("false"), playername);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Toggles if an admin needs to login manually
 *  @param	db			The database
 *  @param	playername	The admin name
 *  @return If an admin needs to login manually
 */
stock bool:Admin_Manuallogin(DB:db, const playername[])
{
	if(db) {
		new string[150 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ifnull(`manuallogin`,'false') AS `manuallogin` FROM `Admins` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "manuallogin", string, sizeof(string));
			new bool:manuallogin = !(string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0));
			db_free_result(result);
			format(string, sizeof(string), "UPDATE `Admins` SET `manuallogin` = '%s' WHERE ( `name` = '%s' )", manuallogin ? ("true") : ("false"), playername);
			db_free_result(db_query(db, string));
			return manuallogin;
		}
		db_free_result(result);
	}
	return false;
}

/*
 *  Sets an admin's password
 *  @param	db			The database
 *  @param	playername	The admin name
 *  @param	password	The password hash
 */
stock bool:Admin_Password(DB:db, const playername[], const password[])
{
	if(db) {
		new string[70 + MAX_HASH_LENGTH + MAX_PLAYER_NAME];
		format(string, sizeof(string), "UPDATE `Admins` SET `password` = '%s' WHERE ( `name` = '%s' )", password, playername);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Updates an admin's settings
 *  @param	db			The database
 *  @param	playername	The admin name
 *  @param	playerip	The admin's IP, or "NULL" to unset it
 *  @param	hidden		If the admin is hidden
 *  @param	logpage		The admin's log page
 *  @param	spechud		If the admin's spec hud is enabled
 */
stock bool:Admin_Update(DB:db, const playername[], const playerip[], bool:hidden, logpage, bool:spechud)
{
	if(db) {
		new string[180 + MAX_PLAYER_NAME + MAX_IP];
		if(!isnull(playerip)) {
			if(strcmp(playerip, "NULL") == 0) {
				format(string, sizeof(string), "UPDATE `Admins` SET `ip` = NULL , `hidden` = '%s', `logpage` = %i , `spechud` = '%s' , `lastonline` = CURRENT_TIMESTAMP WHERE ( `name` = '%s' )", hidden ? ("true") : ("false"), logpage, spechud ? ("true") : ("false"), playername);
			} else {
				format(string, sizeof(string), "UPDATE `Admins` SET `ip` = '%s' , `hidden` = '%s', `logpage` = %i , `spechud` = '%s' , `lastonline` = CURRENT_TIMESTAMP WHERE ( `name` = '%s' )", playerip, hidden ? ("true") : ("false"), logpage, spechud ? ("true") : ("false"), playername);
			}
		} else {
			format(string, sizeof(string), "UPDATE `Admins` SET `hidden` = '%s', `logpage` = %i , `spechud` = '%s' , `lastonline` = CURRENT_TIMESTAMP WHERE ( `name` = '%s' )", hidden ? ("true") : ("false"), logpage, spechud ? ("true") : ("false"), playername);
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Initialise the alias table
 *	@param	db			The database
 */
stock Alias_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Aliases` ( `name` TEXT NOT NULL COLLATE NOCASE , `ip` TEXT NOT NULL , `datetime` TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP , `onlinetime` INTEGER NOT NULL DEFAULT 0 , PRIMARY KEY ( `name` , `ip` ) )"));
	}
}

/*
 *  Add or update an alias
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	playerip	The player IP
 */
stock bool:Alias_Add(DB:db, const playername[], const playerip[])
{
	if(db && !isnull(playername) && !isnull(playerip)) {
		new string[100 + MAX_PLAYER_NAME + MAX_IP];
		format(string, sizeof(string), "SELECT ROWID FROM `Aliases`  WHERE ( `name` = '%s' AND `ip` = '%s' )", playername, playerip);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field(result, 0, string, sizeof(string));
			db_free_result(result);
			format(string, sizeof(string), "UPDATE `Aliases` SET `datetime` = CURRENT_TIMESTAMP WHERE ( ROWID = %s )", string);
			db_free_result(db_query(db, string));
		} else {
			format(string, sizeof(string), "INSERT INTO `Aliases` ( `name` , `ip` ) VALUES ( '%s' , '%s' )", playername, playerip);
			db_free_result(db_query(db, string));
		}
		return true;
	}
	return false;
}

/*
 *  Update an alias with the time online
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	playerip	The player IP
 *  @param	seconds		The time online in seconds
 */
stock bool:Alias_Update(DB:db, const playername[], const playerip[], seconds)
{
	if(db && !isnull(playername) && !isnull(playerip) && seconds > 0) {
		new string[160 + MAX_PLAYER_NAME + MAX_IP];
		format(string, sizeof(string), "UPDATE `Aliases` SET `datetime` = CURRENT_TIMESTAMP , `onlinetime` = `onlinetime` + %i WHERE ( `name` = '%s' AND `ip` = '%s' )", seconds, playername, playerip);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Get the last IP used by a name
 *  @param	db			The database
 *  @param	playername	The player name
 *  @return The last IP
 */
stock Alias_GetLastIP(DB:db, const playername[])
{
	new pIP[MAX_IP];
	if(db && !isnull(playername)) {
		new string[90 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT `ip` FROM `Aliases` WHERE ( `name` = '%s' ) ORDER BY `datetime` DESC LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field(result, 0, pIP, sizeof(pIP));
		}
		db_free_result(result);
	}
	return pIP;
}

/*
 *  Get a player's aliases from a name (find's the last IP used by the name)
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	names		The array to concatenate the aliases onto
 *  @param	maxlength	The size of the names array
 *  @return The number of aliases
 */
stock Alias_GetAliasFromName(DB:db, const playername[], names[], maxlength=sizeof(names))
{
	if(db && !isnull(playername)) {
		new string[170 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT DISTINCT `name` FROM `Aliases` WHERE ( `ip` = ( SELECT `ip` FROM `Aliases` WHERE ( `name` = '%s' ) ORDER BY `datetime` DESC LIMIT 1 ) ) ORDER BY `datetime` DESC", playername);
		new DBResult:result = db_query(db, string),
			num_rows = db_num_rows(result);
		if(num_rows) {
			db_get_field(result, 0, string, sizeof(string));
			strcat(names, string, maxlength);
			for(new i = 1; i < num_rows; i++) {
				db_next_row(result);
				db_get_field(result, 0, string, sizeof(string));
				if(maxlength - strlen(names) < strlen(string) + 2) break;
				format(names, maxlength, "%s %s", names, string);
			}
			db_free_result(result);
			return num_rows;
		}
		db_free_result(result);
	}
	return 0;
}

/*
 *  Get a player's aliases from an IP
 *  @param	db			The database
 *  @param	playerip	The player IP
 *  @param	names		The array to concatenate the aliases onto
 *  @param	maxlength	The size of the names array
 *  @return The number of aliases
 */
stock Alias_GetAliasFromIP(DB:db, const playerip[], names[], maxlength=sizeof(names))
{
	if(db && !isnull(playerip)) {
		new string[110 + MAX_IP];
		format(string, sizeof(string), "SELECT DISTINCT `name` FROM ( SELECT `name` FROM `Aliases` WHERE ( `ip` GLOB '%s' ) ORDER BY `datetime` DESC )", playerip);
		new DBResult:result = db_query(db, string),
			num_rows = db_num_rows(result);
		if(num_rows) {
			db_get_field(result, 0, string, sizeof(string));
			strcat(names, string, maxlength);
			for(new i = 1; i < num_rows; i++) {
				db_next_row(result);
				db_get_field(result, 0, string, sizeof(string));
				if(maxlength - strlen(names) < strlen(string) + 2) break;
				format(names, maxlength, "%s %s", names, string);
			}
			db_free_result(result);
			return num_rows;
		}
		db_free_result(result);
	}
	return 0;
}

/*
 *  Get the aliases used by a player's subnet from their name (find's the last IP used by the name)
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	names		The array to concatenate the aliases onto
 *  @param	maxlength	The size of the names array
 *  @return The number of aliases
 */
stock Alias_GetAlias2FromName(DB:db, const playername[], names[], maxlength=sizeof(names))
{
	if(db && !isnull(playername)) {
		new string[90 + MAX_IP + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT `ip` FROM `Aliases` WHERE ( `name` = '%s' ) ORDER BY `datetime` DESC LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field(result, 0, string, sizeof(string));
			db_free_result(result);
			format(string, sizeof(string), "SELECT DISTINCT `name` FROM `Aliases` WHERE ( `ip` GLOB '%s' ) ORDER BY `datetime` DESC", IPsubnet(string));
			result = db_query(db, string);
			new num_rows = db_num_rows(result);
			if(num_rows) {
				db_get_field(result, 0, string, sizeof(string));
				strcat(names, string, maxlength);
				for(new i = 1; i < num_rows; i++) {
					db_next_row(result);
					db_get_field(result, 0, string, sizeof(string));
					if(maxlength - strlen(names) < strlen(string) + 2) break;
					format(names, maxlength, "%s %s", names, string);
				}
				db_free_result(result);
				return num_rows;
			}
		}
		db_free_result(result);
		return 0;
	}
	return 0;
}

/*
 *  Get the aliases used by a player's subnet
 *  @param	db			The database
 *  @param	playerip	The player IP
 *  @param	names		The array to concatenate the aliases onto
 *  @param	maxlength	The size of the names array
 *  @return The number of aliases
 */
stock Alias_GetAlias2FromIP(DB:db, const playerip[], names[], maxlength=sizeof(names))
{
	if(db && !isnull(playerip)) {
		new string[90 + MAX_IP];
		format(string, sizeof(string), "SELECT DISTINCT `name` FROM `Aliases` WHERE ( `ip` GLOB '%s' ) ORDER BY `datetime` DESC", IPsubnet(playerip));
		new DBResult:result = db_query(db, string),
			num_rows = db_num_rows(result);
		if(num_rows) {
			db_get_field(result, 0, string, sizeof(string));
			strcat(names, string, maxlength);
			for(new i = 1; i < num_rows; i++) {
				db_next_row(result);
				db_get_field(result, 0, string, sizeof(string));
				if(maxlength - strlen(names) < strlen(string) + 2) break;
				format(names, maxlength, "%s %s", names, string);
			}
			db_free_result(result);
			return num_rows;
		}
		db_free_result(result);
		return 0;
	}
	return 0;
}

/*
 *  Get the aliases of a player's previous IPs
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	names		The array to concatenate the aliases onto
 *  @param	maxlength	The size of the names array
 *  @return The number of aliases
 */
stock Alias_GetAlias3FromName(DB:db, const playername[], names[], maxlength=sizeof(names))
{
	if(db && !isnull(playername)) {
		new string[140 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT DISTINCT `name` FROM `Aliases` WHERE ( `ip` IN ( SELECT `ip` FROM `Aliases` WHERE ( `name` = '%s' ) ) ) ORDER BY `datetime` DESC", playername);
		new DBResult:result = db_query(db, string),
			num_rows = db_num_rows(result);
		if(num_rows) {
			db_get_field(result, 0, string, sizeof(string));
			strcat(names, string, maxlength);
			for(new i = 1; i < num_rows; i++) {
				db_next_row(result);
				db_get_field(result, 0, string, sizeof(string));
				if(maxlength - strlen(names) < strlen(string) + 2) break;
				format(names, maxlength, "%s %s", names, string);
			}
			db_free_result(result);
			return num_rows;
		}
		db_free_result(result);
	}
	return 0;
}

/*
 *  Get a player's previous IPs
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	IPs			The array to concatenate the IPs onto
 *  @param	maxlength	The size of the IPs array
 *  @return The number of IPs
 */
stock Alias_GetIPsFromName(DB:db, const playername[], IPs[], maxlength=sizeof(IPs))
{
	if(db && !isnull(playername)) {
		new string[90 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT DISTINCT `ip` FROM `Aliases` WHERE ( `name` = '%s' ) ORDER BY `datetime` DESC", playername);
		new DBResult:result = db_query(db, string),
			num_rows = db_num_rows(result);
		if(num_rows) {
			db_get_field(result, 0, string, sizeof(string));
			strcat(IPs, string, maxlength);
			for(new i = 1; i < num_rows; i++) {
				db_next_row(result);
				db_get_field(result, 0, string, sizeof(string));
				if(maxlength - strlen(IPs) < strlen(string) + 2) break;
				format(IPs, maxlength, "%s %s", IPs, string);
			}
			db_free_result(result);
			return num_rows;
		}
		db_free_result(result);
	}
	return 0;
}

/*
 *  Initialise the gamemodes table
 *  @param	db			The database
 */
stock Gamemodes_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Gamemodes` ( `name` TEXT NOT NULL PRIMARY KEY )"));	}
}

/*
 *  Find a gamemode
 *  @param	db			The database
 *  @param	search		The string to search for
 *  @param	name		The array to store the gamemode name
 *  @param	maxlength	The size of the name array
 *	@return true if a matching gamemode was found
 */
stock bool:Gamemodes_Exists(DB:db, const search[], name[], maxlength=sizeof(name))
{
	if(db) {
		new string[128];
		format(string, sizeof(string), "SELECT * FROM `Gamemodes` WHERE ( `name` = '%s' ) LIMIT 1", search);
		new DBResult:result = db_query(db, string);
		if(!db_num_rows(result)) {
			db_free_result(result);
			format(string, sizeof(string), "SELECT * FROM `Gamemodes` WHERE ( `name` = '%s' COLLATE NOCASE ) LIMIT 1", search);
			db_free_result(result);
			if(!db_num_rows(result)) {
				db_free_result(result);
				format(string, sizeof(string), "SELECT * FROM `Gamemodes` WHERE (`name` LIKE '%%' || replace('%s','_',':_') || '%%' ESCAPE ':') LIMIT 1", search);
				result = db_query(db, string);
			}
		}
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "name", name, maxlength);
			db_free_result(result);
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/*
 *  List all gamemodes
 *  @param	db			The database
 *  @param	string		The array to store the gamemode name
 *  @param	seperator	The string to place between gamemode names
 *  @param	maxlength	The size of the name array
 *	@return The number of gamemodes
 */
stock Gamemodes_List(DB:db, string[], const seperator[]="  ", maxlength=sizeof(string))
{
	if(db) {
		new DBResult:result = db_query(db, "SELECT * FROM `Gamemodes`"),
			num = db_num_rows(result);
		if(num) {
			new name[128];
			db_get_field_assoc(result, "name", name, sizeof(name));
			strcat(string, name, maxlength);
			for(new i = 1; i < num; i++) {
				db_next_row(result);
				format(string, maxlength, "%s%s%s", string, seperator, name);
			}
			db_free_result(result);
			return num;
		}
		db_free_result(result);
	}
	return 0;
}

/*
 *  Initialise the player and status tables
 *  @param	db			The database
 */
stock Player_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Players` ( `name` TEXT NOT NULL PRIMARY KEY COLLATE NOCASE , `immune` TEXT NOT NULL DEFAULT 'false', `jointext` TEXT )"));
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Status` ( `ip` TEXT NOT NULL PRIMARY KEY , `frozen` TEXT NOT NULL DEFAULT 'false' , `jailed` TEXT NOT NULL DEFAULT 'false'  , `muted` TEXT NOT NULL DEFAULT 'false' )"));
		db_free_result(db_query(db, "DELETE FROM `Status` WHERE ( ( `muted` == 'false' OR julianday('now') > julianday(`muted`) ) AND ( `frozen` == 'false' OR julianday('now') > julianday(`frozen`) ) AND ( `jailed` == 'false' OR julianday('now') > julianday(`jailed`) ))"));
	}
}

/*
 *  Get a player's settings and status
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	playerip	The player IP
 *  @param	SaveData	The saved data
 */
stock bool:Player_GetData(DB:db, const playername[], const playerip[], SaveData[E_SAVEDATA])
{
	if(isnull(playername) || isnull(playerip)) return false;
	if(db) {
		new string[360 + MAX_IP];
		format(string, sizeof(string), "SELECT ifnull(`immune`,'false') AS `immune` , ifnull(`jointext`,'unset') AS `jointext` FROM `Players` WHERE ( `name` = '%s' ) LIMIT 1", playername, playerip);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "immune", string, sizeof(string));
			SaveData[E_SAVE_IMMUNE] = string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0);

			db_get_field_assoc(result, "jointext", string, sizeof(string));
			if(string[0] && strcmp(string, "unset", true) == 0) {
				SaveData[E_SAVE_JOINTEXT] = -1;
			} else if(string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0)) {
				SaveData[E_SAVE_JOINTEXT] = 1;
			} else {
				SaveData[E_SAVE_JOINTEXT] = 0;
			}
		} else {
			SaveData[E_SAVE_JOINTEXT] = -1;
		}
		db_free_result(result);

		format(string, sizeof(string), "SELECT coalesce(CAST((julianday(`frozen`)-julianday('now'))*86400.0 AS INTEGER),`frozen`,'false') AS `frozen` , coalesce(CAST((julianday(`jailed`)-julianday('now'))*86400.0 AS INTEGER),`jailed`,'false') AS `jailed` , coalesce(CAST((julianday(`muted`)-julianday('now'))*86400.0 AS INTEGER),`muted`,'false') AS `muted` FROM `Status` WHERE ( `ip` = '%s' )", playerip);
		result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "frozen", string, sizeof(string));
			if(isInteger(string)) {
				SaveData[E_SAVE_FREEZETIME] = strval(string);
				if(SaveData[E_SAVE_FREEZETIME] > 0) {
					SaveData[E_SAVE_FROZEN] = true;
				} else {
					SaveData[E_SAVE_FROZEN] = false;
					SaveData[E_SAVE_FREEZETIME] = 0;
				}
			} else {
				SaveData[E_SAVE_FROZEN] = string[0] && strcmp(string, "true", true) == 0;
				SaveData[E_SAVE_FREEZETIME] = 0;
			}

			db_get_field_assoc(result, "jailed", string, sizeof(string));
			if(isInteger(string)) {
				SaveData[E_SAVE_JAILTIME] = strval(string);
				if(SaveData[E_SAVE_JAILTIME] > 0) {
					SaveData[E_SAVE_JAILED] = true;
				} else {
					SaveData[E_SAVE_JAILED] = false;
					SaveData[E_SAVE_JAILTIME] = 0;
				}
			} else {
				SaveData[E_SAVE_JAILED] = string[0] && strcmp(string, "true", true) == 0;
				SaveData[E_SAVE_JAILTIME] = 0;
			}

			db_get_field_assoc(result, "muted", string, sizeof(string));
			if(isInteger(string)) {
				SaveData[E_SAVE_MUTETIME] = strval(string);
				if(SaveData[E_SAVE_MUTETIME] > 0) {
					SaveData[E_SAVE_MUTED] = true;
				} else {
					SaveData[E_SAVE_MUTED] = false;
					SaveData[E_SAVE_MUTETIME] = 0;
				}
			} else {
				SaveData[E_SAVE_MUTED] = string[0] && strcmp(string, "true", true) == 0;
				SaveData[E_SAVE_MUTETIME] = 0;
			}
		}

		db_free_result(result);
		return true;
	}
	return false;
}

/*
 *  Get whether a player is immune from the ping kicker
 *  @param	db			The database
 *  @param	playername	The player name
 *  @return	If the player is immune
 */
stock bool:Player_GetImmune(DB:db, const playername[])
{
	if(isnull(playername)) return false;
	if(db) {
		new string[70 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT `immune` FROM `Players` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "immune", string, sizeof(string));
			db_free_result(result);
			return string[0] != '\0' && strcmp(string, "true", true) == 0;
		}
		db_free_result(result);
	}
	return false;
}

/*
 *  Set whether a player is immune from the ping kicker
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	immune		If the player is immune
 */
stock bool:Player_SetImmune(DB:db, const playername[], bool:immune)
{
	if(isnull(playername)) return false;
	if(db) {
		new string[70 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ROWID FROM `Players` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			format(string, sizeof(string), "UPDATE `Players` SET `immune` = '%s' WHERE ( `name` = '%s' )", immune ? ("true") : ("false"), playername);
		} else {
			format(string, sizeof(string), "INSERT INTO `Players` ( `name` , `immune` ) VALUES ( '%s' , '%s' )", playername, immune ? ("true") : ("false"));
		}
		db_free_result(result);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Set whether joins are shown in textdraws for a player
 *  @param	db			The database
 *  @param	playername	The player name
 *  @param	jointext	If joins are shown in textdraws
 */
stock bool:Player_SetJointext(DB:db, const playername[], bool:jointext)
{
	if(isnull(playername)) return false;
	if(db) {
		new string[70 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ROWID FROM `Players` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			format(string, sizeof(string), "UPDATE `Players` SET `jointext` = '%s' WHERE ( `name` = '%s' )", jointext ? ("true") : ("false"), playername);
		} else {
			format(string, sizeof(string), "INSERT INTO `Players` ( `name` , `jointext` ) VALUES ( '%s' , '%s' )", playername, jointext ? ("true") : ("false"));
		}
		db_free_result(result);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Set a players's status
 *  @param	db			The database
 *  @param	playerip	The player IP
 *  @param	status		The status to set
 *  @param	time		The time to set for (0 or less for permanent)
 */
stock bool:Player_SetStatus(DB:db, const playerip[], status, time=0)
{
	if(isnull(playerip) || !(status & (ADMIN_STATE_MUTED | ADMIN_STATE_JAILED | ADMIN_STATE_FROZEN))) return false;
	if(db) {
		new string[180 + MAX_IP];
		format(string, sizeof(string), "SELECT ROWID FROM `Status` WHERE ( `ip` = '%s' ) LIMIT 1", playerip);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			if(status & ADMIN_STATE_FROZEN) {
				if(status & ADMIN_STATE_JAILED) {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = datetime('now','%i seconds') , `jailed` = datetime('now','%i seconds') , `muted` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, time, time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = 'true' , `jailed` = 'true' , `muted` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					} else {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = datetime('now','%i seconds') , `jailed` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = 'true' , `jailed` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					}
				} else {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = datetime('now','%i seconds') , `muted` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = 'true' , `muted` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					} else {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `frozen` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					}
				}
			} else {
				if(status & ADMIN_STATE_JAILED) {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `jailed` = datetime('now','%i seconds') , `muted` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `jailed` = 'true' , `muted` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					} else {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `jailed` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `jailed` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					}
				} else {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "UPDATE `Status` SET `muted` = datetime('now','%i seconds') WHERE ( `ip` = '%s' )", time, playerip);
						} else {
							format(string, sizeof(string), "UPDATE `Status` SET `muted` = 'true' WHERE ( `ip` = '%s' )", playerip);
						}
					} else {
						return false;
					}
				}
			}
		} else {
			if(status & ADMIN_STATE_FROZEN) {
				if(status & ADMIN_STATE_JAILED) {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` , `jailed` , `muted` ) VALUES ( '%s' , datetime('now','%i seconds') , datetime('now','%i seconds') , datetime('now','%i seconds') )", playerip, time, time, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` , `jailed` , `muted` ) VALUES ( '%s' , 'true' , 'true' , 'true' )", playerip);
						}
					} else {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` , `jailed` ) VALUES ( '%s' , datetime('now','%i seconds') , datetime('now','%i seconds') )", playerip, time, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` , `jailed` ) VALUES ( '%s' , 'true' , 'true' )", playerip);
						}
					}
				} else {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` , `muted` ) VALUES ( '%s' , datetime('now','%i seconds') , datetime('now','%i seconds') )", playerip, time, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` , `muted` ) VALUES ( '%s' , 'true' , 'true' )", playerip);
						}
					} else {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` ) VALUES ( '%s' , datetime('now','%i seconds') )", playerip, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `frozen` ) VALUES ( '%s' , 'true' )", playerip);
						}
					}
				}
			} else {
				if(status & ADMIN_STATE_JAILED) {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `jailed` , `muted` ) VALUES ( '%s' , datetime('now','%i seconds') , datetime('now','%i seconds') )", playerip, time, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `jailed` , `muted` ) VALUES ( '%s' , 'true' , 'true' )", playerip);
						}
					} else {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `jailed` ) VALUES ( '%s' , datetime('now','%i seconds') )", playerip, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `jailed` ) VALUES ( '%s' , 'true' )", playerip);
						}
					}
				} else {
					if(status & ADMIN_STATE_MUTED) {
						if(time > 0) {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `muted` ) VALUES ( '%s' , datetime('now','%i seconds') )", playerip, time);
						} else {
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` , `muted` ) VALUES ( '%s' , 'true' )", playerip);
						}
					} else {
						db_free_result(result);
						return false;
					}
				}
			}
		}
		db_free_result(result);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Clear a players's status
 *  @param	db			The database
 *  @param	playerip	The player IP
 *  @param	status		The status to clear
 */
stock bool:Player_ClearStatus(DB:db, const playerip[], status)
{
	if(isnull(playerip) || !(status & (ADMIN_STATE_MUTED | ADMIN_STATE_JAILED | ADMIN_STATE_FROZEN))) return false;
	if(db) {
		new string[110 + MAX_IP];
		if(status & ADMIN_STATE_FROZEN) {
			if(status & ADMIN_STATE_JAILED) {
				if(status & ADMIN_STATE_MUTED) {
					format(string, sizeof(string), "UPDATE `Status` Set `frozen` = 'false' , `jailed` = 'false' , `muted` = 'false' WHERE ( `ip` = '%s' )", playerip);
				} else {
					format(string, sizeof(string), "UPDATE `Status` Set `frozen` = 'false' , `jailed` = 'false' WHERE ( `ip` = '%s' )", playerip);
				}
			} else {
				if(status & ADMIN_STATE_MUTED) {
					format(string, sizeof(string), "UPDATE `Status` Set `frozen` = 'false' , `muted` = 'false' WHERE ( `ip` = '%s' )", playerip);
				} else {
					format(string, sizeof(string), "UPDATE `Status` Set `frozen` = 'false' WHERE ( `ip` = '%s' )", playerip);
				}
			}
		} else {
			if(status & ADMIN_STATE_JAILED) {
				if(status & ADMIN_STATE_MUTED) {
					format(string, sizeof(string), "UPDATE `Status` Set `jailed` = 'false' , `muted` = 'false' WHERE ( `ip` = '%s' )", playerip);
				} else {
					format(string, sizeof(string), "UPDATE `Status` Set `jailed` = 'false' WHERE ( `ip` = '%s' )", playerip);
				}
			} else {
				if(status & ADMIN_STATE_MUTED) {
					format(string, sizeof(string), "UPDATE `Status` Set `muted` = 'false' WHERE ( `ip` = '%s' )", playerip);
				} else {
					return false;
				}
			}
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/*
 *  Set the status of all players
 *  @param	db			The database
 */
stock bool:Player_ClearAllStatus(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "DELETE FROM `Players`"));
	}
}

/*
 *  Initialise the setting table
 *  @param	db			The database
 */
stock Setting_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Settings` ( `setting` TEXT NOT NULL COLLATE NOCASE PRIMARY KEY , `value` )"));
	}
}

/*
 *  Get a string setting, initialising it if it's not set
 *  @param	db			The database to get the setting from
 *  @param	setting		The setting name
 *  @param	value		The value to use if it is not already set
 *  @param	dest		The destination string
 *  @param	maxlength	The size of the destination string
 *  @return	true if the setting was loaded, false if the default value was used
 */
stock bool:Setting_LoadString(DB:db, const setting[], const value[], dest[], maxlength=sizeof(dest))
{
	if(db && setting[0]) {
		new string[MAX_STRING];
		format(string, sizeof(string), "SELECT ifnull(`value`,'') AS `value` FROM `Settings` WHERE ( `setting` = '%s' ) LIMIT 1", setting);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "value", dest, maxlength);
			db_free_result(result);
			return true;
		} else {
			db_free_result(result);
			format(string, sizeof(string), "INSERT INTO `Settings` ( `setting` , `value` ) VALUES ( '%s' , '%s' )", setting, value);
			result = db_query(db, string);
		}
		db_free_result(result);
	}
	strcpy(dest, value, maxlength);
	return false;
}

/*
 *  Get a boolean setting, initialising it if it's not set
 *  @param	db			The database to get the setting from
 *  @param	setting		The setting name
 *  @param	value		The value to use if it is not already set
 *  @param	dest		The destination boolean
 *  @return	true if the setting was loaded, false if the default value was used
 */
stock bool:Setting_LoadBool(DB:db, const setting[], bool:value, &bool:dest)
{
	new string[20];
	if(Setting_LoadString(db, setting, value ? ("true") : ("false"), string)) {
		dest = string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0);
		return true;
	}
	dest = value;
	return false;
}

/*
 *  Get an integer setting, initialising it if it's not set
 *  @param	db			The database to get the setting from
 *  @param	setting		The setting name
 *  @param	value		The value to use if it is not already set
 *  @param	dest		The destination intger
 *  @return	true if the setting was loaded, false if the default value was used
 */
stock bool:Setting_LoadInt(DB:db, const setting[], value, &dest)
{
	new string[20];
	format(string, sizeof(string), "%i", value);
	if(Setting_LoadString(db, setting, string, string)) {
		dest = strval(string);
		return true;
	}
	dest = value;
	return false;
}
/*
 *  Get a string setting
 *  @param	db			The database to get the setting from
 *  @param	setting		The setting name
 *  @param	dest		The destination string
 *  @param	maxlength	The size of the destination string
 *  @return	true if the setting was loaded, false if there was no setting
 */
stock bool:Setting_GetString(DB:db, const setting[], dest[], maxlength=sizeof(dest))
{
	if(db && setting[0]) {
		new string[MAX_STRING];
		format(string, sizeof(string), "SELECT ifnull(`value`,'') AS `value` FROM `Settings` WHERE ( `setting` = '%s' ) LIMIT 1", setting);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "value", dest, maxlength);
			db_free_result(result);
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/*
 *  Get a boolean setting
 *  @param	db			The database to get the setting from
 *  @param	setting		The setting name
 *  @param	dest		The destination boolean
 *  @return	true if the setting was loaded, false if there was no setting
 */
stock bool:Setting_GetBool(DB:db, const setting[], &bool:dest)
{
	new string[20];
	if(Setting_GetString(db, setting, string)) {
		dest = string[0] && (strcmp(string, "true", true) == 0 || strcmp(string, "t", true) == 0 || strval(string) != 0);
		return true;
	}
	return false;
}

/*
 *  Get an integer setting
 *  @param	db			The database to get the setting from
 *  @param	setting		The setting name
 *  @param	dest		The destination integer
 *  @return	true if the setting was loaded, false if there was no setting
 */
stock bool:Setting_GetInt(DB:db, const setting[], &dest)
{
	new string[20];
	if(Setting_GetString(db, setting, string)) {
		dest = strval(string);
		return true;
	}
	return false;
}

/*
 *  Set a string setting
 *  @param	db			The database to set it in
 *  @param	setting		The setting name
 *  @param	value		The value to set it to
 */
stock bool:Setting_SetString(DB:db, const setting[], const value[])
{
	if(db && setting[0]) {
		new string[MAX_STRING];
		format(string, sizeof(string), "SELECT ROWID FROM `Settings` WHERE ( `setting` = '%s' ) LIMIT 1", setting);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			format(string, sizeof(string), "UPDATE `Settings` SET `value` = '%s' WHERE ( `setting` = '%s' )", value, setting);
		} else {
			format(string, sizeof(string), "INSERT INTO `Settings` ( `setting` , `value` ) VALUES ( '%s' , '%s' )", setting, value);
		}
		db_free_result(result);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}


/*
 *  Set a boolean setting
 *  @param	db			The database to set it in
 *  @param	setting		The setting name
 *  @param	value		The value to set it to
 */
stock bool:Setting_SetBool(DB:db, const setting[], bool:value)
{
	return Setting_SetString(db, setting, value ? ("true") : ("false"));
}

/*
 *  Set a integer setting
 *  @param	db			The database to set it in
 *  @param	setting		The setting name
 *  @param	value		The value to set it to
 */
stock bool:Setting_SetInt(DB:db, const setting[], value)
{
	new string[20];
	format(string, sizeof(string), "%i", value);
	return Setting_SetString(db, setting, string);
}
