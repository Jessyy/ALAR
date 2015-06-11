/*
 *	Any Last Administrative Requests - Bans.inc
 *		Ban Functions (SQL)
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

#if defined _alar_bans_included
  #endinput
#endif

#define _alar_bans_included

/*
	native Whitelist_Init(DB:db);
	native bool:Whitelist_IsNameWhitelisted(DB:db, const playername[], bool:update=false);
	native bool:Whitelist_WhitelistName(DB:db, const playername[]);
	native bool:Whitelist_UnwhitelistName(DB:db, const playername[]);
	native Whitelist_Clear(DB:db);

	native Bans_Init(DB:db);
	native bool:Bans_IsNameNotBanned(DB:db, const playername[]);
	native bool:Bans_IsIPNotBanned(DB:db, const playerip[]);
	native bool:Bans_GetBanInfo(DB:db, const playername[], const playerip[], BanData[E_ALAR_BAN], bool:noranges=false, bool:nowilds=false, bool:update=false);
	native bool:Bans_BanPlayer(DB:db, const playername[], const playerip[], const reason[], const adminname[], const adminip[], hits=0);
	native bool:Bans_BanName(DB:db, const playername[], const reason[], const adminname[], const adminip[], hits=0);
	native bool:Bans_BanIP(DB:db, const playerip[], const reason[], const adminname[], const adminip[], hits=0);
	native bool:Bans_UnbanPlayer(DB:db, const playername[], const playerip[], BanData[E_ALAR_BAN]);
	native bool:Bans_UnbanName(DB:db, const playername[], BanData[E_ALAR_BAN]);
	native bool:Bans_UnbanIP(DB:db, const playerip[], BanData[E_ALAR_BAN]);
	native Bans_Clear(DB:db);

	native Suspensions_Init(DB:db);
	native bool:Suspensions_IsNameNotSuspended(DB:db, const playername[]);
	native bool:Suspensions_IsIPNotSuspended(DB:db, const playerip[]);
	native bool:Suspensions_GetSuspendInfo(DB:db, const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION], bool:noranges=false, bool:nowilds=false, bool:update=false);
	native bool:Suspensions_SuspendPlayer(DB:db, const playername[], const playerip[], Float:hours, const reason[], const adminname[], const adminip[], hits=0);
	native bool:Suspensions_SuspendName(DB:db, const playername[], Float:hours, const reason[], const adminname[], const adminip[], hits=0);
	native bool:Suspensions_SuspendIP(DB:db, const playerip[], Float:hours, const reason[], const adminname[], const adminip[], hits=0);
	native bool:Suspensions_UnsuspendPlayer(DB:db, const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION]);
	native bool:Suspensions_UnsuspendName(DB:db, const playername[], SuspendData[E_ALAR_SUSPENSION]);
	native bool:Suspensions_UnsuspendIP(DB:db, const playerip[], SuspendData[E_ALAR_SUSPENSION]);
	native Suspensions_Clear(DB:db);

	native TempBan_Add(DB:db, const playerip[], const reason[]);
	native TempBan_Remove(DB:db, const playerip[]);
	native TempBan_UnbanAll(DB:db);

	native Warnings_Init(DB:db);
	native Warnings_WarnPlayer(DB:db, const playername[], const reason[], const adminname[], const adminip[]);
	native Warnings_GetWarningCount(DB:db, const playername[], hours=0);
	native Warnings_GetWarningInfo(DB:db, const playername[], number, WarnInfo[E_ALAR_WARNING]);
	native Warnings_SetInactive(DB:db, const playername[], hours=0);
	native Warnings_Clear(DB:db);
*/

#include <a_samp>
/*
#tryinclude "alar/Functions"
#if !defined _alar_functions_included
	#include <alar/Functions>
#endif
*/

enum E_ALAR_BAN {
	E_BAN_NAME[MAX_PLAYER_NAME],
	E_BAN_IP[MAX_IP],
	E_BAN_DATETIME[MAX_TIMESTAMP],
	E_BAN_ADMIN[MAX_PLAYER_NAME],
	E_BAN_REASON[MAX_INPUT],
	E_BAN_HITS,
	E_BAN_LASTHIT[MAX_TIMESTAMP]
}; stock SIZE_E_ALAR_BAN[E_ALAR_BAN];

enum E_ALAR_SUSPENSION {
	E_SUSPEND_NAME[MAX_PLAYER_NAME],
	E_SUSPEND_IP[MAX_IP],
	E_SUSPEND_DATETIME[MAX_TIMESTAMP],
	E_SUSPEND_ADMIN[MAX_PLAYER_NAME],
	E_SUSPEND_REASON[MAX_INPUT],
	E_SUSPEND_EXPIRES[MAX_TIMESTAMP],
	bool:E_SUSPEND_EXPIRED,
	E_SUSPEND_HITS,
	E_SUSPEND_LASTHIT[MAX_TIMESTAMP]
}; stock SIZE_E_ALAR_SUSPENSION[E_ALAR_SUSPENSION];

