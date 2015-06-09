/*
 *	Any Last Administrative Requests - alar_update.pwn
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

// File Names
#define BANFILE				"alar/Bans.ini"
#define MODESFILE			"alar/Gamemodes.ini"
#define SETTINGSFILE		"alar/Settings.ini"
#define SUSPENDFILE			"alar/Suspensions.ini"
#define WHITELISTFILE		"alar/Whitelist.ini"



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

#tryinclude "alar/Data"
#if !defined _alar_dini_included
	#include <alar/Data>
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

		Player_Init(AlarDB);
		Admin_Init(AlarDB);
		Bans_Init(AlarDB);
		Gamemodes_Init(AlarDB);
		Whitelist_Init(AlarDB);
		Setting_Init(AlarDB);
		Suspensions_Init(AlarDB);

		db_free_result(db_query(AlarDB, "END TRANSACTION"));
		db_close(AlarDB);
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(IsPlayerAdmin(playerid) && strcmp(cmdtext, "/aupdate", true) == 0) {
		if(GetAlarVersion()) {
			SendClientMessage(playerid, 0xFF0000AA, "Alar cannot be running while you update");
			return 1;
		}
		new DB:AlarDB = db_open(ALAR_DATABASE);
		if(AlarDB) {
			db_free_result(db_query(AlarDB, "BEGIN TRANSACTION"));

			new string[128];
			GetPlayerName(playerid, string, sizeof(string));
			printf("ALAR_UPDATE: %s is updating the alar database", string);

			SendClientMessage(playerid, 0x0000FFAA, "Updating...");
			format(string, sizeof(string), "    %i bans added", UpdateBans(AlarDB));
			SendClientMessage(playerid, 0x0000FFAA, string);
			print(string);

			format(string, sizeof(string), "    %i suspensions added", UpdateSuspensions(AlarDB));
			SendClientMessage(playerid, 0x0000FFAA, string);
			print(string);

			format(string, sizeof(string), "    %i whitelist entries added", UpdateWhitelist(AlarDB));
			SendClientMessage(playerid, 0x0000FFAA, string);
			print(string);

			format(string, sizeof(string), "    %i gamemodes added", UpdateGamemodes(AlarDB));
			SendClientMessage(playerid, 0x0000FFAA, string);
			print(string);

			format(string, sizeof(string), "    %i settings added", UpdateSettings(AlarDB));
			SendClientMessage(playerid, 0x0000FFAA, string);
			print(string);

			db_free_result(db_query(AlarDB, "END TRANSACTION"));
			db_close(AlarDB);
		} else {
			SendClientMessage(playerid, 0xFF0000AA, "Unable to open database");
		}
		return 1;
	}
	return 0;
}

stock UpdateBans(DB:db)
{
	if(!db) return 0;

	new File:handle = fopen(BANFILE, io_read);
	if(!handle) return 0;

	new BanData[E_ALAR_BAN],
		line[MAX_STRING],
		year, month, day , hour, minute,
		DBResult:result = db_query(db, "SELECT ROWID FROM `Bans`"),
		count = db_num_rows(result);
	db_free_result(result);
	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strstripnewline(line);
		if(strscan(line, "ss -/ iii -: ii -% ss", BanData[E_BAN_NAME], sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]), BanData[E_BAN_IP], sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]), day, month, year , hour, minute, BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]), BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]))) continue;
		if(strcmp(BanData[E_BAN_NAME], "-") == 0) BanData[E_BAN_NAME][0] = '\0';
		if(strcmp(BanData[E_BAN_IP], "-") == 0) BanData[E_BAN_IP][0] = '\0';
		format(BanData[E_BAN_DATETIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATETIME]), "%04i-%02i-%02i %02i:%02i:00", year, month, day , hour, minute);
		if(isValidBan(BanData)) {
			Bans_UpdateBan(db, BanData);
		}
	}
	result = db_query(db, "SELECT ROWID FROM `Bans`");
	count = db_num_rows(result) - count;
	db_free_result(result);
	fclose(handle);
	return count;
}

stock isValidBan(BanData[E_ALAR_BAN])
{
	if(isValidName(BanData[E_BAN_NAME], true)) {
		return (!BanData[E_BAN_IP][0] || IPisvalid(BanData[E_BAN_IP], true)) &&
				isValidTimestamp(BanData[E_BAN_DATETIME]) &&
				isValidName(BanData[E_BAN_ADMIN], true) &&
				BanData[E_BAN_REASON][0] != '\0';
	} else if(!BanData[E_BAN_NAME][0] && IPisvalid(BanData[E_BAN_IP], true)) {
		return isValidTimestamp(BanData[E_BAN_DATETIME]) &&
				isValidName(BanData[E_BAN_ADMIN], true) &&
				BanData[E_BAN_REASON][0] != '\0';
	}
	return false;
}

stock Bans_UpdateBan(DB:db, const BanData[E_ALAR_BAN])
{
	new string[180 + ( MAX_PLAYER_NAME * 2) + MAX_TIMESTAMP + MAX_IP + MAX_INPUT];
	strcat(string, BanData[E_BAN_REASON]);
	strreplace(string, "'", "''");

	if(!isnull(BanData[E_BAN_NAME])) {
		if(!isnull(BanData[E_BAN_IP])) {
			format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `ip` , `adminname` , `reason` , `datetime` ) VALUES ( '%s' , '%s' , '%s' , '%s' , datetime('%s','utc') )", BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_ADMIN], string, BanData[E_BAN_DATETIME]);
		} else {
			format(string, sizeof(string), "INSERT INTO `Bans` ( `name` , `adminname` , `reason` , `datetime` ) VALUES ( '%s' , '%s' , '%s' , datetime('%s','utc') )", BanData[E_BAN_NAME], BanData[E_BAN_ADMIN], string, BanData[E_BAN_DATETIME]);
		}
	} else {
		format(string, sizeof(string), "INSERT INTO `Bans` ( `ip` , `adminname` , `reason` , `datetime` ) VALUES ( '%s' , '%s' , '%s' , datetime('%s','utc') )", BanData[E_BAN_IP], BanData[E_BAN_ADMIN], string, BanData[E_BAN_DATETIME]);
	}
	db_free_result(db_query(db, string));
}


stock UpdateSuspensions(DB:db)
{
	if(!db) return 0;

	new File:handle = fopen(SUSPENDFILE, io_read);
	if(!handle) return 0;


	new SuspendData[E_ALAR_SUSPENSION],
		line[MAX_STRING],
		expyear, expmonth, expday, Float:exphour,
		year, month, day , hour, minute,
		DBResult:result = db_query(db, "SELECT ROWID FROM `Suspensions`"),
		count = db_num_rows(result);
	db_free_result(result);
	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strstripnewline(line);
		if(strscan(line, "ssiiif -/ iii -: ii -% ss", SuspendData[E_SUSPEND_NAME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]), SuspendData[E_SUSPEND_IP], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]), expyear, expmonth, expday, exphour, day, month, year , hour, minute, SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]), SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]))) continue;
		if(strcmp(SuspendData[E_SUSPEND_NAME], "-") == 0) SuspendData[E_SUSPEND_NAME][0] = '\0';
		if(strcmp(SuspendData[E_SUSPEND_IP], "-") == 0) SuspendData[E_SUSPEND_IP][0] = '\0';
		format(SuspendData[E_SUSPEND_EXPIRES], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_EXPIRES]), "%04i-%02i-%02i %02i:%02i:%02i", expyear, expmonth, expday, floatround(exphour, floatround_floor), floatround(floatfract(exphour) * 60, floatround_floor), floatround(floatfract(exphour * 60) * 60, floatround_floor));
		format(SuspendData[E_SUSPEND_DATETIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATETIME]), "%04i-%02i-%02i %02i:%02i:00", year, month, day, hour, minute);
		if(isValidSuspension(SuspendData)) {
			Suspensions_UpdateSuspension(db, SuspendData);
		}
	}
	result = db_query(db, "SELECT ROWID FROM `Suspensions`");
	count = db_num_rows(result) - count;
	db_free_result(result);
	fclose(handle);
	return count;
}


stock isValidSuspension(SuspendData[E_ALAR_SUSPENSION])
{
	if(isValidName(SuspendData[E_SUSPEND_NAME], true)) {
		return (!SuspendData[E_SUSPEND_IP][0] || IPisvalid(SuspendData[E_SUSPEND_IP], true)) &&
				isValidTimestamp(SuspendData[E_SUSPEND_DATETIME]) &&
				isValidName(SuspendData[E_SUSPEND_ADMIN], true) &&
				SuspendData[E_SUSPEND_REASON][0] != '\0' &&
				isValidTimestamp(SuspendData[E_SUSPEND_EXPIRES]);
	} else if(!SuspendData[E_SUSPEND_NAME][0] && IPisvalid(SuspendData[E_SUSPEND_IP], true)) {
		return isValidTimestamp(SuspendData[E_SUSPEND_DATETIME]) &&
				isValidName(SuspendData[E_SUSPEND_ADMIN], true) &&
				SuspendData[E_SUSPEND_REASON][0] != '\0' &&
				isValidTimestamp(SuspendData[E_SUSPEND_EXPIRES]);
	}
	return false;
}

stock Suspensions_UpdateSuspension(DB:db, const SuspendData[E_ALAR_SUSPENSION])
{
	new string[280 + ( MAX_PLAYER_NAME * 2 ) + MAX_TIMESTAMP + MAX_IP + MAX_INPUT];
	strcat(string, SuspendData[E_SUSPEND_REASON]);
	strreplace(string, "'", "''");

	if(!isnull(SuspendData[E_SUSPEND_NAME])) {
		if(!isnull(SuspendData[E_SUSPEND_IP])) {
			format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `ip` , `expires` , `adminname` , `reason` , `datetime` ) VALUES ( '%s' , '%s' , datetime('%s','utc') , '%s' , '%s' , datetime('%s','utc') )", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN], string, SuspendData[E_SUSPEND_DATETIME]);
		} else {
			format(string, sizeof(string), "INSERT INTO `Suspensions` ( `name` , `expires` , `adminname` , `datetime` ) VALUES ( '%s' , datetime('%s','utc') , '%s' , datetime('%s','utc') )", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_DATETIME]);
		}
	} else {
		format(string, sizeof(string), "INSERT INTO `Suspensions` ( `ip` , `expires` , `adminname` , `reason` , `datetime` ) VALUES ( '%s' , datetime('%s','utc') , '%s' , '%s' , datetime('%s','utc') )", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN], string, SuspendData[E_SUSPEND_DATETIME]);
	}
	db_free_result(db_query(db, string));
}

stock UpdateWhitelist(DB:db)
{
	new File:handle = fopen(WHITELISTFILE, io_read);
	if(!handle) return 0;
	new line[MAX_STRING],
		DBResult:result = db_query(db, "SELECT ROWID FROM `Whitelist`"),
		count = db_num_rows(result);
	db_free_result(result);
	while(fread(handle, line)) {
		if(line[0] != '#') {
			strstripnewline(line);
			if(isValidName(line, true)) {
				Whitelist_UpdateWhitelist(db, line);
			}
		}
	}
	result = db_query(db, "SELECT ROWID FROM `Whitelist`");
	count = db_num_rows(result) - count;
	db_free_result(result);
	fclose(handle);
	return count;
}

stock Whitelist_UpdateWhitelist(DB:db, const name[])
{
	new string[128];
	format(string, sizeof(string), "INSERT INTO `Whitelist` ( `name` ) VALUES ( '%s' )", name);
	db_free_result(db_query(db, string));
}

stock UpdateGamemodes(DB:db)
{
	new File:handle = fopen(MODESFILE, io_read);
	if(!handle) return 0;
	new line[MAX_STRING],
		DBResult:result = db_query(db, "SELECT ROWID FROM `Gamemodes`"),
		count = db_num_rows(result);
	db_free_result(result);
	while(fread(handle, line)) {
		if(line[0] != '#') {
			strstripnewline(line);
			if(line[0]) {
				Gamemodes_UpdateMode(db, line);
			}
		}
	}
	result = db_query(db, "SELECT ROWID FROM `Gamemodes`");
	count = db_num_rows(result) - count;
	db_free_result(result);
	fclose(handle);
	return count;
}

stock Gamemodes_UpdateMode(DB:db, const name[])
{
	new string[256];
	strcat(string, name);
	strreplace(string, "'", "''");
	format(string, sizeof(string), "INSERT INTO `Gamemodes` ( `name` ) VALUES ( '%s' )", string);
	db_free_result(db_query(db, string));
}

stock UpdateSettings(DB:db)
{
	new File:handle = fopen(SETTINGSFILE, io_read);
	if(!handle) return 0;
	new line[MAX_STRING], count;
	while(fread(handle, line)) {
		if(line[0] != '#') {
			new pos = strfind(line, "=");
			if(pos > 0) {
				strstripnewline(line);
				line[pos] = '\0';
				Settings_UpdateSetting(db, line, line[pos+1]);
				count++;
			}
		}
	}
	fclose(handle);
	return count;
}

stock Settings_UpdateSetting(DB:db, const setting[], const value[])
{
	new string[256];
	strcat(string, value);
	strreplace(string, "'", "''");
	format(string, sizeof(string), "SELECT ROWID FROM `Settings` WHERE ( `setting` = '%s' ) LIMIT 1", setting);
	new DBResult:result = db_query(db, string);
	if(db_num_rows(result)) {
		format(string, sizeof(string), "UPDATE `Settings` SET `value` = '%s' WHERE ( `setting` = '%s' )", string, setting);
	} else {
		format(string, sizeof(string), "INSERT INTO `Settings` ( `setting` , `value` ) VALUES ( '%s' , '%s' )", setting, string);
	}
	db_free_result(result);
	db_free_result(db_query(db, string));
}
