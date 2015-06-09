/*
 *	Any Last Administrative Requests - alar_database.pwn
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


// The dialogid
#define ALAR_DIALOG_ID		(666)

// The database
#define ALAR_DATABASE		"Alar.sqlite"

// The number of entries per page (shouldn't be higher than 100 due to dialog limits)
#define PAGE_RESULTS		(100)

// The memory for dynamic data (can be decreased if the number of result per page is lowered)
#pragma dynamic 7200



//-------------------------------------------------------------------------------------------------------------------

#include <a_samp>

#tryinclude "alar/Bugfix"
#if !defined _alar_bugfix_included
	#include <alar/Bugfix>
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

#tryinclude "alar/IP2c"
#if !defined _alar_ip2c_included
	#include <alar/IP2c>
#endif

enum E_SETTING {
	E_SETTING_NAME[19],
	E_SETTING_INFO[211]
};
stock const gc_AlarBools[][E_SETTING] = {
	{"AdminPMs", "Allow players to send a PM to all admins"},
	{"AliasAdmins", "Allow admins to login under different names"},
	{"AutoLogin", "Automatically login admins if their IP has not changed"},
	{"ChatJoins", "Show join messages in the chat history"},
	{"CheckMods", "Check for invalid vehicle mods"},
	{"ConsoleMsgs", "Show admin activity in the console"},
	{"ExtraSpecViews", "Enable extra spectate modes"},
	{"FixRunning", "Use the same running animations for all skins"},
	{"HideBans", "Hide join/disconnect messages from banned/suspended players"},
	{"JoinCountries", "Show a player's country when they join"},
	{"JoinDefault", "Show join messages in the chat box by default"},
	{"JoinMsgs", "Show join/disconnect messages"},
	{"KickAllIPs", "Kick all players who have the same IP as a player who is banned/suspended"},
	{"LogActions", "Log admin activity to a seperate file"},
	{"LogLogins", "Show admin logins/logouts in the admin log"},
	{"PingImmunity", "Allow admins to be immune from the ping kicker"},
	{"RespawnVehicles", "Respawn admin create vehicles when they are destroyed"},
	{"SpecHUD", "Allow spectating admins to see the HUD"},
	{"StoreAliases", "Store the alternate names and IPs of players"}
};
stock const gc_AlarInts[][E_SETTING] = {
	{"AutoMuteTime", "The time to mute spammers for (0 or less for a permanent mute)"},
	{"DropHeight", "The height to drop players with /adrop"},
	{"GiveWeaponAmmo", "The default ammo to give with weapons"},
	{"JoinBanTime", "The number of seconds to ban join flooders for (set to 0 or less for a permanent ban)"},
	{"MaxPing", "The maximium average ping a player may have"},
	{"MinPWLength", "The minimium length for admin passwords"},
	{"PunchDecrement", "The amount of health/armour to take off with /apunch"},
	{"RageTime", "The time after being killed to count as a rage quit (0 or less to disable rage quits)"},
	{"RCONBanTime", "The number of seconds to ban for excessive login attempts (set to 0 or less for a permanent ban)"},
	{"RCONLevel", "The effective alar level of players logged into RCON"},
	{"RCONLoginLevel", "The level of the accounts for admins who use RCON to create their account (0 or less to disable account creation)"},
	{"SignInTime", "The time admins have to login before being kicked (0 or less to not kick)"},
	{"SlapDecrement", "The default amount of health to take off with /aslap"},
	{"WarnLimit", "The number of warnings a player can have before being kicked/suspended (0 or less for infinite)"},
	{"WarnProtection", "The minimium time in seconds between warnings to prevent multiple admins warning the same player"},
	{"WarnSuspendTime", "The time in hours to suspend for when the number of allowed warnings is exceeded (0 or less to kick)"},
	{"WarnTimeout", "The time in hours for warnings to be active (0 or less for permanent warnings)"}
};
stock const gc_AlarLevels[][E_SETTING] = {
	{"AliasLevel", "The level required to use the aalias command (Displays the other names a player has used on the server)"},
	{"Alias2Level", "The level required to use the aalias2 command (Displays the names of other players on the same subnet)"},
	{"Alias3Level", "The level required to use the aalias3 command (Display the other names used by all the player's previous IPs)"},
	{"ArmourAllLevel", "The level required to use the aarmourall command (Gives armour to all players)"},
	{"ArmourLevel", "The level required to use the aarmour command (Gives armour to a player)"},
	{"BanLevel", "The level required to use the commands:\n\taban (Bans a player by both IP and name)\n\tabanip (Bans an IP or a player by their IP)\n\tabanname (Bans a name from the server)"},
	{"BanCheckLevel", "The level required to use the abancheck command (Checks if a player name or IP is currently banned or suspened)"},
	{"BringLevel", "The level required to use the abring command (Brings a player to your current location)"},
	{"CarColourLevel", "The level required to use the acarcolour command (Changes a player's vehicle colour)"},
	{"ChangeModeLevel", "The level required to use the commands:\n\tachangemode (Changes the server gamemode)\n\talistmodes (Displays a list of modes which can be used with achangemode)"},
	{"ChangePWLevel", "The level required to use the achangepw command (Changes your alar password)"},
	{"ClearBansLevel", "The level required to use the aclearbans command (Removes all bans, suspensions and whilelisted names)"},
	{"ClearStatusLevel", "The level required to use the aclearstatus command (Removes all freezes/jails and mutes)"},
	{"ClrLevel", "The level required to use the aclr command (Clears the chatbox of all messages)"},
	{"CreateLevel", "The level required to use the acreate command (Creates a vehicle)"},
	{"DestroyLevel", "The level required to use the adestroy command (Destroys vehicles created with acreate)"},
	{"DesyncLevel", "The level required to use the adesync command (Desyncs a player to other people)"},
	{"DropLevel", "The level required to use the adrop command (Drops a player, potentially removing them from their vehicle)"},
	{"EjectAllLevel", "The level required to use the aejectall command (Ejects all players from their vehicle)"},
	{"EjectLevel", "The level required to use the aeject command (Ejects a player from their vehicle)"},
	{"ExplodeLevel", "The level required to use the aexplode command (Creates an explosion where a player is)"},
	{"FlipLevel", "The level required to use the aflip command (Flips a player's vehicle)"},
	{"FreezeLevel", "The level required to use the afreeze command (Freezes a player)"},
	{"GiveAllCashLevel", "The level required to use the agiveallcash command (Gives all players the specified amount of money)"},
	{"GiveAllWeaponLevel", "The level required to use the agiveallweapon command (Gives all players the specified weapon)"},
	{"GiveCashLevel", "The level required to use the agivecash command (Gives a player the specified amount of money)"},
	{"GiveWeaponLevel", "The level required to use the agiveweapon command (Gives a player the specified weapon)"},
	{"GotoLevel", "The level required to use the agoto command (Teleports you to a player with an optional offset)"},
	{"GravityLevel", "The level required to use the agravity command (Changes the server gravity)"},
	{"HealAllLevel", "The level required to use the ahealall command (Heals all playera)"},
	{"HealLevel", "The level required to use the aheal command (Heals a player)"},
	{"ImitateLevel", "The level required to use the aimitate command (Imitates a player's chat message)"},
	{"ImmuneLevel", "The level required to use the aimmune command (Toggles a player's immunity from the ping kicker)"},
	{"InfoLevel", "The level required to use the ainfo command (Displays information about a player)"},
	{"InteriorLevel", "The level required to use the ainterior command (Sets a player's interior)"},
	{"IPLevel", "The level required to use the aip command (Displays the current and previous IPs of a player)"},
	{"IPUpdateLevel", "The level required to use the aipupdate command (Updates the IP to Country files from a CVS file)"},
	{"JailLevel", "The level required to use the ajail command (Jails a player)"},
	{"KickLevel", "The level required to use the akick command (Kicks a player from the server)"},
	{"LogLevel", "The level required to use the alog command (Changes the admin log page, or toggles the log keys if no pages is specified)"},
	{"MsgLevel", "The level required to use the amsg command (Sends a chatbox message to all players in the server)"},
	{"MuteLevel", "The level required to use the amute command (Mutes a player)"},
	{"PunchLevel", "The level required to use the apunch command (Removes armour and health from a player)"},
	{"RangeBanLevel", "The level required to use IP ranges in the abanip command"},
	{"RangeKickLevel", "The level required to use IP ranges in the akick command"},
	{"RangeSuspendLevel", "The level required to use IP ranges in the asuspendip command"},
	{"RapeLevel", "The level required to use the arape command (Freezes/jails and mutes a player)"},
	{"ReloadDataLevel", "The level required to use the areloaddata command (Reloads server settings)"},
	{"RemAllCashLevel", "The level required to use the aremallcash command (Resets the money of all players)"},
	{"RemAllWeaponsLevel", "The level required to use the aremallweapons command (Resets the weapons of all players)"},
	{"RemCashLevel", "The level required to use the aremcash command (Resets a player's money)"},
	{"RemWeaponsLevel", "The level required to use the aremweapons command (Resets a player's weapons)"},
	{"RepairLevel", "The level required to use the arepair and ar commands (Repairs a player's vehicle or sets their vehicle health)"},
	{"RespawnLevel", "The level required to use the arespawn command (Respawns a player)"},
	{"SayLevel", "The level required to use the asay command (Displays a message on a player's screen)"},
	{"SelectLevel", "The level required to use the aselect command (Returns a player to spawn selection)"},
	{"ServerNameLevel", "The level required to use the aservername command (Changes the name of the server in the sa-mp browser)"},
	{"SetAdminLevel", "The level required to use the asetadmin command (Grants admin rights to a player)"},
	{"SetNameLevel", "The level required to use the asetname command (Changes a player's name)"},
	{"SetPingLevel", "The level required to use the asetping command (Sets the maximium average ping before a player is kicked)"},
	{"ShoutLevel", "The level required to use the ashout command (Displays a message on the screens of all players)"},
	{"SlapLevel", "The level required to use the aslap command (Removes health from a player)"},
	{"SlayLevel", "The level required to use the aslay command (Kills a player)"},
	{"SpawnLevel", "The level required to use the aspawn command (Spawns a player in class selection or spectating)"},
	{"SpecLevel", "The level required to use the aspec command (Enter or exit spectate mode)"},
	{"SuspendLevel", "The level required to use the commands:\n\tasuspend (Temporarily bans a player from the server)\n\tasuspendip (Temporarily bans an IP or a player by their IP)\n\tasuspendname (Temporarily bans a name from the server)"},
	{"TeleLevel", "The level required to use the in-game map to teleport, and teleport out of spec"},
	{"TimeLevel", "The level required to use the atime command (Changes the server time)"},
	{"UnbanLevel", "The level required to use the aunban command (Unbans a player from either their name or IP)"},
	{"UndesyncLevel", "The level required to use the aundesync command (Undesyncs a player)"},
	{"UnfreezeLevel", "The level required to use the aunfreeze command (Unfreezes a player)"},
	{"UnjailLevel", "The level required to use the aunjail command (Unjails a player)"},
	{"UnmuteLevel", "The level required to use the aunmute command (Unmutes a player)"},
	{"UnrapeLevel", "The level required to use the aunrape command (Unfreezes/unjails and unmutes a player)"},
	{"UnsuspendLevel", "The level required to use the aunsuspend command (Unsuspends a player from either their name or IP)"},
	{"UnwarnLevel", "The level required to use the aunwarn command (Removes a player's warnings)"},
	{"UnwhitelistLevel", "The level required to use the aunwhitelist command (Removes a player name's protection from range bans/suspensions)"},
	{"WarnLevel", "The level required to use the awarn command (Warns a player)"},
	{"WeatherLevel", "The level required to use the aweather command (Changes the server weather)"},
	{"WildBanLevel", "The level required to use wildcards in the abanname command"},
	{"WildKickLevel", "The level required to use wildcards in the akick command"},
	{"WildSuspendLevel", "The level required to use wildcards in the asuspendname command"},
	{"WhitelistLevel", "The level required to use the awhitelist command (Protects a player name from range bans/suspensions)"},
	{"WorldLevel", "The level required to use the aworld command (Sets a player's virtual world)"}
};
stock const gc_AlarStrings[][E_SETTING] = {
	{"BanMsg", "The message to send to banned player, the following will be replaced with the appropriate info: $(WEBSITE), $(NAME), $(IP), $(DATE), $(TIME) and $(ADMIN)"},
	{"ChatHistory", "Show pervious chat messages to joining players (\"Admins\", \"All\" or \"None\")"},
	{"ChatPrefix", "The prefix(s) for admin chat"},
	{"DefaultNumPlate", "The default number plate for admin created vehicles (! - vehicleid, # - random number from 0 to 9, $ - random letter from A to Z)"},
	{"DefaultPW", "The default admin password"},
	{"RangeBanMsg", "The message to show people who are range banned (defaults to the normal message if left empty)"},
	{"RangeSuspendMsg", "The message to show people who are range suspended (defaults to the normal message if left empty)"},
	{"SuspendMsg", "The message to send to suspended player, the following will be replaced with the appropriate info: $(WEBSITE), $(NAME), $(IP), $(DATE), $(TIME) and $(ADMIN)"}
};

enum {
	MPS_IDKLOL,
	MPS_SELECTION,
	MPS_NEXTPAGE,
	MPS_PREVIOUSPAGE,
	MPS_ADDITEM
}

enum E_DIALOGS {
	DIALOG_NONE,
	DIALOG_MAIN,
	DIALOG_ADMINS,
	DIALOG_BANS,
	DIALOG_GAMEMODES,

	DIALOG_SETTINGS,
	DIALOG_SETTINGS_BOOL,
	DIALOG_SETTINGS_INT,
	DIALOG_SETTINGS_LEVEL,
	DIALOG_SETTINGS_STRING,

	DIALOG_STATUS,
	DIALOG_SUSPENSIONS,
	DIALOG_WARNINGS,
	DIALOG_WHITELIST
};

enum E_DIALOG {
	E_DIALOGS:E_DIALOG_ID,

	E_DIALOG_PAGE,			// current page
	E_DIALOG_SELECTION,		// current selection
	E_DIALOG_SUBSELECTION,	// current subselection
	E_DIALOG_VALUE[50],		// the name of the selection
	E_DIALOG_ROWID,			// the rowid of the selection

	E_DIALOG_RESULTS,		// number of results on the page
	bool:E_DIALOG_PREVIOUS,	// if there was a previous page
	bool:E_DIALOG_NEXT,		// if there is a next page
}; stock SIZE_E_DIALOG[E_DIALOG];

new gPlayerPage[MAX_PLAYERS][E_DIALOG];


public OnFilterScriptInit()
{
	new DB:AlarDB = db_open(ALAR_DATABASE);
	if(AlarDB) {
		db_free_result(db_query(AlarDB, "BEGIN TRANSACTION"));

		Player_Init(AlarDB);
		Admin_Init(AlarDB);
		Bans_Init(AlarDB);
		Gamemodes_Init(AlarDB);
		Warnings_Init(AlarDB);
		Whitelist_Init(AlarDB);
		Setting_Init(AlarDB);
		Suspensions_Init(AlarDB);

		db_free_result(db_query(AlarDB, "END TRANSACTION"));
		db_close(AlarDB);
	}
	for(new i; i < sizeof(gPlayerPage); i++) {
		gPlayerPage[i][E_DIALOG_SELECTION] = -1;
		gPlayerPage[i][E_DIALOG_SUBSELECTION] = -1;
	}
	return 1;
}

public OnFilterScriptExit()
{
	for(new i, j = GetMaxPlayers(); i < j; i++) {
		if(IsPlayerConnected(i) && gPlayerPage[i][E_DIALOG_ID] != DIALOG_NONE) {
			ShowPlayerDialog(i, -1, DIALOG_STYLE_MSGBOX, "", "", "", "");
		}
	}
}

public OnPlayerConnect(playerid)
{
	gPlayerPage[playerid][E_DIALOG_SELECTION] = -1;
	gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
	gPlayerPage[playerid][E_DIALOG_PAGE] = 0;
	gPlayerPage[playerid][E_DIALOG_PREVIOUS] = false;
	gPlayerPage[playerid][E_DIALOG_NEXT] = false;
	gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_NONE;
	gPlayerPage[playerid][E_DIALOG_VALUE][0] = '\0';
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(IsPlayerAdmin(playerid) && strcmp(cmdtext, "/adatabase", true) == 0) {
		ShowAlarDialog(DB:0, playerid, DIALOG_MAIN);
		return 1;
	}
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == ALAR_DIALOG_ID && gPlayerPage[playerid][E_DIALOG_ID] != DIALOG_NONE) {
		new DB:AlarDB = db_open(ALAR_DATABASE);
		if(!AlarDB) {
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_NONE;
			return 1;
		}
		db_free_result(db_query(AlarDB, "BEGIN TRANSACTION"));

		if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_MAIN) {
			gPlayerPage[playerid][E_DIALOG_PAGE] = 0;
			if(response) {
				switch(listitem) {
					case 0: ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
					case 1: ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
					case 2: ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
					case 3: ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS);
					case 4: ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
					case 5: ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
					case 6: ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
					case 7: ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
				}
			} else {
				gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_NONE;
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_ADMINS) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(isValidName(inputtext)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Admins` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS, true);
						} else {
							db_free_result(result);
							new LoginData[E_LOGINDATA];
							Setting_GetString(AlarDB, "DefaultPW", string, sizeof(string));
							LoginData[E_LOGIN_LEVEL] = 1;
							strcpy(LoginData[E_LOGIN_HASH], Hash_String(string), sizeof(SIZE_E_LOGINDATA[E_LOGIN_HASH]));
							Admin_SetAdmin(AlarDB, inputtext, LoginData, false);
							ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
						}
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[100];
							format(string, sizeof(string), "SELECT `name` FROM `Admins` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								db_get_field_assoc(result, "name", gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]));
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
							} else {
								ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
							}
							db_free_result(result);
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else {
				if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
					if(response) {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = listitem;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
					} else {
						ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
					}
				} else if(response) {
					if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
						if(isNumeric(inputtext) && strval(inputtext) > 0) {
							new string[100 + MAX_PLAYER_NAME];
							format(string, sizeof(string), "UPDATE `Admins` SET `level` = %s WHERE ( `name` = '%s' )", inputtext, gPlayerPage[playerid][E_DIALOG_VALUE]);
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
						if(!inputtext[0] || IPisvalid(inputtext)) {
							new string[60 + MAX_PLAYER_NAME + MAX_IP];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Admins` SET `ip` = '%s' WHERE ( `name` = '%s' )", inputtext, gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else {
								format(string, sizeof(string), "UPDATE `Admins` SET `ip` = NULL WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
						if(inputtext[0]) {
							new string[70 + MAX_PLAYER_NAME + MAX_HASH];
							format(string, sizeof(string), "UPDATE `Admins` SET `password` = '%s' WHERE ( `name` = '%s' )", Hash_String(inputtext), gPlayerPage[playerid][E_DIALOG_VALUE]);
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
						new string[50 + MAX_PLAYER_NAME];
						format(string, sizeof(string), "DELETE FROM `Admins` WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
						db_free_result(db_query(AlarDB, string));
						ShowAlarDialog(AlarDB, playerid, DIALOG_ADMINS);
					}
				} else {
					gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
					ShowAlarSubDialog(AlarDB, playerid, DIALOG_ADMINS);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_BANS) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(IPisvalid(inputtext, true)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Bans` WHERE ( `ip` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						} else {
							db_free_result(result);
							Bans_BanPlayer(AlarDB,  "", inputtext, "", "", "");
							ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
						}
					} else if(isValidName(inputtext, true)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Bans` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						} else {
							db_free_result(result);
							Bans_BanPlayer(AlarDB, inputtext, "", "", "", "");
							ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
						}
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[140];
							format(string, sizeof(string), "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` FROM `Bans` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								new name[MAX_PLAYER_NAME],
									ip[MAX_IP];
								db_get_field_assoc(result, "name", name, sizeof(name));
								db_get_field_assoc(result, "ip", ip, sizeof(ip));
								if(name[0]) {
									if(ip[0]) {
										format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s, IP: %s", name, ip);
									} else {
										format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s", name);
									}
								} else {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "IP: %s", ip);
								}
								db_get_field_assoc(result, "rowid", string, sizeof(string));
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								gPlayerPage[playerid][E_DIALOG_ROWID] = strval(string);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
							} else {
								ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
							}
							db_free_result(result);
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else {
				if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
					if(response) {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = listitem;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
					} else {
						ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
					}
				} else if(response) {
					if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
						if(!inputtext[0]) {
							new string[128];
							format(string, sizeof(string), "SELECT * FROM `Bans` WHERE ( ROWID = %i AND `ip` NOT NULL )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "IP: %s", string);
								format(string, sizeof(string), "UPDATE `Bans` SET `name` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
							} else {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
							}
						} else if(isValidName(inputtext, true)) {
							new string[128];
							format(string, sizeof(string), "SELECT ROWID FROM `Bans` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
							} else {
								db_free_result(result);
								format(string, sizeof(string), "SELECT ifnull(`ip`,'') AS `ip` FROM `Bans` WHERE ( ROWID = %i ) LIMIT 1", gPlayerPage[playerid][E_DIALOG_ROWID]);
								result = db_query(AlarDB, string);
								db_get_field_assoc(result, "ip", string, sizeof(string));
								if(string[0]) {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s, IP: %s", inputtext, string);
								} else {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s", inputtext);
								}
								db_free_result(result);
								format(string, sizeof(string), "UPDATE `Bans` SET `name` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
							}
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
						if(!inputtext[0]) {
							new string[128];
							format(string, sizeof(string), "SELECT * FROM `Bans` WHERE ( ROWID = %i AND `name` NOT NULL )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s", string);
								format(string, sizeof(string), "UPDATE `Bans` SET `ip` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
							} else {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
							}
						} else if(IPisvalid(inputtext, true)) {
							new string[128];
							format(string, sizeof(string), "SELECT ROWID FROM `Bans` WHERE ( `ip` = '%s' ) LIMIT 1", inputtext);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
							} else {
								db_free_result(result);
								format(string, sizeof(string), "SELECT ifnull(`name`,'') AS `name` FROM `Bans` WHERE ( ROWID = %i ) LIMIT 1", gPlayerPage[playerid][E_DIALOG_ROWID]);
								result = db_query(AlarDB, string);
								db_get_field_assoc(result, "name", string, sizeof(string));
								if(string[0]) {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s, IP: %s", string, inputtext);
								} else {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "IP: %s", inputtext);
								}
								db_free_result(result);
								format(string, sizeof(string), "UPDATE `Bans` SET `ip` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
							}
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
						if(isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[128];
							if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Bans` SET `datetime` = datetime('now','%0.2f hours') WHERE ( ROWID = %i )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Bans` SET `datetime` = datetime('%s','utc') WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
						if(!inputtext[0] || isValidName(inputtext, false)) {
							new string[128];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Bans` SET `adminname` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Bans` SET `adminname` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 4) {
						if(!inputtext[0] || IPisvalid(inputtext, false)) {
							new string[128];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Bans` SET `adminip` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Bans` SET `adminip` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 5) {
						new string[110 + MAX_INPUT];
						if(inputtext[0]) {
							strcat(string, inputtext);
							strreplace(string, "'", "''");
							format(string, sizeof(string), "UPDATE `Bans` SET `reason` = '%s' WHERE ( ROWID = %i )", string, gPlayerPage[playerid][E_DIALOG_ROWID]);
						} else {
							format(string, sizeof(string), "UPDATE `Bans` SET `reason` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
						}
						db_free_result(db_query(AlarDB, string));
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 6) {
						new string[50 + MAX_PLAYER_NAME];
						format(string, sizeof(string), "DELETE FROM `Bans` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
						db_free_result(db_query(AlarDB, string));
						ShowAlarDialog(AlarDB, playerid, DIALOG_BANS);
					}
				} else {
					gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
					ShowAlarSubDialog(AlarDB, playerid, DIALOG_BANS);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_GAMEMODES) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(inputtext[0]) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Gamemodes` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_GAMEMODES, true);
						} else {
							db_free_result(result);
							format(string, sizeof(string), "INSERT INTO `Gamemodes` ( `name` ) VALUES ( '%s' )", inputtext);
							db_free_result(db_query(AlarDB, string));
							ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
						}
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_GAMEMODES, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[128];
							format(string, sizeof(string), "SELECT `name` FROM `Gamemodes` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_get_field_assoc(result, "name", gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]));
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_GAMEMODES);
							} else {
								ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
							}
							db_free_result(result);
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_GAMEMODES);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else {
				if(response) {
					new string[128];
					format(string, sizeof(string), "DELETE FROM `Gamemodes` WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
					db_free_result(db_query(AlarDB, string));
					ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_GAMEMODES);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_SETTINGS) {
			if(response) {
				switch(listitem) {
					case 0: ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_BOOL);
					case 1: ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_INT);
					case 2: ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_LEVEL);
					case 3: ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_STRING);
				}
			} else {
				ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_SETTINGS_BOOL) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					if(0 <= listitem < sizeof(gc_AlarBools)) {
						new string[256],
							heading[50] = "Alar - Settings - Booleans - ";
						strcat(heading, gc_AlarBools[listitem][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarBools[listitem][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "%s\n\nCurrent Setting:\n\t%s", gc_AlarBools[listitem][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarBools[listitem][E_SETTING_INFO]);
						}
						gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS);
				}
			} else {
				if(response && 0 <= gPlayerPage[playerid][E_DIALOG_SELECTION] < sizeof(gc_AlarBools)) {
					if(inputtext[0] && (strcmp(inputtext, "true", true) == 0 || strcmp(inputtext, "false", true) == 0)) {
						Setting_SetString(AlarDB, gc_AlarBools[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], inputtext);
						ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_BOOL);
					} else {
						new string[256],
							heading[50] = "Alar - Settings - Booleans - ";
						strcat(heading, gc_AlarBools[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarBools[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "ERROR: Setting must be \"true\" or \"false\"\n\n%s\n\nCurrent Setting:\n\t%s", gc_AlarBools[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarBools[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_INFO]);
						}
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_BOOL);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_SETTINGS_INT) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					if(0 <= listitem < sizeof(gc_AlarInts)) {
						new string[256],
							heading[50] = "Alar - Settings - Integers - ";
						strcat(heading, gc_AlarInts[listitem][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarInts[listitem][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "%s\n\nCurrent Setting:\n\t%s", gc_AlarInts[listitem][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarInts[listitem][E_SETTING_INFO]);
						}
						gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS);
				}
			} else {
				if(response && 0 <= gPlayerPage[playerid][E_DIALOG_SELECTION] < sizeof(gc_AlarInts)) {
					if(isInteger(inputtext)) {
						Setting_SetString(AlarDB, gc_AlarInts[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], inputtext);
						ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_INT);
					} else {
						new string[256],
							heading[50] = "Alar - Settings - Integers - ";
						strcat(heading, gc_AlarInts[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarInts[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "ERROR: Setting must be an integer\n\n%s\n\n%s\n\nCurrent Setting:\n\t%s", gc_AlarInts[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarInts[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_INFO]);
						}
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_INT);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_SETTINGS_LEVEL) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					if(0 <= listitem < sizeof(gc_AlarLevels)) {
						new string[256],
							heading[50] = "Alar - Settings - Levels - ";
						strcat(heading, gc_AlarLevels[listitem][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarLevels[listitem][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "%s\n\nCurrent Setting:\n\t%s", gc_AlarLevels[listitem][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarLevels[listitem][E_SETTING_INFO]);
						}
						gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS);
				}
			} else {
				if(response && 0 <= gPlayerPage[playerid][E_DIALOG_SELECTION] < sizeof(gc_AlarLevels)) {
					if(isInteger(inputtext)) {
						Setting_SetString(AlarDB, gc_AlarLevels[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], inputtext);
						ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_LEVEL);
					} else {
						new string[256],
							heading[50] = "Alar - Settings - Levels - ";
						strcat(heading, gc_AlarLevels[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarLevels[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "ERROR: Setting must be an integer\n\n%s\n\n%s\n\nCurrent Setting:\n\t%s", gc_AlarLevels[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarLevels[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_INFO]);
						}
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_LEVEL);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_SETTINGS_STRING) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					if(0 <= listitem < sizeof(gc_AlarStrings)) {
						new string[256],
							heading[50] = "Alar - Settings - Strings - ";
						strcat(heading, gc_AlarStrings[listitem][E_SETTING_NAME]);
						if(Setting_GetString(AlarDB, gc_AlarStrings[listitem][E_SETTING_NAME], string)) {
							format(string, sizeof(string), "%s\n\nCurrent Setting:\n\t%s", gc_AlarStrings[listitem][E_SETTING_INFO], string);
						} else {
							strcpy(string, gc_AlarStrings[listitem][E_SETTING_INFO]);
						}
						gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS);
				}
			} else {
				if(response && 0 <= gPlayerPage[playerid][E_DIALOG_SELECTION] < sizeof(gc_AlarStrings)) {
					Setting_SetString(AlarDB, gc_AlarStrings[gPlayerPage[playerid][E_DIALOG_SELECTION]][E_SETTING_NAME], inputtext);
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_STRING);
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SETTINGS_STRING);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_STATUS) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(IPisvalid(inputtext, false)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Status` WHERE ( `ip` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS, true);
						} else {
							db_free_result(result);
							format(string, sizeof(string), "INSERT INTO `Status` ( `ip` ) VALUES ( '%s' )", inputtext);
							db_free_result(db_query(AlarDB, string));
							ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
						}
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[100];
							format(string, sizeof(string), "SELECT `ip` FROM `Status` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								db_get_field_assoc(result, "ip", gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]));
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
							} else {
								ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
							}
							db_free_result(result);
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else {
				if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
					if(response) {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = listitem;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
					} else {
						ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
					}
				} else if(response) {
					if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
						if(!inputtext[0] || strcmp(inputtext, "false", true) == 0 || strcmp(inputtext, "true", true) == 0 || isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[100 + MAX_IP + MAX_TIMESTAMP];
							if(!inputtext[0] || strcmp(inputtext, "false", true) == 0) {
								format(string, sizeof(string), "UPDATE `Status` SET `frozen` = 'false' WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else if(strcmp(inputtext, "true", true) == 0) {
								format(string, sizeof(string), "UPDATE `Status` SET `frozen` = 'true' WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Status` SET `frozen` = datetime('now','%0.2f hours') WHERE ( `ip` = '%s' )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else {
								format(string, sizeof(string), "UPDATE `Status` SET `frozen` = datetime('%s','utc') WHERE ( `ip` = '%s' )", inputtext, gPlayerPage[playerid][E_DIALOG_VALUE]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
						if(!inputtext[0] || strcmp(inputtext, "false", true) == 0 || strcmp(inputtext, "true", true) == 0 || isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[100 + MAX_IP + MAX_TIMESTAMP];
							if(!inputtext[0] || strcmp(inputtext, "false", true) == 0) {
								format(string, sizeof(string), "UPDATE `Status` SET `jailed` = 'false' WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else if(strcmp(inputtext, "true", true) == 0) {
								format(string, sizeof(string), "UPDATE `Status` SET `jailed` = 'true' WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Status` SET `jailed` = datetime('now','%0.2f hours') WHERE ( `ip` = '%s' )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else {
								format(string, sizeof(string), "UPDATE `Status` SET `jailed` = datetime('%s','utc') WHERE ( `ip` = '%s' )", inputtext, gPlayerPage[playerid][E_DIALOG_VALUE]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
						if(!inputtext[0] || strcmp(inputtext, "false", true) == 0 || strcmp(inputtext, "true", true) == 0 || isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[100 + MAX_IP + MAX_TIMESTAMP];
							if(!inputtext[0] || strcmp(inputtext, "false", true) == 0) {
								format(string, sizeof(string), "UPDATE `Status` SET `muted` = 'false' WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else if(strcmp(inputtext, "true", true) == 0) {
								format(string, sizeof(string), "UPDATE `Status` SET `muted` = 'true' WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Status` SET `muted` = datetime('now','%0.2f hours') WHERE ( `ip` = '%s' )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_VALUE]);
							} else {
								format(string, sizeof(string), "UPDATE `Status` SET `muted` = datetime('%s','utc') WHERE ( `ip` = '%s' )", inputtext, gPlayerPage[playerid][E_DIALOG_VALUE]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
						new string[50 + MAX_PLAYER_NAME];
						format(string, sizeof(string), "DELETE FROM `Status` WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
						db_free_result(db_query(AlarDB, string));
						ShowAlarDialog(AlarDB, playerid, DIALOG_STATUS);
					}
				} else {
					gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
					ShowAlarSubDialog(AlarDB, playerid, DIALOG_STATUS);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_SUSPENSIONS) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(IPisvalid(inputtext, true)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Suspensions` WHERE ( `ip` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						} else {
							db_free_result(result);
							Suspensions_SuspendPlayer(AlarDB, "", inputtext, 24, "", "", "");
							ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						}
					} else if(isValidName(inputtext, true)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Suspensions` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						} else {
							db_free_result(result);
							Suspensions_SuspendPlayer(AlarDB, inputtext, "", 24, "", "", "");
							ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						}
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[140];
							format(string, sizeof(string), "SELECT ROWID AS `rowid` , ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` FROM `Suspensions` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								new name[MAX_PLAYER_NAME],
									ip[MAX_IP];
								db_get_field_assoc(result, "name", name, sizeof(name));
								db_get_field_assoc(result, "ip", ip, sizeof(ip));
								if(name[0]) {
									if(ip[0]) {
										format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s, IP: %s", name, ip);
									} else {
										format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s", name);
									}
								} else {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "IP: %s", ip);
								}
								db_get_field_assoc(result, "rowid", string, sizeof(string));
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								gPlayerPage[playerid][E_DIALOG_ROWID] = strval(string);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
							} else {
								ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
							}
							db_free_result(result);
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else {
				if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
					if(response) {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = listitem;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
					} else {
						ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
					}
				} else if(response) {
					if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
						if(!inputtext[0]) {
							new string[128];
							format(string, sizeof(string), "SELECT * FROM `Suspensions` WHERE ( ROWID = %i AND `ip` NOT NULL )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "IP: %s", string);
								format(string, sizeof(string), "UPDATE `Suspensions` SET `name` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
							} else {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
							}
						} else if(isValidName(inputtext, true)) {
							new string[128];
							format(string, sizeof(string), "SELECT ROWID FROM `Suspensions` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
							} else {
								db_free_result(result);
								format(string, sizeof(string), "SELECT ifnull(`ip`,'') AS `ip` FROM `Suspensions` WHERE ( ROWID = %i ) LIMIT 1", gPlayerPage[playerid][E_DIALOG_ROWID]);
								result = db_query(AlarDB, string);
								db_get_field_assoc(result, "ip", string, sizeof(string));
								if(string[0]) {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s, IP: %s", inputtext, string);
								} else {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s", inputtext);
								}
								db_free_result(result);
								format(string, sizeof(string), "UPDATE `Suspensions` SET `name` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
							}
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
						if(!inputtext[0]) {
							new string[128];
							format(string, sizeof(string), "SELECT * FROM `Suspensions` WHERE ( ROWID = %i AND `name` NOT NULL )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s", string);
								format(string, sizeof(string), "UPDATE `Suspensions` SET `ip` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
							} else {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
							}
						} else if(IPisvalid(inputtext, true)) {
							new string[128];
							format(string, sizeof(string), "SELECT ROWID FROM `Suspensions` WHERE ( `ip` = '%s' ) LIMIT 1", inputtext);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_free_result(result);
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
							} else {
								db_free_result(result);
								format(string, sizeof(string), "SELECT ifnull(`name`,'') AS `name` FROM `Suspensions` WHERE ( ROWID = %i ) LIMIT 1", gPlayerPage[playerid][E_DIALOG_ROWID]);
								result = db_query(AlarDB, string);
								db_get_field_assoc(result, "name", string, sizeof(string));
								if(string[0]) {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "Name: %s, IP: %s", string, inputtext);
								} else {
									format(gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]), "IP: %s", inputtext);
								}
								db_free_result(result);
								format(string, sizeof(string), "UPDATE `Suspensions` SET `ip` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
								db_free_result(db_query(AlarDB, string));
								gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
							}
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
						if(isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[128];
							if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `datetime` = datetime('now','%0.2f hours') WHERE ( ROWID = %i )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `datetime` = datetime('%s','utc') WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
						if(!inputtext[0] || isValidName(inputtext, false)) {
							new string[100 + MAX_PLAYER_NAME];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `adminname` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `adminname` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 4) {
						if(!inputtext[0] || IPisvalid(inputtext, false)) {
							new string[100 + MAX_IP];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `adminip` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `adminip` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 5) {
						new string[110 + MAX_INPUT];
						if(inputtext[0]) {
							strcat(string, inputtext);
							strreplace(string, "'", "''");
							format(string, sizeof(string), "UPDATE `Suspensions` SET `reason` = '%s' WHERE ( ROWID = %i )", string, gPlayerPage[playerid][E_DIALOG_ROWID]);
						} else {
							format(string, sizeof(string), "UPDATE `Suspensions` SET `reason` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
						}
						db_free_result(db_query(AlarDB, string));
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 6) {
						if(isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[128];
							if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `expires` = datetime('now','%0.2f hours') WHERE ( ROWID = %i )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Suspensions` SET `expires` = datetime('%s','utc') WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS, true);
						}
					} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 7) {
						new string[50 + MAX_PLAYER_NAME];
						format(string, sizeof(string), "DELETE FROM `Suspensions` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
						db_free_result(db_query(AlarDB, string));
						ShowAlarDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
					}
				} else {
					gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
					ShowAlarSubDialog(AlarDB, playerid, DIALOG_SUSPENSIONS);
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_WARNINGS) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -3) {
				if(response) {
					if(inputtext[0]) {
						Warnings_WarnPlayer(AlarDB, gPlayerPage[playerid][E_DIALOG_VALUE], inputtext, "", "");
						gPlayerPage[playerid][E_DIALOG_SELECTION] = -1;
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
					}
				} else {
					gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
					ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(isValidName(inputtext, false)) {
						strcpy(gPlayerPage[playerid][E_DIALOG_VALUE], inputtext, sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]));
						gPlayerPage[playerid][E_DIALOG_SELECTION] = -3;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
				}

			} else if(gPlayerPage[playerid][E_DIALOG_VALUE][0] == '\0') {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[128];
							format(string, sizeof(string), "SELECT `name` FROM `Warnings` GROUP BY `name` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_get_field(result, 0, gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]));
								db_free_result(result);
								//gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
							} else {
								db_free_result(result);
								ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
							}
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[128];
							format(string, sizeof(string), "SELECT ROWID FROM `Warnings` WHERE ( `name` = '%s' ) LIMIT 1 OFFSET %i", gPlayerPage[playerid][E_DIALOG_VALUE], (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_get_field(result, 0, string, sizeof(string));
								db_free_result(result);
								gPlayerPage[playerid][E_DIALOG_ROWID] = strval(string);
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
							} else {
								db_free_result(result);
								ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
							}
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -3;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
					}
				} else {
					gPlayerPage[playerid][E_DIALOG_VALUE][0] = '\0';
					ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
				}
			} else {
				if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
					if(response) {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = listitem;
					} else {
						gPlayerPage[playerid][E_DIALOG_SELECTION] = -1;
					}
					ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
					if(response) {
						if(inputtext[0]) {
							new string[100 + (MAX_INPUT * 2)];
							strcat(string, inputtext);
							strreplace(string, "'", "''");
							format(string, sizeof(string), "UPDATE `Warnings` SET `reason` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
						}
					} else {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
					if(response) {
						if(!inputtext[0] || isValidName(inputtext, false)) {
							new string[100 + MAX_PLAYER_NAME];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Warnings` SET `adminname` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Warnings` SET `adminname` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
						}
					} else {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
					if(response) {
						if(!inputtext[0] || IPisvalid(inputtext, false)) {
							new string[100 + MAX_IP];
							if(inputtext[0]) {
								format(string, sizeof(string), "UPDATE `Warnings` SET `adminip` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Warnings` SET `adminip` = NULL WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
						}
					} else {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
					if(response) {
						if(isFloat(inputtext) || isValidTimestamp(inputtext)) {
							new string[128];
							if(isFloat(inputtext)) {
								format(string, sizeof(string), "UPDATE `Warnings` SET `datetime` = datetime('now','%0.2f hours') WHERE ( ROWID = %i )", floatstr(inputtext), gPlayerPage[playerid][E_DIALOG_ROWID]);
							} else {
								format(string, sizeof(string), "UPDATE `Warnings` SET `datetime` = datetime('%s','utc') WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							}
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
						}
					} else {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 4) {
					if(response) {
						if(inputtext[0] && (strcmp(inputtext, "true", true) == 0 || strcmp(inputtext, "false", true) == 0)) {
							new string[128];
							format(string, sizeof(string), "UPDATE `Warnings` SET `active` = '%s' WHERE ( ROWID = %i )", inputtext, gPlayerPage[playerid][E_DIALOG_ROWID]);
							db_free_result(db_query(AlarDB, string));
							gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						} else {
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS, true);
						}
					} else {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 5) {
					if(response) {
						new string[128];
						format(string, sizeof(string), "DELETE FROM `Warnings` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
						db_free_result(db_query(AlarDB, string));
						gPlayerPage[playerid][E_DIALOG_SELECTION] = gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						format(string, sizeof(string), "SELECT ROWID FROM `Warnings` WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
						} else {
							db_free_result(result);
							ShowAlarDialog(AlarDB, playerid, DIALOG_WARNINGS);
						}
					} else {
						gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WARNINGS);
					}
				}
			}
		} else if(gPlayerPage[playerid][E_DIALOG_ID] == DIALOG_WHITELIST) {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(response) {
					if(isValidName(inputtext, false)) {
						new string[128];
						format(string, sizeof(string), "SELECT ROWID FROM `Whitelist` WHERE ( `name` = '%s' ) LIMIT 1", inputtext);
						new DBResult:result = db_query(AlarDB, string);
						if(db_num_rows(result)) {
							db_free_result(result);
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WHITELIST, true);
						} else {
							db_free_result(result);
							format(string, sizeof(string), "INSERT INTO `Whitelist` ( `name` ) VALUES ( '%s' )", inputtext);
							db_free_result(db_query(AlarDB, string));
							ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
						}
					} else {
						ShowAlarSubDialog(AlarDB, playerid, DIALOG_WHITELIST, true);
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(response) {
					switch(ProcessMultiPageSelection(playerid, listitem)) {
						case MPS_SELECTION: {
							new string[128];
							format(string, sizeof(string), "SELECT `name` FROM `Whitelist` LIMIT 1 OFFSET %i", (gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS)) + listitem);
							new DBResult:result = db_query(AlarDB, string);
							if(db_num_rows(result)) {
								db_get_field_assoc(result, "name", gPlayerPage[playerid][E_DIALOG_VALUE], sizeof(SIZE_E_DIALOG[E_DIALOG_VALUE]));
								gPlayerPage[playerid][E_DIALOG_SELECTION] = listitem;
								ShowAlarSubDialog(AlarDB, playerid, DIALOG_WHITELIST);
							} else {
								ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
							}
							db_free_result(result);
						}
						case MPS_NEXTPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]++;
							ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
						}
						case MPS_PREVIOUSPAGE: {
							gPlayerPage[playerid][E_DIALOG_PAGE]--;
							ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
						}
						case MPS_ADDITEM: {
							gPlayerPage[playerid][E_DIALOG_SELECTION] = -2;
							ShowAlarSubDialog(AlarDB, playerid, DIALOG_WHITELIST);
						}
					}
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_MAIN);
				}
			} else {
				if(response) {
					new string[128];
					format(string, sizeof(string), "DELETE FROM `Whitelist` WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
					db_free_result(db_query(AlarDB, string));
					ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
				} else {
					ShowAlarDialog(AlarDB, playerid, DIALOG_WHITELIST);
				}
			}
		}
		db_free_result(db_query(AlarDB, "END TRANSACTION"));
		db_close(AlarDB);
		return 1;
	}
	gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_NONE;
	return 0;
}

stock ShowAlarDialog(DB:AlarDB, playerid, E_DIALOGS:dialog)
{
	gPlayerPage[playerid][E_DIALOG_SELECTION] = -1;
	gPlayerPage[playerid][E_DIALOG_SUBSELECTION] = -1;
	gPlayerPage[playerid][E_DIALOG_RESULTS] = 0;
	gPlayerPage[playerid][E_DIALOG_VALUE][0] = '\0';
	gPlayerPage[playerid][E_DIALOG_PREVIOUS] = false;
	gPlayerPage[playerid][E_DIALOG_NEXT] = false;
	switch(dialog) {
		case DIALOG_MAIN: {
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_MAIN;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, "Alar", "Admins\nBans\nGamemodes\nSettings\nStatus\nSuspensions\nWarnings\nWhitelist", "Select", "Exit");
		}
		case DIALOG_ADMINS: {
			new string[60 + ((MAX_PLAYER_NAME + 2) * (PAGE_RESULTS))],
				header[30] = "Alar - Admins",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Admins`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Admins (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT `name` FROM `Admins` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				name[MAX_PLAYER_NAME];
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "name", name, sizeof(name));
					db_next_row(result);
					format(string, sizeof(string), "%s%s\n", string, name);
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add Admin <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_ADMINS;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Select", "Back");
		}
		case DIALOG_BANS: {
			new string[150 + ((MAX_PLAYER_NAME + 20) * (PAGE_RESULTS))],
				header[30] = "Alar - Bans",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Bans`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Bans (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` FROM `Bans` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				name[MAX_PLAYER_NAME],
				ip[MAX_IP];
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "name", name, sizeof(name));
					db_get_field_assoc(result, "ip", ip, sizeof(ip));
					db_next_row(result);
					if(name[0]) {
						if(ip[0]) {
							format(string, sizeof(string), "%sName: %s\t\tIP: %s\n", string, name, ip);
						} else {
							format(string, sizeof(string), "%sName: %s\n", string, name);
						}
					} else {
						format(string, sizeof(string), "%s\t\t\t\tIP: %s\n", string, ip);
					}
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add Ban <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_BANS;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Select", "Back");
		}
		case DIALOG_GAMEMODES: {
			new string[100 + ((PAGE_RESULTS) * 65)],
				header[30] = "Alar - Gamemodes",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Gamemodes`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Gamemodes (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT `name` FROM `Gamemodes` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				name[60];
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "name", name, sizeof(name));
					db_next_row(result);
					format(string, sizeof(string), "%s%s\n", string, name);
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add Gamemode <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_GAMEMODES;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Delete", "Back");
		}
		case DIALOG_SETTINGS: {
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_SETTINGS;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, "Alar - Settings", "Booleans\nIntegers\nLevels\nStrings", "Select", "Back");
		}
		case DIALOG_SETTINGS_BOOL: {
			new string[230];
			strcat(string, gc_AlarBools[0][E_SETTING_NAME]);
			for(new i = 1; i < sizeof(gc_AlarBools); i++) {
				format(string, sizeof(string), "%s\n%s", string, gc_AlarBools[i][E_SETTING_NAME]);
			}
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_SETTINGS_BOOL;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, "Alar - Settings - Booleans", string, "Select", "Back");
		}
		case DIALOG_SETTINGS_INT: {
			new string[300];
			strcat(string, gc_AlarInts[0][E_SETTING_NAME]);
			for(new i = 1; i < sizeof(gc_AlarInts); i++) {
				format(string, sizeof(string), "%s\n%s", string, gc_AlarInts[i][E_SETTING_NAME]);
			}
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_SETTINGS_INT;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, "Alar - Settings - Integers", string, "Select", "Back");
		}
		case DIALOG_SETTINGS_LEVEL: {
			new string[1200];
			strcat(string, gc_AlarLevels[0][E_SETTING_NAME]);
			for(new i = 1; i < sizeof(gc_AlarLevels); i++) {
				format(string, sizeof(string), "%s\n%s", string, gc_AlarLevels[i][E_SETTING_NAME]);
			}
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_SETTINGS_LEVEL;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, "Alar - Settings - Levels", string, "Select", "Back");
		}
		case DIALOG_SETTINGS_STRING: {
			new string[110];
			strcat(string, gc_AlarStrings[0][E_SETTING_NAME]);
			for(new i = 1; i < sizeof(gc_AlarStrings); i++) {
				format(string, sizeof(string), "%s\n%s", string, gc_AlarStrings[i][E_SETTING_NAME]);
			}
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_SETTINGS_STRING;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, "Alar - Settings - Strings", string, "Select", "Back");
		}
		case DIALOG_STATUS: {
			new string[60 + ((MAX_IP + 2) * (PAGE_RESULTS))],
				header[30] = "Alar - Status",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Status`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Status (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT `ip` FROM `Status` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				ip[MAX_IP];
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "ip", ip, sizeof(ip));
					db_next_row(result);
					format(string, sizeof(string), "%s%s\n", string, ip);
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add IP <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_STATUS;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Select", "Back");
		}
		case DIALOG_SUSPENSIONS: {
			new string[150 + ((MAX_PLAYER_NAME + 20) * (PAGE_RESULTS))],
				header[30] = "Alar - Suspensions",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Suspensions`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Suspensions (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` FROM `Suspensions` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				name[MAX_PLAYER_NAME],
				ip[MAX_IP];
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "name", name, sizeof(name));
					db_get_field_assoc(result, "ip", ip, sizeof(ip));
					db_next_row(result);
					if(name[0]) {
						if(ip[0]) {
							format(string, sizeof(string), "%sName: %s\t\tIP: %s\n", string, name, ip);
						} else {
							format(string, sizeof(string), "%sName: %s\n", string, name);
						}
					} else {
						format(string, sizeof(string), "%s\t\t\t\tIP: %s\n", string, ip);
					}
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add Suspension <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_SUSPENSIONS;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Select", "Back");
		}
		case DIALOG_WARNINGS: {
			new string[150 + ((MAX_PLAYER_NAME + 20) * (PAGE_RESULTS))],
				header[30] = "Alar - Warnings",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Warnings` GROUP BY `name`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Warnings (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT `name` AS `name` , count(*) AS `count` FROM `Warnings` GROUP BY `name` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				name[MAX_PLAYER_NAME],
				count;
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "count", name, sizeof(name));
					count = strval(name);
					db_get_field_assoc(result, "name", name, sizeof(name));
					db_next_row(result);
					format(string, sizeof(string), "%s%s (%i)\n", string, name, count);
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add Warning <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_WARNINGS;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Select", "Back");

		}
		case DIALOG_WHITELIST: {
			new string[100 + (PAGE_RESULTS * (MAX_PLAYER_NAME + 2))],
				header[30] = "Alar - Whitelist",
				DBResult:result = db_query(AlarDB, "SELECT ROWID FROM `Whitelist`"),
				pages = ((db_num_rows(result) - 1) / (PAGE_RESULTS)) + 1;
			db_free_result(result);
			if(pages > 1) {
				format(header, sizeof(header), "Alar - Whitelist (%i/%i)", gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
			}
			format(string, sizeof(string), "SELECT `name` FROM `Whitelist` LIMIT %i OFFSET %i", (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
			result = db_query(AlarDB, string);
			new num = db_num_rows(result),
				name[MAX_PLAYER_NAME];
			string[0] = '\0';
			if(num) {
				gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
				for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
					db_get_field_assoc(result, "name", name, sizeof(name));
					db_next_row(result);
					format(string, sizeof(string), "%s%s\n", string, name);
				}
				if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
					strcat(string, "\t< Previous Page <\n");
					gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
				}
				if(num == (PAGE_RESULTS) + 1) {
					strcat(string, "\t> Next Page >\n");
					gPlayerPage[playerid][E_DIALOG_NEXT] = true;
				}
			}
			db_free_result(result);
			strcat(string, "\t> Add Name <");
			gPlayerPage[playerid][E_DIALOG_ID] = DIALOG_WHITELIST;
			ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Delete", "Back");
		}
	}
}

stock ShowAlarSubDialog(DB:AlarDB, playerid, E_DIALOGS:dialog, bool:error=false)
{
	switch(dialog) {
		case DIALOG_ADMINS: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Admins - Add Admin", "ERROR: Invalid name", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Admins - Add Admin", "", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
				new string[128];
				format(string, sizeof(string), "SELECT `level` , ifnull(`ip`,'') AS `ip` FROM `Admins` WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
				new DBResult:result = db_query(AlarDB, string);
				if(db_num_rows(result)) {
					new heading[40 + MAX_PLAYER_NAME];
					format(heading, sizeof(heading), "Alar - Admins - Admin Info (%s)", gPlayerPage[playerid][E_DIALOG_VALUE]);

					db_get_field_assoc(result, "level", string, sizeof(string));
					new level = strval(string);
					db_get_field_assoc(result, "ip", string, sizeof(string));

					format(string, sizeof(string), "Level: %i\nIP: %s\n\t> Set Password <\n\t> Remove Admin <", level, string);
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, heading, string, "Select", "Back");
				}
				db_free_result(result);
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
				new string[50 + MAX_PLAYER_NAME];
				format(string, sizeof(string), "Alar - Admins - Admin Info (%s) - Set Level", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid level", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
				new string[50 + MAX_PLAYER_NAME];
				format(string, sizeof(string), "Alar - Admins - Admin Info (%s) - Set IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid IP", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
				new string[50 + MAX_PLAYER_NAME];
				format(string, sizeof(string), "Alar - Admins - Admin Info (%s) - Set Password", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid Password", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
				new header[50 + MAX_PLAYER_NAME],
					string[50 + MAX_PLAYER_NAME];
				format(header, sizeof(header), "Alar - Admins - Admin Info (%s) - Remove Admin", gPlayerPage[playerid][E_DIALOG_VALUE]);
				format(string, sizeof(string), "Are you sure you want to remove the admin:\n\t%s", gPlayerPage[playerid][E_DIALOG_VALUE]);
				ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, header, string, "Remove", "Cancel");
			}
		}
		case DIALOG_BANS: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Bans - Add Ban", "Enter the name or IP to ban\n\tERROR: Invalid name or IP", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Bans - Add Ban", "Enter the name or IP to ban", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
				new string[300];
				format(string, sizeof(string), "SELECT ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` FROM `Bans` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
				new DBResult:result = db_query(AlarDB, string);
				if(db_num_rows(result)) {
					new heading[50 + MAX_PLAYER_NAME + MAX_IP],
						BanData[E_ALAR_BAN];
					db_get_field_assoc(result, "ip", BanData[E_BAN_IP], sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
					db_get_field_assoc(result, "name", BanData[E_BAN_NAME], sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
					db_get_field_assoc(result, "datetime", BanData[E_BAN_DATETIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATETIME]));
					db_get_field_assoc(result, "adminname", BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]));
					db_get_field_assoc(result, "adminip", string, sizeof(string));
					db_get_field_assoc(result, "reason", BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
					strtruncate(BanData[E_BAN_REASON], BanData[E_BAN_REASON], 60, .maxlength=sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));

					format(heading, sizeof(heading), "Alar - Bans - Ban Info (%s)", gPlayerPage[playerid][E_DIALOG_VALUE]);

					format(string, sizeof(string), "Name: %s\nIP: %s\nDate: %s\nAdmin Name: %s\nAdmin IP: %s\nReason: %s\n\t> Remove Ban <", BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN], string, BanData[E_BAN_REASON]);
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, heading, string, "Select", "Back");
				}
				db_free_result(result);
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Bans - Ban Info (%s) - Set Name", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid name", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Bans - Ban Info (%s) - Set IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid IP", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Bans - Ban Info (%s) - Set Date", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid date", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Bans - Ban Info (%s) - Set Admin Name", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid name", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 4) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Bans - Ban Info (%s) - Set Admin IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid IP", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 5) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP],
					reason[80 + MAX_INPUT];
				format(reason, sizeof(reason), "SELECT ifnull(`reason`,'') AS `reason` FROM `Bans` WHERE ( ROWID = %i ) LIMIT 1", gPlayerPage[playerid][E_DIALOG_ROWID]);
				new DBResult:result = db_query(AlarDB, reason);
				if(db_num_rows(result)) {
					db_get_field_assoc(result, "reason", reason, sizeof(reason));
				} else {
					reason[0] = '\0';
				}
				db_free_result(result);
				format(string, sizeof(string), "Alar - Bans - Ban Info (%s) - Set Reason", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					if(reason[0]) {
						format(reason, sizeof(reason), "ERROR: Invalid reason\n\nCurrent reason:\n\t%s", reason);
					} else {
						reason = "ERROR: Invalid reason";
					}
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, reason, "Accept", "Cancel");
				} else {
					if(reason[0]) {
						format(reason, sizeof(reason), "Current reason:\n\t%s", reason);
					}
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, reason, "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 6) {
				new header[80 + MAX_PLAYER_NAME + MAX_IP],
					string[70 + MAX_PLAYER_NAME + MAX_IP];
				format(header, sizeof(header), "Alar - Bans - Ban Info (%s) - Remove ban", gPlayerPage[playerid][E_DIALOG_VALUE]);
				format(string, sizeof(string), "Are you sure you want to remove the ban:\n\t%s", gPlayerPage[playerid][E_DIALOG_VALUE]);
				ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, header, string, "Remove", "Cancel");
			}
		}
		case DIALOG_GAMEMODES: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Gamemodes - Add Gamemode", "ERROR: Invalid name", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Gamemodes - Add Gamemode", "", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
				new string[128];
				format(string, sizeof(string), "Are you sure you want to remove the gamemode:\n\t%s", gPlayerPage[playerid][E_DIALOG_VALUE]);
				ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, "Alar - Gamemodes - Remove Gamemode", string, "Remove", "Cancel");
			}
		}
		case DIALOG_STATUS: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Status - Add IP", "ERROR: Invalid IP", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Status - Add IP", "", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
				new string[230 + MAX_IP];
				format(string, sizeof(string), "SELECT ifnull(datetime(`frozen`,'localtime'),`frozen`) AS `frozen` , ifnull(datetime(`jailed`,'localtime'),`jailed`) AS `jailed` , ifnull(datetime(`muted`,'localtime'),`muted`) AS `muted` FROM `Status` WHERE ( `ip` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
				new DBResult:result = db_query(AlarDB, string);
				if(db_num_rows(result)) {
					new heading[40 + MAX_PLAYER_NAME],
						frozen[MAX_TIMESTAMP],
						jailed[MAX_TIMESTAMP],
						muted[MAX_TIMESTAMP];
					format(heading, sizeof(heading), "Alar - Status - Status Info (IP: %s)", gPlayerPage[playerid][E_DIALOG_VALUE]);

					db_get_field_assoc(result, "frozen", frozen, sizeof(frozen));
					db_get_field_assoc(result, "jailed", jailed, sizeof(jailed));
					db_get_field_assoc(result, "muted", muted, sizeof(muted));

					format(string, sizeof(string), "Frozen: %s\nJailed: %s\nMuted: %s\n\t> Remove IP <", frozen, jailed, muted);
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, heading, string, "Select", "Back");
				}
				db_free_result(result);
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
				new string[50 + MAX_IP];
				format(string, sizeof(string), "Alar - Status - Status Info (IP: %s) - Set Frozen", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid date", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
				new string[50 + MAX_IP];
				format(string, sizeof(string), "Alar - Status - Status Info (IP: %s) - Set Jailed", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid date", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
				new string[50 + MAX_IP];
				format(string, sizeof(string), "Alar - Status - Status Info (IP: %s) - Set Muted", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid date", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
				new header[50 + MAX_IP],
					string[50 + MAX_IP];
				format(header, sizeof(header), "Alar - Status - Status Info (IP: %s) - Remove IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
				format(string, sizeof(string), "Are you sure you want to remove the ip:\n\t%s", gPlayerPage[playerid][E_DIALOG_VALUE]);
				ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, header, string, "Remove", "Cancel");
			}
		}
		case DIALOG_SUSPENSIONS: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Suspensions - Add Suspension", "Enter the name or IP to suspend\n\tERROR: Invalid name or IP", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Suspensions - Add Suspension", "Enter the name or IP to suspend", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
				new string[400];
				format(string, sizeof(string), "SELECT ifnull(`name`,'') AS `name` , ifnull(`ip`,'') AS `ip` , ifnull(`adminname`,'') AS `adminname` , ifnull(`adminip`,'') AS `adminip` , ifnull(`reason`,'') AS `reason` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , ifnull(datetime(`expires`,'localtime'),'') AS `expires` FROM `Suspensions` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
				new DBResult:result = db_query(AlarDB, string);
				if(db_num_rows(result)) {
					new heading[50 + MAX_PLAYER_NAME + MAX_IP],
						SuspendData[E_ALAR_SUSPENSION];
					db_get_field_assoc(result, "ip", SuspendData[E_SUSPEND_IP], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
					db_get_field_assoc(result, "name", SuspendData[E_SUSPEND_NAME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
					db_get_field_assoc(result, "datetime", SuspendData[E_SUSPEND_DATETIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATETIME]));
					db_get_field_assoc(result, "adminname", SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]));
					db_get_field_assoc(result, "adminip", string, sizeof(string));
					db_get_field_assoc(result, "reason", SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
					strtruncate(SuspendData[E_SUSPEND_REASON], SuspendData[E_SUSPEND_REASON], 60, .maxlength=sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
					db_get_field_assoc(result, "expires", SuspendData[E_SUSPEND_EXPIRES], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_EXPIRES]));

					format(heading, sizeof(heading), "Alar - Suspensions - Suspension Info (%s)", gPlayerPage[playerid][E_DIALOG_VALUE]);

					format(string, sizeof(string), "Name: %s\nIP: %s\nDate: %s\nAdmin Name: %s\nAdmin IP: %s\nReason: %s\nExpires: %s\n\t> Remove Suspension <", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN], string, SuspendData[E_SUSPEND_REASON], SuspendData[E_SUSPEND_EXPIRES]);
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, heading, string, "Select", "Back");
				}
				db_free_result(result);
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set Name", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid name", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid IP", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set Date", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid date", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set Admin Name", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid name", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 4) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set Admin IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid IP", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 5) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP],
					reason[80 + MAX_INPUT];
				format(reason, sizeof(reason), "SELECT ifnull(`reason`,'') AS `reason` FROM `Suspensions` WHERE ( ROWID = %i ) LIMIT 1", gPlayerPage[playerid][E_DIALOG_ROWID]);
				new DBResult:result = db_query(AlarDB, reason);
				if(db_num_rows(result)) {
					db_get_field_assoc(result, "reason", reason, sizeof(reason));
				} else {
					reason[0] = '\0';
				}
				db_free_result(result);
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set Reason", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					if(reason[0]) {
						format(reason, sizeof(reason), "ERROR: Invalid reason\n\nCurrent reason:\n\t%s", reason);
					} else {
						reason = "ERROR: Invalid reason";
					}
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, reason, "Accept", "Cancel");
				} else {
					if(reason[0]) {
						format(reason, sizeof(reason), "Current reason:\n\t%s", reason);
					}
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, reason, "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 6) {
				new string[80 + MAX_PLAYER_NAME + MAX_IP];
				format(string, sizeof(string), "Alar - Suspensions - Suspension Info (%s) - Set Expiry", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "ERROR: Invalid date", "Accept", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, string, "", "Accept", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 7) {
				new header[80 + MAX_PLAYER_NAME + MAX_IP],
					string[70 + MAX_PLAYER_NAME + MAX_IP];
				format(header, sizeof(header), "Alar - Suspensions - Suspension Info (%s) - Remove suspension", gPlayerPage[playerid][E_DIALOG_VALUE]);
				format(string, sizeof(string), "Are you sure you want to remove the suspension:\n\t%s", gPlayerPage[playerid][E_DIALOG_VALUE]);
				ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, header, string, "Remove", "Cancel");
			}
		}
		case DIALOG_WARNINGS: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -3) {
				new header[50];
				format(header, sizeof(header), "Alar - Warnings - Add Warning (%s)", gPlayerPage[playerid][E_DIALOG_VALUE]);
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, header, "ERROR: Invalid reason\n\nReason:", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, header, "Reason:", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Warnings - Add Warning", "ERROR: Invalid name\n\nName:", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Warnings - Add Warning", "Name:", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -1) {
				if(gPlayerPage[playerid][E_DIALOG_VALUE][0] != '\0') {
					new string[200],
						header[50];
					format(string, sizeof(string), "SELECT ROWID FROM `Warnings` WHERE ( `name` = '%s' )", gPlayerPage[playerid][E_DIALOG_VALUE]);
					new DBResult:result = db_query(AlarDB, string),
						num = db_num_rows(result);
					db_free_result(result);
					new pages = ((num - 1) / (PAGE_RESULTS)) + 1;
					if(pages > 1) {
						format(header, sizeof(header), "Alar - Warnings (%s %i/%i)", gPlayerPage[playerid][E_DIALOG_VALUE], gPlayerPage[playerid][E_DIALOG_PAGE] + 1, pages);
					} else {
						format(header, sizeof(header), "Alar - Warnings (%s)", gPlayerPage[playerid][E_DIALOG_VALUE]);
					}
					format(string, sizeof(string), "SELECT ifnull(`reason`,'') AS `reason` FROM `Warnings` WHERE ( `name` = '%s' ) LIMIT %i OFFSET %i", gPlayerPage[playerid][E_DIALOG_VALUE], (PAGE_RESULTS) + 1, gPlayerPage[playerid][E_DIALOG_PAGE] * (PAGE_RESULTS));
					result = db_query(AlarDB, string),
					string[0] = '\0';
					if(num) {
						new reason[128];
						gPlayerPage[playerid][E_DIALOG_RESULTS] = num > (PAGE_RESULTS) ? (PAGE_RESULTS) : num;
						for(new i; i < gPlayerPage[playerid][E_DIALOG_RESULTS]; i++) {
							db_get_field_assoc(result, "reason", reason, sizeof(reason));
							db_next_row(result);
							strtruncate(reason, reason, 60);
							format(string, sizeof(string), "%s%s\n", string, reason);
						}
						if(gPlayerPage[playerid][E_DIALOG_PAGE] > 0) {
							strcat(string, "\t< Previous Page <\n");
							gPlayerPage[playerid][E_DIALOG_PREVIOUS] = true;
						}
						if(num == (PAGE_RESULTS) + 1) {
							strcat(string, "\t> Next Page >\n");
							gPlayerPage[playerid][E_DIALOG_NEXT] = true;
						}
					}
					db_free_result(result);
					strcat(string, "\t> Add Warning <");
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, header, string, "Delete", "Back");
				}
			} else {
				if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
					new string[250];
					format(string, sizeof(string), "SELECT ifnull(`adminip`,'') AS `adminip` , ifnull(`adminname`,'') AS `adminname` , ifnull(`reason`,'') AS `reason` , ifnull(datetime(`datetime`,'localtime'),'') AS `datetime` , `active` FROM `Warnings` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
					new DBResult:result = db_query(AlarDB, string);
					if(db_num_rows(result)) {
						new heading[50 + MAX_PLAYER_NAME],
							adminname[MAX_PLAYER_NAME],
							adminip[MAX_IP],
							active[10],
							datetime[MAX_TIMESTAMP];
						db_get_field_assoc(result, "adminname", adminname, sizeof(adminname));
						db_get_field_assoc(result, "adminip", adminip, sizeof(adminip));
						db_get_field_assoc(result, "datetime", datetime, sizeof(datetime));
						db_get_field_assoc(result, "reason", string, sizeof(string));
						db_get_field_assoc(result, "active", active, sizeof(active));

						strtruncate(string, string, 60);

						format(heading, sizeof(heading), "Alar - Warnings (%s) - Warning Info", gPlayerPage[playerid][E_DIALOG_VALUE]);

						format(string, sizeof(string), "Reason: %s\nAdmin Name: %s\nAdmin IP: %s\nDate: %s\nActive: %s\n\t> Remove Warning <", string, adminname, adminip, datetime, active);
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_LIST, heading, string, "Select", "Back");
					}
					db_free_result(result);
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 0) {
					new string[128];
					format(string, sizeof(string), "SELECT ifnull(`reason`,'') AS `reason` FROM `Warnings` WHERE ( ROWID = %i )", gPlayerPage[playerid][E_DIALOG_ROWID]);
					new DBResult:result = db_query(AlarDB, string);
					if(db_num_rows(result)) {
						new heading[50 + MAX_PLAYER_NAME];
						db_get_field_assoc(result, "reason", string, sizeof(string));

						format(heading, sizeof(heading), "Alar - Warnings (%s) - Set Reason", gPlayerPage[playerid][E_DIALOG_VALUE]);

						if(error) {
							format(string, sizeof(string), "ERROR: Invalid reason\n\nCurrent reason:\n\t%s", string);
						} else {
							format(string, sizeof(string), "Current reason:\n\t%s", string);
						}
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, string, "Accept", "Back");
					}
					db_free_result(result);
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 1) {
					new heading[50];
					format(heading, sizeof(heading), "Alar - Warnings (%s) - Set Admin Name", gPlayerPage[playerid][E_DIALOG_VALUE]);
					if(error) {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "ERROR: Invalid name", "Accept", "Back");
					} else {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "", "Accept", "Back");
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 2) {
					new heading[50];
					format(heading, sizeof(heading), "Alar - Warnings (%s) - Set Admin IP", gPlayerPage[playerid][E_DIALOG_VALUE]);
					if(error) {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "ERROR: Invalid IP", "Accept", "Back");
					} else {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "", "Accept", "Back");
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 3) {
					new heading[50];
					format(heading, sizeof(heading), "Alar - Warnings (%s) - Set Date", gPlayerPage[playerid][E_DIALOG_VALUE]);
					if(error) {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "ERROR: Invalid date", "Accept", "Back");
					} else {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "", "Accept", "Back");
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 4) {
					new heading[50];
					format(heading, sizeof(heading), "Alar - Warnings (%s) - Set Active", gPlayerPage[playerid][E_DIALOG_VALUE]);
					if(error) {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "ERROR: Active must be true or false", "Accept", "Back");
					} else {
						ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, heading, "", "Accept", "Back");
					}
				} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == 5) {
					new heading[50];
					format(heading, sizeof(heading), "Alar - Warnings (%s) - Remove Warning", gPlayerPage[playerid][E_DIALOG_VALUE]);
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, heading, "Are you sure you want to remove the warning", "Remove", "Cancel");
				}
			}
		}
		case DIALOG_WHITELIST: {
			if(gPlayerPage[playerid][E_DIALOG_SELECTION] == -2) {
				if(error) {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Whitelist - Add Name", "ERROR: Invalid name", "Add", "Cancel");
				} else {
					ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_INPUT, "Alar - Whitelist - Add Name", "", "Add", "Cancel");
				}
			} else if(gPlayerPage[playerid][E_DIALOG_SUBSELECTION] == -1) {
				new string[128];
				format(string, sizeof(string), "Are you sure you want to remove the name:\n\t%s", gPlayerPage[playerid][E_DIALOG_VALUE]);
				ShowPlayerDialog(playerid, ALAR_DIALOG_ID, DIALOG_STYLE_MSGBOX, "Alar - Whitelist - Remove Name", string, "Remove", "Cancel");
			}
		}
	}
}

stock ProcessMultiPageSelection(playerid, listitem)
{
	if(0 <= listitem < gPlayerPage[playerid][E_DIALOG_RESULTS]) {
		return MPS_SELECTION;
	} else {
		if(gPlayerPage[playerid][E_DIALOG_PREVIOUS]) {
			if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS]) {
				return MPS_PREVIOUSPAGE;
			}
			if(gPlayerPage[playerid][E_DIALOG_NEXT]) {
				if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS] + 1) {
					return MPS_NEXTPAGE;
				} else if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS] + 2) {
					return MPS_ADDITEM;
				}
			} else if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS] + 1){
				return MPS_ADDITEM;
			}
		} else if(gPlayerPage[playerid][E_DIALOG_NEXT]) {
			if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS]) {
				return MPS_NEXTPAGE;
			} else if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS] + 1) {
				return MPS_ADDITEM;
			}
		} else if(listitem == gPlayerPage[playerid][E_DIALOG_RESULTS]) {
			return MPS_ADDITEM;
		}
	}
	return MPS_IDKLOL;
}