enum E_ALAR_WARNING {
	E_WARN_NAME[MAX_PLAYER_NAME],
	E_WARN_DATETIME[MAX_TIMESTAMP],
	E_WARN_ADMIN[MAX_PLAYER_NAME],
	E_WARN_REASON[MAX_INPUT]
}; stock SIZE_E_ALAR_WARNING[E_ALAR_WARNING];


/**
 *  Initialise the whitelist table
 *	@param	db			The database
 */
stock Whitelist_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Whitelist` ( `name` TEXT NOT NULL PRIMARY KEY COLLATE NOCASE , `hits` INTEGER NOT NULL DEFAULT 0 , `lasthit` TEXT )"));
	}
}

/**
 *  Check if a name is whitelisted
 *	@param	db			The database
 *  @param	playername	The name to check
 *  @param	update		Increment the hits and update the last hit time if a match is found
 *  @return	true if the name is whitelisted, otherwise false
 */
stock bool:Whitelist_IsNameWhitelisted(DB:db, const playername[], bool:update=false)
{
	if(playername[0] == '\0') return false;
	if(db) {
		new string[100 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ROWID FROM `Whitelist` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_free_result(result);
			if(update) {
				format(string, sizeof(string), "UPDATE `Whitelist` SET `hits` = `hits` + 1 , `lasthit` = CURRENT_TIMESTAMP WHERE ( `name` = '%s' )", playername);
				db_free_result(db_query(db, string));
			}
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/**
 *  Whitelist a name
 *	@param	db			The database
 *  @param	playername	The name to whitelist
 *  @return	true if the name was whitelisted, otherwise false
 */
stock bool:Whitelist_WhitelistName(DB:db, const playername[])
{
	if(playername[0] == '\0') return false;
	if(db) {
		new string[50 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "INSERT INTO `Whitelist` ( `name` ) VALUES ( '%s' )", playername);
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/**
 *  Remove a name from the whitelist
 *	@param	db			The database
 *  @param	playername	The name to remove from the whitelist
 *  @return	true if the name was removed from the whitelist, otherwise false
 */
stock bool:Whitelist_UnwhitelistName(DB:db, const playername[])
{
	if(playername[0] == '\0') return false;
	if(db) {
		new string[60 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ROWID FROM `Whitelist` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_free_result(result);
			format(string, sizeof(string), "DELETE FROM `Whitelist` WHERE ( `name` = '%s' )", playername);
			db_free_result(db_query(db, string));
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/**
 *  Clears all whitelisted names
 *	@param	db			The database
 */
stock Whitelist_Clear(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "DELETE FROM `Whitelist`"));
	}
}


/**
 *  Initialise the bans table
 *	@param	db			The database
 */
stock Bans_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Bans` ( `name` TEXT UNIQUE COLLATE NOCASE , `ip` TEXT UNIQUE , `datetime` TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP , `adminname` TEXT COLLATE NOCASE , `adminip` TEXT , `reason` TEXT , `hits` INTEGER NOT NULL DEFAULT 0 , `lasthit` TEXT , CHECK ( `name` NOT NULL OR `ip` NOT NULL ) , PRIMARY KEY ( `name` , `ip` ) )"));
	}
}

/**
 *  Check if a name is not currently banned
 *	@param	db			The database
 *  @param	playername	The name to check
 *  @return	true if the name is banned, otherwise false
 */
stock bool:Bans_IsNameNotBanned(DB:db, const playername[])
{
	if(playername[0] == '\0') return false;
	if(db) {
		new string[60 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ROWID FROM `Bans` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_free_result(result);
			return false;
		}
		db_free_result(result);
	}
	return true;
}

/**
 *  Check if an IP is not currently banned
 *	@param	db			The database
 *  @param	playerip	The IP to check
 *  @return	true if the IP is banned, otherwise false
 */
stock bool:Bans_IsIPNotBanned(DB:db, const playerip[])
{
	if(playerip[0] == '\0') return false;
	if(db) {
		new string[60 + MAX_IP];
		format(string, sizeof(string), "SELECT ROWID FROM `Bans` WHERE ( `ip` = '%s' ) LIMIT 1", playerip);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_free_result(result);
			return false;
		}
		db_free_result(result);
	}
	return true;
}

/**
 *  Get the details of a ban from the first matching name or IP
 *	@param	db			The database
 *  @param	playername	The name to check
 *  @param	playerip	The IP to check
 *  @param	BanData		The array to store the details in
 *  @param	noranges	Ignore range bans
 *  @param	nowilds		Ignore wildcards
 *  @param	update		Increment the hits and update the last hit time if a match is found
 *  @return	true if the name or IP is banned, otherwise false
 */
