/*
 *	Any Last Administrative Requests - alar_merge.pwn
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


// The database
#define ALAR_DATABASE		"Alar.sqlite"



//-------------------------------------------------------------------------------------------------------------------

#include <a_samp>

#tryinclude "alar/Bugfix"
#if !defined _alar_bugfix_included
	#include <alar/Bugfix>
#endif

#tryinclude "../pawno/include/alar"
#if !defined _alar_included
	#include <alar>
#endif

#tryinclude "alar/Functions"
#if !defined _alar_functions_included
	#include <alar/Functions>
#endif

#tryinclude "alar/Bans"
#if !defined _alar_bans_included
	#include <alar/Bans>
#endif

public OnFilterScriptInit()
{
	new DB:AlarDB = db_open(ALAR_DATABASE);
	if(AlarDB) {
		db_free_result(db_query(AlarDB, "BEGIN TRANSACTION"));

		new DBResult:result = db_query(AlarDB, "PRAGMA user_version");
		if(db_num_rows(result)) {
			new versionstr[30];
			db_get_field(result, 0, versionstr, sizeof(versionstr));
			new version = strval(versionstr);
			if(version > 1) {
				print("WARNING: Alar database may be incompatible");
			} else if(version == 0) {
				db_free_result(db_query(AlarDB, "PRAGMA user_version = 1"));
			}
		}
		db_free_result(result);

		Bans_Init(AlarDB);
		Suspensions_Init(AlarDB);
		Warnings_Init(AlarDB);
		Whitelist_Init(AlarDB);

		db_free_result(db_query(AlarDB, "END TRANSACTION"));
		db_close(AlarDB);
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(IsPlayerAdmin(playerid) && strcmp(cmdtext, "/amerge ", true, 8) == 0) {
		if(cmdtext[8] =='\0' || !fexist(cmdtext[8])) {
			SendClientMessage(playerid, 0xFF0000AA, "Invalid database");
			return 1;
		}

		if(GetAlarVersion()) {
			SendClientMessage(playerid, 0xFF0000AA, "Alar cannot be running while you merge");
			return 1;
		}

		new DB:AlarDB = db_open(ALAR_DATABASE);
		if(!AlarDB) {
			SendClientMessage(playerid, 0xFF0000AA, "Unable to open database (" ALAR_DATABASE ")");
			return 1;
		}

		new DB:OtherDB = db_open(cmdtext[8]),
			string[256];

		if(!OtherDB) {
			db_close(AlarDB);
			format(string, sizeof(string), "Unable to open database (%s)", cmdtext[9]);
			SendClientMessage(playerid, 0xFF0000AA, string);
			return 1;
		}
		new version,
			DBResult:result = db_query(AlarDB, "PRAGMA user_version");
		if(db_num_rows(result)) {
			new versionstr[30];
			db_get_field(result, 0, versionstr, sizeof(versionstr));
			version = strval(versionstr);
		}
		db_free_result(result);
		db_close(OtherDB);
		if(version != 1) {
			db_close(AlarDB);
			SendClientMessage(playerid, 0xFF0000AA, "Incompatible database");
			return 1;
		}

		format(string, sizeof(string), "ATTACH DATABASE \"scriptfiles\\%s\" AS other", cmdtext[8]);
		db_free_result(db_query(AlarDB, string));
		db_free_result(db_query(AlarDB, "BEGIN TRANSACTION"));

		SendClientMessage(playerid, 0x0000FFAA, "Merging...");
		printf("ALAR_MERGE: %s merged the database \"%s\" into \"" ALAR_DATABASE "\"", ReturnPlayerName(playerid), cmdtext[8]);
		format(string, sizeof(string), "    %i bans added", MergeTable(AlarDB, "Bans"));
		SendClientMessage(playerid, 0x0000FFAA, string);
		print(string);
		format(string, sizeof(string), "    %i suspensions added", MergeTable(AlarDB, "Suspensions"));
		SendClientMessage(playerid, 0x0000FFAA, string);
		print(string);
		format(string, sizeof(string), "    %i warnings added", MergeTable(AlarDB, "Warnings"));
		SendClientMessage(playerid, 0x0000FFAA, string);
		print(string);
		format(string, sizeof(string), "    %i whitelist entries added", MergeTable(AlarDB, "Whitelist"));
		SendClientMessage(playerid, 0x0000FFAA, string);
		print(string);

		db_free_result(db_query(AlarDB, "END TRANSACTION"));
		db_free_result(db_query(AlarDB, "DETACH DATABASE `other`"));
		db_close(AlarDB);

		return 1;
	}
	return 0;
}

stock MergeTable(DB:db, const table[])
{
	if(!db) return 0;

	new num,
		string[256],
		DBResult:result;

	format(string, sizeof(string), "SELECT count(ROWID) FROM `main`.`%s`", table);
	result = db_query(db, string);
	db_get_field(result, 0, string, sizeof(string));
	db_free_result(result);
	num = strval(string);

	format(string, sizeof(string), "INSERT OR IGNORE INTO `main`.`%s` SELECT * FROM `other`.`%s`", table, table);
	db_free_result(db_query(db, string));

	format(string, sizeof(string), "SELECT count(ROWID) FROM `main`.`%s`", table);
	result = db_query(db, string);
	db_get_field(result, 0, string, sizeof(string));
	db_free_result(result);
	num = strval(string) - num;
	return num;
}