stock bool:Bans_GetBanInfo(DB:db, const playername[], const playerip[], BanData[E_ALAR_BAN], bool:noranges=false, bool:nowilds=false, bool:update=false)
{
	if(isnull(playername) && isnull(playerip)) return false;
	if(db) {
		new string[400 + MAX_IP + MAX_PLAYER_NAME];

		if(update) {
			string = "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , `hits` + 1 AS `hits` , datetime('now','localtime') AS `lasthit` FROM `Bans` WHERE (";
		} else {
			string = "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , `hits` , ifnull(datetime(`lasthit`,'localtime'),'') AS `lasthit` FROM `Bans` WHERE (";
		}
		if(!isnull(playerip)) {
			if(noranges) strcat(string, " `ip` = '%s'");
			else strcat(string, " '%s' GLOB `ip`");
			if(!isnull(playername)) {
				if(nowilds) strcat(string, " OR `name` = '%s'");
				else strcat(string, " OR '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'");
			}
			strcat(string, " ) LIMIT 1");
			format(string, sizeof(string), string, playerip, playername);
		} else {
			if(nowilds) strcat(string, " `name` = '%s'");
			else strcat(string, " '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'");
			strcat(string, " ) LIMIT 1");
			format(string, sizeof(string), string, playername);
		}

		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "ip", BanData[E_BAN_IP], sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
			db_get_field_assoc(result, "name", BanData[E_BAN_NAME], sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
			db_get_field_assoc(result, "datetime", BanData[E_BAN_DATETIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATETIME]));
			db_get_field_assoc(result, "adminname", BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]));
			db_get_field_assoc(result, "reason", BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
			db_get_field_assoc(result, "lasthit", BanData[E_BAN_LASTHIT], sizeof(SIZE_E_ALAR_BAN[E_BAN_LASTHIT]));
			db_get_field_assoc(result, "hits", string, sizeof(string));
			BanData[E_BAN_HITS] = strval(string);
			if(update) {
				db_get_field_assoc(result, "rowid", string, sizeof(string));
				db_free_result(result);
				format(string, sizeof(string), "UPDATE `Bans` SET `hits` = `hits` + 1 , `lasthit` = CURRENT_TIMESTAMP WHERE ( ROWID = %s )", string);
				result = db_query(db, string);
			}
			db_free_result(result);
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/**
 *  Ban a player by name and IP
 *	@param	db			The database
 *  @param	playername	The name to ban
 *  @param	playerip	The IP to ban
 *  @param	reason		The reason for the ban
 *  @param	adminname	The name of the admin performing the ban
 *  @param	hits		The number of people initially banned
 *  @return	true if the ban was successful, otherwise false
 */
stock bool:Bans_BanPlayer(DB:db, const playername[], const playerip[], const reason[], const adminname[], const adminip[], hits=0)
{
	if(isnull(playername) && isnull(playerip)) return false;
	if(db) {
		new string[190 + (MAX_PLAYER_NAME * 2) + (MAX_IP * 2) + (MAX_INPUT * 2)];
		if(!isnull(reason)) {
			strcat(string, reason);
			strreplaceword(string, "'", "''");
		}

		if(!isnull(playername)) {
			if(!isnull(playerip)) {
				if(!isnull(adminname)) {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, adminname, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , '%s' , '%s' , '%s' )", playername, playerip, adminname, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, adminname, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `adminip` ) VALUES ( '%s' , '%s' , '%s' , '%s' )", playername, playerip, adminname, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, adminname, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `reason` ) VALUES ( '%s' , '%s' , '%s' , '%s' )", playername, playerip, adminname, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, adminname, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` ) VALUES ( '%s' , '%s' , '%s' )", playername, playerip, adminname);
							}
						}
					}
				} else {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , '%s' , '%s' )", playername, playerip, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminip` ) VALUES ( '%s' , '%s' , '%s' )", playername, playerip, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `reason` ) VALUES ( '%s' , '%s' , '%s' )", playername, playerip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` ) VALUES ( '%s' , '%s' )", playername, playerip);
							}
						}

					}
				}
			} else {
				if(!isnull(adminname)) {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, adminname, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , '%s' , '%s' )", playername, adminname, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, adminname, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `adminip` ) VALUES ( '%s' , '%s' , '%s' )", playername, adminname, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, adminname, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `reason` ) VALUES ( '%s' , '%s' , '%s' )", playername, adminname, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, adminname, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` ) VALUES ( '%s' , '%s' )", playername, adminname);
							}
						}
					}
				} else {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , '%s' )", playername, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminip` ) VALUES ( '%s' , '%s' )", playername, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `reason` ) VALUES ( '%s' , '%s' )", playername, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `hits` , `lasthit` ) VALUES ( '%s' , %i , CURRENT_TIMESTAMP )", playername, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Bans` ( `name` ) VALUES ( '%s' )", playername);
							}
						}
					}
				}
			}
		} else {
			if(!isnull(adminname)) {
				if(!isnull(adminip)) {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, adminname, adminip, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , '%s' , '%s' )", playerip, adminname, adminip, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, adminname, adminip, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `adminip` ) VALUES ( '%s' , '%s' , '%s' )", playerip, adminname, adminip);
						}
					}
				} else {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, adminname, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `reason` ) VALUES ( '%s' , '%s' , '%s' )", playerip, adminname, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, adminname, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` ) VALUES ( '%s' , '%s' )", playerip, adminname);
						}
					}
				}
			} else {
				if(!isnull(adminip)) {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, adminip, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminip` , `reason` ) VALUES ( '%s' , '%s' )", playerip, adminip, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , %i , CURRENT_TIMESTAMP )", playerip, adminip, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminip` ) VALUES ( '%s' )", playerip, adminip);
						}
					}
				} else {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `reason` ) VALUES ( '%s' , '%s' )", playerip, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `hits` , `lasthit` ) VALUES ( '%s' , %i , CURRENT_TIMESTAMP )", playerip, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` ) VALUES ( '%s' )", playerip);
						}
					}
				}
			}
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/**
 *  Ban a player by name
 *	@param	db			The database
 *  @param	playername	The name to ban
 *  @param	reason		The reason for the ban
 *  @param	adminname	The name of the admin performing the ban
 *  @param	hits		The number of people initially banned
 *  @return	true if the ban was successful, otherwise false
 */
stock bool:Bans_BanName(DB:db, const playername[], const reason[], const adminname[], const adminip[], hits=0)
{
	return Bans_BanPlayer(db, playername, "", reason, adminname, adminip, hits);
}

/**
 *  Ban a player by IP
 *	@param	db			The database
 *  @param	playerip	The IP to ban
 *  @param	reason		The reason for the ban
 *  @param	adminname	The name of the admin performing the ban
 *  @param	hits		The number of people initially banned
 *  @return	true if the ban was successful, otherwise false
 */
stock bool:Bans_BanIP(DB:db, const playerip[], const reason[], const adminname[], const adminip[], hits=0)
{
	return Bans_BanPlayer(db, "", playerip, reason, adminname, adminip, hits);
}

/**
 *  Unban a player by name or IP
 *	@param	db			The database
 *  @param	playername	The name to unban
 *  @param	playerip	The IP to unban
 *  @param	BanData		The details of the ban
 *  @return	true if the unban was successful, otherwise false
 */
stock bool:Bans_UnbanPlayer(DB:db, const playername[], const playerip[], BanData[E_ALAR_BAN])
{
	if(isnull(playername) && isnull(playerip)) return false;
	if(db) {
		new string[340 + MAX_PLAYER_NAME + MAX_IP] = "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` FROM `Bans` WHERE (";
		if(!isnull(playerip)) {
			format(string, sizeof(string), "%s '%s' GLOB `ip`", string, playerip);
			if(!isnull(playername)) {
				format(string, sizeof(string), "%s OR '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'", string, playername);
			}
		} else {
			format(string, sizeof(string), "%s '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'", string, playername);
		}
		strcat(string, " ) LIMIT 1");
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "ip", BanData[E_BAN_IP], sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
			db_get_field_assoc(result, "name", BanData[E_BAN_NAME], sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
			db_get_field_assoc(result, "datetime", BanData[E_BAN_DATETIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATETIME]));
			db_get_field_assoc(result, "adminname", BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]));
			db_get_field_assoc(result, "reason", BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
			db_get_field_assoc(result, "lasthit", BanData[E_BAN_LASTHIT], sizeof(SIZE_E_ALAR_BAN[E_BAN_LASTHIT]));
			db_get_field_assoc(result, "hits", string, sizeof(string));
			BanData[E_BAN_HITS] = strval(string);

			db_get_field_assoc(result, "rowid", string, sizeof(string));
			db_free_result(result);

			format(string, sizeof(string), "DELETE FROM `Bans` WHERE ( ROWID = %s )", string);
			db_free_result(db_query(db, string));

			return true;
		}
		db_free_result(result);
	}
	return false;
}

#define Bans_UnbanName(%1,%2,%3)			Bans_UnbanPlayer(%1,%2,"",%3)
#define Bans_UnbanIP(%1,%2,%3)				Bans_UnbanPlayer(%1,"",%2,%3)

/**
 *  Clears all bans
 *	@param	db			The database
 */
stock Bans_Clear(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "DELETE FROM `Bans`"));
	}
}


/**
 *  Initialise the suspensions table
 *	@param	db			The database
 */
stock Suspensions_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Suspensions` ( `name` TEXT UNIQUE COLLATE NOCASE , `ip` TEXT UNIQUE , `datetime` TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP , `expires` TEXT NOT NULL CHECK ( datetime(`expires`) NOTNULL AND `expires` LIKE '____-__-__ __:__:__' ) , `adminname` TEXT COLLATE NOCASE , `adminip` TEXT , `reason` TEXT , `hits` INTEGER NOT NULL DEFAULT 0 , `lasthit` TEXT , CHECK ( `name` NOT NULL OR `ip` NOT NULL ) , PRIMARY KEY ( `name` , `ip` ) )"));
	}
}

/**
 *  Check if a name is not currently suspended
 *	@param	db			The database
 *  @param	playername	The name to check
 *  @return	true if the name is suspended, otherwise false
 */
stock bool:Suspensions_IsNameNotSuspended(DB:db, const playername[])
{
	if(playername[0] == '\0') return false;
	if(db) {
		new string[70 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT ROWID FROM `Suspensions` WHERE ( `name` = '%s' ) LIMIT 1", playername);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_free_result(result);
			return false;
		}
		db_free_result(result);
	}
	return true;
}

/**
 *  Check if an IP is not currently suspended
 *	@param	db			The database
 *  @param	playerip	The IP to check
 *  @return	true if the IP is suspended, otherwise false
 */
stock bool:Suspensions_IsIPNotSuspended(DB:db, const playerip[])
{
	if(playerip[0] == '\0') return false;
	if(db) {
		new string[70 + MAX_IP];
		format(string, sizeof(string), "SELECT ROWID FROM `Suspensions` WHERE ( `ip` = '%s' ) LIMIT 1", playerip);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_free_result(result);
			return false;
		}
		db_free_result(result);
	}
	return true;
}

/**
 *  Get the details of a suspension from the first matching name or IP
 *	@param	db			The database
 *  @param	playername	The name to check
 *  @param	playerip	The IP to check
 *  @param	SuspendData	The array to store the details in
 *  @param	noranges	Ignore range suspensions
 *  @param	nowilds		Ignore wildcards
 *  @param	update		Increment the hits and update the last hit time if a match is found
 *  @return	true if the name or IP is suspended, otherwise false
 */
stock bool:Suspensions_GetSuspendInfo(DB:db, const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION], bool:noranges=false, bool:nowilds=false, bool:update=false)
{
	if(isnull(playername) && isnull(playerip)) return false;
	if(db) {
		new string[540 + MAX_PLAYER_NAME + MAX_IP];

		if(update) {
			string = "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(datetime(`expires`,'localtime'),'') AS `expires` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , ifnull(julianday('now') > julianday(`expires`),1) AS `expired` , `hits` + 1 AS `hits` , datetime('now','localtime') AS `lasthit` FROM `Suspensions` WHERE (";
		} else {
			string = "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(datetime(`expires`,'localtime'),'') AS `expires` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , ifnull(julianday('now') > julianday(`expires`),1) AS `expired` , `hits` , ifnull(datetime(`lasthit`,'localtime'),'') AS `lasthit` FROM `Suspensions` WHERE (";
		}
		if(!isnull(playerip)) {
			if(noranges) strcat(string, " `ip` = '%s'");
			else strcat(string, " '%s' GLOB `ip`");
			if(!isnull(playername)) {
				if(nowilds) strcat(string, "%s OR `name` = '%s'");
				else strcat(string, " OR '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'");
			}
			strcat(string, " ) LIMIT 1");
			format(string, sizeof(string), string, playerip, playername);
		} else {
			if(nowilds) strcat(string, " `name` = '%s'");
			else strcat(string, " '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'");
			strcat(string, " ) LIMIT 1");
			format(string, sizeof(string), string, playername);
		}

		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "expires", SuspendData[E_SUSPEND_EXPIRES], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_EXPIRES]));
			db_get_field_assoc(result, "expired", string, sizeof(string));
			SuspendData[E_SUSPEND_EXPIRED] = strval(string) ? true : false;
			db_get_field_assoc(result, "ip", SuspendData[E_SUSPEND_IP], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
			db_get_field_assoc(result, "name", SuspendData[E_SUSPEND_NAME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
			db_get_field_assoc(result, "datetime", SuspendData[E_SUSPEND_DATETIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATETIME]));
			db_get_field_assoc(result, "adminname", SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]));
			db_get_field_assoc(result, "reason", SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
			db_get_field_assoc(result, "lasthit", SuspendData[E_SUSPEND_LASTHIT], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_LASTHIT]));
			db_get_field_assoc(result, "hits", string, sizeof(string));
			SuspendData[E_SUSPEND_HITS] = strval(string);
			if(update) {
				db_get_field_assoc(result, "rowid", string, sizeof(string));
				db_free_result(result);
				format(string, sizeof(string), "UPDATE `Suspensions` SET `hits` = `hits` + 1 , `lasthit` = CURRENT_TIMESTAMP WHERE ( ROWID = %s )", string);
				result = db_query(db, string);
			}
			db_free_result(result);
			return true;
		}
		db_free_result(result);
	}
	return false;
}

/**
 *  Suspend a player by name and IP
 *	@param	db			The database
 *  @param	playername	The name to suspend
 *  @param	playerip	The IP to suspend
 *  @param	hours		The number of hours to suspend for
 *  @param	reason		The reason for the suspension
 *  @param	adminname	The name of the admin performing the suspension
 *  @param	hits		The number of people initially banned
 *  @return	true if the suspension was successful, otherwise false
 */
stock bool:Suspensions_SuspendPlayer(DB:db, const playername[], const playerip[], Float:hours, const reason[], const adminname[], const adminip[], hits=0)
{
	if(isnull(playername) && isnull(playerip)) return false;
	if(db) {
		new string[270 + (MAX_PLAYER_NAME * 2) + (MAX_IP * 2) + (MAX_INPUT * 2)];
		if(!isnull(reason)) {
			strcat(string, reason);
			strreplaceword(string, "'", "''");
		}

		if(!isnull(playername)) {
			if(!isnull(playerip)) {
				if(!isnull(adminname)) {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, adminname, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' , '%s' )", playername, playerip, hours, adminname, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, adminname, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `adminip` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playername, playerip, hours, adminname);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, adminname, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `reason` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playername, playerip, hours, adminname, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, adminname, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' )", playername, playerip, hours, adminname);
							}
						}
					}
				} else {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playername, playerip, hours, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminip` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' )", playername, playerip, hours, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `reason` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , '%s' )", playername, playerip, hours, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `hits` , `lasthit` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') , %i , CURRENT_TIMESTAMP )", playername, playerip, hours, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` ) VALUES ( '%s' , '%s' , datetime('now', '%f hours') )", playername, playerip, hours);
							}
						}
					}
				}
			} else {
				if(!isnull(adminname)) {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `adminip`  , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s', '%s' , %i , CURRENT_TIMESTAMP )", playername, hours, adminname, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `adminip`  , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s', '%s' )", playername, hours, adminname, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `adminip`  , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s', %i , CURRENT_TIMESTAMP )", playername, hours, adminname, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `adminip` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s')", playername, hours, adminname, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playername, hours, adminname, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playername, hours, adminname, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playername, hours, adminname, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' )", playername, hours, adminname);
							}
						}
					}
				} else {
					if(!isnull(adminip)) {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s', '%s' , %i , CURRENT_TIMESTAMP )", playername, hours, adminip, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminip` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s', '%s' )", playername, hours, adminip, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s', %i , CURRENT_TIMESTAMP )", playername, hours, adminip, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminip` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' )", playername, hours, adminip);
							}
						}
					} else {
						if(!isnull(reason)) {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playername, hours, string, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' )", playername, hours, string);
							}
						} else {
							if(hits > 0) {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , %i , CURRENT_TIMESTAMP )", playername, hours, hits);
							} else {
								format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` ) VALUES ( '%s' , datetime('now', '%f hours') )", playername, hours);
							}
						}
					}
				}
			}
		} else {
			if(!isnull(adminname)) {
				if(!isnull(adminip)) {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, adminname, adminip, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `adminip` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' , '%s' )", playerip, hours, adminname, adminip, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, adminname, adminip, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `adminip` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playerip, hours, adminname, adminip);
						}
					}
				} else {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, adminname, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playerip, hours, adminname, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, adminname, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' )", playerip, hours, adminname);
						}
					}
				}
			} else {
				if(!isnull(adminip)) {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminip` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, adminip, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminip` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , '%s' )", playerip, hours, adminip, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminip` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, adminip, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminip` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' )", playerip, hours, adminip);
						}
					}
				} else {
					if(!isnull(reason)) {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `reason` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' , %i , CURRENT_TIMESTAMP )", playerip, hours, string, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `reason` ) VALUES ( '%s' , datetime('now', '%f hours') , '%s' )", playerip, hours, string);
						}
					} else {
						if(hits > 0) {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `hits` , `lasthit` ) VALUES ( '%s' , datetime('now', '%f hours') , %i , CURRENT_TIMESTAMP )", playerip, hours, hits);
						} else {
							format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` ) VALUES ( '%s' , datetime('now', '%f hours') )", playerip, hours);
						}
					}
				}
			}
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/**
 *  Suspend a player by name
 *	@param	db			The database
 *  @param	playername	The name to suspend
 *  @param	hours		The number of hours to suspend for
 *  @param	reason		The reason for the suspension
 *  @param	adminname	The name of the admin performing the suspension
 *  @param	hits		The number of people initially banned
 *  @return	true if the suspension was successful, otherwise false
 */
stock bool:Suspensions_SuspendName(DB:db, const playername[], Float:hours, const reason[], const adminname[], const adminip[], hits=0)
{
	return Suspensions_SuspendPlayer(db, playername, "", hours, reason, adminname, adminip, hits);
}

/**
 *  Suspend a player by IP
 *	@param	db			The database
 *  @param	playerip	The IP to suspend
 *  @param	hours		The number of hours to suspend for
 *  @param	reason		The reason for the suspension
 *  @param	adminname	The name of the admin performing the suspension
 *  @param	hits		The number of people initially banned
 *  @return	true if the suspension was successful, otherwise false
 */
stock bool:Suspensions_SuspendIP(DB:db, const playerip[], Float:hours, const reason[], const adminname[], const adminip[], hits=0)
{
	return Suspensions_SuspendPlayer(db, "", playerip, hours, reason, adminname, adminip, hits);
}

/**
 *  Unsuspend a player by name or IP
 *	@param	db			The database
 *  @param	playername	The name to unsuspend
 *  @param	playerip	The IP to unsuspend
 *  @param	SuspendData	The details of the suspension
 *  @return	true if the unsuspension was successful, otherwise false
 */
stock bool:Suspensions_UnsuspendPlayer(DB:db, const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION])
{
	if(isnull(playername) && isnull(playerip)) return false;
	if(db) {
		new string[540 + MAX_PLAYER_NAME + MAX_IP] = "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(datetime(`expires`,'localtime'),'') AS `expires` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , ifnull(julianday('now') > julianday(`expires`),1) AS `expired` , `hits` , ifnull(datetime(`lasthit`,'localtime'),'') AS `lasthit` FROM `Suspensions` WHERE (";
		if(!isnull(playerip)) {
			format(string, sizeof(string), "%s '%s' GLOB `ip`", string, playerip);
			if(!isnull(playername)) {
				format(string, sizeof(string), "%s OR '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'", string, playername);
			}
		} else {
			format(string, sizeof(string), "%s '%s' LIKE replace(replace(replace(`name`,'_','~_'),'*','%%'),'?','_') ESCAPE '~'", string, playername);
		}
		strcat(string, " ) LIMIT 1");
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "expires", SuspendData[E_SUSPEND_EXPIRES], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_EXPIRES]));
			db_get_field_assoc(result, "expired", string, sizeof(string));
			SuspendData[E_SUSPEND_EXPIRED] = strval(string) ? true : false;
			db_get_field_assoc(result, "ip", SuspendData[E_SUSPEND_IP], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
			db_get_field_assoc(result, "name", SuspendData[E_SUSPEND_NAME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
			db_get_field_assoc(result, "datetime", SuspendData[E_SUSPEND_DATETIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATETIME]));
			db_get_field_assoc(result, "adminname", SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]));
			db_get_field_assoc(result, "reason", SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));

			db_get_field_assoc(result, "lasthit", SuspendData[E_SUSPEND_LASTHIT], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_LASTHIT]));
			db_get_field_assoc(result, "hits", string, sizeof(string));
			SuspendData[E_SUSPEND_HITS] = strval(string);

			db_get_field_assoc(result, "rowid", string, sizeof(string));
			db_free_result(result);

			format(string, sizeof(string), "DELETE FROM `Suspensions` WHERE ( ROWID = %s )", string);
			db_free_result(db_query(db, string));

			return true;
		}
		db_free_result(result);
	}
	return false;
}

#define Suspensions_UnsuspendName(%1,%2,%3)			Suspensions_UnsuspendPlayer(%1,%2,"",%3)
#define Suspensions_UnsuspendIP(%1,%2,%3)			Suspensions_UnsuspendPlayer(%1,"",%2,%3)

/**
 *  Clears all suspensions
 *	@param	db			The database
 */
stock Suspensions_Clear(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "DELETE FROM `Suspensions`"));
	}
}


/**
 *  Store a temporarily RCON banned IP
 *	@param	db			The database
 *  @param	playerip	The banned IP
 *  @param	reason		The reason for the ban
 */
stock TempBan_Add(DB:db, const playerip[], const reason[])
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `TempBans` ( `ip` TEXT NOT NULL PRIMARY KEY , `reason` TEXT , `datetime` TEXT DEFAULT CURRENT_TIMESTAMP )"));
		new string[128];
		if(reason[0]) {
			format(string, sizeof(string), "INSERT INTO `TempBans` ( `ip` , `reason` ) VALUES ( '%s' , '%s' )", playerip, reason);
		} else {
			format(string, sizeof(string), "INSERT INTO `TempBans` ( `ip` ) VALUES ( '%s' )", playerip);
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/**
 *  Remove a temporarily RCON banned IP
 *	@param	db			The database
 *  @param	playerip	The banned IP
 */
stock TempBan_Remove(DB:db, const playerip[])
{
	if(db) {
		new string[128];
		format(string, sizeof(string), "DELETE FROM `TempBans` WHERE ( `ip` = '%s' )", playerip);
		db_free_result(db_query(db, string));
		new DBResult:result = db_query(db, "SELECT ROWID FROM `TempBans`");
		if(!db_num_rows(result)) {
			db_free_result(result);
			db_free_result(db_query(db, "DROP TABLE IF EXISTS `TempBans`"));
		} else {
			db_free_result(result);
		}
		return true;
	}
	return false;
}

/**
 *  Unban all temporarily RCON banned IPs
 *	@param	db			The database
 *	@return The number of IPs unbanned
 */
stock TempBan_UnbanAll(DB:db)
{
	if(db) {
		new DBResult:result = db_query(db, "SELECT * FROM `TempBans`"),
			num = db_num_rows(result),
			string[10 + MAX_IP];
		for(new i; i < num; i++) {
			db_get_field_assoc(result, "ip", string, sizeof(string));
			format(string, sizeof(string), "unbanip %s", string);
			SendRconCommand(string);
			db_next_row(result);
		}
		db_free_result(result);
		db_free_result(db_query(db, "DROP TABLE IF EXISTS `TempBans`"));
		return num;
	}
	return 0;
}


/**
 *  Initialise the warnings table
 *	@param	db			The database
 */
stock Warnings_Init(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Warnings` ( `name` TEXT NOT NULL COLLATE NOCASE , `reason` TEXT , `adminname` TEXT COLLATE NOCASE , `adminip` TEXT , `datetime` TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP , `active` TEXT NOT NULL DEFAULT 'true' CHECK ( `active` = 'true' OR `active` = 'false' ) )"));
		db_free_result(db_query(db, "CREATE INDEX IF NOT EXISTS `idx_Warnings` ON `Warnings` ( `name` DESC )"));
	}
}

/**
 *  Warn a player
 *	@param	db			The database
 *	@param	playername	The name of the player
 *	@param	reason		The reason for the warning
 *	@param	adminname	The name of the admin performing the warning
 */
stock Warnings_WarnPlayer(DB:db, const playername[], const reason[], const adminname[], const adminip[])
{
	if(db) {
		new string[90 + (MAX_PLAYER_NAME * 2) + MAX_IP + (MAX_INPUT * 2)];
		strcat(string, reason);
		strreplaceword(string, "'", "''");
		if(isnull(adminname)) {
			if(isnull(adminip)) {
				format(string, sizeof(string), "INSERT INTO `Warnings` ( `name` , `reason` ) VALUES ( '%s' , '%s' )", playername, string);
			} else {
				format(string, sizeof(string), "INSERT INTO `Warnings` ( `name` , `adminip` , `reason` ) VALUES ( '%s' , '%s' , '%s' )", playername, adminip, string);
			}
		} else {
			if(isnull(adminip)) {
				format(string, sizeof(string), "INSERT INTO `Warnings` ( `name` , `adminname` , `reason` ) VALUES ( '%s' , '%s' , '%s' )", playername, adminname, string);
			} else {
				format(string, sizeof(string), "INSERT INTO `Warnings` ( `name` , `adminip` , `adminname` , `reason` ) VALUES ( '%s' , '%s' , '%s' , '%s' )", playername, adminip, adminname, string);
			}
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}

/**
 *  Get the number of warnings a player has
 *	@param	db			The database
 *	@param	playername	The name of the player
 *	@param	hours		The number of hours warnings are active for
 */
stock Warnings_GetWarningCount(DB:db, const playername[], hours=0)
{
	if(db) {
		new string[180 + MAX_PLAYER_NAME];
		if(hours > 0) {
			format(string, sizeof(string), "SELECT Count(ROWID) FROM `Warnings` WHERE ( `name` = '%s' AND `active` = 'true' AND ( ( julianday('now') - julianday(`datetime`) ) * 24.0 ) < %i )", playername, hours);
		} else {
			format(string, sizeof(string), "SELECT Count(ROWID) FROM `Warnings` WHERE ( `name` = '%s' AND `active` = 'true' )", playername);
		}
		new DBResult:result = db_query(db, string);
		db_get_field(result, 0, string, sizeof(string));
		db_free_result(result);
		return strval(string);
	}
	return 0;
}

/**
 *  Get the info for a player's warning
 *	@param	db			The database
 *	@param	playername	The name of the player
 *	@param	number		The warning number to get
 *	@param	WarnInfo	The array to store the details in
 *	@return true if the warning info was retrieved, otherwise false
 */
stock Warnings_GetWarningInfo(DB:db, const playername[], number, WarnInfo[E_ALAR_WARNING])
{
	if(db) {
		new string[240 + MAX_PLAYER_NAME];
		format(string, sizeof(string), "SELECT `name` , ifnull(`adminname`,'') AS `adminname` , datetime(`datetime`,'localtime') AS `datetime` , `reason` FROM `Warnings` WHERE ( `name` = '%s' AND `active` = 'true' ) ORDER BY `datetime` DESC LIMIT 1 OFFSET %i", playername, number);
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "name", WarnInfo[E_WARN_NAME], sizeof(SIZE_E_ALAR_WARNING[E_WARN_NAME]));
			db_get_field_assoc(result, "adminname", WarnInfo[E_WARN_ADMIN], sizeof(SIZE_E_ALAR_WARNING[E_WARN_ADMIN]));
			db_get_field_assoc(result, "datetime", WarnInfo[E_WARN_DATETIME], sizeof(SIZE_E_ALAR_WARNING[E_WARN_DATETIME]));
			db_get_field_assoc(result, "reason", WarnInfo[E_WARN_REASON], sizeof(SIZE_E_ALAR_WARNING[E_WARN_REASON]));
			db_free_result(result);
			return true;
		} else {
			db_free_result(result);
			return false;
		}
	}
	return false;
}

/**
 *  Set a player's warnings as inactive
 *	@param	db			The database
 *	@param	playername	The name of the player
 *	@param	hours		The number of hours warnings are active for
 */
stock Warnings_SetInactive(DB:db, const playername[], hours=0)
{
	if(db) {
		new string[160 + MAX_PLAYER_NAME];
		if(hours > 0) {
			format(string, sizeof(string), "UPDATE `Warnings` SET `active` = 'false' WHERE ( `name` = '%s' )", playername);
		} else {
			format(string, sizeof(string), "UPDATE `Warnings` SET `active` = 'false' WHERE ( `name` = '%s' AND ( ( julianday('now') - julianday(`datetime`) ) * 24.0 ) < %i )", playername, hours);
		}
		db_free_result(db_query(db, string));
		return true;
	}
	return false;
}


/**
 *  Clears all warnings
 *	@param	db			The database
 */
stock Warnings_Clear(DB:db)
{
	if(db) {
		db_free_result(db_query(db, "DELETE FROM `Warnings`"));
	}
}

