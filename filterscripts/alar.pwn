/*
 *	Any Last Administrative Requests - alar.pwn
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


#define ALAR_VERSION 		1.0


// Folders
#define ALIASFOLDER			"alar/Aliases/"
#define PLAYERFOLDER		"alar/Players/"
#define IP_DEFINITIONS		"alar/IP2c/"

// File names
#define BANFILE				"alar/Bans.ini"
#define LOGFILE				"alar/AdminLog.txt"
#define MODESFILE			"alar/Gamemodes.ini"
#define SETTINGSFILE		"alar/Settings.ini"
#define STATUSFILE			"alar/Status.ini"
#define SUSPENDFILE			"alar/Suspensions.ini"
#define USERFILE			"alar/Users.ini"

// Default values
#define CHATPREFIX			"@"			// The prefix for admin chat
#define BANMSG				"If you feel you have been WRONGFULLY banned, please appeal on the website $(WEBSITE)|Name: $(NAME)|IP: $(IP)|Admin: $(ADMIN)|Date: $(DATE) $(TIME)"
#define DEFAULTNUMPLATE		"alr pwns"	// The default number plate for admin created vehicles (! - vehicleid, # - random number from 0 to 9, $ - random letter from A to Z)
#define DEFAULTPW			"changeme"	// The default admin password
#define SUSPENDMSG			"If you feel you have been WRONGFULLY suspended, please appeal on the website $(WEBSITE)|Name: $(NAME)|IP: $(IP)|Admin: $(ADMIN)|Date: $(DATE) $(TIME)"

#define AUTOMUTETIME		60			// The time to mute spammers for (0 or less for a permanent mute)
#define DROPHEIGHT			15			// The height to drop players with /adrop
#define GIVEWEAPONAMMO		200			// The default ammo to give with weapons
#define MAXPING				450			// The maximium average ping a player may have
#define MINPWLENGTH			3			// The minimium length for admin passwords
#define PUNCHDECREMENT		20			// The amount of health/armour to take off with /apunch
#define RAGETIME			15			// The time after being killed to count as a rage quit (0 or less to disable rage quits)
#define SIGNINTIME			45			// The time admins have to login before being kicked (0 or less to not kick)
#define SLAPDECREMENT		20			// The default amount of health to take off with /aslap

#define ADMINPMS			true		// Allow players to send a PM to all admins
#define ALIASADMINS			true		// Allow admins to login under different names
#define AUTOLOGIN			true		// Automatically login admins if their IP has not changed
#define CONSOLEMSGS			true		// Show admin activity in the console
#define FIXRUNNING			true		// Use the same running animations for all skins
#define HIDEBANS			true		// Hide join/disconnect messages from banned/suspended players
#define JOINCOUNTRIES		true		// Show a player's country when they join
#define JOINDEFAULT			true		// Show join messages in the chat box by default
#define JOINMSGS			true		// Show join/disconnect messages
#define LOGACTIONS			false		// Log admin activity to a seperate file
#define LOGLOGINS			true		// Show admin logins/logouts in the admin log
#define PINGIMMUNITY		true		// Allow players to be immune from the ping kicker
#define RESPAWNVEHICLES		false		// Respawn admin create vehicles when they are destroyed
#define SHOWPMS				false		// Allow admins to see PMs between players
#define SPECHUD				true		// Allow spectating admins to see the HUD
#define USECALLBACKS		true		// Enable callbacks (OnAdminLogin(), OnAdminLogout() etc)


#define ALIASLEVEL			1
#define ALIAS2LEVEL			4
#define ALIAS3LEVEL			4
#define ARMOURALLLEVEL		7
#define ARMOURLEVEL			6
#define BANLEVEL			8
#define BANCHECKLEVEL		1
#define BRINGLEVEL			5
#define CHANGEMODELEVEL		9
#define CHANGEPWLEVEL		-1		// Better to have another admin reset it imo
#define CLEARBANSLEVEL		10
#define CLEARSTATUSLEVEL	10
#define CLRLEVEL			1
#define CREATELEVEL			7
#define DESTROYLEVEL		7
#define DESYNCLEVEL			9
#define DROPLEVEL			5
#define EJECTALLLEVEL		6
#define EJECTLEVEL			4
#define FLIPLEVEL			5
#define EXPLODELEVEL		4
#define FREEZELEVEL			3
#define GIVEALLCASHLEVEL	5
#define GIVEALLWEAPONLEVEL	5
#define GIVECASHLEVEL		5
#define GIVEWEAPONLEVEL		5
#define GOTOLEVEL			5
#define GRAVITYLEVEL		9
#define HEALALLLEVEL		7
#define HEALLEVEL			6
#define IMITATELEVEL		-9		// I can't really see any legitimate uses for this...
#define IMMUNELEVEL			9
#define INFOLEVEL			1
#define INTERIORLEVEL		3
#define IPLEVEL				1
#define JAILLEVEL			4
#define KICKLEVEL			2
#define LOGLEVEL			1
#define MSGLEVEL			1
#define MUTELEVEL			3
#define PUNCHLEVEL			4
#define RANGEBANLEVEL		9
#define RANGESUSPENDLEVEL	9
#define RAPELEVEL			7
#define RCONLEVEL			9
#define RELOADDATALEVEL		10
#define REMALLCASHLEVEL		6
#define REMALLWEAPONSLEVEL	6
#define REMCASHLEVEL		4
#define REMWEAPONSLEVEL		4
#define REPAIRLEVEL			5
#define RESPAWNLEVEL		5
#define SAYLEVEL			1
#define SELECTLEVEL			5
#define SERVERNAMELEVEL		10
#define SETADMINLEVEL		10
#define SETNAMELEVEL		-7		// Possible gamemode incompatibilities
#define SETPINGLEVEL		10
#define SHOUTLEVEL			1
#define SLAPLEVEL			4
#define SLAYLEVEL			4
#define SPAWNLEVEL			5
#define SPECLEVEL			2
#define SUSPENDLEVEL		8
#define UNSUSPENDLEVEL		8
#define TELELEVEL			5
#define TIMELEVEL			9
#define TRACKLEVEL			10
#define UNBANLEVEL			8
#define UNDESYNCLEVEL		9
#define UNFREEZELEVEL		3
#define UNJAILLEVEL			4
#define UNMUTELEVEL			3
#define UNRAPELEVEL			7
#define WEATHERLEVEL		9
#define WILDBANLEVEL		9
#define WORLDLEVEL			3

// Join Flood kicker
#define JOINCOUNT			4		// The maximum amount of joins in the specified time
#define JOINTIME			10		// The time, in seconds, for the player to join x times
#define JOINBANTIME			120		// The number of seconds to ban for (set to 0 or less for a permanent ban)
#define JOINPREV			20		// The number of previous joins to check against

// Ping Kicker
#define PINGCOUNT			5		// The number of values to average
#define PINGTIME			5		// The time in seconds between values

// Auto Muter
#define MSGCOUNT			5		// The number of messages before a mute/kick
#define MSGCTIME			4000	// The time in milliseconds between 1st and nth msg

#define MSGREPEATS			3		// The number of repeated messages before a mute/kick
#define MSGRTIME			5000	// The max time in milliseconds between repeated messages
#define MSGRBLOCK			true	// Block repeated messages

#define MUTECMDS			true	// Check commands for spam and disable if a player is muted
#define MUTECHAT			true	// Check chat for spam and disable if a player is muted
#define MUTEPMS				true	// Check PMs for spam and disable if a player is muted (currently undoable)

// Colours
#define COLOUR_ADMIN		0xEE66EEAA
#define COLOUR_HELP			0xEEEE00AA
#define COLOUR_LOG			0xEE66EEFF
#define COLOUR_PAGE			0xFFFFFFAA
#define COLOUR_MSG			0x00FFDCAA
#define COLOUR_PLAYER		0x3333DDAA
#define COLOUR_SPECMODE		0xEE66EEFF
#define COLOUR_WARNING		0xCC0000AA

#define COLOUR_CONNECT		0x22BB22AA
#define COLOUR_DISCONNECT	0xC0C0C0AA
#define COLOUR_RAGEQUIT		0x2222BBAA
#define COLOUR_TIMEOUT		0x990099AA
#define COLOUR_KICK			0xFFCC00AA
#define COLOUR_SUSPEND		0xFF6600AA
#define COLOUR_BAN			0xBB2222AA

// Join message textdraw
#define JOINMSG_LINES		10		// The number of joins/quits to show in the text box
#define JOINMSG_SIZE		2.8		// Scaling factor

#define JOINMSG_ALPHA		0xAA	// The initial alpha of the messages
#define JOINMSG_FADE		3		// The time in seconds to fade out the messages (0 or less for instant fading)
#define JOINMSG_TIME		10		// The time in seconds before the messages start fading (0 or less for no fading)
#define JOINMSG_UPDATE		200		// The time in ms to update the fading (lower = more cpu/bandwidth, higher = more jumpyness)

// Log settings
#define LOG_LINES			15		// Number of lines for the in-game admin log
#define LOG_PAGES			4		// Number of pages for the in-game admin log
#define LOG_SIZE			3.5		// Scaling factor

#define KEY_LOG_DOWN		KEY_ANALOG_LEFT
#define NAME_LOG_DOWN		"left analog"

#define KEY_LOG_UP			KEY_ANALOG_RIGHT
#define NAME_LOG_UP			"right analog"

// Mute/jail/freeze
#define MIN_ACTION_TIME		10		// The minimium time (in seconds) to mute/jail/freeze for

// Spec mode
#define SPEC_TXT_TIME		10		// The time to show the spec keys (in seconds)

// Key definitions
#define KEY_SPEC_LEFT		KEY_HANDBRAKE			// I dunno...
#define NAME_SPEC_LEFT		"aim"
#define KMAP_SPEC_LEFT		"~k~~PED_LOCK_TARGET~"

#define KEY_SPEC_RIGHT		KEY_FIRE
#define NAME_SPEC_RIGHT		"fire"
#define KMAP_SPEC_RIGHT		"~k~~PED_FIREWEAPON~"

#define KEY_SPEC_EXIT		KEY_SECONDARY_ATTACK
#define NAME_SPEC_EXIT		"enter"
#define KMAP_SPEC_EXIT		"~k~~VEHICLE_ENTER_EXIT~"

#define KEY_SPEC_MODE		KEY_WALK
#define NAME_SPEC_MODE		"walk"
#define KMAP_SPEC_MODE		"~k~~SNEAK_ABOUT~"

#define KEY_SPEC_HUD		KEY_CROUCH
#define NAME_SPEC_HUD		"crouch"
#define KMAP_SPEC_HUD		"~k~~PED_DUCK~"

#define KEY_SPEC_LAST		KEY_JUMP
#define NAME_SPEC_LAST		"jump"
#define KMAP_SPEC_LAST		"~k~~PED_JUMPING~"

// The commands which should be checked for spamming
stock const gMutedCommands[][] = {
	"/apm",
	"/me",
	"/slap",
	"/site",
	"/gang invite",
	"/givecash",
	"/report",
	"/hitman",
	"/bounty"
};

// The words to check for rage quits
stock const gRageWords[][] = {
	"asshole",
	"bastard",
	"bitch",
	"cunt",
	"fuck",
	"n00b",
	"noob",
	"nub",
	"shit",
	"whore"
};



//-------------------------------------------------------------------------------------------------------------------
#include <a_samp>
#include <alar/Dini>
#include <alar/Bans>
#include <alar/ip2c>
#include <alar/Functions>
#include <alar/Zones>
#include <alar/MD5.inc>
#include <alar/Vehicles>

#define dcmd(%1,%2,%3)			if((strcmp((%3)[1], #%1, true, (%2)) == 0) && ((((%3)[(%2) + 1] == '\0') && (dcmd_%1(playerid, "")))||(((%3)[(%2) + 1] == ' ') && (dcmd_%1(playerid, (%3)[(%2) + 2]))))) return 1
#define cmd(%1,%2)				if(strcmp((%2)[1], #%1, true) == 0) return cmd_%1(playerid)
#define rdcmd(%1,%2,%3)			if((strcmp((%3), #%1, true, (%2)) == 0) && ((((%3)[%2] == '\0') && (dcmd_%1(INVALID_PLAYER_ID, "")))||(((%3)[%2] == ' ') && (dcmd_%1(INVALID_PLAYER_ID, (%3)[(%2) + 1]))))) return 1
#define rcmd(%1,%2)				if(strcmp((%2), #%1, true) == 0) return cmd_%1(INVALID_PLAYER_ID)
#define cmdchk(%1,%2)			(gPlayerData[%1][E_ADMINLEVEL] >= gServerData[%2] && gServerData[%2] > 0)
#define setchk(%1,%2)			if(!dini_Isset(SETTINGSFILE,%1)) dini_IntSet(SETTINGSFILE, %1, %2)
#define SendMessage(%1,%2,%3)	if(%1==INVALID_PLAYER_ID) print(%3); else SendClientMessage(%1, %2, %3)
#define IsKeyJustDown(%1,%2,%3)	(((%2)&(%1))&&!((%3)&(%1)))
#define IsKeyJustUp(%1,%2,%3)	(((%3)&(%1))&&!((%2)&(%1)))
#define LoopPlayers(%1)			for(new %1; %1 < gMaxPlayers; %1++) if(IsPlayerConnected(%1))
#define AddJoinString(%1,%2,%3)	alar_AddJoinLine(%1,%2,%3)

#if LOG_LINES > 0 && LOG_PAGES > 0
	#define AddLogString(%1)	alar_AddAdminLogLine(COLOUR_LOG, %1)
#else
	#define AddLogString(%1);
#endif

#if !USECALLBACKS
	#define CallRemoteFunction(%1);
#endif

#assert (JOINMSG_ALPHA) >= 0x00 && (JOINMSG_ALPHA) <= 0xFF	// JOINMSG_ALPHA must be between 0 and 255
#assert (PINGCOUNT) >= 1									// PINGCOUNT must be more then 0
#assert (MSGCOUNT) >= 2										// MSGCOUNT must be more then 1

#define MAX_REASON			50
#define FREE_SPECTATE_ID	-1

enum (<<=1) {
	ADMIN_STATE_MUTED = 1,
	ADMIN_STATE_FROZEN,
	ADMIN_STATE_JAILED,
	ADMIN_STATE_HIDDEN,
	ADMIN_STATE_DESYNCED
};

enum E_PLAYERDATA {
	// Timers
	E_KICK,
	E_UNDESYNC,
	E_UNMUTE,
	E_UNFREEZE,
	E_UNJAIL,

	// Times
	E_LAST_RAGE,
	E_DESYNC_TIME,
	E_MUTE_TIME,
	E_FREEZE_TIME,
	E_JAIL_TIME,

	// The name they alogin'd with
	E_NAME[MAX_PLAYER_NAME],

	// The last time they were active
	E_LAST_ACTIVE,

	// Muted/frozen/jailed
	E_STATE,

	#if JOINMSG_LINES > 0
		// Use textdraw instead of join/exit messages
		bool:E_JOINTEXT,
	#endif

	// Immune from ping kicker
	bool:E_IMMUNE,

	// Show exit message
	E_HIDEEXIT,

	// Animations
	bool:E_PRELOAD,

	// Spawn data
	Float:E_POSX,
	Float:E_POSY,
	Float:E_POSZ,
	Float:E_ROT,
	E_TEAM,
	E_SKIN,
	E_INTERIOR,
	E_WORLD,
	E_CASH,
	Float:E_HEALTH,
	Float:E_ARMOUR,
	E_WEAPON[13],
	E_AMMO[13],

	// TextDraws
	Text:E_SPECHUD,

	// Country code
	E_COUNTRY[3],

	// Admin stuff
	E_ADMINLEVEL,

	#if LOG_LINES > 0 && LOG_PAGES > 0
		E_LOG_PAGE,
	#endif

	// Spectating
	bool:E_SPECTATING,
	E_SPECID,
	E_LAST_SPECID,
	E_SPECMODE,			// 0-normal, 1-player, 2-side, 3-free
	#if SPEC_TXT_TIME > 0
		Text:E_SPECTXT,
		E_SPECTIMER,
	#endif

	Float:E_CAM_POS_X,
	Float:E_CAM_POS_Y,
	Float:E_CAM_POS_Z,
	Float:E_CAM_ROT_XY,
	Float:E_CAM_ROT_Z,

	// Autokick/automute
	E_PING[PINGCOUNT],
	E_MSGTIMES[MSGCOUNT-1],
	E_LASTMSG[MAX_INPUT],
	E_REPEATEDMSGS
}; stock SIZE_E_PLAYERDATA[E_PLAYERDATA];

enum E_SERVERDATA {
	E_CHAT_PREFIX[10],
	E_CHAT_PREFIX_LEN,
	E_BAN_MSG[MAX_STRING],
	E_DEFAULT_NUM_PLATE[9],
	E_DEFAULT_PW[20],
	E_SUSPEND_MSG[MAX_STRING],

	E_AUTOMUTE_TIME,
	E_DROP_HEIGHT,
	E_GIVEWEAPON_AMMO,
	E_JOIN_BAN_TIME,
	E_MAX_PING,
	E_MIN_PW_LENGTH,
	E_PUNCH_DECREMENT,
	E_RAGE_TIME,
	E_SIGNIN_TIME,
	E_SLAP_DECREMENT,

	bool:E_ADMIN_PMS,
	bool:E_ALIAS_ADMINS,
	bool:E_AUTO_LOGIN,
	bool:E_CONSOLE_MSGS,
	bool:E_FIX_RUNNING,
	bool:E_HIDE_BANS,
	bool:E_JOIN_COUNTRIES,
	bool:E_JOIN_DEFAULT,
	bool:E_JOIN_MSGS,
	bool:E_LOG_ACTIONS,
	bool:E_LOG_LOGINS,
	bool:E_PING_IMMUNITY,
	bool:E_RESPAWN_VEHICLES,
	bool:E_SHOW_PMS,
	bool:E_SPEC_HUD,

	E_ALIAS_LEVEL,
	E_ALIAS2_LEVEL,
	E_ALIAS3_LEVEL,
	E_ARMOURALL_LEVEL,
	E_ARMOUR_LEVEL,
	E_BAN_LEVEL,
	E_BANCHECK_LEVEL,
	E_BRING_LEVEL,
	E_CHANGEMODE_LEVEL,
	E_CHANGEPW_LEVEL,
	E_CLEARBANS_LEVEL,
	E_CLEARSTATUS_LEVEL,
	E_CLR_LEVEL,
	E_CREATE_LEVEL,
	E_DESTROY_LEVEL,
	E_DESYNC_LEVEL,
	E_DROP_LEVEL,
	E_EJECTALL_LEVEL,
	E_EJECT_LEVEL,
	E_EXPLODE_LEVEL,
	E_FLIP_LEVEL,
	E_FREEZE_LEVEL,
	E_GIVEALLCASH_LEVEL,
	E_GIVEALLWEAPON_LEVEL,
	E_GIVECASH_LEVEL,
	E_GIVEWEAPON_LEVEL,
	E_GOTO_LEVEL,
	E_GRAVITY_LEVEL,
	E_HEALALL_LEVEL,
	E_HEAL_LEVEL,
	E_IMITATE_LEVEL,
	E_IMMUNE_LEVEL,
	E_INFO_LEVEL,
	E_INTERIOR_LEVEL,
	E_IP_LEVEL,
	E_JAIL_LEVEL,
	E_KICK_LEVEL,
	E_LOG_LEVEL,
	E_MSG_LEVEL,
	E_MUTE_LEVEL,
	E_PUNCH_LEVEL,
	E_RANGEBAN_LEVEL,
	E_RANGESUSPEND_LEVEL,
	E_RAPE_LEVEL,
	E_RCON_LEVEL,
	E_RELOADDATA_LEVEL,
	E_REMALLCASH_LEVEL,
	E_REMALLWEAPONS_LEVEL,
	E_REMCASH_LEVEL,
	E_REMWEAPONS_LEVEL,
	E_REPAIR_LEVEL,
	E_RESPAWN_LEVEL,
	E_SAY_LEVEL,
	E_SELECT_LEVEL,
	E_SERVERNAME_LEVEL,
	E_SETADMIN_LEVEL,
	E_SETNAME_LEVEL,
	E_SETPING_LEVEL,
	E_SHOUT_LEVEL,
	E_SLAP_LEVEL,
	E_SLAY_LEVEL,
	E_SPAWN_LEVEL,
	E_SPEC_LEVEL,
	E_SUSPEND_LEVEL,
	E_TELE_LEVEL,
	E_TIME_LEVEL,
	E_UNBAN_LEVEL,
	E_UNDESYNC_LEVEL,
	E_UNFREEZE_LEVEL,
	E_UNJAIL_LEVEL,
	E_UNMUTE_LEVEL,
	E_UNRAPE_LEVEL,
	E_UNSUSPEND_LEVEL,
	E_WEATHER_LEVEL,
	E_WILDBAN_LEVEL,
	E_WORLD_LEVEL
}; stock SIZE_E_SERVERDATA[E_SERVERDATA];

enum E_FLOOD {
	Unsigned:E_LASTIP,
	E_LASTJOIN
}; stock SIZE_E_FLOOD[E_FLOOD];

enum E_TEXTBOX {
	Text:E_TEXTBOX_TEXT,
	E_TEXTBOX_STRING[MAX_INPUT],
	E_TEXTBOX_COLOUR,
	E_TEXTBOX_FADETIME
}; stock SIZE_E_TEXTBOX[E_TEXTBOX];

stock
	gJoinTimer,
	Text:g_txtSpecMode[4] = {INVALID_TEXT_DRAW, ...},
	#if LOG_LINES > 0 && LOG_PAGES > 0
		gAdminLog[LOG_LINES * LOG_PAGES][E_TEXTBOX],
		#if LOG_PAGES > 1
			Text:gLogPage[LOG_PAGES] = {INVALID_TEXT_DRAW, ...},
		#endif
	#endif
	gJoinMessage[JOINMSG_LINES][E_TEXTBOX];

new Bit:g_bitAdmins[Bit_Bits(MAX_PLAYERS)],
	Bit:gCreatedVehicles[Bit_Bits(MAX_VEHICLES)],
	gDefaultPlayerData[E_PLAYERDATA],
	gJoinList[JOINPREV][E_FLOOD],
	gMaxPlayers,
	gSpecTimer,
	gSpecExitMethod,	// 0-timer, 1-timer when interupted, 2-setplayerpos when interupted, 3-setspawninfo when interupted
	gPlayerData[MAX_PLAYERS][E_PLAYERDATA],
	gServerData[E_SERVERDATA];

forward alar_autokick(playerid);
forward alar_floodunban(Unsigned:IPcode);
forward alar_hidespectxt(playerid);
forward alar_jailplayer(playerid);
forward alar_joinfade();
forward alar_pingkick();
forward alar_setspawndata(playerid);
forward alar_setspawnposition(playerid);
forward alar_undesync(playerid);
forward alar_unfreeze(playerid);
forward alar_unjail(playerid);
forward alar_unmute(playerid);
forward alar_specupdate();
forward alar_AddJoinLine(playerid, colour, const string[]);
forward alar_AddAdminLogLine(colour, const string[]);
forward alar_GetAdminLevel(playerid);
forward alar_GetAdminState(playerid);
forward alar_GetAdminSpectating(playerid);
forward alar_SetAdminSpectating(playerid, targetid, bool:saveplayer);
forward alar_DisableAdminSpectating(playerid);
forward alar_ClearAdminSpawnData(playerid);
forward alar_OnPlayerVehicleChange(playerid, newvehicleid, oldvehicleid);
forward alar_OnPlayerWorldChange(playerid, newworldid);
forward alar_SetAdminState(playerid, newstate, seconds);
forward alar_ClearAdminState(playerid, newstate);
forward alar_BanPlayer(playerid, const reason[], const adminname[]);
forward alar_SuspendPlayer(playerid, Float:hours, const reason[], const adminname[]);

public OnFilterScriptInit()
{
	gMaxPlayers = GetMaxPlayers();

	gDefaultPlayerData[E_SPECID] = INVALID_PLAYER_ID;
	gDefaultPlayerData[E_LAST_SPECID] = INVALID_PLAYER_ID;
	gDefaultPlayerData[E_SPECHUD] = INVALID_TEXT_DRAW;
	#if SPEC_TXT_TIME > 0
		gDefaultPlayerData[E_SPECTXT] = INVALID_TEXT_DRAW;
	#endif
	gDefaultPlayerData[E_LAST_ACTIVE] = GetTickCount();
	#if JOINMSG_LINES > 0
		gDefaultPlayerData[E_JOINTEXT] = true;
	#endif

	for (new i; i < sizeof(gPlayerData); i++) {
		gPlayerData[i] = gDefaultPlayerData;
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		#if LOG_PAGES > 1
			for(new i; i < sizeof(gLogPage); i++) {
				new string[20];
				format(string, sizeof(string), "%i/" #LOG_PAGES, i+1);
				gLogPage[i] = TextDrawCreate(630.0, 430.0, string);
				TextDrawUseBox(gLogPage[i], 0);
				TextDrawFont(gLogPage[i], 1);
				TextDrawSetShadow(gLogPage[i], 1);
				TextDrawLetterSize(gLogPage[i], 0.08 * LOG_SIZE, 0.24 * LOG_SIZE);
				TextDrawSetOutline(gLogPage[i], 0);
				TextDrawColor(gLogPage[i], COLOUR_PAGE);
				TextDrawAlignment(gLogPage[i], 3);
			}
		#endif
		for(new i; i < sizeof(gAdminLog); i++) {
			gAdminLog[i][E_TEXTBOX_COLOUR] = COLOUR_LOG;
			gAdminLog[i][E_TEXTBOX_STRING][0] = ' ';	// TextDraws crash with empty strings

			gAdminLog[i][E_TEXTBOX_TEXT] = TextDrawCreate(630.0, 430.0 + (2 * LOG_SIZE * (((LOG_LINES - 1 - i) % LOG_LINES) - LOG_LINES)), " ");
			TextDrawUseBox(gAdminLog[i][E_TEXTBOX_TEXT], 0);
			TextDrawFont(gAdminLog[i][E_TEXTBOX_TEXT], 1);
			TextDrawSetShadow(gAdminLog[i][E_TEXTBOX_TEXT], 1);
			TextDrawLetterSize(gAdminLog[i][E_TEXTBOX_TEXT], 0.08 * LOG_SIZE, 0.24 * LOG_SIZE);
			TextDrawSetOutline(gAdminLog[i][E_TEXTBOX_TEXT], 0);
			TextDrawColor(gAdminLog[i][E_TEXTBOX_TEXT], COLOUR_LOG);
			TextDrawAlignment(gAdminLog[i][E_TEXTBOX_TEXT], 3);
		}
	#endif

	#if JOINMSG_LINES > 0
		for(new i; i < sizeof(gJoinMessage); i++) {
			gJoinMessage[i][E_TEXTBOX_STRING][0] = ' ';	// TextDraws crash with empty strings

			gJoinMessage[i][E_TEXTBOX_TEXT] = TextDrawCreate(5.0, 310.0 - (2 * JOINMSG_SIZE * i), " ");
			TextDrawUseBox(gJoinMessage[i][E_TEXTBOX_TEXT], 0);
			TextDrawFont(gJoinMessage[i][E_TEXTBOX_TEXT], 1);
			TextDrawSetShadow(gJoinMessage[i][E_TEXTBOX_TEXT], 1);
			TextDrawLetterSize(gJoinMessage[i][E_TEXTBOX_TEXT], 0.08 * JOINMSG_SIZE, 0.24 * JOINMSG_SIZE);
			TextDrawSetOutline(gJoinMessage[i][E_TEXTBOX_TEXT], 0);
			TextDrawAlignment(gJoinMessage[i][E_TEXTBOX_TEXT], 1);
		}
	#endif

	#if SPEC_TXT_TIME > 0
		g_txtSpecMode[0] = TextDrawCreate(10.0, 390.0, "Normal Spectate");
		g_txtSpecMode[1] = TextDrawCreate(10.0, 390.0, "Player Spectate");
		g_txtSpecMode[2] = TextDrawCreate(10.0, 390.0, "Side Spectate");
		g_txtSpecMode[3] = TextDrawCreate(10.0, 390.0, "Free Spectate");

		for(new i; i < 4; i++) {
			TextDrawUseBox(g_txtSpecMode[i], 0);
			TextDrawSetOutline(g_txtSpecMode[i], 0);
			TextDrawColor(g_txtSpecMode[i], COLOUR_SPECMODE);
			TextDrawBackgroundColor(g_txtSpecMode[i], COLOUR_SPECMODE & 0x000000FF);
			TextDrawAlignment(g_txtSpecMode[i], 1);
			TextDrawSetShadow(g_txtSpecMode[i], 1);
			TextDrawFont(g_txtSpecMode[i], 3);
		}
	#endif

	LoadData();

	SendClientMessageToAll(COLOUR_HELP, "Any Last Administrative Requests loaded");
	LogAction("Any Last Administrative Requests loaded (Version " #ALAR_VERSION ")");
	AddLogString("Any Last Administrative Requests loaded (Version " #ALAR_VERSION ")");

	new pname[MAX_PLAYER_NAME],
		pIP[MAX_IP],
		msg[MAX_INPUT];

	LoopPlayers(i) {
		gPlayerData[i][E_HIDEEXIT] = 1;		// Default is 0 but since they didnt join increment it manually

		GetPlayerName(i, pname, sizeof(pname));
		GetPlayerIp(i, pIP, sizeof(pIP));

		new BanData[E_ALAR_BAN];
		if(GetBanInfo(pname, pIP, BanData)) {
			format(msg, sizeof(msg), "You are banned from this server (%s)", BanData[E_BAN_REASON]);
			SendClientMessage(i, COLOUR_WARNING, msg);
			if(gServerData[E_BAN_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_BAN_MSG], BanData[E_BAN_DATE], BanData[E_BAN_TIME], BanData[E_BAN_ADMIN]);
			}
			format(msg, sizeof(msg), "%s(%i) is banned from this server (%s)", pname, i, BanData[E_BAN_REASON]);
			AddJoinString(i, COLOUR_BAN, msg);

			format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server (%s)", pname, i, BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_REASON]);
			AddLogString(msg);
			LogAction(msg);
			Kick(i);
			continue;
		}

		new SuspendData[E_ALAR_SUSPENSION],
			bool:unsuspended = false;
		while(GetSuspendInfo(pname, pIP, SuspendData)) {
			new curyear,
				curmonth,
				curday,
				curhour,
				curmin,
				cursec;
			getdate(curyear, curmonth, curday);
			gettime(curhour, curmin, cursec);
			if(SuspendData[E_SUSPEND_YEAR] < curyear || (SuspendData[E_SUSPEND_YEAR] == curyear && (SuspendData[E_SUSPEND_MONTH] < curmonth || (SuspendData[E_SUSPEND_MONTH] == curmonth && (SuspendData[E_SUSPEND_DAY] < curday || (SuspendData[E_SUSPEND_DAY] == curday && SuspendData[E_SUSPEND_HOUR] < (curhour + floatdiv(curmin, 60) + floatdiv(cursec, 3600)))))))) {
				UnsuspendPlayer(pname, pIP, SuspendData);
				format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended", ReturnPlayerName(i), i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
				LogAction(msg);
				AddLogString(msg);
				unsuspended = true;
			} else {
				new minute = floatround((SuspendData[E_SUSPEND_HOUR] - floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor)) * 60);
				format(msg, sizeof(msg), "You are suspended from this server until %02i/%02i/%i %02i:%02i (%s)", SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_YEAR], floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor), minute, SuspendData[E_SUSPEND_REASON]);
				SendClientMessage(i, COLOUR_WARNING, msg);
				if(gServerData[E_SUSPEND_MSG][0] != '\0') {
					SendBanMsg(i, gServerData[E_SUSPEND_MSG], SuspendData[E_SUSPEND_DATE], SuspendData[E_SUSPEND_TIME], SuspendData[E_SUSPEND_ADMIN]);
				}
				format(msg, sizeof(msg), "%s(%i) is suspended from this server until %02i/%02i/%i %02i:%02i (%s)", pname, i, SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_YEAR], floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor), minute, SuspendData[E_SUSPEND_REASON]);
				if(gServerData[E_HIDE_BANS]) {
					gPlayerData[i][E_HIDEEXIT] = 3;
				} else {
					gPlayerData[i][E_HIDEEXIT] = 1;
					AddJoinString(i, COLOUR_SUSPEND, msg);
				}

				format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server (%s)", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
				AddLogString(msg);
				LogAction(msg);
				Kick(i);
				return 1;
			}
		}
		if(unsuspended) {
			SendClientMessage(i, COLOUR_PLAYER, "You have been unsuspended");
			format(msg, sizeof(msg), "%s(%i) has been unsuspended", ReturnPlayerName(i), i);

			LoopPlayers(j) {
				if(gPlayerData[j][E_ADMINLEVEL] > 0) {
					SendClientMessage(j, COLOUR_ADMIN, msg);
				}
			}
		}

		new pLEVEL,
			aIP[MAX_IP],
			pPW[33],
			#if LOG_LINES > 0 && LOG_PAGES > 0
				page,
			#endif
			manuallogin;

		#if LOG_LINES > 0 && LOG_PAGES > 0
			#define THEIFSTUFF		GetPlayerData(pname, pLEVEL, aIP, pPW, gPlayerData[i][E_STATE], manuallogin, page)
		#else
			#define THEIFSTUFF		GetPlayerData(pname, pLEVEL, aIP, pPW, gPlayerData[i][E_STATE], manuallogin)
		#endif
		if(THEIFSTUFF) {
			#undef THEIFSTUFF
			strcpy(gPlayerData[i][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
			if(!manuallogin && gServerData[E_AUTO_LOGIN] && IPcompare(aIP, pIP)) {
				Bit_Set(g_bitAdmins, i, 1);
				gPlayerData[i][E_ADMINLEVEL] = pLEVEL;

				AllowPlayerTeleport(i, cmdchk(i, E_TELE_LEVEL));
				#if LOG_LINES > 0 && LOG_PAGES > 0
					if(page > 0 && page <= LOG_PAGES && cmdchk(i, E_LOG_LEVEL)) {
						new offset = (page - 1) * LOG_LINES;
						for(new j; j < LOG_LINES; j++) {
							TextDrawShowForPlayer(i, gAdminLog[j + offset][E_TEXTBOX_TEXT]);
						}
						#if LOG_PAGES > 1
							TextDrawShowForPlayer(i, gLogPage[page-1]);
						#endif
						gPlayerData[i][E_LOG_PAGE] = page;
					}
				#endif

				format(msg, sizeof(msg), "You have successfully logged in (Level %i)", gPlayerData[i][E_ADMINLEVEL]);
				SendClientMessage(i, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has logged in as an admin (Level %i)", pname, gPlayerData[i][E_ADMINLEVEL]);

				if(gServerData[E_LOG_LOGINS]) {
					AddLogString(msg);
				} else {
					LoopPlayers(j) {
						if(gPlayerData[j][E_ADMINLEVEL] > 0 && j != i) {
							SendClientMessage(j, COLOUR_ADMIN, msg);
						}
					}
				}
				LogAction(msg);

				CallRemoteFunction("OnAdminLogin", "ii", i, gPlayerData[i][E_ADMINLEVEL]);
			} else if(gServerData[E_SIGNIN_TIME] > 0) {
				format(msg, sizeof(msg), "You have %i seconds to log in as an admin", gServerData[E_SIGNIN_TIME]);
				SendClientMessage(i, COLOUR_WARNING, msg);
				gPlayerData[i][E_KICK] = SetTimerEx("alar_autokick", gServerData[E_SIGNIN_TIME] * 1000, 0, "i", i);
			}
		}

		LoadPlayerData(i);
		if(gPlayerData[i][E_STATE] != 0) {
			if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) {
				SendClientMessage(i, COLOUR_WARNING, "You have been muted");
			}
			if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) {
				SendClientMessage(i, COLOUR_WARNING, "You have been jailed");
				if(IsSpawned(i)) {
					StoreSpawnData(i);
					alar_jailplayer(i);
				}
			}
			if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) {
				SendClientMessage(i, COLOUR_WARNING, "You have been frozen");
				if(IsSpawned(i)) {
					TogglePlayerControllable(i, false);
				}
			}
			CallRemoteFunction("OnAdminStateChange", "iii", i, gPlayerData[i][E_STATE], 0);
		}

		if(gServerData[E_ALIAS_LEVEL] > 0) WriteAlias(i);
		strcpy(gPlayerData[i][E_COUNTRY], ReturnCuntCode(pIP), sizeof(SIZE_E_PLAYERDATA[E_COUNTRY]));
	}

	SetTimer("alar_pingkick", PINGTIME * 1000, 1);
	return 1;
}

public OnFilterScriptExit()
{
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING]) {
			if(gPlayerData[i][E_SPECID] == INVALID_PLAYER_ID) {
				CallRemoteFunction("OnAdminSpectate", "iii", i, INVALID_PLAYER_ID, FREE_SPECTATE_ID);
			} else {
				CallRemoteFunction("OnAdminSpectate", "iii", i, INVALID_PLAYER_ID, gPlayerData[i][E_SPECID]);
			}
			SpawnUsingData(i);
		}

		if(gPlayerData[i][E_STATE] != 0) {
			if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) alar_unjail(i);
			if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) alar_unmute(i);
			if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) alar_unfreeze(i);
			CallRemoteFunction("OnAdminStateChange", "iii", i, 0, gPlayerData[i][E_STATE]);
		}
		if(gPlayerData[i][E_ADMINLEVEL] > 0) {
			AllowPlayerTeleport(i, false);
			new pLEVEL, aIP[MAX_IP], pPW[33], hidden, manuallogin;
			GetPlayerData(gPlayerData[i][E_NAME], pLEVEL, aIP, pPW, hidden, manuallogin);
			#if LOG_LINES > 0 && LOG_PAGES > 0
				SetPlayerData(gPlayerData[i][E_NAME], pLEVEL, aIP, pPW, hidden, manuallogin, gPlayerData[i][E_LOG_PAGE]);
			#else
				SetPlayerData(gPlayerData[i][E_NAME], pLEVEL, aIP, pPW, hidden, manuallogin);
			#endif

			CallRemoteFunction("OnAdminLogout", "i", i);
		}

		#if SPEC_TXT_TIME > 0
			if(gPlayerData[i][E_SPECTIMER]) {
				KillTimer(gPlayerData[i][E_SPECTIMER]);
				TextDrawHideForPlayer(i, gPlayerData[i][E_SPECTXT]);
			}
		#endif
		if(gPlayerData[i][E_SPECHUD] != INVALID_TEXT_DRAW) {
			TextDrawHideForPlayer(i, gPlayerData[i][E_SPECHUD]);
		}
		#if LOG_LINES > 0 && LOG_PAGES > 0
			if(gPlayerData[i][E_LOG_PAGE]) {
				#if LOG_PAGES > 1
					TextDrawHideForPlayer(i, gLogPage[gPlayerData[i][E_LOG_PAGE]-1]);
				#endif
				for(new j, offset = (gPlayerData[i][E_LOG_PAGE] - 1) * LOG_LINES; j < LOG_LINES; j++) {
					TextDrawHideForPlayer(i, gAdminLog[j + offset][E_TEXTBOX_TEXT]);
				}
				gPlayerData[i][E_LOG_PAGE] = 0;
			}
		#endif
		#if JOINMSG_LINES > 0
			if(!gPlayerData[i][E_JOINTEXT]) {
				gPlayerData[i][E_JOINTEXT] = true;
				for(new j; j < JOINMSG_LINES; j++) {
					TextDrawHideForPlayer(i, gJoinMessage[j][E_TEXTBOX_TEXT]);
				}
			}
		#endif
	}

	Bit_Loop(gCreatedVehicles, i) {
		DestroyVehicle(i);
	}

	SendClientMessageToAll(COLOUR_HELP, "Any Last Administrative Requests unloaded");
	LogAction("Any Last Administrative Requests unloaded (Version " #ALAR_VERSION ")");
	return 1;
}

public OnGameModeInit() {

	if(gServerData[E_FIX_RUNNING]) {
		UsePlayerPedAnims();
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		// Recreate destroyed textdraws
		#if LOG_PAGES > 1
			for(new i; i < sizeof(gLogPage); i++) {
				if(gLogPage[i] == INVALID_TEXT_DRAW) {
					new string[20];
					format(string, sizeof(string), "%i/" #LOG_PAGES, i+1);
					gLogPage[i] = TextDrawCreate(630.0, 430.0, string);
					TextDrawUseBox(gLogPage[i], 0);
					TextDrawFont(gLogPage[i], 1);
					TextDrawSetShadow(gLogPage[i], 1);
					TextDrawLetterSize(gLogPage[i], 0.08 * LOG_SIZE, 0.24 * LOG_SIZE);
					TextDrawSetOutline(gLogPage[i], 0);
					TextDrawColor(gLogPage[i], COLOUR_PAGE);
					TextDrawAlignment(gLogPage[i], 3);
				}
			}
		#endif
		for(new i; i < sizeof(gAdminLog); i++) {
			if(gAdminLog[i][E_TEXTBOX_TEXT] == INVALID_TEXT_DRAW) {
				gAdminLog[i][E_TEXTBOX_TEXT] = TextDrawCreate(630.0, 430.0 + 2 * (LOG_SIZE) * (((LOG_LINES - 1 - i) % LOG_LINES) - LOG_LINES), gAdminLog[i][E_TEXTBOX_STRING]);
				TextDrawUseBox(gAdminLog[i][E_TEXTBOX_TEXT], 0);
				TextDrawFont(gAdminLog[i][E_TEXTBOX_TEXT], 1);
				TextDrawSetShadow(gAdminLog[i][E_TEXTBOX_TEXT], 1);
				TextDrawLetterSize(gAdminLog[i][E_TEXTBOX_TEXT], 0.08 * (LOG_SIZE), 0.24 * (LOG_SIZE));
				TextDrawSetOutline(gAdminLog[i][E_TEXTBOX_TEXT], 0);
				TextDrawColor(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_COLOUR]);
				TextDrawAlignment(gAdminLog[i][E_TEXTBOX_TEXT], 3);
			}
		}
	#endif

	#if JOINMSG_LINES > 0
		for(new i; i < sizeof(gJoinMessage); i++) {
			if(gJoinMessage[i][E_TEXTBOX_TEXT] == INVALID_TEXT_DRAW) {
				gJoinMessage[i][E_TEXTBOX_TEXT] = TextDrawCreate(10.0, 310.0 - 2 * JOINMSG_SIZE * i, gJoinMessage[i][E_TEXTBOX_STRING]);
				TextDrawUseBox(gJoinMessage[i][E_TEXTBOX_TEXT], 0);
				TextDrawFont(gJoinMessage[i][E_TEXTBOX_TEXT], 1);
				TextDrawSetShadow(gJoinMessage[i][E_TEXTBOX_TEXT], 1);
				TextDrawLetterSize(gJoinMessage[i][E_TEXTBOX_TEXT], 0.08 * JOINMSG_SIZE, 0.24 * JOINMSG_SIZE);
				TextDrawColor(gJoinMessage[i][E_TEXTBOX_TEXT], gJoinMessage[i][E_TEXTBOX_COLOUR]);
				TextDrawBackgroundColor(gJoinMessage[i][E_TEXTBOX_TEXT], gJoinMessage[i][E_TEXTBOX_COLOUR] & 0x000000FF);
				TextDrawSetOutline(gJoinMessage[i][E_TEXTBOX_TEXT], 0);
				TextDrawAlignment(gJoinMessage[i][E_TEXTBOX_TEXT], 1);

				LoopPlayers(j) {
					if(gPlayerData[i][E_JOINTEXT]) {
						TextDrawHideForPlayer(j, gJoinMessage[i][E_TEXTBOX_TEXT]);
					} else {
						TextDrawShowForPlayer(j, gJoinMessage[i][E_TEXTBOX_TEXT]);
					}
				}
			}
		}
	#endif

	#if SPEC_TXT_TIME > 0
		if(g_txtSpecMode[0] == INVALID_TEXT_DRAW) {
			g_txtSpecMode[0] = TextDrawCreate(10.0, 390.0, "Normal Spectate");
		}
		if(g_txtSpecMode[1] == INVALID_TEXT_DRAW) {
			g_txtSpecMode[1] = TextDrawCreate(10.0, 390.0, "Player Spectate");
		}
		if(g_txtSpecMode[2] == INVALID_TEXT_DRAW) {
			g_txtSpecMode[2] = TextDrawCreate(10.0, 390.0, "Side Spectate");
		}
		if(g_txtSpecMode[3] == INVALID_TEXT_DRAW) {
			g_txtSpecMode[3] = TextDrawCreate(10.0, 390.0, "Free Spectate");
		}

		for(new i; i < 4; i++) {
			TextDrawUseBox(g_txtSpecMode[i], 0);
			TextDrawSetOutline(g_txtSpecMode[i], 0);
			TextDrawColor(g_txtSpecMode[i], COLOUR_SPECMODE);
			TextDrawBackgroundColor(g_txtSpecMode[i], COLOUR_SPECMODE & 0x000000FF);
			TextDrawAlignment(g_txtSpecMode[i], 1);
			TextDrawSetShadow(g_txtSpecMode[i], 1);
			TextDrawFont(g_txtSpecMode[i], 3);
		}
	#endif

	// Clear join times
	for(new i; i < sizeof(gJoinList); i++) {
		gJoinList[i][E_LASTIP] = 0;
		gJoinList[i][E_LASTJOIN] = 0;
	}
	return 1;
}

public OnGameModeExit()
{
	Bit_SetAll(gCreatedVehicles, 0, sizeof(gCreatedVehicles));

	#if LOG_LINES > 0 && LOG_PAGES > 0
		#if LOG_PAGES > 1
			for(new i; i < sizeof(gLogPage); i++) {
				gLogPage[i] = INVALID_TEXT_DRAW;
			}
		#endif
		for(new i; i < sizeof(gAdminLog); i++) {
			gAdminLog[i][E_TEXTBOX_TEXT] = INVALID_TEXT_DRAW;
		}
	#endif
	#if SPEC_TXT_TIME > 0
		for(new i; i < sizeof(g_txtSpecMode); i++) {
			g_txtSpecMode[i] = INVALID_TEXT_DRAW;
		}
	#endif
	#if JOINMSG_LINES > 0
		for(new i; i < JOINMSG_LINES; i++) {
			gJoinMessage[i][E_TEXTBOX_TEXT] = INVALID_TEXT_DRAW;
		}
	#endif

	if(gSpecTimer) {
		KillTimer(gSpecTimer);
		gSpecTimer = 0;
	}
	for(new i; i < gMaxPlayers; i++) {
		if(gPlayerData[i][E_SPECTATING]) {
			ClearSpawnData(i);
			gPlayerData[i][E_SPECID] = INVALID_PLAYER_ID;
			gPlayerData[i][E_LAST_SPECID] = INVALID_PLAYER_ID;
		}
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	// This shouldn't be needed but sometimes it doesn't get done in OnPlayerDisconnect...
	gPlayerData[playerid] = gDefaultPlayerData;
	Bit_Set(g_bitAdmins, playerid, 0);

	if(FloodCheck(playerid)) return 1;

	new pname[MAX_PLAYER_NAME],
		pIP[MAX_IP],
		msg[MAX_INPUT];

	GetPlayerName(playerid, pname, sizeof(pname));
	GetPlayerIp(playerid, pIP, sizeof(pIP));

	new BanData[E_ALAR_BAN];
	if(GetBanInfo(pname, pIP, BanData)) {
		format(msg, sizeof(msg), "You are banned from this server (%s)", BanData[E_BAN_REASON]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		if(gServerData[E_BAN_MSG][0] != '\0') {
			SendBanMsg(playerid, gServerData[E_BAN_MSG], BanData[E_BAN_DATE], BanData[E_BAN_TIME], BanData[E_BAN_ADMIN]);
		}

		format(msg, sizeof(msg), "%s(%i) is banned from this server (%s)", pname, playerid, BanData[E_BAN_REASON]);
		if(gServerData[E_HIDE_BANS]) {
			gPlayerData[playerid][E_HIDEEXIT] = 3;
		} else {
			gPlayerData[playerid][E_HIDEEXIT] = 1;
			AddJoinString(playerid, COLOUR_BAN, msg);
		}

		format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server (%s)", pname, playerid, BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_REASON]);
		AddLogString(msg);
		LogAction(msg);
		Kick(playerid);
		return 1;
	}

	new SuspendData[E_ALAR_SUSPENSION],
		bool:unsuspended = false;
	while(GetSuspendInfo(pname, pIP, SuspendData)) {
		new curyear,
			curmonth,
			curday,
			curhour,
			curmin,
			cursec;
		getdate(curyear, curmonth, curday);
		gettime(curhour, curmin, cursec);
		if(SuspendData[E_SUSPEND_YEAR] < curyear || (SuspendData[E_SUSPEND_YEAR] == curyear && (SuspendData[E_SUSPEND_MONTH] < curmonth || (SuspendData[E_SUSPEND_MONTH] == curmonth && (SuspendData[E_SUSPEND_DAY] < curday || (SuspendData[E_SUSPEND_DAY] == curday && SuspendData[E_SUSPEND_HOUR] < (curhour + floatdiv(curmin, 60) + floatdiv(cursec, 3600)))))))) {
			UnsuspendPlayer(pname, pIP, SuspendData);
			format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended (%s)", ReturnPlayerName(playerid), playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
			LogAction(msg);
			AddLogString(msg);
			unsuspended = true;
		} else {
			new minute = floatround((SuspendData[E_SUSPEND_HOUR] - floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor)) * 60);
			format(msg, sizeof(msg), "You are suspended from this server until %02i/%02i/%i %02i:%02i (%s)", SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_YEAR], floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor), minute, SuspendData[E_SUSPEND_REASON]);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			if(gServerData[E_SUSPEND_MSG][0] != '\0') {
				SendBanMsg(playerid, gServerData[E_SUSPEND_MSG], SuspendData[E_SUSPEND_DATE], SuspendData[E_SUSPEND_TIME], SuspendData[E_SUSPEND_ADMIN]);
			}
			format(msg, sizeof(msg), "%s(%i) is suspended from this server until %02i/%02i/%i %02i:%02i (%s)", pname, playerid, SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_YEAR], floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor), minute, SuspendData[E_SUSPEND_REASON]);
			if(gServerData[E_HIDE_BANS]) {
				gPlayerData[playerid][E_HIDEEXIT] = 3;
			} else {
				gPlayerData[playerid][E_HIDEEXIT] = 1;
				AddJoinString(playerid, COLOUR_SUSPEND, msg);
			}

			format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server (%s)", pname, playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
			AddLogString(msg);
			LogAction(msg);

			Kick(playerid);
			return 1;
		}
	}
	if(unsuspended) {
		SendClientMessage(playerid, COLOUR_PLAYER, "You have been unsuspended");
		format(msg, sizeof(msg), "%s(%i) has been unsuspended", ReturnPlayerName(playerid), playerid);

		LoopPlayers(i) {
			if(gPlayerData[i][E_ADMINLEVEL] > 0) {
				SendClientMessage(i, COLOUR_ADMIN, msg);
			}
		}
	}

	if(isNumeric(pname) && strval(pname) >= 0 && strval(pname) < GetMaxPlayers()) {
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Name is a number)", pname, playerid);
		SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Name is a number)");
		gPlayerData[playerid][E_HIDEEXIT] = 1;
		AddJoinString(playerid, COLOUR_KICK, msg);
		AddLogString(msg);
		LogAction(msg);
		Kick(playerid);
		return 1;
	}

	if(gServerData[E_ALIAS_LEVEL] > 0) WriteAlias(playerid);
	strcpy(gPlayerData[playerid][E_COUNTRY], ReturnCuntCode(pIP), sizeof(SIZE_E_PLAYERDATA[E_COUNTRY]));

	new pLEVEL,
		pPW[33],
		aIP[MAX_IP],
		#if LOG_LINES > 0 && LOG_PAGES > 0
			page,
		#endif
		manuallogin;

	#if LOG_LINES > 0 && LOG_PAGES > 0
		#define THEIFSTUFF		GetPlayerData(pname, pLEVEL, aIP, pPW, gPlayerData[playerid][E_STATE], manuallogin, page)
	#else
		#define THEIFSTUFF		GetPlayerData(pname, pLEVEL, aIP, pPW, gPlayerData[playerid][E_STATE], manuallogin)
	#endif
	if(THEIFSTUFF) {
		#undef THEIFSTUFF
		LoopPlayers(i) {
			if(gPlayerData[i][E_NAME][0] != '\0' && strcmp(pname, gPlayerData[i][E_NAME], true) == 0) {
				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Admin impersonation)", pname, playerid);
				SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Admin impersonation)");
				gPlayerData[playerid][E_HIDEEXIT] = 1;
				AddJoinString(playerid, COLOUR_KICK, msg);
				AddLogString(msg);
				LogAction(msg);
				Kick(playerid);
				return 1;
			}
		}

		// Store the name they must login as
		strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));

		if(!manuallogin && gServerData[E_AUTO_LOGIN] && IPcompare(aIP, pIP)) {
			Bit_Set(g_bitAdmins, playerid, 1);
			gPlayerData[playerid][E_ADMINLEVEL] = pLEVEL;

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));
			#if LOG_LINES > 0 && LOG_PAGES > 0
				if(page > 0 && page <= LOG_PAGES && cmdchk(playerid, E_LOG_LEVEL)) {
					new offset = (page - 1) * LOG_LINES;
					for(new i; i < LOG_LINES; i++) {
						TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					#if LOG_PAGES > 1
						TextDrawShowForPlayer(playerid, gLogPage[page-1]);
					#endif
					gPlayerData[playerid][E_LOG_PAGE] = page;
				}
			#endif

			format(msg, sizeof(msg), "You have successfully logged in (Level %i)", gPlayerData[playerid][E_ADMINLEVEL]);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has logged in as an admin (Level %i)", ReturnPlayerName(playerid), gPlayerData[playerid][E_ADMINLEVEL]);

			LogAction(msg);

			CallRemoteFunction("OnAdminLogin", "ii", playerid, gPlayerData[playerid][E_ADMINLEVEL]);
		} else if(gServerData[E_SIGNIN_TIME] > 0) {
			format(msg, sizeof(msg), "You have %i seconds to log in as an admin", gServerData[E_SIGNIN_TIME]);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			gPlayerData[playerid][E_KICK] = SetTimerEx("alar_autokick", gServerData[E_SIGNIN_TIME] * 1000, 0, "i", playerid);
		}
	}

	if(gServerData[E_JOIN_MSGS]) {
		if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
			if(gServerData[E_LOG_LOGINS]) {
				AddLogString(msg);

				if(gServerData[E_JOIN_COUNTRIES] && gPlayerData[playerid][E_COUNTRY][0]) {
					format(msg, sizeof(msg), "*** %s(%i) has joined the server (%s)", pname, playerid, ReturnCuntName(gPlayerData[playerid][E_COUNTRY]));
					AddJoinChatLine(playerid, COLOUR_CONNECT, msg);

					format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
					AddJoinTextLine(COLOUR_CONNECT, msg);
				} else {
					format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
					AddJoinString(playerid, COLOUR_CONNECT, msg);
				}
			} else {
				new string[MAX_INPUT];
				format(string, sizeof(string), "%s(%i) has joined the server", pname, playerid);
				AddJoinTextLine(COLOUR_CONNECT, string);

				new amsg[MAX_INPUT];
				if(gServerData[E_JOIN_COUNTRIES] && gPlayerData[playerid][E_COUNTRY][0]) {
					new cuntname[100];
					strcpy(cuntname, ReturnCuntName(gPlayerData[playerid][E_COUNTRY]));
					format(string, sizeof(string), "*** %s(%i) has joined the server (%s)", pname, playerid, cuntname);
					format(amsg, sizeof(amsg), "*** %s(%i) has joined the server as a level %i admin (%s)", pname, playerid, gPlayerData[playerid][E_ADMINLEVEL], cuntname);
				} else {
					format(string, sizeof(string), "*** %s(%i) has joined the server", pname, playerid);
					format(amsg, sizeof(amsg), "*** %s(%i) has joined the server as a level %i admin", pname, playerid, gPlayerData[playerid][E_ADMINLEVEL]);
				}
				LoopPlayers(i) {
					if(playerid != i) {
						if(gPlayerData[i][E_JOINTEXT]) {
							if(gPlayerData[i][E_ADMINLEVEL] > 0) {
								SendClientMessage(i, COLOUR_ADMIN, amsg);
							} else {
								SendClientMessage(i, COLOUR_CONNECT, string);
							}
						} else if(gPlayerData[i][E_ADMINLEVEL] > 0) {
							SendClientMessage(i, COLOUR_ADMIN, msg);
						}
					}
				}
			}
		} else {
			if(gServerData[E_JOIN_COUNTRIES] && gPlayerData[playerid][E_COUNTRY][0]) {
				format(msg, sizeof(msg), "*** %s(%i) has joined the server (%s)", pname, playerid, ReturnCuntName(gPlayerData[playerid][E_COUNTRY]));
				AddJoinChatLine(playerid, COLOUR_CONNECT, msg);

				format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
				AddJoinTextLine(COLOUR_CONNECT, msg);
			} else {
				format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
				AddJoinString(playerid, COLOUR_CONNECT, msg);
			}
		}
		gPlayerData[playerid][E_HIDEEXIT] = 1;
	}

	LoadPlayerData(playerid);

	if(gPlayerData[playerid][E_STATE] != 0) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
			SendClientMessage(playerid, COLOUR_WARNING, "You have been muted");
		}
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) {
			SendClientMessage(playerid, COLOUR_WARNING, "You have been jailed");
		}
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_FROZEN) {
			SendClientMessage(playerid, COLOUR_WARNING, "You have been frozen");
		}
		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], 0);
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(gPlayerData[playerid][E_KICK]) {
		KillTimer(gPlayerData[playerid][E_KICK]);
	}
	if(gPlayerData[playerid][E_UNMUTE]) {
		KillTimer(gPlayerData[playerid][E_UNMUTE]);
	}
	if(gPlayerData[playerid][E_UNJAIL]) {
		KillTimer(gPlayerData[playerid][E_UNJAIL]);
	}
	if(gPlayerData[playerid][E_UNFREEZE]) {
		KillTimer(gPlayerData[playerid][E_UNFREEZE]);
	}

	LoopPlayers(i) {
		if(gPlayerData[i][E_LAST_SPECID] == playerid) {
			gPlayerData[i][E_LAST_SPECID] = INVALID_PLAYER_ID;
		}
	}

	if(gPlayerData[playerid][E_SPECTATING]) {
		#if SPEC_TXT_TIME > 0
			if(gPlayerData[playerid][E_SPECTIMER]) {
				KillTimer(gPlayerData[playerid][E_SPECTIMER]);
				gPlayerData[playerid][E_SPECTIMER] = 0;
				TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECTXT]);
				gPlayerData[playerid][E_SPECTXT] = INVALID_TEXT_DRAW;
			}
		#endif
		if(gPlayerData[playerid][E_SPECHUD] != INVALID_TEXT_DRAW) {
			TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
		}
	} else {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				ObserverSwitchPlayer(i, gPlayerData[i][E_SPECID] + 1);
				if(gPlayerData[i][E_SPECID] == playerid) {	// technically the player is still connected :(
					gPlayerData[playerid][E_SPECMODE] = 3;
					CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, gPlayerData[playerid][E_SPECID]);

					PutPlayerIntoFreeSpec(playerid);
					gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;

					#if SPEC_TXT_TIME > 0
						ShowSpecTxt(playerid);
					#endif
				}
			}
		}
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		Bit_Set(g_bitAdmins, playerid, 0);
		new pLEVEL, aIP[MAX_IP], pPW[33], hidden, manuallogin;
		GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, aIP, pPW, hidden, manuallogin);
		#if LOG_LINES > 0 && LOG_PAGES > 0
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, aIP, pPW, hidden, manuallogin, gPlayerData[playerid][E_LOG_PAGE]);
		#else
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, aIP, pPW, hidden, manuallogin);
		#endif

		CallRemoteFunction("OnAdminLogout", "i", playerid);
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(gPlayerData[playerid][E_LOG_PAGE]) {
			#if LOG_PAGES > 1
				TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
			#endif
			for(new i, offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
				TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
			}
			gPlayerData[playerid][E_LOG_PAGE] = 0;
		}
	#endif
	#if JOINMSG_LINES > 0
		if(!gPlayerData[playerid][E_JOINTEXT]) {
			gPlayerData[playerid][E_JOINTEXT] = true;
			for(new i; i < JOINMSG_LINES; i++) {
				TextDrawHideForPlayer(playerid, gJoinMessage[i][E_TEXTBOX_TEXT]);
			}
		}
	#endif

	if(gServerData[E_JOIN_MSGS] && gPlayerData[playerid][E_HIDEEXIT] < 3) {
		if(gPlayerData[playerid][E_HIDEEXIT] == 1) gPlayerData[playerid][E_HIDEEXIT] = 0;
		new msg[MAX_INPUT];
		switch(reason) {
			case 0: {
				format(msg, sizeof(msg), "%s(%i) has left the server (Timeout)", ReturnPlayerName(playerid), playerid);
				AddJoinString(playerid, COLOUR_TIMEOUT, msg);
			}
			case 1: {
				if(gServerData[E_RAGE_TIME] > 0 && gettime() - gPlayerData[playerid][E_LAST_RAGE] < gServerData[E_RAGE_TIME]) {
					format(msg, sizeof(msg), "%s(%i) has left the server (Ragequit)", ReturnPlayerName(playerid), playerid);
					AddJoinString(playerid, COLOUR_RAGEQUIT, msg);
				} else {
					format(msg, sizeof(msg), "%s(%i) has left the server (Left)", ReturnPlayerName(playerid), playerid);
					AddJoinString(playerid, COLOUR_DISCONNECT, msg);
				}
			}
			case 2: {
				format(msg, sizeof(msg), "%s(%i) has left the server (Kicked)", ReturnPlayerName(playerid), playerid);
				AddJoinString(playerid, COLOUR_KICK, msg);
			}
		}
	}

	gPlayerData[playerid] = gDefaultPlayerData;
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(!gPlayerData[playerid][E_PRELOAD]) {
		ApplyAnimation(playerid, "FIGHT_B", "HitB_3", 1.0, 0, 1, 1, 0, 1);
		ClearAnimations(playerid);	// for some reason animations get suck no matter what params are used
		gPlayerData[playerid][E_PRELOAD] = true;
	}
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) {
		SetTimerEx("alar_jailplayer", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
	}
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_FROZEN) {
		TogglePlayerControllable(playerid, false);
	}

	// People spawning using the SpawnPlayer() command
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == playerid) {
			PlayerSpectatePlayer(i, gPlayerData[i][E_SPECID]);
		}
	}
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	gPlayerData[playerid][E_LAST_RAGE] = gettime();

	LoopPlayers(i) {
		if(i != playerid && gPlayerData[i][E_SPECID] == playerid) {
			ObserverSwitchPlayer(i, IsSpawned(killerid) ? killerid : gPlayerData[i][E_SPECID] + 1);
		}
	}
	return 1;
}

public OnPlayerText(playerid, text[])
{
	#if MUTECHAT
		if(SpamCheck(playerid, text)) return 0;

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
			new time = gPlayerData[playerid][E_MUTE_TIME] - gettime();
			if(time > 0) {
				new msg[MAX_INPUT];
				format(msg, sizeof(msg), "You are muted for %i seconds", time);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You are muted");
			}
			return 0;
		}
	#endif

	if((gPlayerData[playerid][E_ADMINLEVEL] > 0) && (gServerData[E_CHAT_PREFIX][0] != '\0')) {
		if(strcmp(text, gServerData[E_CHAT_PREFIX], true, gServerData[E_CHAT_PREFIX_LEN]) == 0) {
			if(text[gServerData[E_CHAT_PREFIX_LEN]] == '\0') return 0;
			new msg[MAX_INPUT + MAX_PLAYER_NAME + 20];
			format(msg, sizeof(msg), "<Adminchat> %s: %s", ReturnPlayerName(playerid), text[gServerData[E_CHAT_PREFIX_LEN]]);
			SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, msg);
			LogAction(msg);
			return 0;
		}
	}

	for(new i; i < sizeof(gRageWords); i++) {
		if(strfind(text, gRageWords[i], true) != -1) {
			gPlayerData[playerid][E_LAST_RAGE] = gettime();
			break;
		}
	}
	return 1;
}

public OnPlayerPrivmsg(playerid, recieverid, text[])
{
	#if MUTEPMS
		if(SpamCheck(playerid, text, true)) return 0;

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are muted");
			return 0;	// Do nothing :S
		}
	#endif

	if(gServerData[E_SHOW_PMS]) {
		new msg[MAX_INPUT + 2 * MAX_PLAYER_NAME + 20], Bit:players[Bit_Bits(MAX_PLAYERS)];
		players = g_bitAdmins;
		Bit_Set(players, playerid, 0);
		Bit_Set(players, recieverid, 0);
		format(msg, sizeof(msg), "PM from %s(%i) to %s(%i): %s", ReturnPlayerName(playerid), playerid, ReturnPlayerName(recieverid), recieverid, text);
		SendWrappedMessageToClients(players, COLOUR_MSG, msg);
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	// stupid strcmp returning true for ""
	if(cmdtext[1] == '\0') return 0;

	#if MUTECMDS
		for(new i; i < sizeof(gMutedCommands); i++) {
			new length = strlen(gMutedCommands[i]);
			if(strcmp(cmdtext, gMutedCommands[i], true, length) == 0 && (cmdtext[length] == '\0' || cmdtext[length] == ' ')) {
				if(SpamCheck(playerid, cmdtext)) return 1;

				if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
					new time = gPlayerData[playerid][E_MUTE_TIME] - gettime();
					if(time > 0) {
						new msg[MAX_INPUT];
						format(msg, sizeof(msg), "You are muted for %i seconds", time);
						SendClientMessage(playerid, COLOUR_WARNING, msg);
					} else {
						SendClientMessage(playerid, COLOUR_WARNING, "You are muted");
					}
					return 1;
				}
				break;
			}
		}
	#endif

	// For using something like "//" as the chat prefix
	if(gPlayerData[playerid][E_ADMINLEVEL] > 0 && gServerData[E_CHAT_PREFIX][0] == '/' && strcmp(cmdtext, gServerData[E_CHAT_PREFIX], true, gServerData[E_CHAT_PREFIX_LEN]) == 0) {
		if(cmdtext[gServerData[E_CHAT_PREFIX_LEN]] == '\0' || SpamCheck(playerid, cmdtext)) return 1;
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
			new time = gPlayerData[playerid][E_MUTE_TIME] - gettime();
			if(time > 0) {
				new msg[MAX_INPUT];
				format(msg, sizeof(msg), "You are muted for %i seconds", time);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You are muted");
			}
		} else {
			new msg[MAX_INPUT + MAX_PLAYER_NAME + 20];
			format(msg, sizeof(msg), "<Adminchat> %s: %s", ReturnPlayerName(playerid), cmdtext[gServerData[E_CHAT_PREFIX_LEN]]);
			SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, msg);
			LogAction(msg);
		}
		return 1;
	}

	// disable all commands (if the filterscript is first on the list)
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) return 1;

	// Not an admin command
	if(cmdtext[1] != 'a' && cmdtext[1] != 'A') return 0;

/*
	#if JOINMSG_LINES > 0
		cmd(ajoins, cmdtext);
	#endif

	cmd(admins, cmdtext);
	cmd(adesynced, cmdtext);
	cmd(afrozen, cmdtext);
	cmd(ajailed, cmdtext);
	cmd(amuted, cmdtext);
	cmd(asinfo, cmdtext);
	cmd(acommands, cmdtext);

	dcmd(apm, 3, cmdtext);
	dcmd(alogin, 6, cmdtext);

	if(gServerData[E_ALIAS_ADMINS]) {
		dcmd(aloginas, 8, cmdtext);
	}
*/
	#if JOINMSG_LINES > 0
		switch(strcmp(cmdtext[1], "ajailed" , true)) {
			case -1: {
				switch(strcmp(cmdtext[1], "adesynced" , true)) {
					case -1: {
						if(strcmp(cmdtext[1], "acommands", true) == 0) {
							return cmd_acommands(playerid);
						}
					}
					case 0: {
						return cmd_adesynced(playerid);
					}
					case 1: {
						switch(strcmp(cmdtext[1], "admins" , true)) {
							case 0: {
								return cmd_admins(playerid);
							}
							case 1: {
								if(strcmp(cmdtext[1], "afrozen", true) == 0) {
									return cmd_afrozen(playerid);
								}
							}
						}
					}
				}
			}
			case 0: {
				return cmd_ajailed(playerid);
			}
			case 1: {
				switch(strcmp(cmdtext[1], "amuted" , true)) {
					case -1: {
						switch(strcmp(cmdtext[1], "ajoins" , true)) {
							case 0: {
								return cmd_ajoins(playerid);
							}
							case 1: {
								if(strcmp(cmdtext[1], "alogin", true, 6) == 0) {
									if(cmdtext[7] == '\0') return dcmd_alogin(playerid, "");
									if(cmdtext[7] == ' ') return dcmd_alogin(playerid, cmdtext[8]);
									if(gServerData[E_ALIAS_ADMINS] && strcmp(cmdtext[7], "as", true, 2) == 0) {
										if(cmdtext[9] == '\0') return dcmd_aloginas(playerid, "");
										if(cmdtext[9] == ' ') return dcmd_aloginas(playerid, cmdtext[10]);
									}
									return 0;
								}
							}
						}
					}
					case 0: {
						return cmd_amuted(playerid);
					}
					case 1: {
						switch(strcmp(cmdtext[1], "apm" , true, 3)) {
							case 0: {
								if(cmdtext[4] == '\0') return dcmd_apm(playerid, "");
								if(cmdtext[4] == ' ') return dcmd_apm(playerid, cmdtext[5]);
							}
							case 1: {
								if(strcmp(cmdtext[1], "asinfo", true) == 0) {
									return cmd_asinfo(playerid);
								}
							}
						}
					}
				}
			}
		}
	#else
		switch(strcmp(cmdtext[1], "ajailed" , true)) {
			case -1: {
				switch(strcmp(cmdtext[1], "adesynced" , true)) {
					case -1: {
						if(strcmp(cmdtext[1], "acommands", true) == 0) {
							return cmd_acommands(playerid);
						}
					}
					case 0: {
						return cmd_adesynced(playerid);
					}
					case 1: {
						switch(strcmp(cmdtext[1], "admins" , true)) {
							case 0: {
								return cmd_admins(playerid);
							}
							case 1: {
								if(strcmp(cmdtext[1], "afrozen", true) == 0) {
									return cmd_afrozen(playerid);
								}
							}
						}
					}
				}
			}
			case 0: {
				return cmd_ajailed(playerid);
			}
			case 1: {
				switch(strcmp(cmdtext[1], "amuted" , true)) {
					case -1: {
						if(strcmp(cmdtext[1], "alogin", true, 6) == 0) {
							if(cmdtext[7] == '\0') return dcmd_alogin(playerid, "");
							if(cmdtext[7] == ' ') return dcmd_alogin(playerid, cmdtext[8]);
							if(gServerData[E_ALIAS_ADMINS] && strcmp(cmdtext[7], "as", true, 2) == 0) {
								if(cmdtext[9] == '\0') return dcmd_aloginas(playerid, "");
								if(cmdtext[9] == ' ') return dcmd_aloginas(playerid, cmdtext[10]);
							}
							return 0;
						}
					}
					case 0: {
						return cmd_amuted(playerid);
					}
					case 1: {
						switch(strcmp(cmdtext[1], "apm" , true, 3)) {
							case 0: {
								if(cmdtext[4] == '\0') return dcmd_apm(playerid, "");
								if(cmdtext[4] == ' ') return dcmd_apm(playerid, cmdtext[5]);
							}
							case 1: {
								if(strcmp(cmdtext[1], "asinfo", true) == 0) {
									return cmd_asinfo(playerid);
								}
							}
						}
					}
				}
			}
		}
	#endif

	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
/*
		cmd(aautologin, cmdtext);
		cmd(aclearbans, cmdtext);
		cmd(aclearstatus, cmdtext);
		cmd(aclr, cmdtext);
		cmd(aejectall, cmdtext);
		cmd(ahelp, cmdtext);
		cmd(ahide, cmdtext);
		cmd(alistmodes, cmdtext);
		cmd(alogout, cmdtext);
		cmd(apaused, cmdtext);
		cmd(areloaddata, cmdtext);
		cmd(aremallcash, cmdtext);
		cmd(aremallweapons, cmdtext);
		cmd(aunhide, cmdtext);

		dcmd(aalias, 6, cmdtext);
		dcmd(aalias2, 7, cmdtext);
		dcmd(aarmour, 7, cmdtext);
		dcmd(aarmourall, 10, cmdtext);
		dcmd(aban, 4, cmdtext);
		dcmd(abancheck, 9, cmdtext);
		dcmd(abanip, 6, cmdtext);
		dcmd(abanname, 8, cmdtext);
		dcmd(abring, 6, cmdtext);
		dcmd(achangemode, 11, cmdtext);
		dcmd(achangepw, 9, cmdtext);
		dcmd(acreate, 7, cmdtext);
		dcmd(adestroy, 8, cmdtext);
		dcmd(adesync, 7, cmdtext);
		dcmd(adrop, 5, cmdtext);
		dcmd(aeject, 6, cmdtext);
		dcmd(aexplode, 8, cmdtext);
		dcmd(aflip, 5, cmdtext);
		dcmd(afreeze, 7, cmdtext);
		dcmd(agiveallcash, 12, cmdtext);
		dcmd(agiveallweapon, 14, cmdtext);
		dcmd(agivecash, 9, cmdtext);
		dcmd(agiveweapon, 11, cmdtext);
		dcmd(agoto, 5, cmdtext);
		dcmd(agravity, 8, cmdtext);
		dcmd(aheal, 5, cmdtext);
		dcmd(ahealall, 8, cmdtext);
		dcmd(aimitate, 8, cmdtext);
		dcmd(aimmune, 7, cmdtext);
		dcmd(ainfo, 5, cmdtext);
		dcmd(ainterior, 9, cmdtext);
		dcmd(aip, 3, cmdtext);
		dcmd(ajail, 5, cmdtext);
		dcmd(akick, 5, cmdtext);
		dcmd(amsg, 4, cmdtext);
		dcmd(amute, 5, cmdtext);
		dcmd(apunch, 6, cmdtext);
		dcmd(ar, 2, cmdtext);
		dcmd(arape, 5, cmdtext);
		dcmd(aremcash, 8, cmdtext);
		dcmd(aremweapons, 11, cmdtext);
		dcmd(arepair, 7, cmdtext);
		dcmd(arespawn, 8, cmdtext);
		dcmd(asay, 4, cmdtext);
		dcmd(aselect, 7, cmdtext);
		dcmd(aservername, 11, cmdtext);
		dcmd(asetadmin, 9, cmdtext);
		dcmd(asetname, 8, cmdtext);
		dcmd(asetping, 8, cmdtext);
		dcmd(ashout, 6, cmdtext);
		dcmd(aslap, 5, cmdtext);
		dcmd(aslay, 5, cmdtext);
		dcmd(aspawn, 6, cmdtext);
		dcmd(aspec, 5, cmdtext);
		dcmd(asuspend, 8, cmdtext);
		dcmd(asuspendip, 10, cmdtext);
		dcmd(asuspendname, 12, cmdtext);
		dcmd(atime, 5, cmdtext);
		dcmd(aunban, 6, cmdtext);
		dcmd(aundesync, 9, cmdtext);
		dcmd(aunfreeze, 9, cmdtext);
		dcmd(aunjail, 7, cmdtext);
		dcmd(aunmute, 7, cmdtext);
		dcmd(aunrape, 7, cmdtext);
		dcmd(aunsuspend, 10, cmdtext);
		dcmd(aweather, 8, cmdtext);
		dcmd(aworld, 6, cmdtext);
*/

		switch(strcmp(cmdtext[1], "aip" , true, 3)) {
			case -1: {
				switch(strcmp(cmdtext[1], "aexplode" , true, 8)) {
					case -1: {
						switch(strcmp(cmdtext[1], "aclearbans" , true)) {
							case -1: {
								switch(strcmp(cmdtext[1], "aban" , true, 4)) {
									case -1: {
										switch(strcmp(cmdtext[1], "aarmour" , true, 7)) {
											case -1: {
												if(strcmp(cmdtext[1], "aalias", true, 6) == 0) {
													if(cmdtext[7] == '\0') return dcmd_aalias(playerid, "");
													if(cmdtext[7] == ' ') return dcmd_aalias(playerid, cmdtext[8]);
													switch(strcmp(cmdtext[7], "2" , true, 1)) {
														case 0: {
															if(cmdtext[8] == '\0') return dcmd_aalias2(playerid, "");
															if(cmdtext[8] == ' ') return dcmd_aalias2(playerid, cmdtext[9]);
														}
														case 1: {
															if(cmdtext[7] == '3') {
																if(cmdtext[8] == '\0') return dcmd_aalias3(playerid, "");
																if(cmdtext[8] == ' ') return dcmd_aalias3(playerid, cmdtext[9]);
															}
														}
													}
												}
											}
											case 0: {
												if(cmdtext[8] == '\0') return dcmd_aarmour(playerid, "");
												if(cmdtext[8] == ' ') return dcmd_aarmour(playerid, cmdtext[9]);
												if(strcmp(cmdtext[8], "all", true, 3) == 0) {
													if(cmdtext[11] == '\0') return dcmd_aarmourall(playerid, "");
													if(cmdtext[11] == ' ') return dcmd_aarmourall(playerid, cmdtext[12]);
												}
											}
											case 1: {
												if(strcmp(cmdtext[1], "aautologin", true) == 0) {
													return cmd_aautologin(playerid);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[5] == '\0') return dcmd_aban(playerid, "");
										if(cmdtext[5] == ' ') return dcmd_aban(playerid, cmdtext[6]);
										switch(strcmp(cmdtext[5], "ip" , true, 2)) {
											case -1: {
												if(strcmp(cmdtext[5], "check", true, 5) == 0) {
													if(cmdtext[10] == '\0') return dcmd_abancheck(playerid, "");
													if(cmdtext[10] == ' ') return dcmd_abancheck(playerid, cmdtext[11]);
												}
											}
											case 0: {
												if(cmdtext[7] == '\0') return dcmd_abanip(playerid, "");
												if(cmdtext[7] == ' ') return dcmd_abanip(playerid, cmdtext[8]);
											}
											case 1: {
												if(strcmp(cmdtext[5], "name", true, 4) == 0) {
													if(cmdtext[9] == '\0') return dcmd_abanname(playerid, "");
													if(cmdtext[9] == ' ') return dcmd_abanname(playerid, cmdtext[10]);
												}
											}
										}
									}
									case 1: {
										switch(strcmp(cmdtext[1], "achangemode" , true, 11)) {
											case -1: {
												if(strcmp(cmdtext[1], "abring", true, 6) == 0) {
													if(cmdtext[7] == '\0') return dcmd_abring(playerid, "");
													if(cmdtext[7] == ' ') return dcmd_abring(playerid, cmdtext[8]);
												}
											}
											case 0: {
												if(cmdtext[12] == '\0') return dcmd_achangemode(playerid, "");
												if(cmdtext[12] == ' ') return dcmd_achangemode(playerid, cmdtext[13]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "achangepw", true, 9) == 0) {
													if(cmdtext[10] == '\0') return dcmd_achangepw(playerid, "");
													if(cmdtext[10] == ' ') return dcmd_achangepw(playerid, cmdtext[11]);
												}
											}
										}
									}
								}
							}
							case 0: {
								return cmd_aclearbans(playerid);
							}
							case 1: {
								switch(strcmp(cmdtext[1], "adestroy" , true, 8)) {
									case -1: {
										switch(strcmp(cmdtext[1], "aclr" , true)) {
											case -1: {
												if(strcmp(cmdtext[1], "aclearstatus", true) == 0) {
													return cmd_aclearstatus(playerid);
												}
											}
											case 0: {
												return cmd_aclr(playerid);
											}
											case 1: {
												if(strcmp(cmdtext[1], "acreate", true, 7) == 0) {
													if(cmdtext[8] == '\0') return dcmd_acreate(playerid, "");
													if(cmdtext[8] == ' ') return dcmd_acreate(playerid, cmdtext[9]);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[9] == '\0') return dcmd_adestroy(playerid, "");
										if(cmdtext[9] == ' ') return dcmd_adestroy(playerid, cmdtext[10]);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "adrop" , true, 5)) {
											case -1: {
												if(strcmp(cmdtext[1], "adesync", true, 7) == 0) {
													if(cmdtext[8] == '\0') return dcmd_adesync(playerid, "");
													if(cmdtext[8] == ' ') return dcmd_adesync(playerid, cmdtext[9]);
												}
											}
											case 0: {
												if(cmdtext[6] == '\0') return dcmd_adrop(playerid, "");
												if(cmdtext[6] == ' ') return dcmd_adrop(playerid, cmdtext[7]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "aeject", true, 6) == 0) {
													if(cmdtext[7] == '\0') return dcmd_aeject(playerid, "");
													if(cmdtext[7] == ' ') return dcmd_aeject(playerid, cmdtext[8]);
													if(strcmp(cmdtext[7], "all", true) == 0) {
														return cmd_aejectall(playerid);
													}
												}
											}
										}
									}
								}
							}
						}
					}
					case 0: {
						if(cmdtext[9] == '\0') return dcmd_aexplode(playerid, "");
						if(cmdtext[9] == ' ') return dcmd_aexplode(playerid, cmdtext[10]);
					}
					case 1: {
						switch(strcmp(cmdtext[1], "agravity" , true, 8)) {
							case -1: {
								switch(strcmp(cmdtext[1], "agiveallweapon" , true, 14)) {
									case -1: {
										switch(strcmp(cmdtext[1], "afreeze" , true, 7)) {
											case -1: {
												if(strcmp(cmdtext[1], "aflip", true, 5) == 0) {
													if(cmdtext[6] == '\0') return dcmd_aflip(playerid, "");
													if(cmdtext[6] == ' ') return dcmd_aflip(playerid, cmdtext[7]);
												}
											}
											case 0: {
												if(cmdtext[8] == '\0') return dcmd_afreeze(playerid, "");
												if(cmdtext[8] == ' ') return dcmd_afreeze(playerid, cmdtext[9]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "agiveallcash", true, 12) == 0) {
													if(cmdtext[13] == '\0') return dcmd_agiveallcash(playerid, "");
													if(cmdtext[13] == ' ') return dcmd_agiveallcash(playerid, cmdtext[14]);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[15] == '\0') return dcmd_agiveallweapon(playerid, "");
										if(cmdtext[15] == ' ') return dcmd_agiveallweapon(playerid, cmdtext[16]);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "agiveweapon" , true, 11)) {
											case -1: {
												if(strcmp(cmdtext[1], "agivecash", true, 9) == 0) {
													if(cmdtext[10] == '\0') return dcmd_agivecash(playerid, "");
													if(cmdtext[10] == ' ') return dcmd_agivecash(playerid, cmdtext[11]);
												}
											}
											case 0: {
												if(cmdtext[12] == '\0') return dcmd_agiveweapon(playerid, "");
												if(cmdtext[12] == ' ') return dcmd_agiveweapon(playerid, cmdtext[13]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "agoto", true, 5) == 0) {
													if(cmdtext[6] == '\0') return dcmd_agoto(playerid, "");
													if(cmdtext[6] == ' ') return dcmd_agoto(playerid, cmdtext[7]);
												}
											}
										}
									}
								}
							}
							case 0: {
								if(cmdtext[9] == '\0') return dcmd_agravity(playerid, "");
								if(cmdtext[9] == ' ') return dcmd_agravity(playerid, cmdtext[10]);
							}
							case 1: {
								switch(strcmp(cmdtext[1], "aimitate" , true, 8)) {
									case -1: {
										switch(strcmp(cmdtext[1], "ahelp" , true)) {
											case -1: {
												if(strcmp(cmdtext[1], "aheal", true, 5) == 0) {
													if(cmdtext[6] == '\0') return dcmd_aheal(playerid, "");
													if(cmdtext[6] == ' ') return dcmd_aheal(playerid, cmdtext[7]);
													if(strcmp(cmdtext[6], "all", true, 3) == 0) {
														if(cmdtext[9] == '\0') return dcmd_ahealall(playerid, "");
														if(cmdtext[9] == ' ') return dcmd_ahealall(playerid, cmdtext[10]);
													}
												}
											}
											case 0: {
												return cmd_ahelp(playerid);
											}
											case 1: {
												if(strcmp(cmdtext[1], "ahide", true) == 0) {
													return cmd_ahide(playerid);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[9] == '\0') return dcmd_aimitate(playerid, "");
										if(cmdtext[9] == ' ') return dcmd_aimitate(playerid, cmdtext[10]);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "ainfo" , true, 5)) {
											case -1: {
												if(strcmp(cmdtext[1], "aimmune", true, 7) == 0) {
													if(cmdtext[8] == '\0') return dcmd_aimmune(playerid, "");
													if(cmdtext[8] == ' ') return dcmd_aimmune(playerid, cmdtext[9]);
												}
											}
											case 0: {
												if(cmdtext[6] == '\0') return dcmd_ainfo(playerid, "");
												if(cmdtext[6] == ' ') return dcmd_ainfo(playerid, cmdtext[7]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "ainterior", true, 9) == 0) {
													if(cmdtext[10] == '\0') return dcmd_ainterior(playerid, "");
													if(cmdtext[10] == ' ') return dcmd_ainterior(playerid, cmdtext[11]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			case 0: {
				if(cmdtext[4] == '\0') return dcmd_aip(playerid, "");
				if(cmdtext[4] == ' ') return dcmd_aip(playerid, cmdtext[5]);
			}
			case 1: {
				switch(strcmp(cmdtext[1], "ashout" , true, 6)) {
					case -1: {
						switch(strcmp(cmdtext[1], "apunch" , true, 6)) {
							case -1: {
								switch(strcmp(cmdtext[1], "alogout" , true)) {
									case -1: {
										switch(strcmp(cmdtext[1], "akick" , true, 5)) {
											case -1: {
												if(strcmp(cmdtext[1], "ajail", true, 5) == 0) {
													if(cmdtext[6] == '\0') return dcmd_ajail(playerid, "");
													if(cmdtext[6] == ' ') return dcmd_ajail(playerid, cmdtext[7]);
												}
											}
											case 0: {
												if(cmdtext[6] == '\0') return dcmd_akick(playerid, "");
												if(cmdtext[6] == ' ') return dcmd_akick(playerid, cmdtext[7]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "alistmodes", true) == 0) {
													return cmd_alistmodes(playerid);
												}
											}
										}
									}
									case 0: {
										return cmd_alogout(playerid);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "amute" , true, 5)) {
											case -1: {
												if(strcmp(cmdtext[1], "amsg", true, 4) == 0) {
													if(cmdtext[5] == '\0') return dcmd_amsg(playerid, "");
													if(cmdtext[5] == ' ') return dcmd_amsg(playerid, cmdtext[6]);
												}
											}
											case 0: {
												if(cmdtext[6] == '\0') return dcmd_amute(playerid, "");
												if(cmdtext[6] == ' ') return dcmd_amute(playerid, cmdtext[7]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "apaused", true) == 0) {
													return cmd_apaused(playerid);
												}
											}
										}
									}
								}
							}
							case 0: {
								if(cmdtext[7] == '\0') return dcmd_apunch(playerid, "");
								if(cmdtext[7] == ' ') return dcmd_apunch(playerid, cmdtext[8]);
							}
							case 1: {
								switch(strcmp(cmdtext[1], "aservername" , true, 11)) {
									case -1: {
										switch(strcmp(cmdtext[1], "asay" , true, 4)) {
											case -1: {
												if(strcmp(cmdtext[1], "ar", true, 2) == 0) {
													if(cmdtext[3] == '\0') return dcmd_ar(playerid, "");
													if(cmdtext[3] == ' ') return dcmd_ar(playerid, cmdtext[4]);
													switch(strcmp(cmdtext[3], "emallweapons" , true)) {
														case -1: {
															switch(strcmp(cmdtext[3], "eloaddata" , true)) {
																case -1: {
																	if(strcmp(cmdtext[3], "ape", true, 3) == 0) {
																		if(cmdtext[6] == '\0') return dcmd_arape(playerid, "");
																		if(cmdtext[6] == ' ') return dcmd_arape(playerid, cmdtext[7]);
																	}
																}
																case 0: {
																	return cmd_areloaddata(playerid);
																}
																case 1: {
																	if(strcmp(cmdtext[3], "emallcash", true) == 0) {
																		return cmd_aremallcash(playerid);
																	}
																}
															}
														}
														case 0: {
															return cmd_aremallweapons(playerid);
														}
														case 1: {
															switch(strcmp(cmdtext[3], "emweapons" , true, 9)) {
																case -1: {
																	if(strcmp(cmdtext[3], "emcash", true, 6) == 0) {
																		if(cmdtext[9] == '\0') return dcmd_aremcash(playerid, "");
																		if(cmdtext[9] == ' ') return dcmd_aremcash(playerid, cmdtext[10]);
																	}
																}
																case 0: {
																	if(cmdtext[12] == '\0') return dcmd_aremweapons(playerid, "");
																	if(cmdtext[12] == ' ') return dcmd_aremweapons(playerid, cmdtext[13]);
																}
																case 1: {
																	switch(strcmp(cmdtext[3], "epair" , true, 5)) {
																		case 0: {
																			if(cmdtext[8] == '\0') return dcmd_arepair(playerid, "");
																			if(cmdtext[8] == ' ') return dcmd_arepair(playerid, cmdtext[9]);
																		}
																		case 1: {
																			if(strcmp(cmdtext[3], "espawn", true, 6) == 0) {
																				if(cmdtext[9] == '\0') return dcmd_arespawn(playerid, "");
																				if(cmdtext[9] == ' ') return dcmd_arespawn(playerid, cmdtext[10]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
											case 0: {
												if(cmdtext[5] == '\0') return dcmd_asay(playerid, "");
												if(cmdtext[5] == ' ') return dcmd_asay(playerid, cmdtext[6]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "aselect", true, 7) == 0) {
													if(cmdtext[8] == '\0') return dcmd_aselect(playerid, "");
													if(cmdtext[8] == ' ') return dcmd_aselect(playerid, cmdtext[9]);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[12] == '\0') return dcmd_aservername(playerid, "");
										if(cmdtext[12] == ' ') return dcmd_aservername(playerid, cmdtext[13]);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "asetname" , true, 8)) {
											case -1: {
												if(strcmp(cmdtext[1], "asetadmin", true, 9) == 0) {
													if(cmdtext[10] == '\0') return dcmd_asetadmin(playerid, "");
													if(cmdtext[10] == ' ') return dcmd_asetadmin(playerid, cmdtext[11]);
												}
											}
											case 0: {
												if(cmdtext[9] == '\0') return dcmd_asetname(playerid, "");
												if(cmdtext[9] == ' ') return dcmd_asetname(playerid, cmdtext[10]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "asetping", true, 8) == 0) {
													if(cmdtext[9] == '\0') return dcmd_asetping(playerid, "");
													if(cmdtext[9] == ' ') return dcmd_asetping(playerid, cmdtext[10]);
												}
											}
										}
									}
								}
							}
						}
					}
					case 0: {
						if(cmdtext[7] == '\0') return dcmd_ashout(playerid, "");
						if(cmdtext[7] == ' ') return dcmd_ashout(playerid, cmdtext[8]);
					}
					case 1: {
						switch(strcmp(cmdtext[1], "aundesync" , true, 9)) {
							case -1: {
								switch(strcmp(cmdtext[1], "aspec" , true, 5)) {
									case -1: {
										switch(strcmp(cmdtext[1], "aslay" , true, 5)) {
											case -1: {
												if(strcmp(cmdtext[1], "aslap", true, 5) == 0) {
													if(cmdtext[6] == '\0') return dcmd_aslap(playerid, "");
													if(cmdtext[6] == ' ') return dcmd_aslap(playerid, cmdtext[7]);
												}
											}
											case 0: {
												if(cmdtext[6] == '\0') return dcmd_aslay(playerid, "");
												if(cmdtext[6] == ' ') return dcmd_aslay(playerid, cmdtext[7]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "aspawn", true, 6) == 0) {
													if(cmdtext[7] == '\0') return dcmd_aspawn(playerid, "");
													if(cmdtext[7] == ' ') return dcmd_aspawn(playerid, cmdtext[8]);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[6] == '\0') return dcmd_aspec(playerid, "");
										if(cmdtext[6] == ' ') return dcmd_aspec(playerid, cmdtext[7]);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "atime" , true, 5)) {
											case -1: {
												if(strcmp(cmdtext[1], "asuspend", true, 8) == 0) {
													if(cmdtext[9] == '\0') return dcmd_asuspend(playerid, "");
													if(cmdtext[9] == ' ') return dcmd_asuspend(playerid, cmdtext[10]);
													switch(strcmp(cmdtext[9], "ip" , true, 2)) {
														case 0: {
															if(cmdtext[11] == '\0') return dcmd_asuspendip(playerid, "");
															if(cmdtext[11] == ' ') return dcmd_asuspendip(playerid, cmdtext[12]);
														}
														case 1: {
															if(strcmp(cmdtext[9], "name", true, 4) == 0) {
																if(cmdtext[13] == '\0') return dcmd_asuspendname(playerid, "");
																if(cmdtext[13] == ' ') return dcmd_asuspendname(playerid, cmdtext[14]);
															}
														}
													}
												}
											}
											case 0: {
												if(cmdtext[6] == '\0') return dcmd_atime(playerid, "");
												if(cmdtext[6] == ' ') return dcmd_atime(playerid, cmdtext[7]);
											}
											case 1: {
												if(strcmp(cmdtext[1], "aunban", true, 6) == 0) {
													if(cmdtext[7] == '\0') return dcmd_aunban(playerid, "");
													if(cmdtext[7] == ' ') return dcmd_aunban(playerid, cmdtext[8]);
												}
											}
										}
									}
								}
							}
							case 0: {
								if(cmdtext[10] == '\0') return dcmd_aundesync(playerid, "");
								if(cmdtext[10] == ' ') return dcmd_aundesync(playerid, cmdtext[11]);
							}
							case 1: {
								switch(strcmp(cmdtext[1], "aunmute" , true, 7)) {
									case -1: {
										switch(strcmp(cmdtext[1], "aunhide" , true)) {
											case -1: {
												if(strcmp(cmdtext[1], "aunfreeze", true, 9) == 0) {
													if(cmdtext[10] == '\0') return dcmd_aunfreeze(playerid, "");
													if(cmdtext[10] == ' ') return dcmd_aunfreeze(playerid, cmdtext[11]);
												}
											}
											case 0: {
												return cmd_aunhide(playerid);
											}
											case 1: {
												if(strcmp(cmdtext[1], "aunjail", true, 7) == 0) {
													if(cmdtext[8] == '\0') return dcmd_aunjail(playerid, "");
													if(cmdtext[8] == ' ') return dcmd_aunjail(playerid, cmdtext[9]);
												}
											}
										}
									}
									case 0: {
										if(cmdtext[8] == '\0') return dcmd_aunmute(playerid, "");
										if(cmdtext[8] == ' ') return dcmd_aunmute(playerid, cmdtext[9]);
									}
									case 1: {
										switch(strcmp(cmdtext[1], "aunsuspend" , true, 10)) {
											case -1: {
												if(strcmp(cmdtext[1], "aunrape", true, 7) == 0) {
													if(cmdtext[8] == '\0') return dcmd_aunrape(playerid, "");
													if(cmdtext[8] == ' ') return dcmd_aunrape(playerid, cmdtext[9]);
												}
											}
											case 0: {
												if(cmdtext[11] == '\0') return dcmd_aunsuspend(playerid, "");
												if(cmdtext[11] == ' ') return dcmd_aunsuspend(playerid, cmdtext[12]);
											}
											case 1: {
												switch(strcmp(cmdtext[1], "aweather" , true, 8)) {
													case 0: {
														if(cmdtext[9] == '\0') return dcmd_aweather(playerid, "");
														if(cmdtext[9] == ' ') return dcmd_aweather(playerid, cmdtext[10]);
													}
													case 1: {
														if(strcmp(cmdtext[1], "aworld", true, 6) == 0) {
															if(cmdtext[7] == '\0') return dcmd_aworld(playerid, "");
															if(cmdtext[7] == ' ') return dcmd_aworld(playerid, cmdtext[8]);
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return 0;
}

public OnVehicleSpawn(vehicleid)
{
	if(Bit_Get(gCreatedVehicles, vehicleid)) {
		if(gServerData[E_RESPAWN_VEHICLES] == false) {
			DestroyVehicle(vehicleid);
			Bit_Vet(gCreatedVehicles, vehicleid);
		} else if(gServerData[E_DEFAULT_NUM_PLATE][0] != '\0') {
			SetVehicleNumberPlate(vehicleid, ReturnNumPlateTxt(vehicleid));
		}
	}
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER) {
		if(newstate == PLAYER_STATE_ONFOOT) {
			LoopPlayers(i) {
				if(gPlayerData[i][E_SPECID] == playerid) {
					if(gPlayerData[i][E_SPECMODE] != 1) {
						PlayerSpectatePlayer(i, playerid);
					}
					#if SPEC_TXT_TIME > 0
						if(gPlayerData[i][E_SPECMODE] != 0) {
							gPlayerData[i][E_SPECMODE] = 0;
							ShowSpecTxt(i);
						}
					#endif
				}
			}
		}
	} else if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER) {
		new vehicleid = GetPlayerVehicleID(playerid);
		if(oldstate == PLAYER_STATE_ONFOOT) {
			LoopPlayers(i) {
				if(gPlayerData[i][E_SPECID] == playerid) {
					PlayerSpectateVehicle(i, vehicleid, SPECTATE_MODE_NORMAL);
				}
			}
		}
	}
	if(oldstate == PLAYER_STATE_SPECTATING) {
		if(gPlayerData[playerid][E_SPECTATING]) {
			gPlayerData[playerid][E_SPECTATING] = false;
			#if SPEC_TXT_TIME > 0
				if(gPlayerData[playerid][E_SPECTIMER]) {
					KillTimer(gPlayerData[playerid][E_SPECTIMER]);
					gPlayerData[playerid][E_SPECTIMER] = 0;
					TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECTXT]);
					gPlayerData[playerid][E_SPECTXT] = INVALID_TEXT_DRAW;
				}
			#endif
			if(gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID) {
				CallRemoteFunction("OnAdminSpectate", "iii", playerid, INVALID_PLAYER_ID, gPlayerData[playerid][E_SPECID]);
				gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;
			} else {
				CallRemoteFunction("OnAdminSpectate", "iii", playerid, INVALID_PLAYER_ID, FREE_SPECTATE_ID);
				SetCameraBehindPlayer(playerid);
			}
			if(gPlayerData[playerid][E_SPECHUD] != INVALID_TEXT_DRAW) {
				TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
				TextDrawDestroy(gPlayerData[playerid][E_SPECHUD]);
				gPlayerData[playerid][E_SPECHUD] = INVALID_TEXT_DRAW;
			}
			new bool:killme = true;
			LoopPlayers(i) {
				if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == INVALID_PLAYER_ID) {
					killme = false;
					break;
				}
			}
			if(killme && gSpecTimer) {
				KillTimer(gSpecTimer);
				gSpecTimer = 0;
			}
		}
	}
	if(newstate == PLAYER_STATE_SPECTATING) {
		for(new i; i < gMaxPlayers; i++) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				ObserverSwitchPlayer(i, gPlayerData[i][E_SPECID] + 1);
			}
		}
	}
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(gPlayerData[playerid][E_SPECTATING]) {
		if(IsKeyJustDown(KEY_SPEC_EXIT, newkeys, oldkeys)) {
			SpawnUsingData(playerid);
			return;
		}
		if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
 			if(IsKeyJustDown(KEY_WALK, newkeys, oldkeys)) {
				new target = INVALID_PLAYER_ID,
					Float:dist = INFINITY,
					Float:px,
					Float:py,
					Float:pz,
					Float:tmp;
				for(new i; i < gMaxPlayers; i++) {
					if(IsSpawned(i)) {
						GetPlayerPos(i, px, py, pz);
						tmp = floatpower(gPlayerData[playerid][E_CAM_POS_X] - px, 2.0) + floatpower(gPlayerData[playerid][E_CAM_POS_Y] - py, 2.0) + floatpower(gPlayerData[playerid][E_CAM_POS_Z] - pz, 2.0);
						if(tmp < dist) {
							target = i;
							dist = tmp;
						}
					}
				}
				if(target != INVALID_PLAYER_ID) {
					gPlayerData[playerid][E_SPECID] = target;
					gPlayerData[playerid][E_SPECMODE] = 0;
					SetPlayerSpectating(playerid, target);

					CallRemoteFunction("OnAdminSpectate", "iii", playerid, target, FREE_SPECTATE_ID);

					#if SPEC_TXT_TIME > 0
						ShowSpecTxt(playerid);
					#endif
				}
				return;
			}
			if(IsKeyJustDown(KEY_LOOK_BEHIND, newkeys, oldkeys)) {
				new Float:x_off,
					Float:y_off,
					Float:z_off;
				x_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatcos(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
				y_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatsin(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
				z_off = floatsin(gPlayerData[playerid][E_CAM_ROT_Z], degrees);


				gPlayerData[playerid][E_POSX] = gPlayerData[playerid][E_CAM_POS_X] + 4.0 * x_off;
				gPlayerData[playerid][E_POSY] = gPlayerData[playerid][E_CAM_POS_Y] + 4.0 * y_off;
				gPlayerData[playerid][E_POSZ] = gPlayerData[playerid][E_CAM_POS_Z] + 4.0 * z_off;
				gPlayerData[playerid][E_ROT] = gPlayerData[playerid][E_CAM_ROT_XY] - 90.0;
				SpawnUsingPosition(playerid);
				return;
			}
		} else {
			if(IsKeyJustDown(KEY_SPEC_LAST, newkeys, oldkeys)) {
				if(gPlayerData[playerid][E_LAST_SPECID] != INVALID_PLAYER_ID && gPlayerData[playerid][E_LAST_SPECID] != gPlayerData[playerid][E_SPECID] && IsSpawned(gPlayerData[playerid][E_LAST_SPECID])) {
					ObserverSwitchPlayer(playerid, gPlayerData[playerid][E_LAST_SPECID]);
				}
				return;
			}
			if(IsKeyJustDown(KEY_SPEC_LEFT, newkeys, oldkeys)) {
				ObserverSwitchPlayer(playerid, gPlayerData[playerid][E_SPECID] + 1);
				return;
			}
			if(IsKeyJustDown(KEY_SPEC_RIGHT, newkeys, oldkeys)) {
				ObserverSwitchPlayer(playerid, gPlayerData[playerid][E_SPECID] - 1);
				return;
			}
			if(IsKeyJustDown(KEY_SPEC_MODE, newkeys, oldkeys)) {
				if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID])) {
					gPlayerData[playerid][E_SPECMODE] = (gPlayerData[playerid][E_SPECMODE]+1) % 4;
					switch(gPlayerData[playerid][E_SPECMODE]) {
						case 1: PlayerSpectatePlayer(playerid, gPlayerData[playerid][E_SPECID]);
						case 2: PlayerSpectateVehicle(playerid, GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]), SPECTATE_MODE_SIDE);
						case 3: {
							// free spec
							CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, gPlayerData[playerid][E_SPECID]);
							PutPlayerIntoFreeSpec(playerid);
							gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;
						}
						default:PlayerSpectateVehicle(playerid, GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]));
					}
				} else {
					// free spec
					gPlayerData[playerid][E_SPECMODE] = 3;
					CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, gPlayerData[playerid][E_SPECID]);

					PutPlayerIntoFreeSpec(playerid);
					gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;
				}
				#if SPEC_TXT_TIME > 0
					ShowSpecTxt(playerid);
				#endif
				return;
			}
			if(gServerData[E_SPEC_HUD] && IsKeyJustDown(KEY_SPEC_HUD, newkeys, oldkeys)) {
				if(gPlayerData[playerid][E_SPECHUD] != INVALID_TEXT_DRAW) {
					TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
					TextDrawDestroy(gPlayerData[playerid][E_SPECHUD]);

					gPlayerData[playerid][E_SPECHUD] = INVALID_TEXT_DRAW;
				} else {
					gPlayerData[playerid][E_SPECHUD] = TextDrawCreate(400.0, 10.0, " ");

					TextDrawUseBox(gPlayerData[playerid][E_SPECHUD], 0);
					TextDrawSetOutline(gPlayerData[playerid][E_SPECHUD], 0);
					TextDrawAlignment(gPlayerData[playerid][E_SPECHUD], 2);
					TextDrawSetShadow(gPlayerData[playerid][E_SPECHUD], 1);
					TextDrawFont(gPlayerData[playerid][E_SPECHUD], 2);

					UpdatePlayerSpecHUD(playerid);

					TextDrawShowForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
				}
				return;
			}
		}
	}
	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(cmdchk(playerid, E_LOG_LEVEL)) {
			#if LOG_PAGES == 1
				if(IsKeyJustDown(KEY_LOG_DOWN, newkeys, oldkeys)) {
					if(gPlayerData[playerid][E_LOG_PAGE]) {
						for(new i; i < LOG_LINES; i++) {
							TextDrawHideForPlayer(playerid, gAdminLog[i][E_TEXTBOX_TEXT]);
						}
						gPlayerData[playerid][E_LOG_PAGE] = 0;
					} else {
						for(new i; i < LOG_LINES; i++) {
							TextDrawShowForPlayer(playerid, gAdminLog[i][E_TEXTBOX_TEXT]);
						}
						gPlayerData[playerid][E_LOG_PAGE] = 1;
					}
					return;
				}
			#else
				if(IsKeyJustDown(KEY_LOG_DOWN, newkeys, oldkeys) && gPlayerData[playerid][E_LOG_PAGE] > 0) {
					gPlayerData[playerid][E_LOG_PAGE]--;
					TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]]);
					new offset = gPlayerData[playerid][E_LOG_PAGE] * LOG_LINES;
					for(new i; i < LOG_LINES; i++) {
						TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					if(gPlayerData[playerid][E_LOG_PAGE] != 0) {
						offset -= LOG_LINES;
						for(new i; i < LOG_LINES; i++) {
							TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
						}
						TextDrawShowForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
					}
					return;
				}
				if(IsKeyJustDown(KEY_LOG_UP, newkeys, oldkeys) && gPlayerData[playerid][E_LOG_PAGE] < LOG_PAGES) {
					new offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES;
					if(gPlayerData[playerid][E_LOG_PAGE] != 0) {
						TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
						for(new i; i < LOG_LINES; i++) {
							TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
						}
					}
					offset += LOG_LINES;
					for(new i; i < LOG_LINES; i++) {
						TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					TextDrawShowForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]]);
					gPlayerData[playerid][E_LOG_PAGE]++;
					return;
				}
			#endif
		}
	#endif
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	if(IsSpawned(playerid)) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				SetPlayerInterior(i, newinteriorid);
			}
		}
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	gPlayerData[playerid][E_LAST_ACTIVE] = GetTickCount();
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_DESYNCED) return 0;
	return 1;
}

public OnRconCommand(cmd[])
{
	if(gServerData[E_RCON_LEVEL] > 0 && cmd[0] == 'a' || cmd[0] == 'A') {
		rcmd(acommands, cmd);
		rcmd(adesynced, cmd);
		rcmd(admins, cmd);
		rcmd(afrozen, cmd);
		rcmd(ajailed, cmd);
		rcmd(amuted, cmd);
		rcmd(apaused, cmd);
		rcmd(areloaddata, cmd);
		rcmd(asinfo, cmd);

		rdcmd(aalias, 6, cmd);
		rdcmd(aalias2, 7, cmd);
		rdcmd(aalias3, 7, cmd);
		rdcmd(abancheck, 9, cmd);
		rdcmd(ainfo, 5, cmd);
		rdcmd(asetping, 8, cmd);
	}
	return 0;
}


//-----------
// COMMANDS
//-----------

cmd_aautologin(const playerid)
{
	if(!gServerData[E_AUTO_LOGIN]) return 0;

	new pLEVEL, pIP[MAX_IP], pPW[33], hidden, manuallogin;
	if(GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, manuallogin)) {
		if(manuallogin) {
			SendClientMessage(playerid, COLOUR_ADMIN, "Automatic login has been enabled");
		} else {
			SendClientMessage(playerid, COLOUR_ADMIN, "Automatic login has been disabled");
		}
		#if LOG_LINES > 0 && LOG_PAGES > 0
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, !manuallogin, gPlayerData[playerid][E_LOG_PAGE]);
		#else
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, !manuallogin);
		#endif
	}
	return 1;
}

cmd_aclearbans(const playerid)
{
	if(LevelCheck(playerid, E_CLEARBANS_LEVEL)) return 1;

	if(fexist(BANFILE)) fremove(BANFILE);
	if(fexist(SUSPENDFILE)) fremove(SUSPENDFILE);
	CreateData();

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has cleared all bans", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessageToAll(COLOUR_PLAYER, "All bans have been cleared");
	} else {
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_aclearstatus(const playerid)
{
	if(LevelCheck(playerid, E_CLEARSTATUS_LEVEL)) return 1;

	if(fexist(STATUSFILE)) fremove(STATUSFILE);
	CreateData();

	LoopPlayers(i) {
		new oldstatus = gPlayerData[i][E_STATE];

		if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) {
			gPlayerData[i][E_STATE] &= ~ADMIN_STATE_MUTED;
			if(gPlayerData[i][E_UNMUTE]) {
				KillTimer(gPlayerData[i][E_UNMUTE]);
				gPlayerData[i][E_UNMUTE] = 0;
			}
			gPlayerData[i][E_MUTE_TIME] = 0;
		}
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) {
			TogglePlayerControllable(playerid, true);
			gPlayerData[i][E_STATE] &= ~ADMIN_STATE_FROZEN;
			if(gPlayerData[i][E_UNFREEZE]) {
				KillTimer(gPlayerData[i][E_UNFREEZE]);
				gPlayerData[i][E_UNFREEZE] = 0;
			}
			gPlayerData[i][E_FREEZE_TIME] = 0;
		}
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) {
			gPlayerData[i][E_STATE] &= ~ADMIN_STATE_JAILED;

			SetPlayerVirtualWorld(i, 0);
			alar_OnPlayerWorldChange(i, 0);
			SetPlayerInterior(i, 0);
			SpawnPlayer(i);
			if(gPlayerData[i][E_HEALTH]) SetTimerEx("alar_setspawndata", 500, 0, "i", i);

			if(gPlayerData[i][E_UNJAIL]) {
				KillTimer(gPlayerData[i][E_UNJAIL]);
				gPlayerData[i][E_UNJAIL] = 0;
			}
			gPlayerData[i][E_JAIL_TIME] = 0;
		}

		if(oldstatus != gPlayerData[i][E_STATE]) {
			CallRemoteFunction("OnAdminStateChange", "iii", i, gPlayerData[i][E_STATE], oldstatus);
			LoopPlayers(j) {
				if(gPlayerData[j][E_SPECID] == i) {
					UpdatePlayerSpecHUD(j);
				}
			}
		}

	}

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has unmuted/unfrozen/unjailed all players", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessageToAll(COLOUR_PLAYER, "All players have been unmuted/unfrozen/unjailed");
	} else {
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_aclr(const playerid)
{
	if(LevelCheck(playerid, E_CLR_LEVEL)) return 1;

	for(new i; i < 50; i++) SendClientMessageToAll(COLOUR_MSG, " ");

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s cleared the chat window", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessageToAll(COLOUR_PLAYER, "The chat window has been cleared");
	} else {
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_acommands(const playerid)
{
	if(playerid == INVALID_PLAYER_ID) {
		new msg[200] = "Admin Commands:";
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_ALIAS_LEVEL] && gServerData[E_ALIAS_LEVEL] > 0) {
			strcat(msg, "\n  aalias");
		}
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_ALIAS2_LEVEL] && gServerData[E_ALIAS2_LEVEL] > 0) {
			strcat(msg, "\n  aalias2");
		}
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_ALIAS3_LEVEL] && gServerData[E_ALIAS3_LEVEL] > 0) {
			strcat(msg, "\n  aalias3");
		}
		strcat(msg, "\n  abancheck\n  adesynced\n  admins\n  afrozen");
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_INFO_LEVEL] && gServerData[E_INFO_LEVEL] > 0) {
			strcat(msg, "\n  ainfo");
		}
		strcat(msg, "\n  ajailed\n  amuted\n  apaused");
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_RELOADDATA_LEVEL] && gServerData[E_RELOADDATA_LEVEL] > 0) {
			strcat(msg, "\n  areloaddata");
		}
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_SETPING_LEVEL] && gServerData[E_SETPING_LEVEL] > 0) {
			strcat(msg, "\n  asetping");
		}
		strcat(msg, "\n  asinfo");

		print(msg);
	} else if(gPlayerData[playerid][E_ADMINLEVEL] > 0 ) {
		new msg[900] = "ADMIN COMMANDS:";

		if(cmdchk(playerid, E_ALIAS_LEVEL)) strcat(msg, " /aalias");
		if(cmdchk(playerid, E_ALIAS2_LEVEL)) strcat(msg, " /aalias2");
		if(cmdchk(playerid, E_ALIAS3_LEVEL)) strcat(msg, " /aalias3");
		if(cmdchk(playerid, E_ARMOUR_LEVEL)) strcat(msg, " /aarmour");
		if(cmdchk(playerid, E_ARMOURALL_LEVEL)) strcat(msg, " /aarmourall");
		if(gServerData[E_AUTO_LOGIN]) strcat(msg, " /aautologin");
		if(cmdchk(playerid, E_BAN_LEVEL)) strcat(msg, " /aban");
		if(cmdchk(playerid, E_BANCHECK_LEVEL)) strcat(msg, " /abancheck");
		if(cmdchk(playerid, E_BAN_LEVEL)) strcat(msg, " /abanip /abanname");
		if(cmdchk(playerid, E_BRING_LEVEL)) strcat(msg, " /abring");
		if(cmdchk(playerid, E_CHANGEMODE_LEVEL)) strcat(msg, " /achangemode");
		if(cmdchk(playerid, E_CHANGEPW_LEVEL)) strcat(msg, " /achangepw");
		if(cmdchk(playerid, E_CLEARBANS_LEVEL)) strcat(msg, " /aclearbans");
		if(cmdchk(playerid, E_CLEARSTATUS_LEVEL)) strcat(msg, " /aclearstatus");
		if(cmdchk(playerid, E_CLR_LEVEL)) strcat(msg, " /aclr");
		if(cmdchk(playerid, E_CREATE_LEVEL)) strcat(msg, " /acreate");
		if(cmdchk(playerid, E_DESTROY_LEVEL)) strcat(msg, " /adestroy");
		if(cmdchk(playerid, E_DESYNC_LEVEL)) strcat(msg, " /adesync");
		strcat(msg, " /adesynced");
		if(cmdchk(playerid, E_DROP_LEVEL)) strcat(msg, " /adrop");
		strcat(msg, " /admins");
		if(cmdchk(playerid, E_EJECT_LEVEL)) strcat(msg, " /aeject");
		if(cmdchk(playerid, E_EJECTALL_LEVEL)) strcat(msg, " /aejectall");
		if(cmdchk(playerid, E_EXPLODE_LEVEL)) strcat(msg, " /aexplode");
		if(cmdchk(playerid, E_FLIP_LEVEL)) strcat(msg, " /aflip");
		if(cmdchk(playerid, E_FREEZE_LEVEL)) strcat(msg, " /afreeze");
		strcat(msg, " /afrozen");
		if(cmdchk(playerid, E_GIVEALLCASH_LEVEL)) strcat(msg, " /agiveallcash");
		if(cmdchk(playerid, E_GIVEALLWEAPON_LEVEL)) strcat(msg, " /agiveallweapon");
		if(cmdchk(playerid, E_GIVECASH_LEVEL)) strcat(msg, " /agivecash");
		if(cmdchk(playerid, E_GIVEWEAPON_LEVEL)) strcat(msg, " /agiveweapon");
		if(cmdchk(playerid, E_GOTO_LEVEL)) strcat(msg, " /agoto");
		if(cmdchk(playerid, E_GRAVITY_LEVEL)) strcat(msg, " /agravity");
		strcat(msg, " /ahelp");
		if(cmdchk(playerid, E_HEALALL_LEVEL)) strcat(msg, " /ahealall");
		if(cmdchk(playerid, E_HEAL_LEVEL)) strcat(msg, " /aheal");
		strcat(msg, " /ahide");
		if(cmdchk(playerid, E_IMITATE_LEVEL)) strcat(msg, " /aimitate");
		if(cmdchk(playerid, E_IMMUNE_LEVEL)) strcat(msg, " /aimmune");
		if(cmdchk(playerid, E_INFO_LEVEL)) strcat(msg, " /ainfo");
		if(cmdchk(playerid, E_INTERIOR_LEVEL)) strcat(msg, " /ainterior");
		if(cmdchk(playerid, E_IP_LEVEL)) strcat(msg, " /aip");
		if(cmdchk(playerid, E_JAIL_LEVEL)) strcat(msg, " /ajail");
		#if JOINMSG_LINES > 0
			strcat(msg, " /ajailed /ajoins");
		#else
			strcat(msg, " /ajailed");
		#endif
		if(cmdchk(playerid, E_KICK_LEVEL)) strcat(msg, " /akick");
		if(cmdchk(playerid, E_CHANGEMODE_LEVEL)) strcat(msg, " /alistmodes");
		strcat(msg, " /alogout");
		if(cmdchk(playerid, E_MSG_LEVEL)) strcat(msg, " /amsg");
		if(cmdchk(playerid, E_MUTE_LEVEL)) strcat(msg, " /amute");
		strcat(msg, " /amuted");
		if(gServerData[E_ADMIN_PMS]) strcat(msg, " /apm");
		if(cmdchk(playerid, E_PUNCH_LEVEL)) strcat(msg, " /apunch");
		if(cmdchk(playerid, E_REPAIR_LEVEL)) strcat(msg, " /ar");
		if(cmdchk(playerid, E_RAPE_LEVEL)) strcat(msg, " /arape");
		if(cmdchk(playerid, E_RELOADDATA_LEVEL)) strcat(msg, " /areloadata");
		if(cmdchk(playerid, E_REMALLCASH_LEVEL)) strcat(msg, " /aremallcash");
		if(cmdchk(playerid, E_REMALLWEAPONS_LEVEL)) strcat(msg, " /aremallweapons");
		if(cmdchk(playerid, E_REMCASH_LEVEL)) strcat(msg, " /aremcash");
		if(cmdchk(playerid, E_REMWEAPONS_LEVEL)) strcat(msg, " /aremweapons");
		if(cmdchk(playerid, E_REPAIR_LEVEL)) strcat(msg, " /arepair");
		if(cmdchk(playerid, E_RESPAWN_LEVEL)) strcat(msg, " /arespawn");
		if(cmdchk(playerid, E_SAY_LEVEL)) strcat(msg, " /asay");
		if(cmdchk(playerid, E_SERVERNAME_LEVEL)) strcat(msg, " /aservername");
		if(cmdchk(playerid, E_SELECT_LEVEL)) strcat(msg, " /aselect");
		if(cmdchk(playerid, E_SETADMIN_LEVEL)) strcat(msg, " /asetadmin");
		if(cmdchk(playerid, E_SETNAME_LEVEL)) strcat(msg, " /asetname");
		if(cmdchk(playerid, E_SETPING_LEVEL)) strcat(msg, " /asetping");
		if(cmdchk(playerid, E_SHOUT_LEVEL)) strcat(msg, " /ashout");
		strcat(msg, " /asinfo");
		if(cmdchk(playerid, E_SLAP_LEVEL)) strcat(msg, " /aslap");
		if(cmdchk(playerid, E_SLAY_LEVEL)) strcat(msg, " /aslay");
		if(cmdchk(playerid, E_SPAWN_LEVEL)) strcat(msg, " /aspawn");
		if(cmdchk(playerid, E_SPEC_LEVEL)) strcat(msg, " /aspec");
		if(cmdchk(playerid, E_SUSPEND_LEVEL)) strcat(msg, " /asuspend /asuspendip /asuspendname");
		if(cmdchk(playerid, E_TIME_LEVEL)) strcat(msg, " /atime");
		if(cmdchk(playerid, E_UNBAN_LEVEL)) strcat(msg, " /aunban");
		if(cmdchk(playerid, E_UNDESYNC_LEVEL)) strcat(msg, " /aundesync");
		if(cmdchk(playerid, E_UNFREEZE_LEVEL)) strcat(msg, " /aunfreeze");
		strcat(msg, " /aunhide");
		if(cmdchk(playerid, E_UNJAIL_LEVEL)) strcat(msg, " /aunjail");
		if(cmdchk(playerid, E_UNMUTE_LEVEL)) strcat(msg, " /aunmute");
		if(cmdchk(playerid, E_UNRAPE_LEVEL)) strcat(msg, " /aunrape");
		if(cmdchk(playerid, E_UNSUSPEND_LEVEL)) strcat(msg, " /aunsuspend");
		if(cmdchk(playerid, E_WEATHER_LEVEL)) strcat(msg, " /aweather");
		if(cmdchk(playerid, E_WORLD_LEVEL)) strcat(msg, " /aworld");
		SendWrappedMessageToPlayer(playerid, COLOUR_HELP, msg);
	} else {
		new string[MAX_INPUT] = "ADMIN COMMANDS: /adesynced /admins /afrozen /ajailed";
		#if JOINMSG_LINES > 0
			if(gServerData[E_JOIN_MSGS]) strcat(string, " /ajoins");
		#endif
		strcat(string, " /alogin");
		if(gServerData[E_ALIAS_ADMINS]) strcat(string, " /aloginas");
		strcat(string, " /amuted");
		if(gServerData[E_ADMIN_PMS]) strcat(string, " /apm");
		strcat(string, " /asinfo");
		SendWrappedMessageToPlayer(playerid, COLOUR_HELP, string);
	}
	return 1;
}

cmd_adesynced(const playerid)
{
	new msg[512] = "Desynced players:";
	LoopPlayers(i) {
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_DESYNCED) {
			new time = gPlayerData[i][E_DESYNC_TIME] - gettime();
			if(time > 3600) {
				new hours = time / 3600,
					minutes = (time - hours * 3600) / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i:%02i)", msg, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
			} else if(time > 60) {
				new minutes = time / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i)", msg, ReturnPlayerName(i), minutes, time - minutes * 60);
			} else if(time > 0) {
				format(msg, sizeof(msg), "%s %s(%i)", msg, ReturnPlayerName(i), time);
			} else {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(i));
			}
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		print(msg);
	} else {
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_admins(const playerid)
{
	new msg[512] = "Admins online:";
	LoopPlayers(i) {
		if(gPlayerData[i][E_ADMINLEVEL] > 0) {
			if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
				new pname[MAX_PLAYER_NAME];
				GetPlayerName(i, pname, sizeof(pname));
				format(msg, sizeof(msg), "%s %s%s%s%s(%i)", msg, pname, gPlayerData[i][E_STATE] & ADMIN_STATE_HIDDEN ? ("°") : (""), IsPlayerAdmin(i) ? ("®") : (""), strcmp(pname, gPlayerData[i][E_NAME], true) ? ("©") : (""), gPlayerData[i][E_ADMINLEVEL]);
			} else if(~gPlayerData[i][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "%s %s%s(%i)", msg, ReturnPlayerName(i), IsPlayerAdmin(i) ? ("®") : (""), gPlayerData[i][E_ADMINLEVEL]);
			}
		} else if(IsPlayerAdmin(i)) {
			format(msg, sizeof(msg), "%s %s®", msg, ReturnPlayerName(i));
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		print(msg);
	} else {
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_aejectall(const playerid)
{
	if(LevelCheck(playerid, E_EJECTALL_LEVEL)) return 1;

	new msg[MAX_INPUT], num_ejected, num_notejected;

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		msg = "You have been ejected";
	} else {
		format(msg, sizeof(msg), "%s has ejected you", ReturnPlayerName(playerid));
	}

	LoopPlayers(i) {
		if((gPlayerData[i][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (i != playerid)) {
			if(GetPlayerSpecialAction(i) == SPECIAL_ACTION_USEJETPACK || IsPlayerInAnyVehicle(i)) num_notejected++;
		} else {
			if(GetPlayerSpecialAction(i) == SPECIAL_ACTION_USEJETPACK) {
				if(i != playerid) SendClientMessage(i, COLOUR_WARNING, msg);
				ClearAnimations(i);
				num_ejected++;
			} else if(IsPlayerInAnyVehicle(i)){
				if(i != playerid) SendClientMessage(i, COLOUR_WARNING, msg);
				RemovePlayerFromVehicle(i);
				num_ejected++;
			}
		}
	}

	if(num_ejected == 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "There is noone to eject");
		return 1;
	}

	if(num_notejected > 0) format(msg, sizeof(msg), "You have ejected %i players (%i players not ejected)", num_ejected, num_notejected);
	else format(msg, sizeof(msg), "You have ejected %i players", num_ejected);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has ejected everyone", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

cmd_afrozen(const playerid)
{
	new msg[512]="Frozen players:";
	LoopPlayers(i) {
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) {
			new time = gPlayerData[i][E_FREEZE_TIME] - gettime();
			if(time > 3600) {
				new hours = time / 3600,
					minutes = (time - hours * 3600) / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i:%02i)", msg, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
			} else if(time > 60) {
				new minutes = time / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i)", msg, ReturnPlayerName(i), minutes, time - minutes * 60);
			} else if(time > 0) {
				format(msg, sizeof(msg), "%s %s(%i)", msg, ReturnPlayerName(i), time);
			} else {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(i));
			}
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		print(msg);
	} else {
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_ahelp(const playerid)
{
	SendClientMessage(playerid, COLOUR_HELP, "For a complete command list type /acommands");
	SendClientMessage(playerid, COLOUR_HELP, "A playerid or part of a player's name may be used for commands with [player] as a parameter");
	if(gServerData[E_CHAT_PREFIX][0] != '\0') {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "Admin chat can be used by typing \"%s\" infront of your text", gServerData[E_CHAT_PREFIX]);
		SendClientMessage(playerid, COLOUR_HELP, msg);
	}
	if(cmdchk(playerid, E_SPEC_LEVEL)) {
		SendClientMessage(playerid, COLOUR_HELP, "While spectating, you can switch players with " NAME_SPEC_LEFT " and " NAME_SPEC_RIGHT " keys, change mode with the " NAME_SPEC_MODE " key and exit with the " NAME_SPEC_EXIT " key");
	}
	if(cmdchk(playerid, E_TELE_LEVEL)) {
		SendClientMessage(playerid, COLOUR_HELP, "You can teleport to anywhere by right clicking the ingame map");
	}
	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(cmdchk(playerid, E_LOG_LEVEL)) {
			#if LOG_PAGES == 1
				SendClientMessage(playerid, COLOUR_HELP, "By pressing the " NAME_LOG_DOWN " key, you can view the recent admin activity");
			#else
				SendClientMessage(playerid, COLOUR_HELP, "By pressing the " NAME_LOG_DOWN " and " NAME_LOG_UP " keys, you can view the recent admin activity");
			#endif
		}
	#endif
	return 1;
}

cmd_ahide(const playerid)
{
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are already hidden from the admin list");
		return 1;
	}
	new pLEVEL, pIP[MAX_IP], pPW[33], hidden, manuallogin;
	if(GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, manuallogin)) {
		#if LOG_LINES > 0 && LOG_PAGES > 0
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, ADMIN_STATE_HIDDEN, manuallogin, gPlayerData[playerid][E_LOG_PAGE]);
		#else
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, ADMIN_STATE_HIDDEN, manuallogin);
		#endif
	}
	gPlayerData[playerid][E_STATE] |= ADMIN_STATE_HIDDEN;
	SendClientMessage(playerid, COLOUR_ADMIN, "You have been hidden from the admin list");
	CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] & ~ADMIN_STATE_HIDDEN);
	return 1;
}

cmd_ajailed(const playerid)
{
	new msg[512] = "Jailed players:";
	LoopPlayers(i) {
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) {
			new time = gPlayerData[i][E_JAIL_TIME] - gettime();
			if(time > 3600) {
				new hours = time / 3600,
					minutes = (time - hours * 3600) / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i:%02i)", msg, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
			} else if(time > 60) {
				new minutes = time / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i)", msg, ReturnPlayerName(i), minutes, time - minutes * 60);
			} else if(time > 0) {
				format(msg, sizeof(msg), "%s %s(%i)", msg, ReturnPlayerName(i), time);
			} else {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(i));
			}
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		print(msg);
	} else {
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

stock cmd_ajoins(const playerid)
{
	if(!gServerData[E_JOIN_MSGS]) return 0;
	new filename[MAX_STRING];
	format(filename, sizeof(filename), PLAYERFOLDER "settings_%s.ini", ReturnPlayerName(playerid));
	dini_Create(filename);
	if(!gPlayerData[playerid][E_JOINTEXT]) {
		for(new i; i < sizeof(gJoinMessage); i++) {
			TextDrawHideForPlayer(playerid, gJoinMessage[i][E_TEXTBOX_TEXT]);
		}
		SendClientMessage(playerid, COLOUR_PLAYER, "Connect/Disconnect messages will now be shown in chat");
	} else {
		for(new i; i < sizeof(gJoinMessage); i++) {
			TextDrawShowForPlayer(playerid, gJoinMessage[i][E_TEXTBOX_TEXT]);
		}
		SendClientMessage(playerid, COLOUR_PLAYER, "Connect/Disconnect messages will now be shown outside of chat");
	}
	gPlayerData[playerid][E_JOINTEXT] = !gPlayerData[playerid][E_JOINTEXT];
	dini_BoolSet(filename, "JoinText", gPlayerData[playerid][E_JOINTEXT]);
	return 1;
}

cmd_alistmodes(const playerid)
{
	if(LevelCheck(playerid, E_CHANGEMODE_LEVEL)) return 1;

	if(!fexist(MODESFILE)) {
		SendClientMessage(playerid, COLOUR_WARNING, "No gamemodes are listed in " MODESFILE);
		return 1;
	}

	new File:handle = fopen(MODESFILE, io_read), msg[MAX_STRING] = "Gamemodes:", line[MAX_STRING];
	while(fread(handle, line)) {
		if(line[0] != '\0' && line[0] != '#') {
			StripNewLine(line);
			format(msg, sizeof(msg), "%s  %s", msg, line);
		}
	}
	fclose(handle);
	if(msg[10] == '\0') {
		SendClientMessage(playerid, COLOUR_WARNING, "No gamemodes are listed in " MODESFILE);
		return 1;
	}

	SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
	return 1;
}

cmd_alogout(const playerid)
{
	new pname[MAX_PLAYER_NAME], pLEVEL, pIP[MAX_IP], pPW[33], hidden, manuallogin;
	GetPlayerName(playerid, pname, sizeof(pname));

	if(!GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, manuallogin)) {	// Admin account not found
		SendClientMessage(playerid, COLOUR_WARNING, "You have been logged out");
	} else if(pLEVEL == 0 || pIP[0] == '\0' || pPW[0] == '\0') {	// Invalid account info
		dini_Unset(USERFILE, gPlayerData[playerid][E_NAME]);
		SendClientMessage(playerid, COLOUR_WARNING, "You have been logged out");
	} else if(!manuallogin) {
		SendClientMessage(playerid, COLOUR_PLAYER, "You have been logged out");
		#if LOG_LINES > 0 && LOG_PAGES > 0
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, "Blank", pPW, gPlayerData[playerid][E_STATE], manuallogin, gPlayerData[playerid][E_LOG_PAGE]);
		#else
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, "Blank", pPW, gPlayerData[playerid][E_STATE], manuallogin);
		#endif
	}

	Bit_Set(g_bitAdmins, playerid, 0);
	gPlayerData[playerid][E_ADMINLEVEL] = 0;
	gPlayerData[playerid][E_NAME][0] = '\0';
	gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_HIDDEN;

	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(gPlayerData[playerid][E_LOG_PAGE]) {
			#if LOG_PAGES > 1
				TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
			#endif
			for(new i, offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
				TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
			}
			gPlayerData[playerid][E_LOG_PAGE] = 0;
		}
	#endif
	if(gPlayerData[playerid][E_SPECTATING]) {
		SpawnUsingData(playerid);
	}
	AllowPlayerTeleport(playerid, false);

	new msg[MAX_PLAYER_NAME + 20];
	format(msg, sizeof(msg), "%s has logged out", pname);

	if(gServerData[E_LOG_LOGINS]) {
		AddLogString(msg);
	} else {
		LoopPlayers(i) {
			if(gPlayerData[i][E_ADMINLEVEL] > 0 && i != playerid) {
				SendClientMessage(i, COLOUR_ADMIN, msg);
			}
		}
	}
	LogAction(msg);

	CallRemoteFunction("OnAdminLogout", "i", playerid);
	return 1;
}

cmd_amuted(const playerid)
{
	new msg[512] = "Muted players:";
	LoopPlayers(i) {
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) {
			new time = gPlayerData[i][E_MUTE_TIME] - gettime();
			if(time > 3600) {
				new hours = time / 3600,
					minutes = (time - hours * 3600) / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i:%02i)", msg, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
			} else if(time > 60) {
				new minutes = time / 60;
				format(msg, sizeof(msg), "%s %s(%i:%02i)", msg, ReturnPlayerName(i), minutes, time - minutes * 60);
			} else if(time > 0) {
				format(msg, sizeof(msg), "%s %s(%i)", msg, ReturnPlayerName(i), time);
			} else {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(i));
			}
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		print(msg);
	} else {
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_apaused(const playerid)
{
	new msg[512] = "Paused players:",
		tick = GetTickCount();
	LoopPlayers(i) {
		if(!IsSpawned(i)) continue;		// Goddamn it sa-mp...
		new time = (tick - gPlayerData[i][E_LAST_ACTIVE]) / 1000;
		if(time > 3600) {
			new hours = time / 3600,
				minutes = (time - hours * 3600) / 60;
			format(msg, sizeof(msg), "%s %s(%i:%02i:%02i)", msg, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
		} else if(time > 60) {
			new minutes = time / 60;
			format(msg, sizeof(msg), "%s %s(%i:%02i)", msg, ReturnPlayerName(i), minutes, time - minutes * 60);
		} else if(time > 1){
			format(msg, sizeof(msg), "%s %s(%i)", msg, ReturnPlayerName(i), time);
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		print(msg);
	} else {
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_areloaddata(const playerid)
{
	if(LevelCheck(playerid, E_RELOADDATA_LEVEL)) return 1;

	new msg[MAX_INPUT] = "Server data reloaded by the console";
	if(playerid != INVALID_PLAYER_ID) {
		format(msg, sizeof(msg), "%s has reloaded the server data", ReturnPlayerName(playerid));
	}

	LoadData();

	LoopPlayers(i) {
		AllowPlayerTeleport(i, cmdchk(i, E_TELE_LEVEL));

		if(!cmdchk(i, E_SPEC_LEVEL) && gPlayerData[i][E_SPECTATING]) {
			SpawnUsingData(i);
		}

		#if LOG_LINES > 0 && LOG_PAGES > 0
			if(gPlayerData[i][E_LOG_PAGE] && !cmdchk(i, E_LOG_LEVEL)) {
				#if LOG_PAGES > 1
					TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
				#endif
				for(new j, offset = (gPlayerData[i][E_LOG_PAGE] - 1) * LOG_LINES; j < LOG_LINES; j++) {
					TextDrawHideForPlayer(i, gAdminLog[j + offset][E_TEXTBOX_TEXT]);
				}
				gPlayerData[i][E_LOG_PAGE] = 0;
			}
		#endif

		#if JOINMSG_LINES > 0
			if(!gPlayerData[i][E_JOINTEXT]) {
				if(gServerData[E_JOIN_MSGS]) {
					for(new j; j < sizeof(gJoinMessage); j++) {
						TextDrawHideForPlayer(i, gJoinMessage[j][E_TEXTBOX_TEXT]);
					}
				} else {
					for(new j; j < sizeof(gJoinMessage); j++) {
						TextDrawShowForPlayer(i, gJoinMessage[j][E_TEXTBOX_TEXT]);
					}
				}
			}
		#endif

		if(gPlayerData[i][E_SPECHUD] != INVALID_TEXT_DRAW && !gServerData[E_SPEC_HUD]) {
			TextDrawHideForPlayer(i, gPlayerData[i][E_SPECHUD]);
			TextDrawDestroy(gPlayerData[i][E_SPECHUD]);

			gPlayerData[i][E_SPECHUD] = INVALID_TEXT_DRAW;
		}

		if(gPlayerData[i][E_ADMINLEVEL] > 0) {
			SendClientMessage(i, COLOUR_ADMIN, msg);
		}
	}

	LogAction(msg);
	AddLogString(msg);
	return 1;
}

cmd_aremallcash(const playerid)
{
	if(LevelCheck(playerid, E_REMALLCASH_LEVEL)) return 1;

	LoopPlayers(i) {
		ResetPlayerMoney(i);
	}

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has bankrupted everyone", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessageToAll(COLOUR_PLAYER, "Everyone has been bankrupted");
	} else {
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_aremallweapons(const playerid)
{
	if(LevelCheck(playerid, E_REMALLWEAPONS_LEVEL)) return 1;

	LoopPlayers(i) {
		ResetPlayerWeapons(i);
	}

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has disarmed everyone", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessageToAll(COLOUR_PLAYER, "Everyone has been disarmed");
	} else {
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

cmd_asinfo(const playerid)
{
	new msg[MAX_INPUT],
		numplayers,
		numadmins,
		numdesynced,
		numfrozen,
		numjailed,
		nummuted;

	LoopPlayers(i) {
		numplayers++;
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) {
			nummuted++;
		}
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) {
			numfrozen++;
		}
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) {
			numjailed++;
		}
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_DESYNCED) {
			numdesynced++;
		}
		if(gPlayerData[i][E_ADMINLEVEL] > 0 && (~gPlayerData[i][E_STATE] & ADMIN_STATE_HIDDEN || playerid == INVALID_PLAYER_ID || gPlayerData[playerid][E_ADMINLEVEL] > 0)) {
			numadmins++;
		}
	}

	format(msg, sizeof(msg), "Server: %s  Website: %s  Gamemode: %s", ReturnServerVar("hostname"), ReturnServerVar("weburl"), ReturnServerVar("gamemodetext"));
	SendMessage(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	format(msg, sizeof(msg), "Players: %i/%i  Admins: %i  Desynced: %i  Frozen: %i  Jailed: %i  Muted: %i", numplayers, gMaxPlayers, numadmins, numdesynced, numfrozen, numjailed, nummuted);
	SendMessage(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	if(playerid == INVALID_PLAYER_ID || gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		new numpaused,
			tick = GetTickCount();

		LoopPlayers(i) {
			if(IsSpawned(i) && tick - gPlayerData[i][E_LAST_ACTIVE] > 1000) {
				numpaused++;
			}
		}
		format(msg, sizeof(msg), "Alar Version: " #ALAR_VERSION "  Admin Vehicles: %i  Paused Players: %i", Bit_GetCount(gCreatedVehicles), numpaused);
		SendMessage(playerid, COLOUR_ADMIN, msg);
	}
	format(msg, sizeof(msg), "Time: %s  Gravity: %s  Weather: %i  Max Ping: %i", ReturnServerVar("worldtime"), ReturnServerVar("gravity"), ReturnServerVar("weather"), gServerData[E_MAX_PING]);
	SendMessage(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	return 1;
}

cmd_aunhide(const playerid)
{
	if(~gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are not hidden from the admin list");
		return 1;
	}
	new pLEVEL, pIP[MAX_IP], pPW[33], hidden, manuallogin;
	if(GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, manuallogin)) {
		#if LOG_LINES > 0 && LOG_PAGES > 0
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, ~ADMIN_STATE_HIDDEN, manuallogin, gPlayerData[playerid][E_LOG_PAGE]);
		#else
			SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, ~ADMIN_STATE_HIDDEN, manuallogin);
		#endif
	}
	gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_HIDDEN;
	SendClientMessage(playerid, COLOUR_ADMIN, "You have been unhidden from the admin list");
	CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_HIDDEN);
	return 1;
}


dcmd_aalias(const playerid, params[])
{
	if(LevelCheck(playerid, E_ALIAS_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias [player] or [player name] or [IP]");
		return 1;
	}

	new pIP[MAX_IP], pid = INVALID_PLAYER_ID, line[MAX_STRING];
	if(!IPisvalid(params, false)) {
		pid = FindPlayer(params);
		if(pid == INVALID_PLAYER_ID) {
			new file[MAX_STRING];
			format(file, sizeof(file), ALIASFOLDER "name_%c.ini", toupper(params[0]));
			if(dini_Get(file, params, line)) {
				new space;
				for(new idx; line[idx] != '\0'; idx++) {
					if(line[idx] == ' ') space = idx + 1;
				}
				strcpy(pIP, line[space]);
			} else {
				SendMessage(playerid, COLOUR_WARNING, "Player not found");
				return 1;
			}
		} else {
			GetPlayerIp(pid, pIP, sizeof(pIP));
		}
	} else {
		strcpy(pIP, params);
	}

	new string[MAX_STRING + MAX_PLAYER_NAME + 20];
	format(string, sizeof(string), ALIASFOLDER "ip_%i.ini", strval(pIP));
	if(!dini_Get(string, pIP, line)) {
		if(pid == INVALID_PLAYER_ID) format(string, sizeof(string), "No aliases found for %s", params);
		else format(string, sizeof(string), "No aliases found for %s", ReturnPlayerName(pid));
		SendMessage(playerid, COLOUR_WARNING, string);
		return 1;
	}

	if(pid == INVALID_PLAYER_ID) format(string, sizeof(string), "%s's Aliases: %s", params, line);
	else format(string, sizeof(string), "%s's Aliases: %s", ReturnPlayerName(pid), line);

	if(playerid == INVALID_PLAYER_ID) {
		print(string);
	} else {
		SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
	}
	return 1;
}

dcmd_aalias2(const playerid, params[])
{
	if(LevelCheck(playerid, E_ALIAS2_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias2 [player] or [player name] or [IP]");
		return 1;
	}

	new pIP[MAX_IP], pid = INVALID_PLAYER_ID, line[MAX_STRING];
	if(!IPisvalid(params, false)) {
		pid = FindPlayer(params);
		if(pid == INVALID_PLAYER_ID) {
			new file[MAX_STRING];
			format(file, sizeof(file), ALIASFOLDER "name_%c.ini", toupper(params[0]));
			if(dini_Get(file, params, line)) {
				new space;
				for(new idx; line[idx] != '\0'; idx++) {
					if(line[idx] == ' ') space = idx + 1;
				}
				strcpy(pIP, line[space]);
			} else {
				SendMessage(playerid, COLOUR_WARNING, "Player not found");
				return 1;
			}
		} else {
			GetPlayerIp(pid, pIP, sizeof(pIP));
		}
	} else {
		strcpy(pIP, params);
	}

	for(new i, bool:j; (pIP[i] != '\0') && (i + 4 < sizeof(pIP)); i++) {
		if(pIP[i] == '.') {
			if(j) {
				pIP[i+1] = '*';
				pIP[i+2] = '.';
				pIP[i+3] = '*';
				pIP[i+4] = '\0';
				break;
			} else {
				j = true;
			}
		}
	}

	new file[MAX_STRING], adata[512];
	format(file, sizeof(file), ALIASFOLDER "ip_%i.ini", strval(pIP));
	new File:handle = fopen(file, io_read);
	if(handle) {
		while(fread(handle, line)) {
			if(line[0] == '#') continue;
			new pos = strfind(line, "=", false);
			if(pos != -1) {
				line[pos] = '\0';
				if(IPcompare(pIP, line)) {
					StripNewLine(line[pos + 1]);
					strcatnodup(adata, line[pos + 1]);
					if(adata[sizeof(adata) - 2] != '\0') break;
				}
			}
		}
		fclose(handle);
	}

	if(adata[0] == '\0') {
		if(pid == INVALID_PLAYER_ID) format(line, sizeof(line), "No aliases found for %s", params);
		else format(line, sizeof(line), "No aliases found for %s", ReturnPlayerName(pid));
		SendMessage(playerid, COLOUR_WARNING, line);
		return 1;
	}

	format(adata, sizeof(adata), "%s's Aliases: %s", pIP, adata);
	if(playerid == INVALID_PLAYER_ID) {
		print(adata);
	} else {
		SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, adata);
	}
	return 1;
}

dcmd_aalias3(const playerid, params[])
{
	if(LevelCheck(playerid, E_ALIAS3_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias3 [player] or [player name]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME],
		pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		if(!isValidName(params)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
		strcpy(pname, params);
	} else {
		GetPlayerName(pid, pname, sizeof(pname));
	}

	new string[MAX_STRING], ips[MAX_STRING];
	format(string, sizeof(string), ALIASFOLDER "name_%c.ini", toupper(pname[0]));
	if(!dini_Get(string, pname, ips)) {
		if(pid == INVALID_PLAYER_ID) format(string, sizeof(string), "No IPs found for %s", params);
		else format(string, sizeof(string), "No IPs found for %s", ReturnPlayerName(pid));
		SendMessage(playerid, COLOUR_WARNING, string);
		return 1;
	}

	new adata[512];
	for(new i=1; i < 255; i++) {
		format(string, sizeof(string), " %i", i);
		if(strval(ips) == i || strfind(ips, string) != -1) {
			new line[MAX_STRING];
			format(string, sizeof(string), ALIASFOLDER "ip_%i.ini", i);
			new File:handle = fopen(string, io_read);
			if(handle) {
				while(fread(handle, line)) {
					if(line[0] == '#') continue;
					new pos = strfind(line, "=", false);
					if(pos != -1) {
						line[pos] = '\0';
						if(strfindword(ips, line, true) != -1) {
							StripNewLine(line[pos + 1]);
							strcatnodup(adata, line[pos + 1]);
							if(adata[sizeof(adata) - 2] != '\0') break;
						}
					}
				}
				fclose(handle);
			}
		}
	}

	if(adata[0] == '\0') {
		if(pid == INVALID_PLAYER_ID) format(string, sizeof(string), "No aliases found for %s", params);
		else format(string, sizeof(string), "No aliases found for %s", ReturnPlayerName(pid));
		SendMessage(playerid, COLOUR_WARNING, string);
		return 1;
	}

	format(adata, sizeof(adata), "%s's Aliases:%s", pname, adata);
	if(playerid == INVALID_PLAYER_ID) {
		print(adata);
	} else {
		SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, adata);
	}
	return 1;
}

dcmd_aarmour(const playerid, params[])
{
	if(LevelCheck(playerid, E_ARMOUR_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aarmour [player] (armour)");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], Float:armour;
	if(sscanf(params, "sf", pname, sizeof(pname), armour)) armour = 100.0;

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	if(armour >= 100.0 || armour < 0.0) {
		SetPlayerArmour(pid, 100.0);
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_ADMIN, "You have given yourself armour");
			format(msg, sizeof(msg), "%s has given themself armour", ReturnPlayerName(playerid));
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_PLAYER, "You have been given armour");
			} else {
				format(msg, sizeof(msg), "%s has given you armour", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_PLAYER, msg);
			}
			format(msg, sizeof(msg), "%s has been given armour", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has given %s armour", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		}
	} else if(armour <= 1.0) {
		GetPlayerArmour(pid, armour);
		if(armour == 0.0) {
			if(pid == playerid) {
				SendClientMessage(playerid, COLOUR_WARNING, "You do not have any armour");
			} else {
				format(msg, sizeof(msg), "%s has no armour", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}

		SetPlayerArmour(pid, 0.0);
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_ADMIN, "You have removed your armour");
			format(msg, sizeof(msg), "%s has removed their armour", ReturnPlayerName(playerid));
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_PLAYER, "Your armour has been removed");
			} else {
				format(msg, sizeof(msg), "%s has removed your armour", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_PLAYER, msg);
			}
			format(msg, sizeof(msg), "%s's armour has been removed", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has removed %s's armour", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		}
	} else {
		SetPlayerArmour(pid, armour);
		if(pid == playerid) {
			format(msg, sizeof(msg), "You have set your armour to %0.1f", armour);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set their armour to %0.1f", ReturnPlayerName(playerid), armour);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "Your armour has been set to %0.1f", armour);
			} else {
				format(msg, sizeof(msg), "%s has set your armour to %0.1f", ReturnPlayerName(playerid), armour);
			}
			SendClientMessage(pid, COLOUR_PLAYER, msg);
			format(msg, sizeof(msg), "%s's armour has been set to %0.1f", ReturnPlayerName(pid), armour);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set %s's armour to %0.1f", ReturnPlayerName(playerid), ReturnPlayerName(pid), armour);
		}
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aarmourall(const playerid, params[])
{
	if(LevelCheck(playerid, E_ARMOURALL_LEVEL)) return 1;

	new Float:armour;
	if(!isFloat(params)) {
		armour = 100.0;
	} else {
		armour = floatstr(params);
	}

	new msg[MAX_INPUT];
	if(armour < 0.0 || armour >= 100.0) {
		LoopPlayers(i) {
			SetPlayerArmour(i, 100.0);
		}
		format(msg, sizeof(msg), "%s has given everyone armour", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessageToAll(COLOUR_PLAYER, "Everyone has been given armour");
		} else {
			SendClientMessageToAll(COLOUR_PLAYER, msg);
		}
	} else if(armour <= 1.0) {
		LoopPlayers(i) {
			SetPlayerArmour(i, 0.0);
		}
		format(msg, sizeof(msg), "%s has removed everyone's armour", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessageToAll(COLOUR_PLAYER, "Everyone's armour has been removed");
		} else {
			SendClientMessageToAll(COLOUR_PLAYER, msg);
		}
	} else {
		LoopPlayers(i) {
			SetPlayerArmour(i, armour);
		}
		format(msg, sizeof(msg), "%s has set everyone's armour to %0.1f", ReturnPlayerName(playerid), armour);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "Everyone's armour has been set to %0.1f", armour);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

dcmd_aban(const playerid, params[])
{
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aban [player] (reason)");
		return 1;
	}

	new breason[MAX_REASON] = "No reason", bname[MAX_PLAYER_NAME];
	sscanf(params, "ss", bname, sizeof(bname), breason, sizeof(breason));

	new pid = FindPlayer(bname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot ban yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot ban level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new bIP[MAX_IP],
		pname[MAX_PLAYER_NAME];
	GetPlayerIp(pid, bIP, sizeof(bIP));
	GetPlayerName(pid, pname, sizeof(pname));

	new File:handle=fopen(USERFILE, io_read);
	if (handle) {
		new pLEVEL, pIP[MAX_IP];
		while (fread(handle, msg)) {
			if(msg[0] == '#') continue;
			StripNewLine(msg);
			sscanf(dini_ExtractValue(msg), "is ", pLEVEL, pIP, sizeof(pIP));
			if((wildcmp(dini_ExtractKey(msg), pname, true) || IPcompare(pIP, bIP)) && (pLEVEL >= gPlayerData[playerid][E_ADMINLEVEL])) {
				format(msg, sizeof(msg), "You cannot ban level %i admins", pLEVEL);
				fclose(handle);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
		}
		fclose(handle);
	}

	BanPlayer(pname, bIP, breason, gPlayerData[playerid][E_NAME]);

	format(msg, sizeof(msg), "Name: \"%s\" successfully banned", pname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	format(msg, sizeof(msg), "IP: \"%s\" successfully banned", bIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "You have been banned from the server (%s)", breason);
	SendClientMessage(pid, COLOUR_WARNING, msg);
	if(gServerData[E_BAN_MSG][0] != '\0') {
		new year,
			month,
			day,
			hour,
			minute,
			date[15],
			time[10];

		getdate(year, month, day);
		gettime(hour, minute);
		format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
		format(time, sizeof(time), "%02i:%02i", hour, minute);

		SendBanMsg(pid, gServerData[E_BAN_MSG], date, time, gPlayerData[playerid][E_NAME]);
	}
	format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", pname, pid, ReturnPlayerName(playerid), breason);

	AddLogString(msg);
	LogAction(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", pname, pid, breason);
	}
	AddJoinString(pid, COLOUR_BAN, msg);
	Kick(pid);
	return 1;
}

dcmd_abancheck(const playerid, params[])
{
	new bool:isanip = IPisvalid(params, false);
	if(params[0] == '\0' || (!isanip && !isValidName(params))) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /abancheck [player name] or [IP]");
		return 1;
	}

	new BanData[E_ALAR_BAN],
		msg[MAX_STRING];
	if(isanip) {
		if(GetBanInfo("", params, BanData)) {
			format(msg, sizeof(msg), "The ip %s is banned [%s %s %s] (%s)", BanData[E_BAN_IP], BanData[E_BAN_DATE], BanData[E_BAN_TIME], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	} else {
		if(GetBanInfo(params, "", BanData)) {
			format(msg, sizeof(msg), "The name %s is banned [%s %s %s] (%s)", BanData[E_BAN_NAME], BanData[E_BAN_DATE], BanData[E_BAN_TIME], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	}

	new SuspendData[E_ALAR_SUSPENSION];
	if(isanip) {
		if(GetSuspendInfo("", params, SuspendData)) {
			new minute = floatround((SuspendData[E_SUSPEND_HOUR] - floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor)) * 60);
			format(msg, sizeof(msg), "The ip %s is suspended until %02i/%02i/%i %02i:%02i [%s %s %s] (%s)", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_YEAR], floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor), minute, SuspendData[E_SUSPEND_DATE], SuspendData[E_SUSPEND_TIME], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	} else {
		if(GetSuspendInfo(params, "", SuspendData)) {
			new minute = floatround((SuspendData[E_SUSPEND_HOUR] - floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor)) * 60);
			format(msg, sizeof(msg), "The name %s is suspended until %02i/%02i/%i %02i:%02i [%s %s %s] (%s)", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_YEAR], floatround(SuspendData[E_SUSPEND_HOUR], floatround_floor), minute, SuspendData[E_SUSPEND_DATE], SuspendData[E_SUSPEND_TIME], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	}

/*
	new year, month, day, Float:hour;
	if(isanip ? GetSuspendInfo("", params, year, month, day, hour, date, time, adminname, reason, actualban) : GetSuspendInfo(params, "", year, month, day, hour, date, time, adminname, reason, actualban)) {
		new minute = floatround((hour - floatround(hour, floatround_floor)) * 60);
		format(msg, sizeof(msg), "The %s %s is suspended until %02i/%02i/%i %02i:%02i [%s %s %s] (%s)", isanip ? ("ip") : ("name"), actualban, day, month, year, floatround(hour, floatround_floor), minute, date, time, adminname, reason);
		SendMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
*/
	format(msg, sizeof(msg), "The %s %s is not banned", isanip ? ("ip") : ("name"), params);
	SendMessage(playerid, COLOUR_ADMIN, msg);

	return 1;
}


dcmd_abanip(const playerid, params[])
{
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abanip [IP] or [player] (reason)");
		return 1;
	}

	new breason[MAX_REASON] = "No reason",
	#if MAX_IP > MAX_PLAYER_NAME
		bIP[MAX_IP];
	#else
		bIP[MAX_PLAYER_NAME];
	#endif
	sscanf(params, "ss", bIP, sizeof(bIP), breason, sizeof(breason));

	if(!IPisvalid(bIP, cmdchk(playerid, E_RANGEBAN_LEVEL))) {
		new pid = FindPlayer(bIP);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid IP");
			return 1;
		} else {
			GetPlayerIp(pid, bIP, sizeof(bIP));
		}
	}

	new msg[MAX_INPUT];
	if(!IsIPNotBanned(bIP)) {
		format(msg, sizeof(msg), "IP: \"%s\" is already banned", bIP);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new File:handle=fopen(USERFILE, io_read);
	if (handle) {
		new pLEVEL, pIP[MAX_IP];
		while (fread(handle, msg)) {
			if(msg[0] == '#') continue;
			StripNewLine(msg);
			sscanf(dini_ExtractValue(msg), "is ", pLEVEL, pIP, sizeof(pIP));
			if((pLEVEL >= gPlayerData[playerid][E_ADMINLEVEL]) && IPcompare(pIP, bIP)) {
				format(msg, sizeof(msg), "You cannot ban level %i admins", pLEVEL);
				fclose(handle);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
		}
		fclose(handle);
	}

	BanIP(bIP, breason, gPlayerData[playerid][E_NAME]);

	format(msg, sizeof(msg), "IP: %s successfully banned", bIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has banned the ip %s (%s)", ReturnPlayerName(playerid), bIP, breason);

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The ip %s has been banned (%s)", bIP, breason);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new year,
		month,
		day,
		hour,
		minute,
		date[15],
		time[10];

	getdate(year, month, day);
	gettime(hour, minute);
	format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
	format(time, sizeof(time), "%02i:%02i", hour, minute);

	LoopPlayers(i) {
		if(IPcompare(bIP, ReturnPlayerIP(i))) {
			format(msg, sizeof(msg), "You have been banned from the server (%s)", breason);
			SendClientMessage(i, COLOUR_WARNING, msg);
			if(gServerData[E_BAN_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_BAN_MSG], date, time, gPlayerData[playerid][E_NAME]);
			}
			format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), breason);

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, breason);
			}

			AddJoinString(i, COLOUR_BAN, msg);
			Kick(i);
		}
	}
	return 1;
}

dcmd_abanname(const playerid, params[])
{
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abanname [player name] (reason)");
		return 1;
	}

	new breason[MAX_REASON] = "No reason", bname[MAX_PLAYER_NAME];
	sscanf(params, "ss", bname, sizeof(bname), breason, sizeof(breason));

	if(!isValidName(bname, cmdchk(playerid, E_WILDBAN_LEVEL))) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!IsNameNotBanned(bname)) {
		format(msg, sizeof(msg), "Name: \"%s\" is already banned", bname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new File:handle=fopen(USERFILE, io_read);
	if (handle) {
		new pLEVEL;
		while (fread(handle, msg)) {
			if(msg[0] == '#') continue;
			pLEVEL = strval(dini_ExtractValue(msg));
			if(wildcmp(bname, dini_ExtractKey(msg), true) && (pLEVEL >= gPlayerData[playerid][E_ADMINLEVEL])) {
				format(msg, sizeof(msg), "You cannot ban level %i admins", pLEVEL);
				fclose(handle);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
		}
		fclose(handle);
	}

	BanName(bname, breason, gPlayerData[playerid][E_NAME]);

	format(msg, sizeof(msg), "Name: \"%s\" successfully banned", bname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has banned the name %s (%s)", ReturnPlayerName(playerid), bname, breason);

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The name %s has been banned (%s)", bname, breason);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new year,
		month,
		day,
		hour,
		minute,
		date[15],
		time[10];

	getdate(year, month, day);
	gettime(hour, minute);
	format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
	format(time, sizeof(time), "%02i:%02i", hour, minute);

	LoopPlayers(i) {
		if(wildcmp(bname, ReturnPlayerName(i), true)) {
			format(msg, sizeof(msg), "You have been banned from the server (%s)", breason);
			SendClientMessage(i, COLOUR_WARNING, msg);
			if(gServerData[E_BAN_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_BAN_MSG], date, time, gPlayerData[playerid][E_NAME]);
			}
			format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), breason);

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, breason);
			}

			AddJoinString(i, COLOUR_BAN, msg);
			Kick(i);
		}
	}
	return 1;
}

dcmd_abring(const playerid, params[])
{
	if(LevelCheck(playerid, E_BRING_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abring [player] (target)");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], tname[MAX_PLAYER_NAME];
	sscanf(params, "ss", pname, sizeof(pname), tname, sizeof(tname));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_JAILED) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot bring jailed players");
		return 1;
	}

	new tid;
	if(tname[0] == '\0') {
		tid = playerid;
	} else {
		tid =  FindPlayer(tname);
		if(tid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Target not found");
			return 1;
		}
	}

	if(tid == pid) {
		if(tid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot bring yourself");
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot bring a player to themself");
		}
		return 1;
	}

	new msg[MAX_INPUT];
	if(!IsSpawned(tid) && !gPlayerData[tid][E_SPECTATING]) {
		if(tid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		} else {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(tid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		}
		return 1;
	}

	if(!IsSpawned(pid) && !gPlayerData[pid][E_SPECTATING]) {
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		} else {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		}
		return 1;
	}

	if(gPlayerData[tid][E_SPECTATING]) {
		if(!cmdchk(pid, E_SPEC_LEVEL)) {
			if(pid == playerid) {
				format(msg, sizeof(msg), "You need to be level %i to spectate", gServerData[E_SPEC_LEVEL]);
			} else {
				format(msg, sizeof(msg), "%s needs to be level %i to spectate", ReturnPlayerName(pid), gServerData[E_SPEC_LEVEL]);
			}
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}
		if(gPlayerData[tid][E_SPECID] == pid) {
			if(pid == playerid) {
				SendClientMessage(playerid, COLOUR_WARNING, "You cannot spectate yourself");
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You cannot make a player spectate themself");
			}
			return 1;
		}
		if(gPlayerData[tid][E_SPECID] == gPlayerData[pid][E_SPECID] && gPlayerData[tid][E_SPECID] != INVALID_PLAYER_ID) {
			if(pid == playerid) {
				format(msg, sizeof(msg), "You are already spectating %s", ReturnPlayerName(gPlayerData[tid][E_SPECID]));
			} else {
				format(msg, sizeof(msg), "%s is already spectating %s", ReturnPlayerName(pid), ReturnPlayerName(gPlayerData[tid][E_SPECID]));
			}
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		if(gPlayerData[tid][E_SPECID] == INVALID_PLAYER_ID) {
			if(gPlayerData[pid][E_SPECTATING]) {
				gPlayerData[pid][E_POSX] = gPlayerData[tid][E_POSX];
				gPlayerData[pid][E_POSY] = gPlayerData[tid][E_POSY];
				gPlayerData[pid][E_POSZ] = gPlayerData[tid][E_POSZ];
				gPlayerData[pid][E_ROT] = gPlayerData[tid][E_ROT];
				gPlayerData[pid][E_CAM_POS_X] = gPlayerData[tid][E_CAM_POS_X];
				gPlayerData[pid][E_CAM_POS_Y] = gPlayerData[tid][E_CAM_POS_Y];
				gPlayerData[pid][E_CAM_POS_Z] = gPlayerData[tid][E_CAM_POS_Z];
				gPlayerData[pid][E_CAM_ROT_XY] = gPlayerData[tid][E_CAM_ROT_XY];

				SetPlayerVirtualWorld(pid, GetPlayerVirtualWorld(tid));
				SetPlayerInterior(pid, GetPlayerInterior(tid));
				if(gPlayerData[pid][E_SPECID] != INVALID_PLAYER_ID) {
					gPlayerData[playerid][E_SPECMODE] = 3;
					CallRemoteFunction("OnAdminSpectate", "iii", pid, FREE_SPECTATE_ID, gPlayerData[pid][E_SPECID]);
					gPlayerData[pid][E_SPECID] = INVALID_PLAYER_ID;
					#if SPEC_TXT_TIME > 0
						ShowSpecTxt(pid);
					#endif
				}
			} else {
				if(pid == playerid) {
					format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
				} else {
					format(msg, sizeof(msg), "%s has brought %s into spectate mode", ReturnPlayerName(playerid), ReturnPlayerName(pid));
				}
				LogAction(msg);
				AddLogString(msg);

				gPlayerData[pid][E_SPECID] = INVALID_PLAYER_ID;
				gPlayerData[playerid][E_SPECMODE] = 3;
				if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", pid, FREE_SPECTATE_ID, INVALID_PLAYER_ID)) <= 0) {
					StoreSpawnData(pid);
				}
				TogglePlayerSpectating(pid, true);

				gPlayerData[pid][E_POSX] = gPlayerData[tid][E_POSX];
				gPlayerData[pid][E_POSY] = gPlayerData[tid][E_POSY];
				gPlayerData[pid][E_POSZ] = gPlayerData[tid][E_POSZ];
				gPlayerData[pid][E_ROT] = gPlayerData[tid][E_ROT];
				gPlayerData[pid][E_CAM_POS_X] = gPlayerData[tid][E_CAM_POS_X];
				gPlayerData[pid][E_CAM_POS_Y] = gPlayerData[tid][E_CAM_POS_Y];
				gPlayerData[pid][E_CAM_POS_Z] = gPlayerData[tid][E_CAM_POS_Z];
				gPlayerData[pid][E_CAM_ROT_XY] = gPlayerData[tid][E_CAM_ROT_XY];

				SetPlayerVirtualWorld(pid, GetPlayerVirtualWorld(tid));
				SetPlayerInterior(pid, GetPlayerInterior(tid));

				gPlayerData[pid][E_SPECTATING] = true;

				#if SPEC_TXT_TIME > 0
					ShowSpecTxt(pid);
				#endif
			}
		} else {
			if(gPlayerData[pid][E_SPECTATING]) {
				#if SPEC_TXT_TIME > 0
					if(gPlayerData[pid][E_SPECID] == INVALID_PLAYER_ID) {
						gPlayerData[pid][E_SPECMODE] = 0;
						ShowSpecTxt(pid);
					}
				#endif
				ObserverSwitchPlayer(pid, gPlayerData[tid][E_SPECID]);
			} else {
				if(pid == playerid) {
					format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
				} else {
					format(msg, sizeof(msg), "%s has brought %s into spectate mode", ReturnPlayerName(playerid), ReturnPlayerName(pid));
				}
				LogAction(msg);
				AddLogString(msg);

				gPlayerData[pid][E_SPECID] = gPlayerData[tid][E_SPECID];
				gPlayerData[pid][E_SPECMODE] = 0;
				if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", pid, gPlayerData[pid][E_SPECID], INVALID_PLAYER_ID)) <= 0) {
					StoreSpawnData(pid);
				}
				TogglePlayerSpectating(pid, true);

				gPlayerData[pid][E_SPECTATING] = true;
				SetPlayerSpectating(pid, gPlayerData[tid][E_SPECID]);

				#if SPEC_TXT_TIME > 0
					ShowSpecTxt(pid);
				#endif
			}
		}

		if(tid == playerid) {
			format(msg, sizeof(msg), "You have teleported %s to yourself", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has brought you to themself", ReturnPlayerName(playerid));
		} else if(pid == playerid) {
			format(msg, sizeof(msg), "You have teleported to %s", ReturnPlayerName(tid));
		} else {
			format(msg, sizeof(msg), "You have teleported %s to %s", ReturnPlayerName(pid), ReturnPlayerName(tid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has brought you to %s", ReturnPlayerName(playerid), ReturnPlayerName(tid));
		}
		SendClientMessage(pid, COLOUR_ADMIN, msg);
		return 1;
	}

	new Float:X, Float:Y, Float:Z, Float:ang;
	if(IsPlayerInAnyVehicle(tid)) {
		GetVehiclePos(GetPlayerVehicleID(tid), X, Y, Z);
		GetVehicleZAngle(GetPlayerVehicleID(tid), ang);
	} else {
		GetPlayerPos(tid, X, Y, Z);
		GetPlayerFacingAngle(tid, ang);
	}

	if(gPlayerData[pid][E_SPECTATING]) {
		gPlayerData[pid][E_INTERIOR] = GetPlayerInterior(tid);
		gPlayerData[pid][E_WORLD] = GetPlayerVirtualWorld(tid);

		gPlayerData[pid][E_POSX] = X + 4*floatcos(ang + 90.0, degrees);
		gPlayerData[pid][E_POSY] = Y + 4*floatsin(ang + 90.0, degrees);
		gPlayerData[pid][E_POSZ] = Z + 1.0;

		SpawnUsingPosition(pid);
	} else {
		SetPlayerInterior(pid, GetPlayerInterior(tid));
		new worldid = GetPlayerVirtualWorld(tid);
		SetPlayerVirtualWorld(pid, worldid);
		alar_OnPlayerWorldChange(pid, worldid);

		if(IsPlayerInAnyVehicle(pid)) {
			SetVehiclePos(GetPlayerVehicleID(pid), X + 4*floatcos(ang + 90.0, degrees), Y + 4*floatsin(ang + 90.0, degrees), Z);
			LinkVehicleToInterior(GetPlayerVehicleID(pid), GetPlayerInterior(tid));
			SetVehicleVirtualWorld(GetPlayerVehicleID(pid), GetPlayerVirtualWorld(tid));
		} else if(GetPlayerSpecialAction(pid) == SPECIAL_ACTION_USEJETPACK) {
			SetPlayerPos(pid, X + 4*floatcos(ang + 90.0, degrees), Y + 4*floatsin(ang + 90.0, degrees), Z + 1.0);
			SetPlayerSpecialAction(pid, SPECIAL_ACTION_USEJETPACK);
		} else {
			SetPlayerPos(pid, X + 4*floatcos(ang + 90.0, degrees), Y + 4*floatsin(ang + 90.0, degrees), Z + 1.0);
		}
	}

	if(tid == playerid) {
		format(msg, sizeof(msg), "You have teleported %s to yourself", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has teleported %s to themself", ReturnPlayerName(playerid), ReturnPlayerName(pid));
	} else if(pid == playerid) {
		format(msg, sizeof(msg), "You have teleported to %s", ReturnPlayerName(tid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has teleported to %s", ReturnPlayerName(playerid), ReturnPlayerName(tid));
	} else {
		format(msg, sizeof(msg), "You have teleported %s to %s", ReturnPlayerName(pid), ReturnPlayerName(tid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has teleported %s to %s", ReturnPlayerName(playerid), ReturnPlayerName(pid), ReturnPlayerName(tid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_achangemode(const playerid, params[])
{
	if(LevelCheck(playerid, E_CHANGEMODE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /achangemode [gamemode]");
		return 1;
	}

	if(!fexist(MODESFILE)) {
		SendClientMessage(playerid, COLOUR_WARNING, "No gamemodes are listed in " MODESFILE);
		return 1;
	}

	new File:handle = fopen(MODESFILE, io_read), line[MAX_STRING], msg[MAX_INPUT], pos;
	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		StripNewLine(line);
		pos = strfind(line, params, true);
		if((pos == 0) && (strlen(params) == strlen(line))) {
			strcpy(msg, line);
			break;
		} else if((pos != -1) && (msg[0] == '\0')) {
			strcpy(msg, line);
		}
	}
	fclose(handle);

	if(msg[0] == '\0') {
		format(msg, sizeof(msg), "Gamemode \"%s\" not found", params);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	format(line, sizeof(line), "%s is changing the gamemode to %s", ReturnPlayerName(playerid), msg);
	LogAction(line);
	AddLogString(line);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(line, sizeof(line), "The gamemode has been changed to %s", msg);
	}
	SendClientMessageToAll(COLOUR_PLAYER, line);

	// Hide textdraws so they dont get stuck on the screen
	LoopPlayers(i) {
		#if SPEC_TXT_TIME > 0
			if(gPlayerData[i][E_SPECTXT] != INVALID_TEXT_DRAW) {
				KillTimer(gPlayerData[i][E_SPECTIMER]);
				gPlayerData[i][E_SPECTIMER] = 0;
				TextDrawHideForPlayer(i, gPlayerData[i][E_SPECTXT]);
				gPlayerData[i][E_SPECTXT] = INVALID_TEXT_DRAW;
			}
		#endif
		#if LOG_LINES > 0 && LOG_PAGES > 0
			if(gPlayerData[i][E_LOG_PAGE]) {
				#if LOG_PAGES > 1
					TextDrawHideForPlayer(i, gLogPage[gPlayerData[i][E_LOG_PAGE]-1]);
				#endif
				for(new j, offset = (gPlayerData[i][E_LOG_PAGE] - 1) * LOG_LINES; j < LOG_LINES; j++) {
					TextDrawHideForPlayer(i, gAdminLog[j + offset][E_TEXTBOX_TEXT]);
				}
				gPlayerData[i][E_LOG_PAGE] = 0;
			}
		#endif
		#if JOINMSG_LINES > 0
			if(!gPlayerData[i][E_JOINTEXT]) {
				gPlayerData[i][E_JOINTEXT] = true;
				for(new j; j < JOINMSG_LINES; j++) {
					TextDrawHideForPlayer(i, gJoinMessage[j][E_TEXTBOX_TEXT]);
				}
			}
		#endif
		if(gPlayerData[i][E_SPECHUD] != INVALID_TEXT_DRAW) {
			TextDrawHideForPlayer(i, gPlayerData[i][E_SPECHUD]);
			TextDrawDestroy(gPlayerData[i][E_SPECHUD]);
			gPlayerData[i][E_SPECHUD] = INVALID_TEXT_DRAW;
		}
	}

	#if SPEC_TXT_TIME > 0
		for(new i; i < sizeof(g_txtSpecMode); i++) {
			g_txtSpecMode[i] = INVALID_TEXT_DRAW;
		}
	#endif
	#if LOG_LINES > 0 && LOG_PAGES > 0
		#if LOG_PAGES > 1
			for(new i; i < sizeof(gLogPage); i++) {
				gLogPage[i] = INVALID_TEXT_DRAW;
			}
		#endif
		for(new i; i < sizeof(gAdminLog); i++) {
			gAdminLog[i][E_TEXTBOX_TEXT] = INVALID_TEXT_DRAW;
		}
	#endif
	#if JOINMSG_LINES > 0
		for(new i; i < sizeof(gJoinMessage); i++) {
			gJoinMessage[i][E_TEXTBOX_TEXT] = INVALID_TEXT_DRAW;
		}
	#endif

	format(line, sizeof(line), "changemode %s", msg);
	SendRconCommand(line);
	return 1;
}

dcmd_achangepw(const playerid, params[])
{
	new pLEVEL, pIP[MAX_IP], pPW[33], hidden, manuallogin;
	if(!GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, hidden, manuallogin) || (strcmp(MD5_Hash(gServerData[E_DEFAULT_PW]), pPW, true) != 0 && LevelCheck(playerid, E_CHANGEPW_LEVEL))) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /achangepw [new password]");
		return 1;
	}

	new msg[MAX_INPUT];
	if(strlen(params) < gServerData[E_MIN_PW_LENGTH]) {
		format(msg, sizeof(msg), "Your password must be at least %i characters long", gServerData[E_MIN_PW_LENGTH]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, MD5_Hash(params), hidden, manuallogin, gPlayerData[playerid][E_LOG_PAGE])) {
			format(msg, sizeof(msg), "%s has changed their password", ReturnPlayerName(playerid));
			LogAction(msg);
			AddLogString(msg);
			format(msg, sizeof(msg), "Your password has been set to \"%s\"", params);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			return 1;
		}
	#else
		if(SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, MD5_Hash(params), hidden, manuallogin)) {
			format(msg, sizeof(msg), "%s has changed their password", ReturnPlayerName(playerid));
			LogAction(msg);
			AddLogString(msg);
			format(msg, sizeof(msg), "Your password has been set to \"%s\"", params);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			return 1;
		}
	#endif


	return 1;
}

dcmd_acreate(const playerid, params[])
{
	if(LevelCheck(playerid, E_CREATE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /acreate [vehicle name] or [model ID]");
		return 1;
	}

	if(!IsSpawned(playerid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must be spawned to use this command");
		return 1;
	}

	new number, types;
	GetServerVehicleInfo(number, types);
	if(number >= MAX_VEHICLES) {
		SendClientMessage(playerid, COLOUR_WARNING, "Vehicle limit reached");
		return 1;
	}

	new modid;
	if(isNumeric(params)) {
		modid = strval(params);
		if(modid > 611 || modid < 400) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid modelid");
			return 1;
		}
	} else if(strfind("Jetpack", params, true) != -1) {
		new msg[MAX_INPUT];
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);

		SendClientMessage(playerid, COLOUR_ADMIN, "You have created a Jetpack");
		format(msg, sizeof(msg), "%s has created a Jetpack", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
		return 1;
	} else {
		modid = ReturnVehicleID(params);
		if(modid == INVALID_VEHICLE_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid vehicle name");
			return 1;
		}
	}

	if(types >= MAX_VEHICLE_MODELS && !ExistsVehicleModel(modid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Vehicle type limit reached");
		return 1;
	}

	// cant get in rc cars (441, 464, 465, 501, 564, 594), trains (449, 569, 537, 538, 570, 590) are crashy
	if(modid == 441 || modid == 464 || modid == 465 || modid == 501 || modid == 564 || modid == 594 || modid == 569 || modid == 449 || modid == 537 || modid == 538 || modid == 570 || modid == 590) {
		SendClientMessage(playerid, COLOUR_WARNING, "Unsupported vehicle");
		return 1;
	}

	new Float:px, Float:py, Float:pz, Float:prot;
	if(IsPlayerInAnyVehicle(playerid)) {
		GetVehiclePos(GetPlayerVehicleID(playerid), px, py, pz);
		GetVehicleZAngle(GetPlayerVehicleID(playerid), prot);
	} else {
		GetPlayerPos(playerid, px, py, pz);
		GetPlayerFacingAngle(playerid, prot);
	}

	new vid = CreateVehicle(modid, px + 4*floatcos(prot + 90.0, degrees), py + 4*floatsin(prot + 90.0, degrees), pz, prot + 90, -1, -1, 50000);

	if(vid == INVALID_VEHICLE_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Vehicle limit reached");
		return 1;
	}

	if(vid >= MAX_VEHICLES) {
		SendClientMessage(playerid, COLOUR_WARNING, "Unable to create vehicle");
		DestroyVehicle(vid);
		return 1;
	}

	if(gServerData[E_DEFAULT_NUM_PLATE][0] != '\0') {
		SetVehicleNumberPlate(vid, ReturnNumPlateTxt(vid));
		SetVehicleToRespawn(vid);
	}

	Bit_Let(gCreatedVehicles, vid);

	LinkVehicleToInterior(vid, GetPlayerInterior(playerid));
	SetVehicleVirtualWorld(vid, GetPlayerVirtualWorld(playerid));

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has created a %s(%i)", ReturnPlayerName(playerid), ReturnVehicleName(modid), vid);
	LogAction(msg);
	AddLogString(msg);

	format(msg, sizeof(msg), "You have created a %s(%i)", ReturnVehicleName(modid), vid);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	return 1;
}

dcmd_adestroy(const playerid, params[])
{
	if(LevelCheck(playerid, E_DESTROY_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adestroy [vehicle ID] or \"all\"");
		new start = INVALID_VEHICLE_ID, lastid = INVALID_VEHICLE_ID, string[512] = "Vehicle IDs:";
		Bit_Loop(gCreatedVehicles, vid) {
			if(start == INVALID_VEHICLE_ID) {
				start = vid;
			} else if(lastid != vid - 1) {
				if(start == lastid) {
					format(string, sizeof(string), "%s %i", string, start);
				} else if(start == lastid - 1) {
					format(string, sizeof(string), "%s %i %i", string, start, lastid);
				} else {
					format(string, sizeof(string), "%s %i-%i", string, start, lastid);
				}
				start = vid;
			}
			lastid = vid;
		}
		if(lastid != INVALID_VEHICLE_ID) {
			if(start != INVALID_VEHICLE_ID) {
				if(start == lastid) {
					format(string, sizeof(string), "%s %i", string, lastid);
				} else if(start == lastid - 1) {
					format(string, sizeof(string), "%s %i %i", string, start, lastid);
				} else {
					format(string, sizeof(string), "%s %i-%i", string, start, lastid);
				}
			}
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
		}
		return 1;
	}

	if(strcmp("all", params, true) == 0) {
		new num;
		Bit_Loop(gCreatedVehicles, i) {
			DestroyVehicle(i);
			num++;
		}
		if(num == 0) {
			SendClientMessage(playerid, COLOUR_WARNING, "There are no vehicles to destroy");
			return 1;
		}
		Bit_SetAll(gCreatedVehicles, 0, sizeof(gCreatedVehicles));

		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "You have destroyed all %i created vehicles", num);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has destroyed all %i created vehicles", ReturnPlayerName(playerid), num);
		LogAction(msg);
		AddLogString(msg);
		return 1;
	}

	if(!isNumeric(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adestroy [vehicle ID] or \"all\"");
		return 1;
	}

	new vid = strval(params);
	if(vid <= 0 || vid > MAX_VEHICLES) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid Vehicle ID");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!Bit_Get(gCreatedVehicles, vid)) {
		format(msg, sizeof(msg), "Vehicle ID %i is not an admin created vehicle", vid);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	Bit_Vet(gCreatedVehicles, vid);
	new model = GetVehicleModel(vid);
	DestroyVehicle(vid);

	format(msg, sizeof(msg), "You have destroyed vehicle %i(%s)", vid, ReturnVehicleName(model));
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has destroyed vehicle %i(%s)", ReturnPlayerName(playerid), vid, ReturnVehicleName(model));
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_adesync(const playerid, params[])
{
	if(LevelCheck(playerid, E_DESYNC_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adesync [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], desynctime, pname[MAX_PLAYER_NAME], reason[MAX_REASON];
	sscanf(params, "sss", pname, sizeof(pname), timestr, sizeof(timestr), reason, sizeof(reason));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot desync yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot desync level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(0 < (desynctime = strval(timestr)) < MIN_ACTION_TIME) {
		desynctime = MIN_ACTION_TIME;
	}

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_DESYNCED) {
		if(gPlayerData[pid][E_DESYNC_TIME] == 0) {
			if(desynctime <= 0) {
				format(msg, sizeof(msg), "%s is already desynced", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
			gPlayerData[pid][E_UNDESYNC] = SetTimerEx("alar_undesync", desynctime * 1000, 0, "i", pid);
			gPlayerData[pid][E_DESYNC_TIME] = gettime() + desynctime;

			format(msg, sizeof(msg), "%s's desync time has been set to %i seconds", ReturnPlayerName(pid), desynctime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set %s's desync time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), desynctime);
		} else {
			if(desynctime <= 0) {
				if(gPlayerData[pid][E_UNDESYNC]) KillTimer(gPlayerData[pid][E_UNDESYNC]);
				gPlayerData[pid][E_DESYNC_TIME] = 0;

				format(msg, sizeof(msg), "%s's desync has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's desync permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + desynctime - gPlayerData[pid][E_DESYNC_TIME];

				if(gPlayerData[pid][E_UNDESYNC]) KillTimer(gPlayerData[pid][E_UNDESYNC]);
				gPlayerData[pid][E_UNDESYNC] = SetTimerEx("alar_undesync", desynctime * 1000, 0, "i", pid);
				gPlayerData[pid][E_DESYNC_TIME] += timediff;

				format(msg, sizeof(msg), "%s's desync time has been set to %i (%s%i) seconds", ReturnPlayerName(pid), desynctime, timediff < 0 ? ("") : ("+"), timediff);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's desync time to %i (%s%i) seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), desynctime, timediff < 0 ? ("") : ("+"), timediff);
			}
		}
		LogAction(msg);
		AddLogString(msg);
		return 1;
	}

	if(desynctime != 0) {
		if(reason[0] == '\0') {
			reason = "No reason";
		}
	}
	else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);

	}
	else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	}
	else {
		reason = "No reason";
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_DESYNCED;

	if(desynctime > 0) {
		format(msg, sizeof(msg), "%s has been desynced by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), desynctime, reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been desynced for %i seconds (%s)", ReturnPlayerName(pid), desynctime, reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
		if(gPlayerData[pid][E_UNDESYNC]) KillTimer(gPlayerData[pid][E_UNDESYNC]);
		gPlayerData[pid][E_UNDESYNC] = SetTimerEx("alar_undesync", desynctime * 1000, 0, "i", pid);
		gPlayerData[pid][E_DESYNC_TIME] = gettime() + desynctime;
	} else {
		format(msg, sizeof(msg), "%s has been desynced by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been desynced (%s)", ReturnPlayerName(pid), reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
	}
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_DESYNCED);
	return 1;
}

dcmd_adrop(const playerid, params[])
{
	if(LevelCheck(playerid, E_DROP_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adrop [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot drop level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	new Float:px, Float:py, Float:pz;
	GetPlayerPos(pid, px, py, pz);
	SetPlayerPos(pid, px, py, pz + gServerData[E_DROP_HEIGHT]);

	if(pid != playerid) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been dropped");
		} else {
			format(msg, sizeof(msg), "You have been dropped by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}

		format(msg, sizeof(msg), "%s has dropped %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);

		format(msg, sizeof(msg), "%s has been dropped", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
	} else {
		SendClientMessage(pid, COLOUR_WARNING, "You have dropped yourself");

		format(msg, sizeof(msg), "%s has dropped themself", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
	}
	return 1;
}

dcmd_aeject(const playerid, params[])
{
	if(LevelCheck(playerid, E_EJECT_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aeject [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot eject level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
	if(GetPlayerSpecialAction(pid) == SPECIAL_ACTION_USEJETPACK) {
		if(playerid == pid) {
			SendClientMessage(pid, COLOUR_WARNING, "You have ejected yourself");
			ClearAnimations(pid);
			format(msg, sizeof(msg), "%s has ejected themself from their vehicle", ReturnPlayerName(playerid));
			LogAction(msg);
			AddLogString(msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_WARNING, "You have been ejected");
			} else {
				format(msg, sizeof(msg), "%s has ejected you", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_WARNING, msg);
			}
			ClearAnimations(pid);

			format(msg, sizeof(msg), "%s has ejected %s from their vehicle", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			LogAction(msg);
			AddLogString(msg);

			format(msg, sizeof(msg), "%s has been ejected (Jetpack)", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		return 1;
	}
	if(!IsPlayerInAnyVehicle(pid)) {
		format(msg, sizeof(msg), "%s is not in a vehicle", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(playerid == pid) {
		SendClientMessage(pid, COLOUR_WARNING, "You have ejected yourself");
		RemovePlayerFromVehicle(pid);
		format(msg, sizeof(msg), "%s has ejected themself from their vehicle", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been ejected");
		} else {
			format(msg, sizeof(msg), "%s has ejected you", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}

		format(msg, sizeof(msg), "%s has ejected %s from their vehicle", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);

		format(msg, sizeof(msg), "%s has been ejected (%s)", ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		RemovePlayerFromVehicle(pid);
	}
	return 1;
}

dcmd_aexplode(const playerid, params[])
{
	if(LevelCheck(playerid, E_EXPLODE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aexplode [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot explode level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(pid, X, Y, Z);
	CreateExplosion(X, Y, Z, 12, 8.0);

	if(pid == playerid) {
		format(msg, sizeof(msg), "%s has exploded themself", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);

		SendClientMessage(playerid, COLOUR_WARNING, "You have exploded yourself");
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been exploded");
		} else {
			format(msg, sizeof(msg), "You have been exploded by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}

		format(msg, sizeof(msg), "%s has exploded %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);

		format(msg, sizeof(msg), "%s has been exploded", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
	}
	return 1;
}

dcmd_aflip(const playerid, params[])
{
	if(LevelCheck(playerid, E_FLIP_LEVEL)) return 1;

	new pid = INVALID_PLAYER_ID;
	if(params[0] == '\0') {
		if(gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID) {
			pid = gPlayerData[playerid][E_SPECID];
		} else if(IsPlayerInAnyVehicle(playerid)) {
			pid = playerid;
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not in a vehicle");
			return 1;
		}
	} else {
		pid = FindPlayer(params);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}
	}

	new msg[MAX_INPUT];
	if(pid != playerid && !IsPlayerInAnyVehicle(pid)) {
		format(msg, sizeof(msg), "%s is not in a vehicle", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new vid = GetPlayerVehicleID(pid),
		Float:angle;

	GetVehicleZAngle(vid, angle);
	SetVehicleZAngle(vid, angle);

	if(playerid == pid) {
		format(msg, sizeof(msg), "You have flipped your %s", ReturnPlayerVehicleName(pid));
		SendClientMessage(pid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has flipped their %s", ReturnPlayerName(playerid), ReturnPlayerVehicleName(pid));
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "Your %s has been flipped", ReturnPlayerVehicleName(pid));
		} else {
			format(msg, sizeof(msg), "%s has flipped your %s", ReturnPlayerName(playerid), ReturnPlayerVehicleName(pid));
		}
		SendClientMessage(pid, COLOUR_PLAYER, msg);

		format(msg, sizeof(msg), "You have flipped %s's %s", ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has flipped %s's %s", ReturnPlayerName(playerid), ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_afreeze(const playerid, params[])
{
	if(LevelCheck(playerid, E_FREEZE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /afreeze [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], freezetime, pname[MAX_PLAYER_NAME], reason[MAX_REASON];

	sscanf(params, "sss", pname, sizeof(pname), timestr, sizeof(timestr), reason, sizeof(reason));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot freeze yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot freeze level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(0 < (freezetime = strval(timestr)) < MIN_ACTION_TIME) {
		freezetime = MIN_ACTION_TIME;
	}

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) {
		if(gPlayerData[pid][E_FREEZE_TIME] == 0) {
			if(freezetime <= 0) {
				format(msg, sizeof(msg), "%s is already frozen", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			} else {
				UnwriteAdminState(pid, ADMIN_STATE_FROZEN);
				gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", freezetime * 1000, 0, "i", pid);
				gPlayerData[pid][E_FREEZE_TIME] = gettime() + freezetime;

				format(msg, sizeof(msg), "%s's freeze time has been set to %i seconds", ReturnPlayerName(pid), freezetime);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's freeze time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), freezetime);
			}
		} else {
			if(freezetime <= 0) {
				WriteAdminState(pid, ADMIN_STATE_FROZEN);
				if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);
				gPlayerData[pid][E_FREEZE_TIME] = 0;

				format(msg, sizeof(msg), "%s's freeze has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's freeze permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + freezetime - gPlayerData[pid][E_FREEZE_TIME];

				if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);
				gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", freezetime * 1000, 0, "i", pid);
				gPlayerData[pid][E_FREEZE_TIME] += timediff;

				format(msg, sizeof(msg), "%s's freeze time has been set to %i (%s%i) seconds", ReturnPlayerName(pid), freezetime, timediff < 0 ? ("") : ("+"), timediff);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's freeze time to %i (%s%i) seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), freezetime, timediff < 0 ? ("") : ("+"), timediff);
			}
		}
		LogAction(msg);
		AddLogString(msg);
		return 1;
	}

	if(freezetime != 0) {
		if(reason[0] == '\0') {
			reason = "No reason";
		}
	}
	else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	}
	else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	}
	else {
		reason = "No reason";
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_FROZEN;
	TogglePlayerControllable(pid, false);
	SetCameraBehindPlayer(pid);

	if(freezetime > 0) {
		format(msg, sizeof(msg), "%s has been frozen by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), freezetime, reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been frozen for %i seconds (%s)", ReturnPlayerName(pid), freezetime, reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
		if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);
		gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", freezetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_FREEZE_TIME] = gettime() + freezetime;
	} else {
		format(msg, sizeof(msg), "%s has been frozen by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been frozen (%s)" , ReturnPlayerName(pid), reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
		WriteAdminState(pid, ADMIN_STATE_FROZEN);
	}
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_FROZEN);
	return 1;
}

dcmd_agiveallcash(const playerid, params[])
{
	if(LevelCheck(playerid, E_GIVEALLCASH_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveallcash [amount]");
		return 1;
	}

	new amt = strval(params);
	if(!isNumeric(params) || amt > 10000000 || amt < -10000000 || amt == 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid amount");
		return 1;
	}

	LoopPlayers(i) {
		GivePlayerMoney(i, amt);
	}

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has given everyone $%i", ReturnPlayerName(playerid), amt);
	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "Everyone has been given $%i", amt);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);
	return 1;
}

dcmd_agiveallweapon(const playerid, params[])
{
	if(LevelCheck(playerid, E_GIVEALLWEAPON_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveallweapon [weapon name] (ammo)");
		return 1;
	}

	new weap[MAX_INPUT], tmp[MAX_INPUT];
	sscanf(params, "ss", weap, sizeof(weap), tmp, sizeof(tmp));

	new wid = ReturnWeaponID(weap);
	if(wid == -1) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid Weapon");
		return 1;
	}

	new ammo = (wid <= 15 || wid == 40 || wid >= 43) ? 1 : gServerData[E_GIVEWEAPON_AMMO];
	if(tmp[0] != '\0') {
		if(!isNumeric(tmp) || (ammo = strval(tmp)) > 99999 || ammo <= 0) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid Ammo amount");
			return 1;
		}
	}

	LoopPlayers(i) {
		GivePlayerWeapon(i, wid, ammo);
	}

	if(ammo == 1) {
		format(tmp, sizeof(tmp), "%s has given everyone a %s", ReturnPlayerName(playerid), ReturnWeaponName(wid));
		LogAction(tmp);
		AddLogString(tmp);

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(tmp, sizeof(tmp), "Everyone has been given a %s", ReturnWeaponName(wid));
		}
		SendClientMessageToAll(COLOUR_PLAYER, tmp);
		return 1;
	} else {
		format(tmp, sizeof(tmp), "%s has given everyone a %s with %i ammo", ReturnPlayerName(playerid), ReturnWeaponName(wid), ammo);
		LogAction(tmp);
		AddLogString(tmp);

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(tmp, sizeof(tmp), "Everyone has been given a %s with %i ammo", ReturnWeaponName(wid), ammo);
		}
		SendClientMessageToAll(COLOUR_PLAYER, tmp);
		return 1;
	}
}

dcmd_agivecash(const playerid, params[])
{
	if(LevelCheck(playerid, E_GIVECASH_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agivecash [player] [amount]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], tmp[MAX_INPUT];
	sscanf(params, "ss", pname, sizeof(pname), tmp, sizeof(tmp));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new amt = strval(tmp);
	if(!isNumeric(tmp) || amt > 10000000 || amt < -10000000) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid amount");
		return 1;
	}

	GivePlayerMoney(pid, amt);

	if(pid == playerid) {
		format(tmp, sizeof(tmp), "%s has given themself $%i", ReturnPlayerName(playerid), amt);
		LogAction(tmp);
		AddLogString(tmp);

		format(tmp, sizeof(tmp), "You have given yourself $%i", amt);
		SendClientMessage(playerid, COLOUR_ADMIN, tmp);
		return 1;
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(tmp, sizeof(tmp), "You have been given $%i", amt);
		} else {
			format(tmp, sizeof(tmp), "%s has given you $%i", ReturnPlayerName(playerid), amt);
		}

		SendClientMessage(pid, amt > 0 ? COLOUR_PLAYER : COLOUR_WARNING, tmp);

		format(tmp, sizeof(tmp), "%s has given %s $%i", ReturnPlayerName(playerid), ReturnPlayerName(pid), amt);
		LogAction(tmp);
		AddLogString(tmp);

		format(tmp, sizeof(tmp), "%s has been given $%i", ReturnPlayerName(pid), amt);
		SendClientMessage(playerid, COLOUR_ADMIN, tmp);
		return 1;
	}
}

dcmd_agiveweapon(const playerid, params[])
{
	if(LevelCheck(playerid, E_GIVEWEAPON_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveweapon [player] [weapon name] (ammo)");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], weap[MAX_INPUT], tmp[MAX_INPUT];
	sscanf(params, "sss", pname, sizeof(pname), weap, sizeof(weap), tmp, sizeof(tmp));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new wid = ReturnWeaponID(weap);
	if(wid == -1) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid Weapon");
		return 1;
	}

	new ammo = (wid <= 15 || wid == 40 ||wid >= 43) ? 1 : gServerData[E_GIVEWEAPON_AMMO];
	if(tmp[0] != '\0') {
		ammo = strval(tmp);
		if(!isNumeric(tmp) || ammo > 99999 || ammo <= 0) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid Ammo amount");
			return 1;
		}
	}

	GivePlayerWeapon(pid, wid, ammo);

	if(ammo == 1) {
		if(playerid == pid) {
			format(tmp, sizeof(tmp), "%s gave themself a %s", ReturnPlayerName(playerid), ReturnWeaponName(wid));
			LogAction(tmp);
			AddLogString(tmp);

			format(tmp, sizeof(tmp), "You have given yourself a %s", ReturnWeaponName(wid));
			SendClientMessage(playerid, COLOUR_ADMIN, tmp);
			return 1;
		}
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(tmp, sizeof(tmp), "You have been given a %s", ReturnWeaponName(wid));
		} else {
			format(tmp, sizeof(tmp), "%s has given you a %s", ReturnPlayerName(playerid), ReturnWeaponName(wid));
		}
		SendClientMessage(pid, COLOUR_PLAYER, tmp);

		format(tmp, sizeof(tmp), "%s gave %s a %s", ReturnPlayerName(playerid), ReturnPlayerName(pid), ReturnWeaponName(wid));
		LogAction(tmp);
		AddLogString(tmp);

		format(tmp, sizeof(tmp), "%s has been given a %s", ReturnPlayerName(pid), ReturnWeaponName(wid));
		SendClientMessage(playerid, COLOUR_ADMIN, tmp);
		return 1;
	} else {
		if(playerid == pid) {
			format(tmp, sizeof(tmp), "%s gave themself a %s with %i ammo", ReturnPlayerName(playerid), ReturnWeaponName(wid), ammo);
			LogAction(tmp);
			AddLogString(tmp);

			format(tmp, sizeof(tmp), "You have given yourself a %s with %i ammo", ReturnWeaponName(wid), ammo);
			SendClientMessage(playerid, COLOUR_ADMIN, tmp);
			return 1;
		}
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(tmp, sizeof(tmp), "You have been given a %s with %i ammo", ReturnWeaponName(wid), ammo);
		} else {
			format(tmp, sizeof(tmp), "%s has given you a %s with %i ammo", ReturnPlayerName(playerid), ReturnWeaponName(wid), ammo);
		}
		SendClientMessage(pid, COLOUR_PLAYER, tmp);

		format(tmp, sizeof(tmp), "%s gave %s a %s with %i ammo", ReturnPlayerName(playerid), ReturnPlayerName(pid), ReturnWeaponName(wid), ammo);
		LogAction(tmp);
		AddLogString(tmp);

		format(tmp, sizeof(tmp), "%s has been given a %s with %i ammo", ReturnPlayerName(pid), ReturnWeaponName(wid), ammo);
		SendClientMessage(playerid, COLOUR_ADMIN, tmp);
		return 1;
	}
}

dcmd_agoto(const playerid, params[])
{
	if(LevelCheck(playerid, E_GOTO_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agoto [player] (x offset) (y offset) (z offset)");
		return 1;
	}

	if(!IsSpawned(playerid) && !gPlayerData[playerid][E_SPECTATING]) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must be spawned to use this command");
		return 1;
	}

	new pname[MAX_PLAYER_NAME],
		Float:xoff,
		Float:yoff = -1.0,
		Float:zoff = 3.0;

	sscanf(params, "sfff", pname, sizeof(pname), xoff, yoff, zoff);

	new pid = FindPlayer(pname), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(gPlayerData[pid][E_SPECTATING]) {
		if(!cmdchk(playerid, E_SPEC_LEVEL)) {
			format(msg, sizeof(msg), "You need to be level %i to spectate", gServerData[E_SPEC_LEVEL]);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}
		if(gPlayerData[pid][E_SPECID] == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot spectate yourself");
			return 1;
		}

		if(gPlayerData[pid][E_SPECID] == INVALID_PLAYER_ID) {
			if(gPlayerData[playerid][E_SPECTATING]) {
				gPlayerData[playerid][E_POSX] = gPlayerData[pid][E_POSX];
				gPlayerData[playerid][E_POSY] = gPlayerData[pid][E_POSY];
				gPlayerData[playerid][E_POSZ] = gPlayerData[pid][E_POSZ];
				gPlayerData[playerid][E_ROT] = gPlayerData[pid][E_ROT];
				gPlayerData[playerid][E_CAM_POS_X] = gPlayerData[pid][E_CAM_POS_X];
				gPlayerData[playerid][E_CAM_POS_Y] = gPlayerData[pid][E_CAM_POS_Y];
				gPlayerData[playerid][E_CAM_POS_Z] = gPlayerData[pid][E_CAM_POS_Z];
				gPlayerData[playerid][E_CAM_ROT_XY] = gPlayerData[pid][E_CAM_ROT_XY];

				SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(pid));
				SetPlayerInterior(playerid, GetPlayerInterior(pid));
				if(gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID) {
					gPlayerData[pid][E_SPECMODE] = 3;
					CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, gPlayerData[playerid][E_SPECID]);
					gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;

					#if SPEC_TXT_TIME > 0
						ShowSpecTxt(playerid);
					#endif
				}
			} else {
				format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
				LogAction(msg);
				AddLogString(msg);

				gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;
				gPlayerData[playerid][E_SPECMODE] = 3;
				if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, INVALID_PLAYER_ID)) <= 0) {
					StoreSpawnData(playerid);
				}
				TogglePlayerSpectating(playerid, true);

				gPlayerData[playerid][E_POSX] = gPlayerData[pid][E_POSX];
				gPlayerData[playerid][E_POSY] = gPlayerData[pid][E_POSY];
				gPlayerData[playerid][E_POSZ] = gPlayerData[pid][E_POSZ];
				gPlayerData[playerid][E_ROT] = gPlayerData[pid][E_ROT];
				gPlayerData[playerid][E_CAM_POS_X] = gPlayerData[pid][E_CAM_POS_X];
				gPlayerData[playerid][E_CAM_POS_Y] = gPlayerData[pid][E_CAM_POS_Y];
				gPlayerData[playerid][E_CAM_POS_Z] = gPlayerData[pid][E_CAM_POS_Z];
				gPlayerData[playerid][E_CAM_ROT_XY] = gPlayerData[pid][E_CAM_ROT_XY];

				SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(pid));
				SetPlayerInterior(playerid, GetPlayerInterior(pid));

				gPlayerData[playerid][E_SPECTATING] = true;

				#if SPEC_TXT_TIME > 0
					ShowSpecTxt(playerid);
				#endif
			}
		} else {
			if(gPlayerData[playerid][E_SPECTATING]) {
				#if SPEC_TXT_TIME > 0
					if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
						gPlayerData[playerid][E_SPECMODE] = 0;
						ShowSpecTxt(playerid);
					}
				#endif
				ObserverSwitchPlayer(playerid, gPlayerData[pid][E_SPECID]);
			} else {
				format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
				LogAction(msg);
				AddLogString(msg);

				gPlayerData[playerid][E_SPECID] = gPlayerData[pid][E_SPECID];
				gPlayerData[playerid][E_SPECMODE] = 0;
				if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", playerid, gPlayerData[playerid][E_SPECID], INVALID_PLAYER_ID)) <= 0) {
					StoreSpawnData(playerid);
				}
				TogglePlayerSpectating(playerid, true);

				gPlayerData[playerid][E_SPECTATING] = true;
				SetPlayerSpectating(playerid, gPlayerData[pid][E_SPECID]);

				#if SPEC_TXT_TIME > 0
					ShowSpecTxt(playerid);
				#endif
			}
		}
	} else {
		if(!IsSpawned(pid)) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		new Float:X, Float:Y, Float:Z, Float:angle;
		if(IsPlayerInAnyVehicle(pid)) {
			new vid = GetPlayerVehicleID(pid);
			GetVehiclePos(vid, X, Y, Z);
			GetVehicleZAngle(vid, angle);
		} else {
			GetPlayerFacingAngle(pid, angle);
			GetPlayerPos(pid, X, Y, Z);
		}

		new Float:tmpX = (-yoff * floatsin(angle, degrees)) - (xoff * floatcos(angle, degrees)),
			Float:tmpY = (xoff * floatsin(angle, degrees)) + (yoff * floatcos(angle, degrees));

		xoff = tmpX;
		yoff = tmpY;

		if(IsPlayerInAnyVehicle(playerid)) {
			new vid = GetPlayerVehicleID(playerid);
			LinkVehicleToInterior(vid, GetPlayerInterior(pid));
			SetVehicleVirtualWorld(vid, GetPlayerVirtualWorld(pid));
			SetVehiclePos(vid, X + xoff, Y + yoff, Z + zoff);
			SetPlayerInterior(playerid, GetPlayerInterior(pid));
			new worldid = GetPlayerVirtualWorld(pid);
			SetPlayerVirtualWorld(playerid, worldid);
			alar_OnPlayerWorldChange(playerid, worldid);
		} else if(gPlayerData[playerid][E_SPECTATING]) {
				gPlayerData[playerid][E_POSX] = X + xoff;
				gPlayerData[playerid][E_POSY] = Y + yoff;
				gPlayerData[playerid][E_POSZ] = Z + zoff;
				gPlayerData[playerid][E_INTERIOR] = GetPlayerInterior(pid);
				gPlayerData[playerid][E_WORLD] = GetPlayerVirtualWorld(pid);

				SpawnUsingPosition(playerid);
		} else if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK){
			SetPlayerPos(playerid, X + xoff, Y + yoff, Z + zoff);
			SetPlayerInterior(playerid, GetPlayerInterior(pid));
			new worldid = GetPlayerVirtualWorld(pid);
			SetPlayerVirtualWorld(playerid, worldid);
			alar_OnPlayerWorldChange(playerid, worldid);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);
		} else {
			SetPlayerPos(playerid, X + xoff, Y + yoff, Z + zoff);
			SetPlayerInterior(playerid, GetPlayerInterior(pid));
			new worldid = GetPlayerVirtualWorld(pid);
			SetPlayerVirtualWorld(playerid, worldid);
			alar_OnPlayerWorldChange(playerid, worldid);
		}

		format(msg, sizeof(msg), "%s has teleported to %s", ReturnPlayerName(playerid), playerid == pid ? ("themself") : ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);
	}

	format(msg, sizeof(msg), "You have teleported to %s", playerid == pid ? ("yourself") : ReturnPlayerName(pid));
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	return 1;
}

dcmd_agravity(const playerid, params[])
{
	if(LevelCheck(playerid, E_GRAVITY_LEVEL)) return 1;

	new Float:gid = floatstr(params);

	if(!isFloat(params)) {
		if(params[0] != '\0' && strcmp("default", params, true) == 0) gid = 0.008;
		else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agravity [value] or \"default\"");
			return 1;
		}
	}

	if(gid < -1.0 || gid > 1.0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Gravity must be between -1 and 1");
		return 1;
	}

	SetGravity(gid);
	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has set the gravity to %f", ReturnPlayerName(playerid), gid);
	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The gravity has been set to %f", gid);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);
	return 1;
}

dcmd_aheal(const playerid, params[])
{
	if(LevelCheck(playerid, E_HEAL_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aheal [player] (health)");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], Float:health;
	sscanf(params, "sf", pname, sizeof(pname), health);

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	new msg[MAX_INPUT];
	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}
	if(health >= 100.0 || health < 1.0) {
		SetPlayerHealth(pid, 100.0);
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_ADMIN, "You have healed yourself");

			format(msg, sizeof(msg), "%s has healed themself", ReturnPlayerName(playerid));
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_PLAYER, "You have been healed");
			} else {
				format(msg, sizeof(msg), "%s has healed you", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_PLAYER, msg);
			}

			format(msg, sizeof(msg), "%s has been healed", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has healed %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		}
	} else {
		SetPlayerHealth(pid, health);
		if(pid == playerid) {
			format(msg, sizeof(msg), "You have set your health to %0.1f", health);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has set their health to %0.1f", ReturnPlayerName(playerid), health);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "Your health has been set to %0.1f", health);
			} else {
				format(msg, sizeof(msg), "%s has set your health to %0.1f", ReturnPlayerName(playerid), health);
			}
			SendClientMessage(pid, COLOUR_PLAYER, msg);

			format(msg, sizeof(msg), "You have set %s's health to %0.1f", ReturnPlayerName(pid), health);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has set %s's health to %0.1f", ReturnPlayerName(playerid), ReturnPlayerName(pid), health);
		}
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_ahealall(const playerid, params[])
{
	if(LevelCheck(playerid, E_HEALALL_LEVEL)) return 1;

	new Float:health = floatstr(params);

	new msg[MAX_INPUT];
	if(health < 1.0 || health >= 100.0) {
		LoopPlayers(i) {
			SetPlayerHealth(i, 100.0);
		}
		format(msg, sizeof(msg), "%s has healed everyone", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessageToAll(COLOUR_PLAYER, "Everyone has been healed");
		} else {
			SendClientMessageToAll(COLOUR_PLAYER, msg);
		}
	} else {
		LoopPlayers(i) {
			SetPlayerHealth(i, health);
		}
		format(msg, sizeof(msg), "%s has set everyone's health to %0.1f", ReturnPlayerName(playerid), health);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "Everyone's health has been set to %0.1f", health);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

dcmd_aimitate(const playerid, params[])
{
	if(LevelCheck(playerid, E_IMITATE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aimitate [player] [message]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], msg[MAX_INPUT];
	sscanf(params, "ss", pname, sizeof(pname), msg, sizeof(msg));
	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot imitate yourself");
		return 1;
	}
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot imitate level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
	if(msg[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aimitate [player] [message]");
		return 1;
	}
	SendPlayerMessageToAll(pid, msg);

	format(msg, sizeof(msg), "%s has imitated %s (%s)", ReturnPlayerName(playerid), ReturnPlayerName(pid), msg);
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aimmune(const playerid, params[])
{
	if(LevelCheck(playerid, E_IMMUNE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aimmune [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new msg[MAX_INPUT], filename[MAX_STRING];
	format(filename, sizeof(filename), PLAYERFOLDER "settings_%s.ini", ReturnPlayerName(pid));
	if(gPlayerData[pid][E_IMMUNE]) {
		if(pid != playerid) {
			format(msg, sizeof(msg), "%s's immunity from the ping kicker has been removed", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_WARNING, "Your immunity from the ping kicker has been removed");
			} else {
				format(msg, sizeof(msg), "%s has removed your immunity from the pingkicker", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_WARNING, msg);
			}

			format(msg, sizeof(msg), "%s has removed %s's immunity from the ping kicker", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You have removed your immunity from the pingkicker");
			format(msg, sizeof(msg), "%s has removed their immunity from the ping kicker", ReturnPlayerName(playerid));
		}
	} else {
		dini_Create(filename);
		if(pid != playerid) {
			format(msg, sizeof(msg), "%s has been made immune from the ping kicker", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_PLAYER, "You have been made immune from the ping kicker");
			} else {
				format(msg, sizeof(msg), "%s has made you immune from the pingkicker", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_PLAYER, msg);
			}

			format(msg, sizeof(msg), "%s has made %s immune from the ping kicker", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		} else {
			SendClientMessage(playerid, COLOUR_ADMIN, "You have made yourself immune from the pingkicker");
			format(msg, sizeof(msg), "%s has made themself immune from the ping kicker", ReturnPlayerName(playerid));
		}
	}
	gPlayerData[pid][E_IMMUNE] = !gPlayerData[pid][E_IMMUNE];
	dini_BoolSet(filename, "PingImmunity", gPlayerData[pid][E_IMMUNE]);

	LogAction(msg);
	AddLogString(msg);
	return 1;
}


dcmd_ainfo(const playerid, params[])
{
	if(LevelCheck(playerid, E_INFO_LEVEL)) return 1;

	if(params[0] == '\0') {
		if(playerid == INVALID_PLAYER_ID) {
			print("ID   Name              Level  Ping  IP               Country");
			LoopPlayers(i) {
				printf("%3i  %16s  %5i %5i  %15s  %s", i, ReturnPlayerName(i), gPlayerData[i][E_ADMINLEVEL], GetAvePing(i), ReturnPlayerIP(i), ReturnCuntName(gPlayerData[i][E_COUNTRY]));
			}
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ainfo [player]");
		}
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new Float:phel, Float:parm, msg[MAX_INPUT];
	format(msg, sizeof(msg), "Name: %s  ID: %i  Level: %i", ReturnPlayerName(pid), pid, gPlayerData[pid][E_ADMINLEVEL]);
	if(gPlayerData[pid][E_ADMINLEVEL] > 0 && strcmp(gPlayerData[pid][E_NAME], ReturnPlayerName(pid), true)) {
		format(msg, sizeof(msg), "%s  Admin name: %s", msg, gPlayerData[pid][E_NAME]);
	}
	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_JAILED) {
		strcat(msg, "  Status: jailed");
		if(gPlayerData[pid][E_STATE] & ADMIN_STATE_MUTED) strcat(msg, "+muted");
		if(gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) strcat(msg, "+frozen");
		if(gPlayerData[pid][E_STATE] & ADMIN_STATE_DESYNCED) strcat(msg, "+desynced");
	} else if(gPlayerData[pid][E_STATE] & ADMIN_STATE_MUTED) {
		strcat(msg, "  Status: muted");
		if(gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) strcat(msg, "+frozen");
		if(gPlayerData[pid][E_STATE] & ADMIN_STATE_DESYNCED) strcat(msg, "+desynced");
	} else if(gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) {
		strcat(msg, "  Status: frozen");
		if(gPlayerData[pid][E_STATE] & ADMIN_STATE_DESYNCED) strcat(msg, "+desynced");
	} else if(gPlayerData[pid][E_STATE] & ADMIN_STATE_DESYNCED) {
		strcat(msg, "  Status: desynced");
	}
	SendMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "IP: %s  Country: %s  Ping: %i  Ave Ping: %i", ReturnPlayerIP(pid), ReturnCuntName(gPlayerData[pid][E_COUNTRY]), GetPlayerPing(pid), GetAvePing(pid));
	if(gPlayerData[pid][E_IMMUNE]) strcat(msg, " (immune)");
	SendMessage(playerid, COLOUR_ADMIN, msg);

	GetPlayerHealth(pid, phel);
	GetPlayerArmour(pid, parm);

	new time = (GetTickCount() - gPlayerData[pid][E_LAST_ACTIVE]) / 1000;
	if(!IsSpawned(pid) || time <= 1) {
		format(msg, sizeof(msg), "Health: %0.1f  Armour: %0.1f  Cash: %i", phel, parm, GetPlayerMoney(pid));
	} else if(time > 3600) {
		new hours = time / 3600,
			minutes = (time - hours * 3600) / 60;
		format(msg, sizeof(msg), "Health: %0.1f  Armour: %0.1f  Cash: %i  Idle: %i hrs %i min %i sec", phel, parm, GetPlayerMoney(pid), hours, minutes, time - hours * 3600 - minutes * 60);
	} else if(time > 60) {
		new minutes = time / 60;
		format(msg, sizeof(msg), "Health: %0.1f  Armour: %0.1f  Cash: %i  Idle: %i min %i sec", phel, parm, GetPlayerMoney(pid), minutes, time - minutes * 60);
	} else {
		format(msg, sizeof(msg), "Health: %0.1f  Armour: %0.1f  Cash: %i  Idle: %i sec", phel, parm, GetPlayerMoney(pid), time);
	}
	SendMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "Location: %s  Interior: %i  World: %i", ReturnPlayerZone(pid), GetPlayerInterior(pid), GetPlayerVirtualWorld(pid));
	SendMessage(playerid, COLOUR_ADMIN, msg);

	if(IsPlayerInAnyVehicle(pid)) {
		GetVehicleHealth(GetPlayerVehicleID(pid), phel);
		format(msg, sizeof(msg), "Vehicle: %s  VehicleID: %i  Vehicle Health: %i", ReturnPlayerVehicleName(pid), GetPlayerVehicleID(pid), floatround(phel));
		SendMessage(playerid, COLOUR_ADMIN, msg);
	} else if(GetPlayerSpecialAction(pid) == SPECIAL_ACTION_USEJETPACK) {
		SendMessage(playerid, COLOUR_ADMIN, "Vehicle: Jetpack");
	} else if(GetPlayerState(pid) == PLAYER_STATE_SPECTATING) {
		if(gPlayerData[pid][E_SPECTATING]) {
			if(gPlayerData[pid][E_SPECID] != INVALID_PLAYER_ID) {
				format(msg, sizeof(msg), "Admin Spectating: %s(%i)", ReturnPlayerName(gPlayerData[pid][E_SPECID]), gPlayerData[pid][E_SPECID]);
				SendMessage(playerid, COLOUR_ADMIN, msg);
			} else {
				SendMessage(playerid, COLOUR_ADMIN, "Admin Spectating: Unknown");
			}
		} else {
			SendMessage(playerid, COLOUR_ADMIN, "Spectating: Unknown");
		}
	}

	new pweapon,
		pammo,
		string[512] = "Weapons:";
	for(new i; i < 13; i++) {
		GetPlayerWeaponData(pid, i, pweapon, pammo);
		if(pweapon != 0) {
			if(pammo == 0xFFFF || pammo == 1) format(string, sizeof(string), "%s %s", string, ReturnWeaponName(pweapon));
			else format(string, sizeof(string), "%s %s(%i)", string, ReturnWeaponName(pweapon), pammo);
		}
	}
	if(string[8]) {
		if(playerid == INVALID_PLAYER_ID) {
			print(string);
		} else {
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
		}
	}
	return 1;
}

dcmd_ainterior(const playerid, params[])
{
	if(LevelCheck(playerid, E_INTERIOR_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ainterior [player] [interior]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], interior;
	sscanf(params, "si", pname, sizeof(pname), interior);

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	new msg[MAX_INPUT];
	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	if(interior < 0 || interior > 255) {
		SendClientMessage(playerid, COLOUR_WARNING, "The interior must be between 0 and 255");
		return 1;
	}

	SetPlayerInterior(pid, interior);

	new vid = GetPlayerVehicleID(pid);
	if(vid) {
		LinkVehicleToInterior(vid, interior);
		LoopPlayers(i) {
			if(GetPlayerVehicleID(i) == vid) {
				SetPlayerInterior(i, interior);
			}
		}
	}

	if(pid == playerid) {
		format(msg, sizeof(msg), "You have set your interior to %i", interior);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has set their interior to %i", ReturnPlayerName(playerid), interior);
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "Your interior has been set to %i", interior);
		} else {
			format(msg, sizeof(msg), "%s has set your interior to %i", ReturnPlayerName(playerid), interior);
		}
		SendClientMessage(pid, COLOUR_PLAYER, msg);

		format(msg, sizeof(msg), "%s's interior has been set to %i", ReturnPlayerName(pid), interior);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has set %s's interior to %i", ReturnPlayerName(playerid), ReturnPlayerName(pid), interior);
	}

	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aip(const playerid, params[])
{
	if(LevelCheck(playerid, E_IP_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aip [player] or [player name]");
		return 1;
	}

	new pid = FindPlayer(params), file[MAX_STRING], string[MAX_STRING];
	if(pid == INVALID_PLAYER_ID) {
		format(file, sizeof(file), ALIASFOLDER "name_%c.ini", toupper(params[0]));
		if(dini_Get(file, params, string)) {
			format(string, sizeof(string), "%s's IPs: %s", params, string);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			return 1;
		}
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new pIP[MAX_IP], pname[MAX_PLAYER_NAME];
	GetPlayerIp(pid, pIP, sizeof(pIP));
	GetPlayerName(pid, pname, sizeof(pname));
	format(string, sizeof(string), "Player: %s  IP: %s  Country: %s", pname, pIP, ReturnCuntName(gPlayerData[pid][E_COUNTRY]));
	SendClientMessage(playerid, COLOUR_ADMIN, string);

	format(file, sizeof(file), ALIASFOLDER "name_%c.ini", toupper(pname[0]));
	dini_Get(file, pname, string);

	new idx = strfindword(string, pIP);
	if(idx != -1) {
		strdel(string, idx, idx + strlen(pIP) + 1);
	}

	if(string[0] == '\0') return 1;
	format(string, sizeof(string), "Old IPs: %s", string);
	SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
	return 1;
}

dcmd_ajail(const playerid, params[])
{
	if(LevelCheck(playerid, E_JAIL_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ajail [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], jailtime, pname[MAX_PLAYER_NAME], reason[MAX_REASON];

	sscanf(params, "sss", pname, sizeof(pname), timestr, sizeof(timestr), reason, sizeof(reason));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot jail yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot jail level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(0 < (jailtime = strval(timestr)) < MIN_ACTION_TIME) {
		jailtime = MIN_ACTION_TIME;
	}

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_JAILED) {
		if(gPlayerData[pid][E_JAIL_TIME] == 0) {
			if(jailtime <= 0) {
				format(msg, sizeof(msg), "%s is already jailed", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			} else {
				UnwriteAdminState(pid, ADMIN_STATE_JAILED);
				gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", jailtime * 1000, 0, "i", pid);
				gPlayerData[pid][E_JAIL_TIME] = gettime() + jailtime;

				format(msg, sizeof(msg), "%s's jail time has been set to %i seconds", ReturnPlayerName(pid), jailtime);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's jail time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), jailtime);
			}
		} else {
			if(jailtime <= 0) {
				WriteAdminState(pid, ADMIN_STATE_JAILED);
				if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
				gPlayerData[pid][E_JAIL_TIME] = 0;

				format(msg, sizeof(msg), "%s's jail has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's jail permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + jailtime - gPlayerData[pid][E_JAIL_TIME];

				if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
				gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", jailtime * 1000, 0, "i", pid);
				gPlayerData[pid][E_JAIL_TIME] += timediff;

				format(msg, sizeof(msg), "%s's jail time has been set to %i (%s%i) seconds", ReturnPlayerName(pid), jailtime, timediff < 0 ? ("") : ("+"), timediff);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's jail time to %i (%s%i) seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), jailtime, timediff < 0 ? ("") : ("+"), timediff);
			}
		}
		LogAction(msg);
		AddLogString(msg);
		return 1;
	}

	if(jailtime != 0) {
		if(reason[0] == '\0') {
			reason = "No reason";
		}
	}
	else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	}
	else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	}
	else {
		reason = "No reason";
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_JAILED;
	if(IsSpawned(pid)) {
		StoreSpawnData(pid);

		SetPlayerVirtualWorld(pid, pid + 1);
		alar_OnPlayerWorldChange(pid, pid + 1);
		ResetPlayerWeapons(pid);
		SetPlayerPos(pid, 197.6661, 173.8179, 1003.0234);
		SetPlayerFacingAngle(pid, 0.0);
		SetPlayerInterior(pid, 3);
	} else if(GetPlayerState(pid) == PLAYER_STATE_SPECTATING) {
		if(gPlayerData[pid][E_SPECID] != INVALID_PLAYER_ID) ClearSpawnData(pid);
		TogglePlayerSpectating(pid, false);
		SetTimerEx("alar_jailplayer", 500, 0, "i", pid);
	}

	if(jailtime > 0) {
		format(msg, sizeof(msg), "%s has been jailed by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), jailtime, reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been jailed for %i seconds (%s)", ReturnPlayerName(pid), jailtime, reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
		if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
		gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", jailtime * 1000, 0, "i", pid);
		gPlayerData[pid][E_JAIL_TIME] = gettime() + jailtime;
	} else {
		format(msg, sizeof(msg), "%s has been jailed by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been jailed (%s)" , ReturnPlayerName(pid), reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);

		WriteAdminState(pid, ADMIN_STATE_JAILED);
	}
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_JAILED);
	return 1;
}

dcmd_akick(const playerid, params[])
{
	if(LevelCheck(playerid, E_KICK_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player]");
		return 1;
	}
	new reason[MAX_REASON] = "No reason", pname[MAX_PLAYER_NAME];
	sscanf(params, "ss", pname, sizeof(pname), reason, sizeof(reason));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot kick yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot kick level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "You have been kicked from the server (%s)", reason);
	} else {
		format(msg, sizeof(msg), "You have been kicked from the server by %s (%s)", ReturnPlayerName(playerid), reason);
	}
	SendClientMessage(pid, COLOUR_WARNING, msg);
	format(msg, sizeof(msg), "%s(%i) has been kicked from the server by %s (%s)", ReturnPlayerName(pid), pid, ReturnPlayerName(playerid), reason);
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (%s)", ReturnPlayerName(pid), pid, reason);
	}
	AddJoinString(pid, COLOUR_KICK, msg);
	Kick(pid);
	return 1;
}

dcmd_alogin(const playerid, params[])
{
	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /alogin [password]");
		return 1;
	}
	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are already logged in");
		return 1;
	}
	new pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof(pname));

	if(gPlayerData[playerid][E_NAME][0] == '\0') {
		strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
	}

	new pLEVEL,
		pIP[MAX_IP],
		pPW[33],
		#if LOG_LINES > 0 && LOG_PAGES > 0
			page,
		#endif
		manuallogin;

	#if LOG_LINES > 0 && LOG_PAGES > 0
		#define THEIFSTUFF		GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, gPlayerData[playerid][E_STATE], manuallogin, page)
	#else
		#define THEIFSTUFF		GetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, pIP, pPW, gPlayerData[playerid][E_STATE], manuallogin)
	#endif
	if(THEIFSTUFF) {
		#undef THEIFSTUFF
		new msg[MAX_INPUT];
		if(strcmp(pPW, MD5_Hash(params), true) == 0) {
			Bit_Set(g_bitAdmins, playerid, 1);
			gPlayerData[playerid][E_ADMINLEVEL] = pLEVEL;

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));
			#if LOG_LINES > 0 && LOG_PAGES > 0
				if(page > 0 && page <= LOG_PAGES && cmdchk(playerid, E_LOG_LEVEL)) {
					new offset = (page - 1) * LOG_LINES;
					for(new i; i < LOG_LINES; i++) {
						TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					#if LOG_LINES > 0 && LOG_PAGES > 0
						TextDrawShowForPlayer(playerid, gLogPage[page-1]);
					#endif
					gPlayerData[playerid][E_LOG_PAGE] = page;
				}
			#endif

			#if LOG_LINES > 0 && LOG_PAGES > 0
				SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, ReturnPlayerIP(playerid), pPW, gPlayerData[playerid][E_STATE], manuallogin, gPlayerData[playerid][E_LOG_PAGE]);
			#else
				SetPlayerData(gPlayerData[playerid][E_NAME], pLEVEL, ReturnPlayerIP(playerid), pPW, gPlayerData[playerid][E_STATE], manuallogin);
			#endif

			if(strcmp(pname, gPlayerData[playerid][E_NAME], true)) {
				format(msg, sizeof(msg), "You have successfully logged in as %s (Level %i)", gPlayerData[playerid][E_NAME], gPlayerData[playerid][E_ADMINLEVEL]);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has logged in as an admin (Name: %s, Level %i)", pname, gPlayerData[playerid][E_NAME], gPlayerData[playerid][E_ADMINLEVEL]);
			} else {
				format(msg, sizeof(msg), "You have successfully logged in (Level %i)", gPlayerData[playerid][E_ADMINLEVEL]);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has logged in as an admin (Level %i)", gPlayerData[playerid][E_NAME], gPlayerData[playerid][E_ADMINLEVEL]);
			}

			if(gPlayerData[playerid][E_KICK] != 0) {
				KillTimer(gPlayerData[playerid][E_KICK]);
				gPlayerData[playerid][E_KICK] = 0;
			}

			if(gServerData[E_LOG_LOGINS]) {
				AddLogString(msg);
			} else {
				LoopPlayers(i) {
					if(gPlayerData[i][E_ADMINLEVEL] > 0 && i != playerid) {
						SendClientMessage(i, COLOUR_ADMIN, msg);
					}
				}
			}
			LogAction(msg);

			CallRemoteFunction("OnAdminLogin", "ii", playerid, gPlayerData[playerid][E_ADMINLEVEL]);
			return 1;
		}

		SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Incorrect password)");
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Incorrect password)", pname, playerid);
		AddJoinString(playerid, COLOUR_KICK, msg);
		AddLogString(msg);
		LogAction(msg);
		Kick(playerid);
		return 1;
	} else if(IsPlayerAdmin(playerid) && gServerData[E_RCON_LEVEL] > 0) {	// Using rcon
			new msg[MAX_INPUT];
			strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
			SetPlayerData(pname, gServerData[E_RCON_LEVEL], ReturnPlayerIP(playerid), MD5_Hash(params));
			format(msg, sizeof(msg), "You have made a level %i admin. Type /ahelp for more info", gServerData[E_RCON_LEVEL]);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "Your password has been set to \"%s\"", params);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			gPlayerData[playerid][E_ADMINLEVEL] = gServerData[E_RCON_LEVEL];

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));

			format(msg, sizeof(msg), "%s has been made an admin (level %i)", ReturnPlayerName(playerid), gServerData[E_RCON_LEVEL]);
			LogAction(msg);
			AddLogString(msg);
			return 1;
	}
	SendClientMessage(playerid, COLOUR_WARNING, "Login failure");
	return 1;
}

dcmd_aloginas(const playerid, params[])
{
	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aloginas [name] [password]");
		return 1;
	}
	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are already logged in");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], password[MAX_INPUT];
	sscanf(params, "ss", pname, sizeof(pname), password, sizeof(password));

	if(!isValidName(pname)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}
	if(password[0] == '\0') {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid password");
		return 1;
	}

	if(gPlayerData[playerid][E_KICK] != 0 && strcmp(pname, gPlayerData[playerid][E_NAME], true) != 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must login to your own account");
		return 1;
	}

	new pLEVEL,
	pIP[MAX_IP],
	pPW[33],
	hidden,
	#if LOG_LINES > 0 && LOG_PAGES > 0
		page,
	#endif
	manuallogin;

	#if LOG_LINES > 0 && LOG_PAGES > 0
		#define THEIFSTUFF		GetPlayerData(pname, pLEVEL, pIP, pPW, hidden, manuallogin, page)
	#else
		#define THEIFSTUFF		GetPlayerData(pname, pLEVEL, pIP, pPW, hidden, manuallogin)
	#endif
	if(THEIFSTUFF) {
		#undef THEIFSTUFF
		new msg[MAX_INPUT];
		if(strcmp(pPW, MD5_Hash(password), true) == 0) {
			LoopPlayers(i) {
				if(gPlayerData[i][E_NAME][0] != '\0' && strcmp(pname, gPlayerData[i][E_NAME], true) == 0) {
					format(msg, sizeof(msg), "%s's account is already in use by %s(%i)", pname, ReturnPlayerName(i), i);
					SendClientMessage(playerid, COLOUR_WARNING, msg);
					return 1;
				}
			}
			LoopPlayers(i) {
				if(strcmp(pname, ReturnPlayerName(i), true) == 0) {
					format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Admin impersonation)", pname, playerid);
					SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Admin impersonation)");
					AddJoinString(playerid, COLOUR_KICK, msg);
					AddLogString(msg);
					LogAction(msg);
					Kick(playerid);
					return 1;
				}
			}

			Bit_Set(g_bitAdmins, playerid, 1);
			gPlayerData[playerid][E_ADMINLEVEL] = pLEVEL;
			gPlayerData[playerid][E_STATE] |= ADMIN_STATE_HIDDEN;
			strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));

			#if LOG_LINES > 0 && LOG_PAGES > 0
				SetPlayerData(pname, pLEVEL, ReturnPlayerIP(playerid), pPW, gPlayerData[playerid][E_STATE], manuallogin, page);
			#else
				SetPlayerData(pname, pLEVEL, ReturnPlayerIP(playerid), pPW, gPlayerData[playerid][E_STATE], manuallogin);
			#endif
			format(msg, sizeof(msg), "You have successfully logged in as %s (Level %i)", pname, gPlayerData[playerid][E_ADMINLEVEL]);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));
			#if LOG_LINES > 0 && LOG_PAGES > 0
				if(page > 0 && page <= LOG_PAGES && cmdchk(playerid, E_LOG_LEVEL)) {
					new offset = (page - 1) * LOG_LINES;
					for(new i; i < LOG_LINES; i++) {
						TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					#if LOG_PAGES > 1
						TextDrawShowForPlayer(playerid, gLogPage[page-1]);
					#endif
					gPlayerData[playerid][E_LOG_PAGE] = page;
				}
			#endif

			format(msg, sizeof(msg), "%s has logged in as an admin (Name: %s, Level %i)", ReturnPlayerName(playerid), pname, gPlayerData[playerid][E_ADMINLEVEL]);

			if(gPlayerData[playerid][E_KICK] != 0) {
				KillTimer(gPlayerData[playerid][E_KICK]);
				gPlayerData[playerid][E_KICK] = 0;
			}

			if(gServerData[E_LOG_LOGINS]) {
				AddLogString(msg);
			} else {
				LoopPlayers(i) {
					if(gPlayerData[i][E_ADMINLEVEL] > 0 && i != playerid) {
						SendClientMessage(i, COLOUR_ADMIN, msg);
					}
				}
			}
			LogAction(msg);

			CallRemoteFunction("OnAdminLogin", "ii", playerid, gPlayerData[playerid][E_ADMINLEVEL]);
			return 1;
		}

		SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Incorrect password)");
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Incorrect password)", pname, playerid);
		AddJoinString(playerid, COLOUR_KICK, msg);
		AddLogString(msg);
		LogAction(msg);
		Kick(playerid);
		return 1;
	}
	SendClientMessage(playerid, COLOUR_WARNING, "Login failure");
	return 1;
}

dcmd_amsg(const playerid, params[])
{
	if(LevelCheck(playerid, E_MSG_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amsg [message]");
		return 1;
	}

	new msg[MAX_INPUT + MAX_PLAYER_NAME + 20] = "<Admin> ";
	strcat(msg, params);
	SendWrappedMessageToAll(COLOUR_MSG, msg);
	format(msg, sizeof(msg), "%s sent admin text: \"%s\"", ReturnPlayerName(playerid), params);
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_amute(const playerid, params[])
{
	if(LevelCheck(playerid, E_MUTE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amute [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], mutetime, pname[MAX_PLAYER_NAME], reason[MAX_REASON];

	sscanf(params, "sss", pname, sizeof(pname), timestr, sizeof(timestr), reason, sizeof(reason));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot mute yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot mute level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(0 < (mutetime = strval(timestr)) < MIN_ACTION_TIME) {
		mutetime = MIN_ACTION_TIME;
	}

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_MUTED) {
		if(gPlayerData[pid][E_MUTE_TIME] == 0) {
			if(mutetime <= 0) {
				format(msg, sizeof(msg), "%s is already muted", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
			UnwriteAdminState(pid, ADMIN_STATE_MUTED);
			gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", mutetime * 1000, 0, "i", pid);
			gPlayerData[pid][E_MUTE_TIME] = gettime() + mutetime;

			format(msg, sizeof(msg), "%s's mute time has been set to %i seconds", ReturnPlayerName(pid), mutetime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set %s's mute time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), mutetime);
		} else {
			if(mutetime <= 0) {
				WriteAdminState(pid, ADMIN_STATE_MUTED);
				if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
				gPlayerData[pid][E_MUTE_TIME] = 0;

				format(msg, sizeof(msg), "%s's mute has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's mute permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + mutetime - gPlayerData[pid][E_MUTE_TIME];

				if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
				gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", mutetime * 1000, 0, "i", pid);
				gPlayerData[pid][E_MUTE_TIME] += timediff;

				format(msg, sizeof(msg), "%s's mute time has been set to %i (%s%i) seconds", ReturnPlayerName(pid), mutetime, timediff < 0 ? ("") : ("+"), timediff);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's mute time to %i (%s%i) seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), mutetime, timediff < 0 ? ("") : ("+"), timediff);
			}
		}
		LogAction(msg);
		AddLogString(msg);
		return 1;
	}

	if(mutetime != 0) {
		if(reason[0] == '\0') {
			reason = "No reason";
		}
	}
	else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	}
	else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	}
	else {
		reason = "No reason";
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_MUTED;

	if(mutetime > 0) {
		format(msg, sizeof(msg), "%s has been muted by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), mutetime, reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been muted for %i seconds (%s)", ReturnPlayerName(pid), mutetime, reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
		if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
		gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", mutetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_MUTE_TIME] = gettime() + mutetime;
	} else {
		format(msg, sizeof(msg), "%s has been muted by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been muted (%s)", ReturnPlayerName(pid), reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);
		WriteAdminState(pid, ADMIN_STATE_MUTED);
	}
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_MUTED);
	return 1;
}

dcmd_apm(const playerid, params[])
{
	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, gPlayerData[playerid][E_ADMINLEVEL] > 0 ? ("USAGE: /apm [player] [message]") : ("USAGE: /apm [message]"));
		return 1;
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		new pname[MAX_PLAYER_NAME], msg[MAX_INPUT];
		sscanf(params, "ss", pname, sizeof(pname), msg, sizeof(msg));
		new pid = FindPlayer(pname);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot pm yourself");
			return 1;
		}
		if(msg[0] == '\0') {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apm [player] [message]");
			return 1;
		}

		for(new i; i < sizeof(gRageWords); i++) {
			if(strfind(msg, gRageWords[i], true) != -1) {
				gPlayerData[playerid][E_LAST_RAGE] = gettime();
				break;
			}
		}

		new string[MAX_INPUT + 2 * MAX_PLAYER_NAME + 30];
		if(gPlayerData[pid][E_ADMINLEVEL] > 0) {
			format(string, sizeof(string), "<Adminchat> %s: %s", ReturnPlayerName(playerid), msg);
			SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, string);
			LogAction(string);
			return 1;
		}
		format(string, sizeof(string), "PM from Admins: %s", msg);
		SendClientMessage(pid, COLOUR_MSG, string);

		format(string, sizeof(string), "PM sent to %s(%i): %s", ReturnPlayerName(pid), pid, msg);
		SendWrappedMessageToPlayer(playerid, COLOUR_MSG, string);
		format(string, sizeof(string), "%s sent an admin pm to %s(%i): %s", ReturnPlayerName(playerid), ReturnPlayerName(pid), pid, msg);

		new Bit:bitPlayers[Bit_Bits(MAX_PLAYERS)];
		bitPlayers = g_bitAdmins;
		Bit_Vet(bitPlayers, playerid);
		SendWrappedMessageToClients(bitPlayers, COLOUR_MSG, string);
		LogAction(string);
	} else {
		new msg[MAX_INPUT + MAX_PLAYER_NAME + 20], pname[MAX_PLAYER_NAME];
		GetPlayerName(playerid, pname, sizeof(pname));
		format(msg, sizeof(msg), "PM from %s(%i): %s", pname, playerid, params);
		SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, msg);
		format(msg, sizeof(msg), "%s sent a pm to admins \"%s\"", pname, params);
		LogAction(msg);
		format(msg, sizeof(msg), "PM sent to admins: %s", params);
		SendClientMessage(playerid, COLOUR_MSG, msg);
	}
	return 1;
}

dcmd_apunch(const playerid, params[])
{
	if(LevelCheck(playerid, E_PUNCH_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apunch [player] (amount)");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], amount = gServerData[E_PUNCH_DECREMENT];
	sscanf(params, "si", pname, sizeof(pname), amount);

	new pid = FindPlayer(pname), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot punch level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	if(GetPlayerState(pid) == PLAYER_STATE_ONFOOT) ApplyAnimation(pid, "FIGHT_B", "HitB_3", 4.1, 0, 1, 1, 0, 1200);

	if(amount < 0 || amount > 200) {
		amount = gServerData[E_PUNCH_DECREMENT];
	}

	if(amount > 0) {
		new Float:phealth, Float:parmour;
		GetPlayerHealth(pid, phealth);
		GetPlayerArmour(pid, parmour);
		parmour = floatsub(parmour, amount);

		if(parmour <= 0.0) {
			phealth += parmour;
			SetPlayerArmour(pid, (parmour = 0.0));
			if(phealth <= 0.0) SetPlayerHealth(pid, (phealth = 0.0));
			else SetPlayerHealth(pid, phealth);
		}
		else SetPlayerArmour(pid, parmour);

		if(pid != playerid) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_WARNING, "You have been punched");
			} else {
				format(msg, sizeof(msg), "You have been punched by %s", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_WARNING, msg);
			}
			format(msg, sizeof(msg), "%s has been punched (Armour: %i, Health: %i)", ReturnPlayerName(pid), floatround(parmour), floatround(phealth));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has punched %s by %i", ReturnPlayerName(playerid), ReturnPlayerName(pid), amount);
		} else {
			format(msg, sizeof(msg), "You have punched yourself (Armour: %i, Health: %i)", floatround(parmour), floatround(phealth));
			SendClientMessage(pid, COLOUR_WARNING, msg);

			format(msg, sizeof(msg), "%s has punched themself by %i", ReturnPlayerName(playerid), amount);
		}
	} else {
		if(pid != playerid) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_WARNING, "You have been punched");
			} else {
				format(msg, sizeof(msg), "You have been punched by %s", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_WARNING, msg);
			}
			format(msg, sizeof(msg), "%s has been punched", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has punched %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		} else {
			SendClientMessage(pid, COLOUR_WARNING, "You have punched yourself");
			format(msg, sizeof(msg), "%s has punched themself", ReturnPlayerName(playerid));
		}
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_ar(const playerid, params[])
{
	return dcmd_arepair(playerid, params);
}

dcmd_arape(const playerid, params[])
{
	if(LevelCheck(playerid, E_RAPE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arape [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], rapetime, pname[MAX_PLAYER_NAME], reason[MAX_REASON];

	sscanf(params, "sss", pname, sizeof(pname), timestr, sizeof(timestr), reason, sizeof(reason));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot rape yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot rape level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(0 < (rapetime = strval(timestr)) < MIN_ACTION_TIME) {
		rapetime = MIN_ACTION_TIME;
	}

	if(gPlayerData[pid][E_STATE] & (ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED) == (ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED)) {
		if(gPlayerData[pid][E_JAIL_TIME] == 0 && gPlayerData[pid][E_MUTE_TIME] == 0 && gPlayerData[pid][E_FREEZE_TIME] == 0) {
			if(rapetime <= 0) {
				format(msg, sizeof(msg), "%s has already been raped", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
			UnwriteAdminState(pid, ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);

			if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
			if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
			if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);

			gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", rapetime * 1000, 0, "i", pid);
			gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", rapetime * 1000, 0, "i", pid);
			gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", rapetime * 1000, 0, "i", pid);

			gPlayerData[pid][E_MUTE_TIME] = gettime() + rapetime;
			gPlayerData[pid][E_JAIL_TIME] = gettime() + rapetime;
			gPlayerData[pid][E_FREEZE_TIME] = gettime() + rapetime;

			format(msg, sizeof(msg), "%s's rape time has been set to %i seconds", ReturnPlayerName(pid), rapetime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set %s's rape time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), rapetime);
		} else {
			if(rapetime <= 0) {
				WriteAdminState(pid, ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);

				if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
				if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
				if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);

				gPlayerData[pid][E_MUTE_TIME] = 0;
				gPlayerData[pid][E_JAIL_TIME] = 0;
				gPlayerData[pid][E_FREEZE_TIME] = 0;

				format(msg, sizeof(msg), "%s's rape has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's rape permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				UnwriteAdminState(pid, ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);

				if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
				if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
				if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);

				gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", rapetime * 1000, 0, "i", pid);
				gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", rapetime * 1000, 0, "i", pid);
				gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", rapetime * 1000, 0, "i", pid);

				gPlayerData[pid][E_MUTE_TIME] = gettime() + rapetime;
				gPlayerData[pid][E_JAIL_TIME] = gettime() + rapetime;
				gPlayerData[pid][E_FREEZE_TIME] = gettime() + rapetime;

				format(msg, sizeof(msg), "%s's rape time has been set to %i seconds", ReturnPlayerName(pid), rapetime);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's rape time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), rapetime);
			}
		}
		LogAction(msg);
		AddLogString(msg);
		return 1;
	}

	if(rapetime != 0) {
		if(reason[0] == '\0') {
			reason = "No reason";
		}
	}
	else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	}
	else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	}
	else {
		reason = "No reason";
	}

	if(gPlayerData[pid][E_UNJAIL]) {
		KillTimer(gPlayerData[pid][E_UNJAIL]);
		gPlayerData[pid][E_UNJAIL] = 0;
	}
	if(gPlayerData[pid][E_UNMUTE]) {
		KillTimer(gPlayerData[pid][E_UNMUTE]);
		gPlayerData[pid][E_UNMUTE] = 0;
	}
	if(gPlayerData[pid][E_UNFREEZE]) {
		KillTimer(gPlayerData[pid][E_UNFREEZE]);
		gPlayerData[pid][E_UNFREEZE] = 0;
	}

	#if USECALLBACKS
		new oldstatus = gPlayerData[pid][E_STATE];
	#endif
	if(IsSpawned(pid)) {
		if(~gPlayerData[pid][E_STATE] & ADMIN_STATE_JAILED) {
			SetPlayerVirtualWorld(pid, pid + 1);
			alar_OnPlayerWorldChange(pid, pid + 1);
			SetPlayerPos(pid, 197.6661, 173.8179, 1003.0234);
			SetPlayerFacingAngle(pid, 0.0);
			SetPlayerInterior(pid, 3);
			SetCameraBehindPlayer(pid);
		}
		if(~gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) {
			TogglePlayerControllable(pid, false);
		}
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED;

	if(rapetime > 0) {
		format(msg, sizeof(msg), "%s has been raped by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), rapetime, reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been raped for %i seconds (%s)", ReturnPlayerName(pid), rapetime, reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);

		if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
		if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
		if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);
		gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", rapetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", rapetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", rapetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_MUTE_TIME] = gPlayerData[pid][E_JAIL_TIME] = gPlayerData[pid][E_FREEZE_TIME] = gettime() + rapetime;
	} else {
		format(msg, sizeof(msg), "%s has been raped by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), reason);
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "%s has been raped (%s)", ReturnPlayerName(pid), reason);
		}
		SendClientMessageToAll(COLOUR_WARNING, msg);

		WriteAdminState(pid, ADMIN_STATE_MUTED | ADMIN_STATE_JAILED | ADMIN_STATE_FROZEN);
	}

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], oldstatus);
	return 1;
}

dcmd_aremcash(const playerid, params[])
{
	if(LevelCheck(playerid, E_REMCASH_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremcash [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			new msg[MAX_INPUT];
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	ResetPlayerMoney(pid);

	new msg[MAX_INPUT];
	if(playerid == pid) {
		SendClientMessage(pid, COLOUR_WARNING, "You have bankrupt yourself");
		format(msg, sizeof(msg), "%s has bankrupt themself", ReturnPlayerName(playerid));
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been bankrupted");
		} else {
			format(msg, sizeof(msg), "%s has bankrupt you", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}
		format(msg, sizeof(msg), "%s has been bankrupted", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has bankrupt %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aremweapons(const playerid, params[])
{
	if(LevelCheck(playerid, E_REMWEAPONS_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremguns [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	ResetPlayerWeapons(pid);

	if(playerid == pid) {
		SendClientMessage(pid, COLOUR_WARNING, "You have disarmed yourself");
		format(msg, sizeof(msg), "%s has disarmed themself", ReturnPlayerName(playerid));
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been disarmed");
		} else {
			format(msg, sizeof(msg), "%s has disarmed you", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}

		format(msg, sizeof(msg), "%s has been disarmed", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has disarmed %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_arepair(const playerid, params[])
{
	if(LevelCheck(playerid, E_REPAIR_LEVEL)) return 1;

	new pid = INVALID_PLAYER_ID;
	if(params[0] == '\0') {
		if(gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID) {
			pid = gPlayerData[playerid][E_SPECID];
		} else if(IsPlayerInAnyVehicle(playerid)) {
			pid = playerid;
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not in a vehicle");
			return 1;
		}
	} else {
		pid = FindPlayer(params);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}
	}

	new msg[MAX_INPUT];
	if(pid != playerid && !IsPlayerInAnyVehicle(pid)) {
		format(msg, sizeof(msg), "%s is not in a vehicle", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	SetVehicleHealth(GetPlayerVehicleID(pid), 1000.0);

	if(playerid == pid) {
		format(msg, sizeof(msg), "You have repaired your %s", ReturnPlayerVehicleName(pid));
		SendClientMessage(pid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has repaired their %s", ReturnPlayerName(playerid), ReturnPlayerVehicleName(pid));
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "Your %s has been repaired", ReturnPlayerVehicleName(pid));
		} else {
			format(msg, sizeof(msg), "%s has repaired your %s", ReturnPlayerName(playerid), ReturnPlayerVehicleName(pid));
		}
		SendClientMessage(pid, COLOUR_PLAYER, msg);

		format(msg, sizeof(msg), "You have repaired %s's %s", ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has repaired %s's %s", ReturnPlayerName(playerid), ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_arespawn(const playerid, params[])
{
	if(LevelCheck(playerid, E_RESPAWN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arespawn [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot respawn level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	SpawnPlayer(pid);

	if(playerid != pid) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_PLAYER, "You have been respawned");
		} else {
			format(msg, sizeof(msg), "You have been respawned by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_PLAYER, msg);
		}
		format(msg, sizeof(msg), "%s has been respawned", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has respawned %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));

	} else {
		SendClientMessage(pid, COLOUR_PLAYER, "You have respawned yourself");

		format(msg, sizeof(msg), "%s has respawned themself", ReturnPlayerName(playerid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_asay(const playerid, params[])
{
	if(LevelCheck(playerid, E_SAY_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asay [player] [message]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], msg[MAX_INPUT];
	sscanf(params, "ss", pname, sizeof(pname), msg, sizeof(msg));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(!isValidGameText(msg) || strlen(msg) > 80) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid message");
		return 1;
	}

	GameTextForPlayer(pid, ReturnGameText(msg), 5000, 3);

	new string[MAX_INPUT + 2 * MAX_PLAYER_NAME + 20];
	format(string, sizeof(string), "Gametext sent to %s: %s", ReturnPlayerName(pid), msg);
	SendWrappedMessageToPlayer(playerid, COLOUR_MSG, string);

	if(playerid == pid) {
		format(string, sizeof(string), "%s sent gametext to themself: \"%s\"", ReturnPlayerName(playerid), msg);
	} else {
		format(string, sizeof(string), "%s sent gametext to %s: \"%s\"", ReturnPlayerName(playerid), ReturnPlayerName(pid), msg);
	}

	LogAction(string);
	AddLogString(string);
	return 1;
}

dcmd_aselect(const playerid, params[])
{
	if(LevelCheck(playerid, E_SELECT_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aselect [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot put level %i admins into class selection", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	ForceClassSelection(pid);
	SetPlayerHealth(pid, 0.0);	 //No other way :'(

	if(playerid != pid) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_PLAYER, "You have been put into class selection");
		} else {
			format(msg, sizeof(msg), "You have been put into class selection by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_PLAYER, msg);
		}
		format(msg, sizeof(msg), "%s has been put into class selection", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has put %s into class selection", ReturnPlayerName(playerid), ReturnPlayerName(pid));

	} else {
		SendClientMessage(pid, COLOUR_PLAYER, "You have put yourself into class selection");

		format(msg, sizeof(msg), "%s has put themself into class selection", ReturnPlayerName(playerid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aservername(const playerid, params[])
{
	if(LevelCheck(playerid, E_SERVERNAME_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aservername [name]");
		return 1;
	}

	new string[MAX_INPUT];
	format(string, sizeof(string), "hostname %s", params);
	SendRconCommand(string);

	format(string, sizeof(string), "The server name has been changed to %s", params);
	SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);

	format(string, sizeof(string), "%s changed the server name to %s", ReturnPlayerName(playerid), params);

	LogAction(string);
	AddLogString(string);

	return 1;
}

dcmd_asetadmin(const playerid, params[])
{
	if(LevelCheck(playerid, E_SETADMIN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asetadmin [player] [level]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], plvl;

	if(sscanf(params, "si", pname, sizeof(pname), plvl)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must specify a level");
		return 1;
	}

	new msg[MAX_INPUT];
	if(plvl < 0 || plvl > gServerData[E_SETADMIN_LEVEL]) {
		format(msg, sizeof(msg), "Please specify a level between 0 and %i", gServerData[E_SETADMIN_LEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot modify your own account");
		return 1;
	}

	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot modify level %i admin accounts", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	GetPlayerName(pid, pname, sizeof(pname));
	if(plvl == 0) {
		if(gPlayerData[pid][E_ADMINLEVEL] == 0) {
			format(msg, sizeof(msg), "%s is not an admin", pname);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		if(cmdchk(pid, E_TELE_LEVEL)) AllowPlayerTeleport(pid, false);

		if(gPlayerData[pid][E_SPECTATING]) {
			SpawnUsingData(pid);
		}

		#if LOG_LINES > 0 && LOG_PAGES > 0
			if(gPlayerData[pid][E_LOG_PAGE]) {
				#if LOG_LINES > 1
					TextDrawHideForPlayer(pid, gLogPage[gPlayerData[pid][E_LOG_PAGE]-1]);
				#endif
				for(new i, offset = (gPlayerData[pid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
					TextDrawHideForPlayer(pid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
				}
				gPlayerData[pid][E_LOG_PAGE] = 0;
			}
		#endif

		new filename[MAX_STRING];
		format(filename, sizeof(filename), PLAYERFOLDER "settings_%s.ini", ReturnPlayerName(playerid));
		gPlayerData[playerid][E_IMMUNE] = dini_Bool(filename, "PingImmunity");

		dini_Unset(USERFILE, gPlayerData[pid][E_NAME]);
		format(msg, sizeof(msg), "%s has been removed as an admin", pname);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		LogAction(msg);
		AddLogString(msg);
		SendClientMessage(pid, COLOUR_WARNING, "You have been removed as an admin");

		Bit_Set(g_bitAdmins, pid, 0);
		gPlayerData[pid][E_ADMINLEVEL] = 0;
		gPlayerData[pid][E_NAME][0] = '\0';

		CallRemoteFunction("OnAdminLogout", "i", pid);
		return 1;
	}

	if(gPlayerData[pid][E_ADMINLEVEL] > 0) {
		new dontcare, manuallogin;
		GetPlayerData(gPlayerData[pid][E_NAME], dontcare, "", "", dontcare, manuallogin);
		#if LOG_LINES > 0 && LOG_PAGES > 0
			SetPlayerData(gPlayerData[pid][E_NAME], plvl, ReturnPlayerIP(pid), MD5_Hash(gServerData[E_DEFAULT_PW]), manuallogin, gPlayerData[pid][E_LOG_PAGE]);
		#else
			SetPlayerData(gPlayerData[pid][E_NAME], plvl, ReturnPlayerIP(pid), MD5_Hash(gServerData[E_DEFAULT_PW]), manuallogin);
		#endif
	} else {
		SetPlayerData(pname, plvl, ReturnPlayerIP(pid), MD5_Hash(gServerData[E_DEFAULT_PW]));
		Bit_Set(g_bitAdmins, pid, 1);
		strcpy(gPlayerData[pid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
	}

	gPlayerData[pid][E_ADMINLEVEL] = plvl;

	AllowPlayerTeleport(pid, cmdchk(pid, E_TELE_LEVEL));

	if(!cmdchk(pid, E_SPEC_LEVEL) && gPlayerData[pid][E_SPECTATING]) {
		SpawnUsingData(pid);
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(!cmdchk(pid, E_LOG_LEVEL) && gPlayerData[pid][E_LOG_PAGE]) {
			#if LOG_LINES > 1
				TextDrawHideForPlayer(pid, gLogPage[gPlayerData[pid][E_LOG_PAGE]-1]);
			#endif
			for(new i, offset = (gPlayerData[pid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
				TextDrawHideForPlayer(pid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
			}
			gPlayerData[pid][E_LOG_PAGE] = 0;
		}
	#endif

	format(msg, sizeof(msg), "%s has been made an admin (level %i)", pname, plvl);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	format(msg, sizeof(msg), "You have made a level %i admin. Type /ahelp for more info", plvl);
	SendClientMessage(pid, COLOUR_ADMIN, msg);
	SendClientMessage(pid, COLOUR_WARNING, "PLEASE SET YOUR PASSWORD WITH /achangepw [password]");
	format(msg, sizeof(msg), "%s has made %s an admin (level %i)", ReturnPlayerName(playerid), pname, plvl);
	LogAction(msg);
	AddLogString(msg);

	CallRemoteFunction("OnAdminLogin", "ii", pid, gPlayerData[pid][E_ADMINLEVEL]);
	return 1;
}

dcmd_asetname(const playerid, params[])
{
	if(LevelCheck(playerid, E_SETNAME_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asetname [player] [name]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], newname[MAX_PLAYER_NAME];
	sscanf(params, "ss", pname, sizeof(pname), newname, sizeof(newname));

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(!isValidName(newname)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}
	LoopPlayers(i)  {
		if(strcmp(ReturnPlayerName(i), newname, true) == 0 || (pid != i && gPlayerData[i][E_ADMINLEVEL] > 0 && strcmp(gPlayerData[i][E_NAME], newname, true) == 0)) {
			SendClientMessage(playerid, COLOUR_WARNING, "Name is already in use");
			return 1;
		}
	}

	if(gPlayerData[pid][E_ADMINLEVEL] > 0) {
		if(strcmp(newname, gPlayerData[pid][E_NAME], true)) {
			new plvl = dini_Int(USERFILE, newname);
			if(plvl >= gPlayerData[pid][E_ADMINLEVEL]) {
				new string[MAX_INPUT];
				if(pid == playerid) {
					format(string, sizeof(string), "You cannnot use a level %i admin's name", plvl);
				} else {
					format(string, sizeof(string), "%s cannnot use a level %i admin's name", ReturnPlayerName(pid), plvl);
				}
				SendClientMessage(playerid, COLOUR_WARNING, string);
				return 1;
			}
		}
	} else if(gPlayerData[pid][E_KICK] != 0) {
		KillTimer(gPlayerData[pid][E_KICK]);
		gPlayerData[pid][E_KICK] = 0;
	}

	new oldname[MAX_PLAYER_NAME];
	GetPlayerName(pid, oldname, sizeof(oldname));
	SetPlayerName(pid, newname);

	new string[MAX_INPUT];
	if(pid != playerid) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(string, sizeof(string), "Your name has been changed to %s", newname);
			SendClientMessage(pid, COLOUR_PLAYER, string);
		} else {
			format(string, sizeof(string), "Your name has been changed to %s by %s", newname, ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_PLAYER, string);
		}

		format(string, sizeof(string), "%s's name has been changed to %s", oldname, newname);
		SendClientMessage(playerid, COLOUR_ADMIN, string);

		format(string, sizeof(string), "%s changed %s's name to %s", ReturnPlayerName(playerid), oldname, newname);
	} else {
		format(string, sizeof(string), "You have changed your name to %s", newname);
		SendClientMessage(pid, COLOUR_ADMIN, string);

		format(string, sizeof(string), "%s has changed their name to %s", oldname, newname);
	}
	LogAction(string);
	AddLogString(string);

	CallRemoteFunction("OnAdminNameChange", "iss", pid, newname, oldname);

	if(gPlayerData[pid][E_ADMINLEVEL] == 0) {
		new pLEVEL,
			aIP[MAX_IP],
			pPW[33],
			#if LOG_LINES > 0 && LOG_PAGES > 0
				page,
			#endif
			manuallogin;

		#if LOG_LINES > 0 && LOG_PAGES > 0
			#define THEIFSTUFF		GetPlayerData(newname, pLEVEL, aIP, pPW, gPlayerData[pid][E_STATE], manuallogin, page)
		#else
			#define THEIFSTUFF		GetPlayerData(newname, pLEVEL, aIP, pPW, gPlayerData[pid][E_STATE], manuallogin)
		#endif
		if(THEIFSTUFF) {
			#undef THEIFSTUFF
			strcpy(gPlayerData[pid][E_NAME], newname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
			new msg[MAX_INPUT];
			if(!manuallogin && gServerData[E_AUTO_LOGIN] && IPcompare(aIP, ReturnPlayerIP(pid))) {
				Bit_Set(g_bitAdmins, pid, 1);
				gPlayerData[pid][E_ADMINLEVEL] = pLEVEL;
				format(msg, sizeof(msg), "You have successfully logged in (Level %i)", gPlayerData[pid][E_ADMINLEVEL]);
				SendClientMessage(pid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has logged in as an admin (Level %i)", newname, gPlayerData[pid][E_ADMINLEVEL]);

				if(gServerData[E_LOG_LOGINS]) {
					AddLogString(msg);
				} else {
					LoopPlayers(i) {
						if(gPlayerData[i][E_ADMINLEVEL] > 0 && i != pid) {
							SendClientMessage(i, COLOUR_ADMIN, msg);
						}
					}
				}
				LogAction(msg);

				AllowPlayerTeleport(pid, cmdchk(pid, E_TELE_LEVEL));
				#if LOG_LINES > 0 && LOG_PAGES > 0
					if(page > 0 && page <= LOG_PAGES && cmdchk(pid, E_LOG_LEVEL)) {
						new offset = (page - 1) * LOG_LINES;
						for(new i; i < LOG_LINES; i++) {
							TextDrawShowForPlayer(pid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
						}
						#if LOG_LINES > 0 && LOG_PAGES > 0
							TextDrawShowForPlayer(pid, gLogPage[page-1]);
						#endif
						gPlayerData[pid][E_LOG_PAGE] = page;
					}
				#endif

				CallRemoteFunction("OnAdminLogin", "ii", pid, gPlayerData[pid][E_ADMINLEVEL]);
			} else if(gServerData[E_SIGNIN_TIME] > 0) {
				format(msg,sizeof(msg), "You have %i seconds to log in as an admin", gServerData[E_SIGNIN_TIME]);
				SendClientMessage(pid, COLOUR_WARNING, msg);
				gPlayerData[pid][E_KICK] = SetTimerEx("alar_autokick", gServerData[E_SIGNIN_TIME] * 1000, 0, "i", pid);
			}
		}
	}
	return 1;
}

dcmd_asetping(const playerid, params[])
{
	if(LevelCheck(playerid, E_SETPING_LEVEL)) return 1;

	new newping = strval(params);
	if(!isNumeric(params) || newping < 0) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /asetping [amount]");
		return 1;
	}

	new msg[MAX_INPUT];
	if(dini_IntSet(SETTINGSFILE, "MaxPing", newping)) {
		if(playerid != INVALID_PLAYER_ID) {
			format(msg, sizeof(msg), "%s has set the max ping to %i", ReturnPlayerName(playerid), newping);
		} else {
			format(msg, sizeof(msg), "The max ping has been set to %i", newping);
		}
		LogAction(msg);
		AddLogString(msg);
		if(playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The max ping has been set to %i", newping);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
		gServerData[E_MAX_PING] = newping;
	}
	return 1;
}

dcmd_ashout(const playerid, params[])
{
	if(LevelCheck(playerid, E_SHOUT_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ashout [message]");
		return 1;
	}

	if(!isValidGameText(params) || strlen(params) > 80) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid message");
		return 1;
	}

	GameTextForAll(ReturnGameText(params), 5000, 3);

	new msg[MAX_INPUT + MAX_PLAYER_NAME + 20];
	format(msg, sizeof(msg), "%s sent gametext: \"%s\"", ReturnPlayerName(playerid), params);
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aslap(const playerid, params[])
{
	if(LevelCheck(playerid, E_SLAP_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aslap [player] (amount)");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], amount = gServerData[E_SLAP_DECREMENT];
	sscanf(params, "si", pname, sizeof(pname), amount);

	new pid = FindPlayer(pname), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot slap level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	if(GetPlayerState(pid) == PLAYER_STATE_ONFOOT) ApplyAnimation(pid, "FIGHT_B", "HitB_3", 4.1, 0, 1, 1, 0, 1200);

	if(amount < 0 || amount > 100) {
		amount = gServerData[E_SLAP_DECREMENT];
	}

	if(amount > 0) {
		new Float:phealth;
		GetPlayerHealth(pid, phealth);
		phealth = floatsub(phealth, amount);
		if( phealth <= 0.0 ) SetPlayerHealth(pid, (phealth = 0.0));
		else SetPlayerHealth(pid, phealth);

		if(pid != playerid) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_WARNING, "You have been slapped");
			} else {
				format(msg, sizeof(msg), "You have been slapped by %s", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_WARNING, msg);
			}
			format(msg, sizeof(msg), "%s has been slapped (Health: %i)", ReturnPlayerName(pid), floatround(phealth));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has slapped %s by %i", ReturnPlayerName(playerid), ReturnPlayerName(pid), amount);
		} else {
			format(msg, sizeof(msg), "You have slapped yourself (Health: %i)", floatround(phealth));
			SendClientMessage(pid, COLOUR_WARNING, msg);

			format(msg, sizeof(msg), "%s has slapped themself by %i", ReturnPlayerName(playerid), amount);
		}
	} else {
		if(pid != playerid) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				SendClientMessage(pid, COLOUR_WARNING, "You have been slapped");
			} else {
				format(msg, sizeof(msg), "You have been slapped by %s", ReturnPlayerName(playerid));
				SendClientMessage(pid, COLOUR_WARNING, msg);
			}
			format(msg, sizeof(msg), "%s has been slapped", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has slapped %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		} else {
			SendClientMessage(pid, COLOUR_WARNING, "You have slapped yourself");
			format(msg, sizeof(msg), "%s has slapped themself", ReturnPlayerName(playerid));
		}
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

dcmd_aslay(const playerid, params[])
{
	if(LevelCheck(playerid, E_SLAY_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aslay [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot slay level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	SetPlayerHealth(pid, 0);

	if(playerid != pid) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been killed");
		} else {
			format(msg, sizeof(msg), "You have been killed by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}

		format(msg, sizeof(msg), "%s has killed %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);

		format(msg, sizeof(msg), "%s has been killed", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
	} else {
		SendClientMessage(pid, COLOUR_WARNING, "You have slayed yourself");

		format(msg, sizeof(msg), "%s has slayed themself", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
	}
	return 1;
}

dcmd_aspawn(const playerid, params[])
{
	if(LevelCheck(playerid, E_SPAWN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aspawn [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if((gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot spawn level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is already spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are already spawned");
		}
		return 1;
	}

	if(gPlayerData[pid][E_SPECTATING]) {
		SpawnUsingData(pid);
	} else if(GetPlayerState(pid) == PLAYER_STATE_SPECTATING) {
		TogglePlayerSpectating(pid, false);
	} else {
		SpawnPlayer(pid);
	}

	if(playerid != pid) {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_PLAYER, "You have been spawned");
		} else {
			format(msg, sizeof(msg), "You have been spawned by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_PLAYER, msg);
		}

		format(msg, sizeof(msg), "%s has spawned %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);

		format(msg, sizeof(msg), "%s has been spawned", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
	} else {
		SendClientMessage(pid, COLOUR_PLAYER, "You have spawned yourself");

		format(msg, sizeof(msg), "%s has spawned themself", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);
	}
	return 1;
}

dcmd_aspec(const playerid, params[])
{
	if(LevelCheck(playerid, E_SPEC_LEVEL)) return 1;

	if(!IsSpawned(playerid) && !gPlayerData[playerid][E_SPECTATING]) {
		SendClientMessage(playerid, COLOUR_WARNING, "You need to be spawned to spectate");
		return 1;
	}

	new pid = INVALID_PLAYER_ID, msg[MAX_INPUT];
	if(params[0] == '\0') {
		if(gPlayerData[playerid][E_SPECTATING]) {	// already spectating and wants out
			SpawnUsingData(playerid);
			return 1;
		}

		format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);

		if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, INVALID_PLAYER_ID)) <= 0) {
			StoreSpawnData(playerid);
		}

		gPlayerData[playerid][E_SPECTATING] = true;
		gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;
		gPlayerData[playerid][E_SPECMODE] = 3;
		TogglePlayerSpectating(playerid, true);

		PutPlayerIntoFreeSpec(playerid);

		#if SPEC_TXT_TIME > 0
			ShowSpecTxt(playerid);
		#endif
		return 1;
	} else {
		pid = FindPlayer(params);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot spectate yourself");
			return 1;
		}
		if(!IsSpawned(pid)) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		gPlayerData[playerid][E_LAST_SPECID] = pid;
	}

	if(!gPlayerData[playerid][E_SPECTATING]) {
		format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);

		gPlayerData[playerid][E_SPECID] = pid;
		gPlayerData[playerid][E_SPECMODE] = 0;
		if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", playerid, pid, INVALID_PLAYER_ID)) <= 0) {
			StoreSpawnData(playerid);
		}
		TogglePlayerSpectating(playerid, true);

		gPlayerData[playerid][E_SPECTATING] = true;
		SetPlayerSpectating(playerid, pid);

		#if SPEC_TXT_TIME > 0
			ShowSpecTxt(playerid);
		#endif
	} else {
		#if SPEC_TXT_TIME > 0
			if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
				gPlayerData[playerid][E_SPECMODE] = 0;
				ShowSpecTxt(playerid);
			}
		#endif

		ObserverSwitchPlayer(playerid, pid);
	}

	return 1;
}

dcmd_asuspend(const playerid, params[])
{
	if(LevelCheck(playerid, E_SUSPEND_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspend [player] [hours] (reason)");
		return 1;
	}

	new stime[20], sname[MAX_PLAYER_NAME], sreason[MAX_REASON] = "No reason";
	sscanf(params, "sss", sname, sizeof(sname), stime, sizeof(stime), sreason, sizeof(sreason));

	new pid = FindPlayer(sname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot suspend yourself");
		return 1;
	}

	new Float:suspendtime = floatstr(stime);
	if(!isFloat(stime) || suspendtime <= 0.0 || suspendtime > 10000000.0) {	// a thousand years should be plenty
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid suspend time");
		return 1;
	}

	new msg[MAX_INPUT];

	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot suspend level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new sIP[MAX_IP];
	GetPlayerIp(pid, sIP, sizeof(sIP));

	new File:handle = fopen(USERFILE, io_read);
	if (handle) {
		new pLEVEL, pIP[MAX_IP], line[MAX_STRING];
		while (fread(handle, line)) {
			if(line[0] == '#') continue;
			StripNewLine(line);
			sscanf(dini_ExtractValue(line), "is ", pLEVEL, pIP, sizeof(pIP));
			if((pLEVEL >= gPlayerData[playerid][E_ADMINLEVEL]) && IPcompare(pIP, sIP)) {
				format(msg, sizeof(msg), "You cannot suspend level %i admins", pLEVEL);
				fclose(handle);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
		}
		fclose(handle);
	}

	new pname[MAX_PLAYER_NAME];
	GetPlayerName(pid, pname, sizeof(pname));

	SuspendPlayer(pname, sIP, suspendtime, sreason, gPlayerData[playerid][E_NAME]);

	format(msg, sizeof(msg), "Name: \"%s\" successfully suspended", pname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	format(msg, sizeof(msg), "IP: \"%s\" successfully suspended", sIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
	SendClientMessage(pid, COLOUR_WARNING, msg);
	if(gServerData[E_SUSPEND_MSG][0] != '\0') {
		new year,
			month,
			day,
			hour,
			minute,
			date[15],
			time[10];

		getdate(year, month, day);
		gettime(hour, minute);
		format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
		format(time, sizeof(time), "%02i:%02i", hour, minute);

		SendBanMsg(pid, gServerData[E_SUSPEND_MSG], date, time, gPlayerData[playerid][E_NAME]);
	}
	format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s for %0.2f hours (%s)", pname, pid, ReturnPlayerName(playerid), suspendtime, sreason);

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %0.2f hours (%s)", pname, pid, suspendtime, sreason);
	}

	AddJoinString(pid, COLOUR_SUSPEND, msg);
	Kick(pid);
	return 1;
}

dcmd_asuspendip(const playerid, params[])
{
	if(LevelCheck(playerid, E_SUSPEND_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspendip [IP] [hours] (reason)");
		return 1;
	}

	new sIP[MAX_IP], stime[20], sreason[MAX_REASON] = "No reason";
	sscanf(params, "sss", sIP, sizeof(sIP), stime, sizeof(stime), sreason, sizeof(sreason));

	if(!IPisvalid(sIP, cmdchk(playerid, E_RANGESUSPEND_LEVEL))) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid IP");
		return 1;
	}

	new Float:suspendtime = floatstr(stime);
	if(!isFloat(stime) || suspendtime <= 0.0 || suspendtime > 10000000.0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid suspend time");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!IsIPNotSuspended(sIP)) {
		format(msg, sizeof(msg), "IP: \"%s\" is already suspended", sIP);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new File:handle = fopen(USERFILE, io_read);
	if(handle) {
		new pLEVEL, pIP[MAX_IP], line[MAX_STRING];
		while(fread(handle, line)) {
			if(line[0] == '#') continue;
			StripNewLine(line);
			sscanf(dini_ExtractValue(line), "is ", pLEVEL, pIP, sizeof(pIP));
			if((pLEVEL >= gPlayerData[playerid][E_ADMINLEVEL]) && IPcompare(pIP, sIP)) {
				format(msg, sizeof(msg), "You cannot suspend level %i admins", pLEVEL);
				fclose(handle);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
		}
		fclose(handle);
	}

	SuspendIP(sIP, suspendtime, sreason, gPlayerData[playerid][E_NAME]);

	format(msg, sizeof(msg), "IP: %s successfully suspended", sIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has suspended the ip %s for %0.2f hours (%s)", ReturnPlayerName(playerid), sIP, suspendtime, sreason);

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The ip %s has been suspended for %0.2f hours (%s)", sIP, suspendtime, sreason);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);


	new year,
		month,
		day,
		hour,
		minute,
		date[15],
		time[10];

	getdate(year, month, day);
	gettime(hour, minute);
	format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
	format(time, sizeof(time), "%02i:%02i", hour, minute);

	LoopPlayers(i) {
		if(IPcompare(sIP, ReturnPlayerIP(i))) {
			format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
			SendClientMessage(i, COLOUR_WARNING, msg);
			if(gServerData[E_SUSPEND_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_SUSPEND_MSG], date, time, gPlayerData[playerid][E_NAME]);
			}
			format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), sreason);

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "%s(%i) has been suspended from the server (%s)", ReturnPlayerName(i), i, sreason);
			}

			AddJoinString(i, COLOUR_SUSPEND, msg);
			Kick(i);
		}
	}
	return 1;
}

dcmd_asuspendname(const playerid, params[])
{
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspendname [player name] [hours] (reason)");
		return 1;
	}

	new sreason[MAX_REASON] = "No reason", stime[20], sname[MAX_PLAYER_NAME];
	sscanf(params, "sss", sname, sizeof(sname), stime, sizeof(stime), sreason, sizeof(sreason));

	if(!isValidName(sname, cmdchk(playerid, E_WILDBAN_LEVEL))) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}

	new Float:suspendtime = floatstr(stime);
	if(!isFloat(stime) || suspendtime <= 0.0 || suspendtime > 10000000.0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid suspend time");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!IsNameNotSuspended(sname)) {
		format(msg, sizeof(msg), "Name: \"%s\" is already suspended", sname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}


	new File:handle=fopen(USERFILE, io_read);
	if (handle) {
		new pLEVEL, line[MAX_STRING];
		while (fread(handle, line)) {
			pLEVEL = strval(dini_ExtractValue(line));
			if((pLEVEL >= gPlayerData[playerid][E_ADMINLEVEL]) && wildcmp(sname, dini_ExtractKey(line), true)) {
				format(msg, sizeof(msg), "You cannot suspend level %i admins", pLEVEL);
				fclose(handle);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
		}
		fclose(handle);
	}

	SuspendName(sname, suspendtime, sreason, gPlayerData[playerid][E_NAME]);

	format(msg, sizeof(msg), "Name: \"%s\" successfully suspended", sname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has suspended the name %s for %0.2f hours (%s)", ReturnPlayerName(playerid), sname, suspendtime, sreason);

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The name %s has been suspended for %0.2f hours (%s)", sname, suspendtime, sreason);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new year,
		month,
		day,
		hour,
		minute,
		date[15],
		time[10];

	getdate(year, month, day);
	gettime(hour, minute);
	format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
	format(time, sizeof(time), "%02i:%02i", hour, minute);

	LoopPlayers(i) {
		if(wildcmp(sname, ReturnPlayerName(i), true)) {
			format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
			SendClientMessage(i, COLOUR_WARNING, msg);
			if(gServerData[E_SUSPEND_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_SUSPEND_MSG], date, time, gPlayerData[playerid][E_NAME]);
			}
			format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), sreason);

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "%s(%i) has been suspended from the server (%s)", ReturnPlayerName(i), i, sreason);
			}

			AddJoinString(i, COLOUR_SUSPEND, msg);
			Kick(i);
			break;
		}
	}
	return 1;
}

dcmd_atime(const playerid, params[])
{
	if(LevelCheck(playerid, E_TIME_LEVEL)) return 1;

	if(params[0] == '\0' || !isNumeric(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /atime [hour]");
		return 1;
	}

	new hour = strval(params);
	if(hour >= 24 || hour < 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid time");
		return 1;
	}

	SetWorldTime(hour);

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has set the time to %02i:00", ReturnPlayerName(playerid), hour);
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The time has been set to %02i:00", hour);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);
	return 1;
}

dcmd_aunban(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNBAN_LEVEL)) return 1;

	new bool:isanip = IPisvalid(params, false);
	if(params[0] == '\0' || (!isanip && !isValidName(params))) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunban [player name] or [IP]");
		return 1;
	}

	new msg[MAX_INPUT],
		BanData[E_ALAR_BAN];

	if(isanip) {
		if(!UnbanIP(params, BanData)) {
			format(msg, sizeof(msg), "%s is not banned", params);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "IP: %s successfully unbanned", params);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "IP: %s has been unbanned from the server by %s", BanData[E_BAN_IP], ReturnPlayerName(playerid));

		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The ip %s has been unbanned from the server", BanData[E_BAN_IP]);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	} else {
		if(!UnbanName(params, BanData)) {
			format(msg, sizeof(msg), "%s is not banned", params);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "Name: %s successfully unbanned", params);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "Name: %s has been unbanned from the server by %s", BanData[E_BAN_NAME], ReturnPlayerName(playerid));

		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The name %s has been unbanned from the server", BanData[E_BAN_NAME]);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;
}

dcmd_aundesync(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNDESYNC_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /audesync [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot undesync yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(~gPlayerData[pid][E_STATE] & ADMIN_STATE_DESYNCED) {
		format(msg, sizeof(msg), "%s is not desync", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[pid][E_UNDESYNC] != 0) {
		KillTimer(gPlayerData[pid][E_UNDESYNC]);
		gPlayerData[pid][E_UNDESYNC] = 0;
	}
	gPlayerData[pid][E_DESYNC_TIME] = 0;

	gPlayerData[pid][E_STATE] &= ~ADMIN_STATE_DESYNCED;

	format(msg, sizeof(msg), "%s has been undesynced by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been undesynced", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "i", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_DESYNCED);
	return 1;
}

dcmd_aunfreeze(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNFREEZE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunfreeze [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot unfreeze yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(~gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) {
		format(msg, sizeof(msg), "%s is not frozen", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[pid][E_UNFREEZE] != 0) {
		KillTimer(gPlayerData[pid][E_UNFREEZE]);
		gPlayerData[pid][E_UNFREEZE] = 0;
	}
	gPlayerData[pid][E_FREEZE_TIME] = 0;
	TogglePlayerControllable(pid, true);
	gPlayerData[pid][E_STATE] &= ~ADMIN_STATE_FROZEN;
	UnwriteAdminState(pid, ADMIN_STATE_FROZEN);
	format(msg, sizeof(msg), "%s has been unfrozen by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unfrozen", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "i", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_FROZEN);
	return 1;
}

dcmd_aunjail(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNJAIL_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunjail [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot unjail yourself");	// shouldn't be able to get here anyway
		return 1;
	}

	new msg[MAX_INPUT];
	if(~gPlayerData[pid][E_STATE] & ADMIN_STATE_JAILED) {
		format(msg, sizeof(msg), "%s is not jailed", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot unjail level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[pid][E_UNJAIL] != 0) {
		KillTimer(gPlayerData[pid][E_UNJAIL]);
		gPlayerData[pid][E_UNJAIL] = 0;
	}
	gPlayerData[pid][E_JAIL_TIME] = 0;

	gPlayerData[pid][E_STATE] &= ~ADMIN_STATE_JAILED;

	SetPlayerVirtualWorld(pid, 0);
	alar_OnPlayerWorldChange(pid, 0);
	SetPlayerInterior(pid, 0);
	SpawnPlayer(pid);

	if(gPlayerData[pid][E_HEALTH]) SetTimerEx("alar_setspawndata", 500, 0, "i", pid);

	UnwriteAdminState(pid, ADMIN_STATE_JAILED);
	format(msg, sizeof(msg), "%s has been unjailed by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unjailed", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_JAILED);
	return 1;
}

dcmd_aunmute(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNMUTE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunmute [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot unmute yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(~gPlayerData[pid][E_STATE] & ADMIN_STATE_MUTED) {
		format(msg, sizeof(msg), "%s is not muted", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[pid][E_UNMUTE] != 0) {
		KillTimer(gPlayerData[pid][E_UNMUTE]);
		gPlayerData[pid][E_UNMUTE] = 0;
	}
	gPlayerData[pid][E_MUTE_TIME] = 0;
	gPlayerData[pid][E_LASTMSG][0] = '\0';
	gPlayerData[pid][E_REPEATEDMSGS] = 0;

	gPlayerData[pid][E_STATE] &= ~ADMIN_STATE_MUTED;

	UnwriteAdminState(pid, ADMIN_STATE_MUTED);

	format(msg, sizeof(msg), "%s has been unmuted by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unmuted", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_MUTED);
	return 1;
}

dcmd_aunrape(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNRAPE_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunrape [player]");
		return 1;
	}

	new pid = FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot unrape yourself");
		return 1;
	}

	new msg[MAX_INPUT];
	if(~gPlayerData[pid][E_STATE] & (ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED)) {
		format(msg, sizeof(msg), "%s is not raped", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[pid][E_ADMINLEVEL] >= gPlayerData[playerid][E_ADMINLEVEL]) {
		format(msg, sizeof(msg), "You cannot unrape level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new oldstatus = gPlayerData[pid][E_STATE];
	gPlayerData[pid][E_STATE] &= ~(ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);

	if(oldstatus & ADMIN_STATE_MUTED) {
		if(gPlayerData[pid][E_UNMUTE] != 0) {
			KillTimer(gPlayerData[pid][E_UNMUTE]);
			gPlayerData[pid][E_UNMUTE] = 0;
		}
		gPlayerData[pid][E_MUTE_TIME] = 0;
		gPlayerData[pid][E_LASTMSG][0] = '\0';
		gPlayerData[pid][E_REPEATEDMSGS] = 0;
	}

	if(oldstatus & ADMIN_STATE_FROZEN) {
		if(gPlayerData[pid][E_UNFREEZE] != 0) {
			KillTimer(gPlayerData[pid][E_UNFREEZE]);
			gPlayerData[pid][E_UNFREEZE] = 0;
		}
		gPlayerData[pid][E_FREEZE_TIME] = 0;
		TogglePlayerControllable(pid, true);
	}

	if(oldstatus & ADMIN_STATE_JAILED) {
		if(gPlayerData[pid][E_UNJAIL] != 0) {
			KillTimer(gPlayerData[pid][E_UNJAIL]);
			gPlayerData[pid][E_UNJAIL] = 0;
		}
		gPlayerData[pid][E_JAIL_TIME] = 0;
		SetPlayerVirtualWorld(pid, 0);
		alar_OnPlayerWorldChange(pid, 0);
		SetPlayerInterior(pid, 0);
		SpawnPlayer(pid);
		if(gPlayerData[pid][E_HEALTH]) SetTimerEx("alar_setspawndata", 500, 0, "i", pid);
	}

	UnwriteAdminState(pid, ADMIN_STATE_MUTED | ADMIN_STATE_JAILED | ADMIN_STATE_FROZEN);

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], oldstatus);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == pid) {
			UpdatePlayerSpecHUD(i);
		}
	}

	format(msg, sizeof(msg), "%s has been unraped by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unraped", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);
	return 1;
}

dcmd_aunsuspend(const playerid, params[])
{
	if(LevelCheck(playerid, E_UNSUSPEND_LEVEL)) return 1;

	new bool:isanip = IPisvalid(params, false);
	if(params[0] == '\0' || (!isanip && !isValidName(params))) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunsuspend [player name] or [IP]");
		return 1;
	}

	new msg[MAX_INPUT],
		SuspendData[E_ALAR_SUSPENSION];

	if(isanip) {
		if(!UnsuspendIP(params, SuspendData)) {
			format(msg, sizeof(msg), "%s is not suspended", params);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "IP: %s successfully unsuspended", params);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "IP: %s has been unsuspended from the server by %s", SuspendData[E_SUSPEND_IP], ReturnPlayerName(playerid));

		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The ip %s has been unsuspended from the server", SuspendData[E_SUSPEND_IP]);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	} else {
		if(!UnsuspendName(params, SuspendData)) {
			format(msg, sizeof(msg), "%s is not suspended", params);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "Name: %s successfully unsuspended", params);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "Name: %s has been unsuspended from the server by %s", SuspendData[E_SUSPEND_NAME], ReturnPlayerName(playerid));

		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The name %s has been unsuspended from the server", SuspendData[E_SUSPEND_NAME]);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	}
	return 1;

}

dcmd_aweather(const playerid, params[])
{
	if(LevelCheck(playerid, E_WEATHER_LEVEL)) return 1;

	if(!isInteger(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aweather [weather ID]");
		return 1;
	}

	new wid = strval(params);
/*	if(wid < 0 || wid > 100000) {
		SendClientMessage(playerid, COLOUR_WARNING, "Weather ID must be between 0 and 100000");
		return 1;
	}
*/
	SetWeather(wid);

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has set the weather ID to %i", ReturnPlayerName(playerid), wid);
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "The weather ID has been set to %i", wid);
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);
	return 1;
}

dcmd_aworld(const playerid, params[])
{
	if(LevelCheck(playerid, E_WORLD_LEVEL)) return 1;

	if(params[0] == '\0') {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aworld [player] [world]");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], world;
	sscanf(params, "si", pname, sizeof(pname), world);

	new pid = FindPlayer(pname);
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	new msg[MAX_INPUT];
	if(!IsSpawned(pid)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	if(world < 0 || world > 255) {
		SendClientMessage(playerid, COLOUR_WARNING, "The world must be between 0 and 255");
		return 1;
	}

	SetPlayerVirtualWorld(pid, world);
	alar_OnPlayerWorldChange(pid, world);

	new vid = GetPlayerVehicleID(pid);
	if(vid) {
		SetVehicleVirtualWorld(vid, world);
		LoopPlayers(i) {
			if(GetPlayerVehicleID(i) == vid) {
				SetPlayerVirtualWorld(i, world);
				alar_OnPlayerWorldChange(i, world);
			}
		}
	}

	if(pid == playerid) {
		format(msg, sizeof(msg), "You have set your world to %i", world);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has set their world to %i", ReturnPlayerName(playerid), world);
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "Your world has been set to %i", world);
		} else {
			format(msg, sizeof(msg), "%s has set your world to %i", ReturnPlayerName(playerid), world);
		}
		SendClientMessage(pid, COLOUR_PLAYER, msg);

		format(msg, sizeof(msg), "%s's world has been set to %i", ReturnPlayerName(pid), world);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has set %s's world to %i", ReturnPlayerName(playerid), ReturnPlayerName(pid), world);
	}

	LogAction(msg);
	AddLogString(msg);
	return 1;
}



//-------------------
//  Script Functions
//-------------------
public alar_autokick(playerid)
{
	if(IsPlayerConnected(playerid) && gPlayerData[playerid][E_ADMINLEVEL] == 0 && gPlayerData[playerid][E_KICK]) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Failed to log in)", ReturnPlayerName(playerid), playerid);
		SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Failure to log in)");
		AddJoinString(playerid, COLOUR_KICK, msg);
		AddLogString(msg);
		LogAction(msg);
		Kick(playerid);
	}
	gPlayerData[playerid][E_KICK] = 0;
}

stock ShowSpecTxt(playerid)
{
	if(gPlayerData[playerid][E_SPECTXT] != INVALID_TEXT_DRAW) {
		KillTimer(gPlayerData[playerid][E_SPECTIMER]);
		TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECTXT]);
	}
	TextDrawShowForPlayer(playerid, (gPlayerData[playerid][E_SPECTXT] = g_txtSpecMode[gPlayerData[playerid][E_SPECMODE]]));
	gPlayerData[playerid][E_SPECTIMER] = SetTimerEx("alar_hidespectxt", SPEC_TXT_TIME * 1000, 0, "i", playerid);
}

#if SPEC_TXT_TIME > 0
	public alar_hidespectxt(playerid)
	{
		if(!IsPlayerConnected(playerid)) return;
		gPlayerData[playerid][E_SPECTIMER] = 0;

		TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECTXT]);
		gPlayerData[playerid][E_SPECTXT] = INVALID_TEXT_DRAW;
	}
#endif

public alar_jailplayer(playerid)
{
	if(!IsPlayerConnected(playerid)) return;
	ResetPlayerWeapons(playerid);
	SetPlayerVirtualWorld(playerid, playerid + 1);
	alar_OnPlayerWorldChange(playerid, playerid + 1);
	SetPlayerPos(playerid, 197.6661, 173.8179, 1003.0234);
	SetPlayerFacingAngle(playerid, 0.0);
	SetCameraBehindPlayer(playerid);
	SetPlayerInterior(playerid, 3);
}

#if JOINMSG_LINES > 0 && JOINMSG_TIME > 0
	public alar_joinfade()
	{
		for(new i; i < sizeof(gJoinMessage); i++) {
			if(gJoinMessage[i][E_TEXTBOX_TEXT] == INVALID_TEXT_DRAW) continue;

			if(gJoinMessage[i][E_TEXTBOX_FADETIME] < (JOINMSG_TIME * 1000) / JOINMSG_UPDATE) {
				gJoinMessage[i][E_TEXTBOX_FADETIME]++;
			} else {
				new alpha = gJoinMessage[i][E_TEXTBOX_COLOUR] & 0x000000FF;
				if(alpha != 0) {
					#if JOINMSG_FADE <= 0
						alpha = 0;
					#else
						alpha -= (JOINMSG_ALPHA * JOINMSG_UPDATE) / (JOINMSG_FADE * 1000);
						if(alpha < 0) alpha = 0;
					#endif

					// Update alpha
					TextDrawColor(gJoinMessage[i][E_TEXTBOX_TEXT], (gJoinMessage[i][E_TEXTBOX_COLOUR] = (gJoinMessage[i][E_TEXTBOX_COLOUR] & 0xFFFFFF00) | alpha));
					TextDrawBackgroundColor(gJoinMessage[i][E_TEXTBOX_TEXT], alpha);

					// Update for players with the text draw showing
					LoopPlayers(j) {
						if(!gPlayerData[j][E_JOINTEXT]) {
							TextDrawShowForPlayer(j, gJoinMessage[i][E_TEXTBOX_TEXT]);
						}
					}
				} else {
					if(i == 0) {
						// Kill timer when not needed
						KillTimer(gJoinTimer);
						gJoinTimer = 0;
					}
					break;
				}
			}
		}
	}
#endif

public alar_pingkick()
{
	LoopPlayers(i) {
		for(new j = 1; j < sizeof(SIZE_E_PLAYERDATA[E_PING]); j++) gPlayerData[i][E_PING][j - 1] = gPlayerData[i][E_PING][j];
		gPlayerData[i][E_PING][sizeof(SIZE_E_PLAYERDATA[E_PING]) - 1] = GetPlayerPing(i);

		if((gPlayerData[i][E_ADMINLEVEL] > 0 && gServerData[E_PING_IMMUNITY]) || gPlayerData[i][E_IMMUNE]) continue;
		new aveping = GetAvePing(i);
		if(aveping > gServerData[E_MAX_PING]) {
			new msg[MAX_INPUT];
			format(msg, sizeof(msg), "You have been kicked from the server (Max ping: %i, Your ping: %i)", gServerData[E_MAX_PING], aveping);
			SendClientMessage(i, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Max ping: %i, Their ping: %i)", ReturnPlayerName(i), i, gServerData[E_MAX_PING], aveping);
			AddJoinString(i, COLOUR_KICK, msg);
			LogAction(msg);
			Kick(i);
		}
	}
}

public alar_unfreeze(playerid)
{
	if(IsPlayerConnected(playerid) && gPlayerData[playerid][E_STATE] & ADMIN_STATE_FROZEN) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "%s has been unfrozen", ReturnPlayerName(playerid));
		SendClientMessageToAll(COLOUR_PLAYER, msg);
		LogAction(msg);
		AddLogString(msg);
		TogglePlayerControllable(playerid, true);

		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_FROZEN;
		gPlayerData[playerid][E_FREEZE_TIME] = 0;

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_FROZEN);
	}
	gPlayerData[playerid][E_UNFREEZE] = 0;
}

public alar_unjail(playerid)
{
	if(IsPlayerConnected(playerid) && gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "%s has been unjailed", ReturnPlayerName(playerid));
		SendClientMessageToAll(COLOUR_PLAYER, msg);
		LogAction(msg);
		AddLogString(msg);

		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_JAILED;
		gPlayerData[playerid][E_JAIL_TIME] = 0;

		SetPlayerVirtualWorld(playerid, 0);
		alar_OnPlayerWorldChange(playerid, 0);
		SetPlayerInterior(playerid, 0);
		SpawnPlayer(playerid);
		if(gPlayerData[playerid][E_HEALTH]) SetTimerEx("alar_setspawndata", 500, 0, "i", playerid);

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_JAILED);
	}
	gPlayerData[playerid][E_UNJAIL] = 0;
}

public alar_unmute(playerid)
{
	if(IsPlayerConnected(playerid) && gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "%s has been unmuted", ReturnPlayerName(playerid));
		SendClientMessageToAll(COLOUR_PLAYER, msg);
		LogAction(msg);
		AddLogString(msg);

		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_MUTED;
		gPlayerData[playerid][E_MUTE_TIME] = 0;
		gPlayerData[playerid][E_LASTMSG][0] = '\0';
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_MUTED);
	}
	gPlayerData[playerid][E_UNMUTE] = 0;
}

public alar_undesync(playerid)
{
	if(IsPlayerConnected(playerid) && gPlayerData[playerid][E_STATE] & ADMIN_STATE_DESYNCED) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "%s has been undesynced", ReturnPlayerName(playerid));
		SendClientMessageToAll(COLOUR_PLAYER, msg);
		LogAction(msg);
		AddLogString(msg);

		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_DESYNCED;
		gPlayerData[playerid][E_DESYNC_TIME] = 0;

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_DESYNCED);
	}
	gPlayerData[playerid][E_UNDESYNC] = 0;
}

stock ReturnNumPlateTxt(vehicleid)
{
	new string[9] = "        ";
	if (gServerData[E_DEFAULT_NUM_PLATE][0] == '\0') return string;

	strcpy(string, gServerData[E_DEFAULT_NUM_PLATE]);

	new value[12];
	valstr(value, vehicleid);
	strreplace(string, "!", value);

	for (new i; i < 8; i++) {
	    switch(string[i]){
	        case 'a'..'z':
	            string[i] += 'A' - 'a';
			case 'A'..'Z', '0'..'9':
	            continue;
			case '#':
				string[i] = random(10) + '0';
			case '$':
				string[i] = random(26) + 'A';
			case '\0':
				break;
			default:
			    string[i] = ' ';
	    }
	}

	switch(strlen(string)) {
		case 1, 2: strins(string, "   ", 0);
		case 3, 4: strins(string, "  ", 0);
		case 5, 6: strins(string, " ", 0);
	}

	return string;
}

GetAvePing(const playerid)
{
	new aveping, errors;
	for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_PING]); i++) {
		if(gPlayerData[playerid][E_PING][i] == 0x0000) return 0;
		if(gPlayerData[playerid][E_PING][i] == 0xFFFF) errors++;
		aveping += gPlayerData[playerid][E_PING][i];
	}
	if(errors == sizeof(SIZE_E_PLAYERDATA[E_PING])) return 0xFFFF;
	else if(errors > 0) return 0;
	return aveping / sizeof(SIZE_E_PLAYERDATA[E_PING]);
}

stock FloodCheck(const playerid)
{
	new Unsigned:playerip = IP2Code(ReturnPlayerIP(playerid)),
		playertime = GetTickCount(),
		playerjoins = 1;

	for(new i; i < sizeof(gJoinList); i++) {
		if(playerip == gJoinList[i][E_LASTIP] && (playertime - gJoinList[i][E_LASTJOIN]) <= (JOINTIME * 1000)) {
			playerjoins++;
		}
	}

	for(new i; i < sizeof(gJoinList)-1; i++) {
		gJoinList[i][E_LASTIP] = gJoinList[i+1][E_LASTIP];
		gJoinList[i][E_LASTJOIN] = gJoinList[i+1][E_LASTJOIN];
	}
	gJoinList[sizeof(gJoinList)-1][E_LASTIP] = playerip;
	gJoinList[sizeof(gJoinList)-1][E_LASTJOIN] = playertime;

	if(playerjoins >= JOINCOUNT) {
		new pname[MAX_PLAYER_NAME];
		GetPlayerName(playerid, pname, sizeof(pname));
		new string[MAX_INPUT];
		if(gServerData[E_JOIN_BAN_TIME] > 0) {
			format(string, sizeof(string), "You have been kicked from the server (Join flood, try again in %i seconds)", gServerData[E_JOIN_BAN_TIME]);
			SetTimerEx("alar_floodunban", gServerData[E_JOIN_BAN_TIME] * 1000, 0, "i", _:playerip);
			SendClientMessage(playerid, COLOUR_WARNING, string);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You have been banned from the server (Join flood");
			if(gServerData[E_BAN_MSG][0] != '\0') {
				new year,
					month,
					day,
					hour,
					minute,
					date[15],
					time[10];

				getdate(year, month, day);
				gettime(hour, minute);
				format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
				format(time, sizeof(time), "%02i:%02i", hour, minute);

				SendBanMsg(playerid, gServerData[E_BAN_MSG], date, time, "Console");
			}
		}
		format(string, sizeof(string), "%s has been banned from the server (Join flood)", pname);
		if(gServerData[E_HIDE_BANS]) {
			gPlayerData[playerid][E_HIDEEXIT] = 3;
		} else {
			gPlayerData[playerid][E_HIDEEXIT] = 1;
			AddJoinString(playerid, COLOUR_BAN, string);
		}
		AddLogString(string);
		LogAction(string);
		BanEx(playerid, "Join flood");
		return 1;
	}
	return 0;
}

public alar_floodunban(Unsigned:IPcode)
{
	new string[MAX_IP+10];
	format(string, sizeof(string), "unbanip %s", Code2IP(IPcode));
	SendRconCommand(string);
}

stock SpamCheck(const playerid, const text[], bool:pm=false)
{
	new time = GetTickCount(),
		len = strlen(text);

	do {
		 len--;
	} while(text[len] <= ' ' && len > 0);
	len++;

	if(gPlayerData[playerid][E_MSGTIMES][sizeof(SIZE_E_PLAYERDATA[E_MSGTIMES])-1] != 0 && time - gPlayerData[playerid][E_MSGTIMES][sizeof(SIZE_E_PLAYERDATA[E_MSGTIMES])-1] <= MSGRTIME && strcmp(text, gPlayerData[playerid][E_LASTMSG], true, len) == 0 && gPlayerData[playerid][E_LASTMSG][len] == '\0') {
		gPlayerData[playerid][E_REPEATEDMSGS]++;
	} else {
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;
	}
	strcpy(gPlayerData[playerid][E_LASTMSG], text, sizeof(SIZE_E_PLAYERDATA[E_LASTMSG]), len);

	if(((gPlayerData[playerid][E_MSGTIMES][0] != 0) && (time - gPlayerData[playerid][E_MSGTIMES][0] <= MSGCTIME)) || (gPlayerData[playerid][E_REPEATEDMSGS] + 1 >= MSGREPEATS)) {
		new msg[MAX_INPUT],
			cmd[50];

		if(text[0] == '/') {
			len = strfind(text, " ");
			if(len != -1) {
				strcpy(cmd, text, sizeof(cmd), len);
			} else {
				strcpy(cmd, text);
			}
		}

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "You have been kicked from the server (%s spam)", cmd);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (%s spam)", ReturnPlayerName(playerid), playerid, cmd);
			} else if(pm) {
				SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (/pm spam)");
				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (/pm spam)", ReturnPlayerName(playerid), playerid);
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (chat spam)");
				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (chat spam)", ReturnPlayerName(playerid), playerid);
			}
			AddJoinString(playerid, COLOUR_KICK, msg);
			AddLogString(msg);
			LogAction(msg);
			Kick(playerid);
			return 1;
		}

		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_MUTED;

		if(gPlayerData[playerid][E_UNMUTE] != 0) {
			KillTimer(gPlayerData[playerid][E_UNMUTE]);
			gPlayerData[playerid][E_UNMUTE] = 0;
		}

		if(gServerData[E_AUTOMUTE_TIME] > 0) {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "%s has been muted for %i seconds (%s spam)", ReturnPlayerName(playerid), gServerData[E_AUTOMUTE_TIME], cmd);
			} else if(pm) {
				format(msg, sizeof(msg), "%s has been muted for %i seconds (/pm spam)", ReturnPlayerName(playerid), gServerData[E_AUTOMUTE_TIME]);
			} else {
				format(msg, sizeof(msg), "%s has been muted for %i seconds (chat spam)", ReturnPlayerName(playerid), gServerData[E_AUTOMUTE_TIME]);
			}
			gPlayerData[playerid][E_MUTE_TIME] = gettime() + gServerData[E_AUTOMUTE_TIME];
		} else {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "%s has been muted (%s spam)", ReturnPlayerName(playerid), cmd);
			} else if(pm) {
				format(msg, sizeof(msg), "%s has been muted (/pm spam)", ReturnPlayerName(playerid));
			} else {
				format(msg, sizeof(msg), "%s has been muted (chat spam)", ReturnPlayerName(playerid));
			}
		}

		LoopPlayers(i) {
			if(i != playerid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}

		LogAction(msg);
		AddLogString(msg);

		if(gServerData[E_AUTOMUTE_TIME] > 0) {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "You have been muted for %i seconds (%s spam)", gServerData[E_AUTOMUTE_TIME], cmd);
			} else if(pm) {
				format(msg, sizeof(msg), "You have been muted for %i seconds (/pm spam)", gServerData[E_AUTOMUTE_TIME]);
			} else {
				format(msg, sizeof(msg), "You have been muted for %i seconds (chat spam)", gServerData[E_AUTOMUTE_TIME]);
			}
			SendClientMessage(playerid, COLOUR_WARNING, msg);

			if(gPlayerData[playerid][E_UNMUTE]) KillTimer(gPlayerData[playerid][E_UNMUTE]);
			gPlayerData[playerid][E_UNMUTE] = SetTimerEx("alar_unmute", gServerData[E_AUTOMUTE_TIME] * 1000, 0, "i", playerid);
		} else {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "You have been muted (%s spam)", cmd);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
			} else if(pm) {
				SendClientMessage(playerid, COLOUR_WARNING, "You have been muted (/pm spam)");
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You have been muted (chat spam)");
			}

			WriteAdminState(playerid, ADMIN_STATE_MUTED);
		}


		for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_MSGTIMES]); i++) gPlayerData[playerid][E_MSGTIMES][i] = 0;
		gPlayerData[playerid][E_LASTMSG][0] = '\0';
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] & ~ADMIN_STATE_MUTED);
		return 1;
	}
	#if MSGRBLOCK
		else if(gPlayerData[playerid][E_REPEATEDMSGS]) {
			SendClientMessage(playerid, COLOUR_WARNING, "Please do not repeat yourself");
		}
	#endif

	for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_MSGTIMES])-1; i++) gPlayerData[playerid][E_MSGTIMES][i] = gPlayerData[playerid][E_MSGTIMES][i+1];
	gPlayerData[playerid][E_MSGTIMES][sizeof(SIZE_E_PLAYERDATA[E_MSGTIMES])-1] = time;

	#if MSGRBLOCK
		return gPlayerData[playerid][E_REPEATEDMSGS];
	#else
		return 0;
	#endif
}

LevelCheck(const playerid, E_SERVERDATA:command)
{
	if(gServerData[command] <= 0) {
		SendMessage(playerid, COLOUR_WARNING, "This command has been disabled");
		return 1;
	}

	if(playerid == INVALID_PLAYER_ID) {
		if(gServerData[E_RCON_LEVEL] < gServerData[command]) {
			print("This command has been disabled from Rcon");
			return 1;
		}
	} else {
		if(gPlayerData[playerid][E_ADMINLEVEL] < gServerData[command]) {
			new msg[MAX_INPUT];
			format(msg, sizeof(msg), "You need to be level %i to use this command", gServerData[command]);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}
	}
	return 0;
}

WriteAlias(playerid)
{
	new pIP[MAX_IP],
		pname[MAX_PLAYER_NAME],
		file[MAX_STRING],
		string[MAX_STRING];
	GetPlayerIp(playerid, pIP, sizeof(pIP));
	GetPlayerName(playerid, pname, sizeof(pname));

	if(pname[0] == '\0' || pIP[0] == '\0') return;

	format(file, sizeof(file), ALIASFOLDER "name_%c.ini", toupper(pname[0]));
	if(!fexist(file)) {
		new File:handle = fopen(file, io_write);
		if(handle) {
			format(string, sizeof(string), "# This file contains a list of ip addresses associated with names starting with %c\r\n%s=%s\r\n", toupper(pname[0]), pname, pIP);
			fwrite(handle, string);
			fclose(handle);
		}
	} else {
		if(dini_Get(file, pname, string)) {
			new pos = strfindword(string, pIP);
			if(pos == 0) {
				strdel(string, 0, strlen(pIP) + 1);
				if(string[0] != '\0') {
					format(string, sizeof(string), "%s %s", string, pIP);
					dini_Set(file, pname, string);
				}
			} else {
				if(pos == -1) {
					strmakeroom(string, strlen(pname) + strlen(pIP) + 3);	// name, =, space, \r\n
				} else {
					strdel(string, pos - 1, pos + strlen(pIP));
				}
				format(string, sizeof(string), "%s %s", string, pIP);
				dini_Set(file, pname, string);
			}
		} else {
			dini_Set(file, pname, pIP);
		}
	}

	format(file, sizeof(file), ALIASFOLDER "ip_%i.ini", strval(pIP));
	if(!fexist(file)) {
		new File:handle = fopen(file, io_write);
		if(handle) {
			format(string, sizeof(string), "# This file contains a list of names associated with ip addresses starting with %i\r\n%s=%s\r\n", strval(pIP), pIP, pname);
			fwrite(handle, string);
			fclose(handle);
		}
	} else {
		if(dini_Get(file, pIP, string)) {
			new pos = strfindword(string, pname, true);
			if(pos == 0) {
				strdel(string, 0, strlen(pname) + 1);
				if(string[0] != '\0') {
					format(string, sizeof(string), "%s %s", string, pname);
					dini_Set(file, pIP, string);
				}
			} else {
				if(pos == -1) {
					strmakeroom(string, strlen(pname) + strlen(pIP) + 4);	// ip, =, space, \r\n
				} else {
					strdel(string, pos - 1, pos + strlen(pname));
				}
				format(string, sizeof(string), "%s %s", string, pname);
				dini_Set(file, pIP, string);
			}
		} else {
			dini_Set(file, pIP, pname);
		}
	}
}

WriteAdminState(playerid, newstate)
{
	new string[4];
	dini_Get(STATUSFILE, ReturnPlayerIP(playerid), string);

	if(newstate & ADMIN_STATE_MUTED) string[0]='1';
	else if(string[0] == '\0') string[0] = '0';

	if(newstate & ADMIN_STATE_FROZEN) string[1]='1';
	else if(string[1] == '\0') string[1] = '0';

	if(newstate & ADMIN_STATE_JAILED) string[2]='1';
	else if(string[2] == '\0') string[2] = '0';

	if(string[0] == '0' && string[1] == '0' && string[2] == '0') dini_Unset(STATUSFILE, ReturnPlayerIP(playerid));
	else dini_Set(STATUSFILE, ReturnPlayerIP(playerid), string);
}

UnwriteAdminState(playerid, newstate)
{
	new string[4];
	dini_Get(STATUSFILE, ReturnPlayerIP(playerid), string);

	if(newstate & ADMIN_STATE_MUTED) string[0]='0';
	else if(string[0] == '\0') string[0] = '0';

	if(newstate & ADMIN_STATE_FROZEN) string[1]='0';
	else if(string[1] == '\0') string[1] = '0';

	if(newstate & ADMIN_STATE_JAILED) string[2]='0';
	else if(string[2] == '\0') string[2] = '0';

	if(string[0] == '0' && string[1] == '0' && string[2] == '0') dini_Unset(STATUSFILE, ReturnPlayerIP(playerid));
	else dini_Set(STATUSFILE, ReturnPlayerIP(playerid), string);
}

LoadPlayerData(playerid)
{
	new filename[MAX_STRING];
	format(filename, sizeof(filename), PLAYERFOLDER "settings_%s.ini", ReturnPlayerName(playerid));

	#if JOINMSG_LINES > 0
		if(dini_Isset(filename, "Jointext")) {
			gPlayerData[playerid][E_JOINTEXT] = dini_Bool(filename, "JoinText");
		} else {
			gPlayerData[playerid][E_JOINTEXT] = gServerData[E_JOIN_DEFAULT];
		}
	#endif

	gPlayerData[playerid][E_IMMUNE] = dini_Bool(filename, "PingImmunity");

	new string[4];
	if(!dini_Get(STATUSFILE, ReturnPlayerIP(playerid), string)) return;
	if(string[0] == '1') gPlayerData[playerid][E_STATE] |= ADMIN_STATE_MUTED;
	if(string[1] == '1') gPlayerData[playerid][E_STATE] |= ADMIN_STATE_FROZEN;
	if(string[2] == '1') gPlayerData[playerid][E_STATE] |= ADMIN_STATE_JAILED;
}


//----------------
// Data Functions
//----------------
LoadData()
{
	CreateData();

	dini_Get(SETTINGSFILE, "ChatPrefix", gServerData[E_CHAT_PREFIX], sizeof(SIZE_E_SERVERDATA[E_CHAT_PREFIX]));	// needs sizeof thingy because the compiler is stupid
	gServerData[E_CHAT_PREFIX_LEN] = strlen(gServerData[E_CHAT_PREFIX]);

	dini_Get(SETTINGSFILE, "BanMsg", gServerData[E_BAN_MSG], sizeof(SIZE_E_SERVERDATA[E_BAN_MSG]));
	dini_Get(SETTINGSFILE, "SuspendMsg", gServerData[E_SUSPEND_MSG], sizeof(SIZE_E_SERVERDATA[E_SUSPEND_MSG]));
	dini_Get(SETTINGSFILE, "DefaultNumPlate", gServerData[E_DEFAULT_NUM_PLATE], sizeof(SIZE_E_SERVERDATA[E_DEFAULT_NUM_PLATE]));
	dini_Get(SETTINGSFILE, "DefaultPW", gServerData[E_DEFAULT_PW], sizeof(SIZE_E_SERVERDATA[E_DEFAULT_PW]));

	gServerData[E_ADMIN_PMS] = dini_Bool(SETTINGSFILE, "AdminPMs");
	gServerData[E_ALIAS_ADMINS] = dini_Bool(SETTINGSFILE, "AliasAdmins");
	gServerData[E_AUTO_LOGIN] = dini_Bool(SETTINGSFILE, "AutoLogin");
	gServerData[E_CONSOLE_MSGS] = dini_Bool(SETTINGSFILE, "ConsoleMsgs");
	gServerData[E_FIX_RUNNING] = dini_Bool(SETTINGSFILE, "FixRunning");
	gServerData[E_HIDE_BANS] = dini_Bool(SETTINGSFILE, "HideBans");
	gServerData[E_JOIN_COUNTRIES] = dini_Bool(SETTINGSFILE, "JoinCountries");
	gServerData[E_JOIN_DEFAULT] = dini_Bool(SETTINGSFILE, "JoinDefault");
	gServerData[E_JOIN_MSGS] = dini_Bool(SETTINGSFILE, "JoinMsgs");
	gServerData[E_LOG_ACTIONS] = dini_Bool(SETTINGSFILE, "LogActions");
	gServerData[E_LOG_LOGINS] = dini_Bool(SETTINGSFILE, "LogLogins");
	gServerData[E_PING_IMMUNITY] = dini_Bool(SETTINGSFILE, "PingImmunity");
	gServerData[E_RESPAWN_VEHICLES] = dini_Bool(SETTINGSFILE, "RespawnVehicles");
	gServerData[E_SHOW_PMS] = dini_Bool(SETTINGSFILE, "ShowPMs");
	gServerData[E_SPEC_HUD] = dini_Bool(SETTINGSFILE, "SpecHUD");

	gServerData[E_AUTOMUTE_TIME] = dini_Int(SETTINGSFILE, "AutoMuteTime");
	gServerData[E_DROP_HEIGHT] = dini_Int(SETTINGSFILE, "DropHeight");
	gServerData[E_GIVEWEAPON_AMMO] = dini_Int(SETTINGSFILE, "GiveWeaponAmmo");
	gServerData[E_JOIN_BAN_TIME] = dini_Int(SETTINGSFILE, "JoinBanTime");
	gServerData[E_MAX_PING] = dini_Int(SETTINGSFILE, "MaxPing");
	gServerData[E_PUNCH_DECREMENT] = dini_Int(SETTINGSFILE, "PunchDecrement");
	gServerData[E_RAGE_TIME] = dini_Int(SETTINGSFILE, "RageTime");
	gServerData[E_SIGNIN_TIME] = dini_Int(SETTINGSFILE, "SignInTime");
	gServerData[E_SLAP_DECREMENT] = dini_Int(SETTINGSFILE, "SlapDecrement");

	gServerData[E_ALIAS_LEVEL] = dini_Int(SETTINGSFILE, "AliasLevel");
	gServerData[E_ALIAS2_LEVEL] = dini_Int(SETTINGSFILE, "Alias2Level");
	gServerData[E_ALIAS3_LEVEL] = dini_Int(SETTINGSFILE, "Alias3Level");
	gServerData[E_ARMOURALL_LEVEL] = dini_Int(SETTINGSFILE, "ArmourAllLevel");
	gServerData[E_ARMOUR_LEVEL] = dini_Int(SETTINGSFILE, "ArmourLevel");
	gServerData[E_BANCHECK_LEVEL] = dini_Int(SETTINGSFILE, "BanCheckLevel");
	gServerData[E_BAN_LEVEL] = dini_Int(SETTINGSFILE, "BanLevel");
	gServerData[E_BRING_LEVEL] = dini_Int(SETTINGSFILE, "BringLevel");
	gServerData[E_CHANGEMODE_LEVEL] = dini_Int(SETTINGSFILE, "ChangeModeLevel");
	gServerData[E_CHANGEPW_LEVEL] = dini_Int(SETTINGSFILE, "ChangePWLevel");
	gServerData[E_CLEARBANS_LEVEL] = dini_Int(SETTINGSFILE, "ClearBansLevel");
	gServerData[E_CLEARSTATUS_LEVEL] = dini_Int(SETTINGSFILE, "ClearStatusLevel");
	gServerData[E_CLR_LEVEL] = dini_Int(SETTINGSFILE, "ClrLevel");
	gServerData[E_CREATE_LEVEL] = dini_Int(SETTINGSFILE, "CreateLevel");
	gServerData[E_DESTROY_LEVEL] = dini_Int(SETTINGSFILE, "DestroyLevel");
	gServerData[E_DESYNC_LEVEL] = dini_Int(SETTINGSFILE, "DesyncLevel");
	gServerData[E_DROP_LEVEL] = dini_Int(SETTINGSFILE, "DropLevel");
	gServerData[E_EJECTALL_LEVEL] = dini_Int(SETTINGSFILE, "EjectAllLevel");
	gServerData[E_EJECT_LEVEL] = dini_Int(SETTINGSFILE, "EjectLevel");
	gServerData[E_EXPLODE_LEVEL] = dini_Int(SETTINGSFILE, "ExplodeLevel");
	gServerData[E_FLIP_LEVEL] = dini_Int(SETTINGSFILE, "FlipLevel");
	gServerData[E_FREEZE_LEVEL] = dini_Int(SETTINGSFILE, "FreezeLevel");
	gServerData[E_GIVEALLCASH_LEVEL] = dini_Int(SETTINGSFILE, "GiveAllCashLevel");
	gServerData[E_GIVEALLWEAPON_LEVEL] = dini_Int(SETTINGSFILE, "GiveAllWeaponLevel");
	gServerData[E_GIVECASH_LEVEL] = dini_Int(SETTINGSFILE, "GiveCashLevel");
	gServerData[E_GIVEWEAPON_LEVEL] = dini_Int(SETTINGSFILE, "GiveWeaponLevel");
	gServerData[E_GOTO_LEVEL] = dini_Int(SETTINGSFILE, "GotoLevel");
	gServerData[E_GRAVITY_LEVEL] = dini_Int(SETTINGSFILE, "GravityLevel");
	gServerData[E_HEALALL_LEVEL] = dini_Int(SETTINGSFILE, "HealAllLevel");
	gServerData[E_HEAL_LEVEL] = dini_Int(SETTINGSFILE, "HealLevel");
	gServerData[E_IMITATE_LEVEL] = dini_Int(SETTINGSFILE, "ImitateLevel");
	gServerData[E_IMMUNE_LEVEL] = dini_Int(SETTINGSFILE, "ImmuneLevel");
	gServerData[E_INFO_LEVEL] = dini_Int(SETTINGSFILE, "InfoLevel");
	gServerData[E_INTERIOR_LEVEL] = dini_Int(SETTINGSFILE, "InteriorLevel");
	gServerData[E_IP_LEVEL] = dini_Int(SETTINGSFILE, "IPLevel");
	gServerData[E_JAIL_LEVEL] = dini_Int(SETTINGSFILE, "JailLevel");
	gServerData[E_KICK_LEVEL] = dini_Int(SETTINGSFILE, "KickLevel");
	gServerData[E_LOG_LEVEL] = dini_Int(SETTINGSFILE, "LogLevel");
	gServerData[E_MIN_PW_LENGTH] = dini_Int(SETTINGSFILE, "MinPWLength");
	gServerData[E_MSG_LEVEL] = dini_Int(SETTINGSFILE, "MsgLevel");
	gServerData[E_MUTE_LEVEL] = dini_Int(SETTINGSFILE, "MuteLevel");
	gServerData[E_PUNCH_LEVEL] = dini_Int(SETTINGSFILE, "PunchLevel");
	gServerData[E_RANGEBAN_LEVEL] = dini_Int(SETTINGSFILE, "RangeBanLevel");
	gServerData[E_RANGESUSPEND_LEVEL] = dini_Int(SETTINGSFILE, "RangeSuspendLevel");
	gServerData[E_RAPE_LEVEL] = dini_Int(SETTINGSFILE, "RapeLevel");
	gServerData[E_RCON_LEVEL] = dini_Int(SETTINGSFILE, "RCONLevel");
	gServerData[E_RELOADDATA_LEVEL] = dini_Int(SETTINGSFILE, "ReloadDataLevel");
	gServerData[E_REMALLCASH_LEVEL] = dini_Int(SETTINGSFILE, "RemAllCashLevel");
	gServerData[E_REMALLWEAPONS_LEVEL] = dini_Int(SETTINGSFILE, "RemAllWeaponsLevel");
	gServerData[E_REMCASH_LEVEL] = dini_Int(SETTINGSFILE, "RemCashLevel");
	gServerData[E_REMWEAPONS_LEVEL] = dini_Int(SETTINGSFILE, "RemWeaponsLevel");
	gServerData[E_REPAIR_LEVEL] = dini_Int(SETTINGSFILE, "RepairLevel");
	gServerData[E_RESPAWN_LEVEL] = dini_Int(SETTINGSFILE, "RespawnLevel");
	gServerData[E_SAY_LEVEL] = dini_Int(SETTINGSFILE, "SayLevel");
	gServerData[E_SELECT_LEVEL] = dini_Int(SETTINGSFILE, "SelectLevel");
	gServerData[E_SERVERNAME_LEVEL] = dini_Int(SETTINGSFILE, "ServerNameLevel");
	gServerData[E_SETADMIN_LEVEL] = dini_Int(SETTINGSFILE, "SetAdminLevel");
	gServerData[E_SETNAME_LEVEL] = dini_Int(SETTINGSFILE, "SetNameLevel");
	gServerData[E_SETPING_LEVEL] = dini_Int(SETTINGSFILE, "SetPingLevel");
	gServerData[E_SHOUT_LEVEL] = dini_Int(SETTINGSFILE, "ShoutLevel");
	gServerData[E_SLAP_LEVEL] = dini_Int(SETTINGSFILE, "SlapLevel");
	gServerData[E_SLAY_LEVEL] = dini_Int(SETTINGSFILE, "SlayLevel");
	gServerData[E_SPAWN_LEVEL] = dini_Int(SETTINGSFILE, "SpawnLevel");
	gServerData[E_SPEC_LEVEL] = dini_Int(SETTINGSFILE, "SpecLevel");
	gServerData[E_SUSPEND_LEVEL] = dini_Int(SETTINGSFILE, "SuspendLevel");
	gServerData[E_TELE_LEVEL] = dini_Int(SETTINGSFILE, "TeleLevel");
	gServerData[E_TIME_LEVEL] = dini_Int(SETTINGSFILE, "TimeLevel");
	gServerData[E_UNBAN_LEVEL] = dini_Int(SETTINGSFILE, "UnbanLevel");
	gServerData[E_UNDESYNC_LEVEL] = dini_Int(SETTINGSFILE, "UndesyncLevel");
	gServerData[E_UNFREEZE_LEVEL] = dini_Int(SETTINGSFILE, "UnfreezeLevel");
	gServerData[E_UNJAIL_LEVEL] = dini_Int(SETTINGSFILE, "UnjailLevel");
	gServerData[E_UNMUTE_LEVEL] = dini_Int(SETTINGSFILE, "UnmuteLevel");
	gServerData[E_UNRAPE_LEVEL] = dini_Int(SETTINGSFILE, "UnrapeLevel");
	gServerData[E_UNSUSPEND_LEVEL] = dini_Int(SETTINGSFILE, "UnsuspendLevel");
	gServerData[E_WEATHER_LEVEL] = dini_Int(SETTINGSFILE, "WeatherLevel");
	gServerData[E_WILDBAN_LEVEL] = dini_Int(SETTINGSFILE, "WildBanLevel");
	gServerData[E_WORLD_LEVEL] = dini_Int(SETTINGSFILE, "WorldLevel");
}

CreateData()
{
	if(!fexist(SETTINGSFILE)) {
		new File:handle = fopen(SETTINGSFILE, io_write);
		if(handle) {
			fwrite(handle,
				"# This file contains the level settings, maximium ping and default password (for /asetadmin)\r\n" \
				"# To restore a value to its default setting just delete the line\r\n"
			);
			fclose(handle);
		}
	}
	if(!dini_Isset(SETTINGSFILE,"ChatPrefix")) dini_Set(SETTINGSFILE, "ChatPrefix", CHATPREFIX);
	if(!dini_Isset(SETTINGSFILE,"BanMsg")) dini_Set(SETTINGSFILE, "BanMsg", BANMSG);
	if(!dini_Isset(SETTINGSFILE,"DefaultNumPlate")) dini_Set(SETTINGSFILE, "DefaultNumPlate", DEFAULTNUMPLATE);
	if(!dini_Isset(SETTINGSFILE,"DefaultPW")) dini_Set(SETTINGSFILE, "DefaultPW", DEFAULTPW);
	if(!dini_Isset(SETTINGSFILE,"SuspendMsg")) dini_Set(SETTINGSFILE, "SuspendMsg", SUSPENDMSG);

	if(!fexist(BANFILE)) {
		new File:handle = fopen(BANFILE, io_write);
		if(handle) {
			fwrite(handle,
				"# Here all the bans are stored in the format \"name ip reason\", to remove a ban delete the line\r\n" \
				"# This file must end in an empty line\r\n"
			);
			fclose(handle);
		}
	}

	if(!fexist(SUSPENDFILE)) {
		new File:handle = fopen(SUSPENDFILE, io_write);
		if(handle) {
			fwrite(handle,
				"# Here all the suspensions are stored in the format \"name ip year month day hour reason\", to remove a suspension delete the line\r\n" \
				"# This file must end in an empty line\r\n"
			);
			fclose(handle);
		}
	}

	if(!fexist(USERFILE)) {
		new File:handle = fopen(USERFILE, io_write);
		if(handle) {
			new hash[33], string[MAX_STRING];
			dini_Get(SETTINGSFILE, "DefaultPW", string);
			strcpy(hash, MD5_Hash(string));
			format(string, sizeof(string),
				"# This file contains the data for admins in the format \"username=level ip passwordhash hidden\"\r\n" \
				"# To manually create an admin just use any ip and the passwordhash \"%s\", for the password \"%s\"\r\n" \
				"# eg) [DRuG]Dabombber=10 127.0.0.1 %s\r\n",
				hash, string, hash
			);
			fwrite(handle, string);
			fclose(handle);
		}
	}

	if(!fexist(MODESFILE)) {
		new File:handle = fopen(MODESFILE, io_write);
		if(handle) {
			fwrite(handle, "# This file should list each gamemode on a new line (without the .amx extension)\r\n");
			fclose(handle);
		}
	}

	if(!fexist(STATUSFILE)) {
		new File:handle = fopen(STATUSFILE, io_write);
		if(handle) {
			fwrite(handle,
				"# This file contains mute, freeze and jail information. To clear a status delete the line, instead of setting all the values to 0\r\n" \
				"# It is in the format IP=MutedFrozenJailed eg) 127.0.0.1=010\r\n"
			);
			fclose(handle);
		}
	}

	setchk("AutoMuteTime", AUTOMUTETIME);
	setchk("DropHeight", DROPHEIGHT);
	setchk("GiveWeaponAmmo", GIVEWEAPONAMMO);
	setchk("MaxPing", MAXPING);
	setchk("MinPWLength", MINPWLENGTH);
	setchk("PunchDecrement", PUNCHDECREMENT);
	setchk("RageTime", RAGETIME);
	setchk("SignInTime", SIGNINTIME);
	setchk("SlapDecrement", SLAPDECREMENT);

	if(!dini_Isset(SETTINGSFILE, "AdminPMs")) dini_BoolSet(SETTINGSFILE, "AdminPMs", ADMINPMS);
	if(!dini_Isset(SETTINGSFILE, "AliasAdmins")) dini_BoolSet(SETTINGSFILE, "AliasAdmins", ALIASADMINS);
	if(!dini_Isset(SETTINGSFILE, "AutoLogin")) dini_BoolSet(SETTINGSFILE, "AutoLogin", AUTOLOGIN);
	if(!dini_Isset(SETTINGSFILE, "ConsoleMsgs")) dini_BoolSet(SETTINGSFILE, "ConsoleMsgs", CONSOLEMSGS);
	if(!dini_Isset(SETTINGSFILE, "FixRunning")) dini_BoolSet(SETTINGSFILE, "FixRunning", FIXRUNNING);
	if(!dini_Isset(SETTINGSFILE, "HideBans")) dini_BoolSet(SETTINGSFILE, "HideBans", HIDEBANS);
	if(!dini_Isset(SETTINGSFILE, "JoinCountries")) dini_BoolSet(SETTINGSFILE, "JoinCountries", JOINCOUNTRIES);
	if(!dini_Isset(SETTINGSFILE, "JoinDefault")) dini_BoolSet(SETTINGSFILE, "JoinDefault", JOINDEFAULT);
	if(!dini_Isset(SETTINGSFILE, "JoinMsgs")) dini_BoolSet(SETTINGSFILE, "JoinMsgs", JOINMSGS);
	if(!dini_Isset(SETTINGSFILE, "LogActions")) dini_BoolSet(SETTINGSFILE, "LogActions", LOGACTIONS);
	if(!dini_Isset(SETTINGSFILE, "LogLogins")) dini_BoolSet(SETTINGSFILE, "LogLogins", LOGLOGINS);
	if(!dini_Isset(SETTINGSFILE, "PingImmunity")) dini_BoolSet(SETTINGSFILE, "PingImmunity", PINGIMMUNITY);
	if(!dini_Isset(SETTINGSFILE, "RespawnVehicles")) dini_BoolSet(SETTINGSFILE, "RespawnVehicles", RESPAWNVEHICLES);
	if(!dini_Isset(SETTINGSFILE, "ShowPMs")) dini_BoolSet(SETTINGSFILE, "ShowPMs", SHOWPMS);
	if(!dini_Isset(SETTINGSFILE, "SpecHUD")) dini_BoolSet(SETTINGSFILE, "SpecHUD", SPECHUD);

	setchk("AliasLevel", ALIASLEVEL);
	setchk("Alias2Level", ALIAS2LEVEL);
	setchk("Alias3Level", ALIAS3LEVEL);
	setchk("ArmourAllLevel", ARMOURALLLEVEL);
	setchk("ArmourLevel", ARMOURLEVEL);
	setchk("BanLevel", BANLEVEL);
	setchk("BanCheckLevel", BANCHECKLEVEL);
	setchk("BringLevel", BRINGLEVEL);
	setchk("ChangeModeLevel", CHANGEMODELEVEL);
	setchk("ChangePWLevel", CHANGEPWLEVEL);
	setchk("ClearBansLevel", CLEARBANSLEVEL);
	setchk("ClearStatusLevel", CLEARSTATUSLEVEL);
	setchk("ClrLevel", CLRLEVEL);
	setchk("CreateLevel", CREATELEVEL);
	setchk("DestroyLevel", DESTROYLEVEL);
	setchk("DesyncLevel", DESYNCLEVEL);
	setchk("DropLevel", DROPLEVEL);
	setchk("EjectAllLevel", EJECTALLLEVEL);
	setchk("EjectLevel", EJECTLEVEL);
	setchk("ExplodeLevel", EXPLODELEVEL);
	setchk("FlipLevel", FLIPLEVEL);
	setchk("FreezeLevel", FREEZELEVEL);
	setchk("GiveAllCashLevel", GIVEALLCASHLEVEL);
	setchk("GiveAllWeaponLevel", GIVEALLWEAPONLEVEL);
	setchk("GiveCashLevel", GIVECASHLEVEL);
	setchk("GiveWeaponLevel", GIVEWEAPONLEVEL);
	setchk("GotoLevel", GOTOLEVEL);
	setchk("GravityLevel", GRAVITYLEVEL);
	setchk("HealAllLevel", HEALALLLEVEL);
	setchk("HealLevel", HEALLEVEL);
	setchk("ImitateLevel", IMITATELEVEL);
	setchk("ImmuneLevel", IMMUNELEVEL);
	setchk("InfoLevel", INFOLEVEL);
	setchk("InteriorLevel", INTERIORLEVEL);
	setchk("IPLevel", IPLEVEL);
	setchk("JailLevel", JAILLEVEL);
	setchk("JoinBanTime", JOINBANTIME);
	setchk("KickLevel", KICKLEVEL);
	setchk("LogLevel", LOGLEVEL);
	setchk("MsgLevel", MSGLEVEL);
	setchk("MuteLevel", MUTELEVEL);
	setchk("PunchLevel", PUNCHLEVEL);
	setchk("RangeBanLevel", RANGEBANLEVEL);
	setchk("RangeSuspendLevel", RANGESUSPENDLEVEL);
	setchk("RapeLevel", RAPELEVEL);
	setchk("RCONLevel", RCONLEVEL);
	setchk("ReloadDataLevel", RELOADDATALEVEL);
	setchk("RemAllCashLevel", REMALLCASHLEVEL);
	setchk("RemAllWeaponsLevel", REMALLWEAPONSLEVEL);
	setchk("RemCashLevel", REMCASHLEVEL);
	setchk("RemWeaponsLevel", REMWEAPONSLEVEL);
	setchk("RepairLevel", REPAIRLEVEL);
	setchk("RespawnLevel", RESPAWNLEVEL);
	setchk("SayLevel", SAYLEVEL);
	setchk("SelectLevel", SELECTLEVEL);
	setchk("ServerNameLevel", SERVERNAMELEVEL);
	setchk("SetAdminLevel", SETADMINLEVEL);
	setchk("SetNameLevel", SETNAMELEVEL);
	setchk("SetPingLevel", SETPINGLEVEL);
	setchk("ShoutLevel", SHOUTLEVEL);
	setchk("SlapLevel", SLAPLEVEL);
	setchk("SlayLevel", SLAYLEVEL);
	setchk("SpawnLevel", SPAWNLEVEL);
	setchk("SpecLevel", SPECLEVEL);
	setchk("SuspendLevel", SUSPENDLEVEL);
	setchk("UnsuspendLevel", UNSUSPENDLEVEL);
	setchk("TeleLevel", TELELEVEL);
	setchk("TimeLevel", TIMELEVEL);
	setchk("UnbanLevel", UNBANLEVEL);
	setchk("UndesyncLevel", UNDESYNCLEVEL);
	setchk("UnfreezeLevel", UNFREEZELEVEL);
	setchk("UnjailLevel", UNJAILLEVEL);
	setchk("UnmuteLevel", UNMUTELEVEL);
	setchk("UnrapeLevel", UNRAPELEVEL);
	setchk("WeatherLevel", WEATHERLEVEL);
	setchk("WildBanLevel", WILDBANLEVEL);
	setchk("WorldLevel", WORLDLEVEL);
}

#if LOG_LINES > 0 && LOG_PAGES > 0
	GetPlayerData(const pname[], &level, lastIP[], passwordhash[], &status=0, &manuallogin=0, &logpage=0, ipsize=sizeof(lastIP), pwsize=sizeof(passwordhash))
	{
		new bool:ishidden;
		sscanf(dini_Return(USERFILE, pname), "issiii", level, lastIP, ipsize, passwordhash, pwsize, ishidden, manuallogin, logpage);
		if(ishidden) status |= ADMIN_STATE_HIDDEN;
		return (level && lastIP[0] && passwordhash[0]);
	}
#else
	GetPlayerData(const pname[], &level, lastIP[], passwordhash[], &status=0, &manuallogin=0, ipsize=sizeof(lastIP), pwsize=sizeof(passwordhash))
	{
		new bool:ishidden;
		sscanf(dini_Return(USERFILE, pname), "issii", level, lastIP, ipsize, passwordhash, pwsize, ishidden, manuallogin);
		if(ishidden) status |= ADMIN_STATE_HIDDEN;
		return (level && lastIP[0] && passwordhash[0]);
	}
#endif

#if LOG_LINES > 0 && LOG_PAGES > 0
	SetPlayerData(pname[], level, const lastIP[], const passwordhash[], status=0, manuallogin=0, logpage=0)
	{
		new pdata[MAX_STRING];
		format(pdata, sizeof(pdata), "%i %s %s %i %i %i", level, lastIP, passwordhash, status & ADMIN_STATE_HIDDEN ? 1 : 0, manuallogin ? 1 : 0, logpage);
		return dini_Set(USERFILE, pname, pdata);
	}
#else
	SetPlayerData(pname[], level, const lastIP[], const passwordhash[], status=0, manuallogin=0)
	{
		new pdata[MAX_STRING];
		format(pdata, sizeof(pdata), "%i %s %s %i %i", level, lastIP, passwordhash, status & ADMIN_STATE_HIDDEN ? 1 : 0, manuallogin ? 1 : 0);
		return dini_Set(USERFILE, pname, pdata);
	}
#endif

stock SendBanMsg(playerid, const message[], const date[], const time[], const adminname[])
{
	new msg[512];
	strcpy(msg, message);

	strreplace(msg, "$(WEBSITE)", ReturnServerVar("weburl"));
	strreplace(msg, "$(NAME)", ReturnPlayerName(playerid));
	strreplace(msg, "$(IP)", ReturnPlayerIP(playerid));
	strreplace(msg, "$(DATE)", date);
	strreplace(msg, "$(TIME)", time);
	strreplace(msg, "$(ADMIN)", adminname);

	new start, end;
	while((end = strfindchar(msg, '|', false, start)) != -1) {
		if(start != end) {
			msg[end] = '\0';

			SendWrappedMessageToPlayer(playerid, COLOUR_HELP, msg[start]);
		}
		start = end + 1;
	}
	if(msg[start] != '\0') SendWrappedMessageToPlayer(playerid, COLOUR_HELP, msg[start]);
}

public alar_specupdate()
{
	new keys,
		updown,
		leftright,
		Float:x_off,
		Float:y_off,
		Float:z_off;

	LoopPlayers(playerid) {
		if(gPlayerData[playerid][E_SPECTATING] && gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
			GetPlayerKeys(playerid, keys, updown, leftright);

			if(keys & KEY_JUMP) {
				if(gPlayerData[playerid][E_CAM_ROT_Z] < 89.0) {
					gPlayerData[playerid][E_CAM_ROT_Z] += 1.0;
				}
			} else if(keys & KEY_CROUCH) {
				if(gPlayerData[playerid][E_CAM_ROT_Z] > -89.0) {
					gPlayerData[playerid][E_CAM_ROT_Z] -= 1.0;
				}
			}

			new Float:speed = 1.0;
			if(keys & KEY_SPRINT) {
				speed = 2.0;
			}

			if(leftright == KEY_LEFT) {
				if(gPlayerData[playerid][E_CAM_ROT_XY] >= 360.0 - speed * 1.5) {
					gPlayerData[playerid][E_CAM_ROT_XY] -= 360.0 - speed * 1.5;
				} else {
					gPlayerData[playerid][E_CAM_ROT_XY] += speed * 1.5;
				}
			} else if(leftright == KEY_RIGHT) {
				if(gPlayerData[playerid][E_CAM_ROT_XY] < speed * 1.5) {
					gPlayerData[playerid][E_CAM_ROT_XY] += 360.0 - speed * 1.5;
				} else {
					gPlayerData[playerid][E_CAM_ROT_XY] -= speed * 1.5;
				}
			}

			if(keys & KEY_SPRINT) {
				speed = 5.0;
			}

			if(keys & (KEY_FIRE | KEY_HANDBRAKE) == (KEY_FIRE | KEY_HANDBRAKE)) {
				gPlayerData[playerid][E_CAM_ROT_Z] = 0;
			} else if(keys & KEY_FIRE) {
				x_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatsin(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
				y_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatcos(gPlayerData[playerid][E_CAM_ROT_XY], degrees);

				gPlayerData[playerid][E_CAM_POS_X] -= speed * 2.0 * x_off;
				gPlayerData[playerid][E_CAM_POS_Y] += speed * 2.0 * y_off;
			} else if(keys & KEY_HANDBRAKE) {
				x_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatsin(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
				y_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatcos(gPlayerData[playerid][E_CAM_ROT_XY], degrees);

				gPlayerData[playerid][E_CAM_POS_X] += speed * 2.0 * x_off;
				gPlayerData[playerid][E_CAM_POS_Y] -= speed * 2.0 * y_off;
			}

			x_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatcos(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
			y_off = floatcos(gPlayerData[playerid][E_CAM_ROT_Z], degrees) * floatsin(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
			z_off = floatsin(gPlayerData[playerid][E_CAM_ROT_Z], degrees);

			if(updown == KEY_UP) {
				gPlayerData[playerid][E_CAM_POS_X] += speed * 2.0 * x_off;
				gPlayerData[playerid][E_CAM_POS_Y] += speed * 2.0 * y_off;
				gPlayerData[playerid][E_CAM_POS_Z] += speed * 2.0 * z_off;
			} else if(updown == KEY_DOWN) {
				gPlayerData[playerid][E_CAM_POS_X] -= speed * 2.0 * x_off;
				gPlayerData[playerid][E_CAM_POS_Y] -= speed * 2.0 * y_off;
				gPlayerData[playerid][E_CAM_POS_Z] -= speed * 2.0 * z_off;
			}

			SetPlayerCameraPos(playerid, gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
			SetPlayerCameraLookAt(playerid, gPlayerData[playerid][E_CAM_POS_X] + x_off, gPlayerData[playerid][E_CAM_POS_Y] + y_off, gPlayerData[playerid][E_CAM_POS_Z] + z_off);
		}
	}
}

StoreSpawnData(playerid)
{
	GetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
	GetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
	gPlayerData[playerid][E_TEAM] = GetPlayerTeam(playerid);
	gPlayerData[playerid][E_SKIN] = GetPlayerSkin(playerid);
	gPlayerData[playerid][E_INTERIOR] = GetPlayerInterior(playerid);
	gPlayerData[playerid][E_WORLD] = GetPlayerVirtualWorld(playerid);
	gPlayerData[playerid][E_CASH] = GetPlayerMoney(playerid);
	ResetPlayerMoney(playerid);
	GetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
	if(gPlayerData[playerid][E_HEALTH] > 100.0) gPlayerData[playerid][E_HEALTH] = 100.0;
	GetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
	if(gPlayerData[playerid][E_ARMOUR] > 100.0) gPlayerData[playerid][E_ARMOUR] = 100.0;
	for(new i; i < 13; i++) {
		GetPlayerWeaponData(playerid, i, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
	}
}

public alar_setspawnposition(playerid)
{
	if(!IsPlayerConnected(playerid)) return;
	SetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
	SetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
	SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
	SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
	SetCameraBehindPlayer(playerid);
}

public alar_setspawndata(playerid)
{
	if(!IsPlayerConnected(playerid)) return;
	SetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
	SetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
	SetCameraBehindPlayer(playerid);
	SetPlayerTeam(playerid, gPlayerData[playerid][E_TEAM]);
	SetPlayerSkin(playerid, gPlayerData[playerid][E_SKIN]);
	SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
	SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
	ResetPlayerWeapons(playerid);
	for(new i; i < 13; i++) {
		if(gPlayerData[playerid][E_WEAPON][i] != 0) {
			GivePlayerWeapon(playerid, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
			gPlayerData[playerid][E_WEAPON][i] = 0;
		}
	}
	SetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
	SetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, gPlayerData[playerid][E_CASH]);
	ClearSpawnData(playerid);
}

ClearSpawnData(playerid)
{
	gPlayerData[playerid][E_POSX] = 0.0;
	gPlayerData[playerid][E_POSY] = 0.0;
	gPlayerData[playerid][E_POSZ] = 0.0;
	gPlayerData[playerid][E_ROT] = 0.0;
	gPlayerData[playerid][E_TEAM] = 0;
	gPlayerData[playerid][E_SKIN] = 0;
	gPlayerData[playerid][E_INTERIOR] = 0;
	gPlayerData[playerid][E_WORLD] = 0;
	gPlayerData[playerid][E_CASH] = 0;
	gPlayerData[playerid][E_HEALTH] = 0.0;
	gPlayerData[playerid][E_ARMOUR] = 0.0;
	for(new i; i < 13; i++) {
		gPlayerData[playerid][E_WEAPON][i] = 0;
		gPlayerData[playerid][E_AMMO][i] = 0;
	}
}

SpawnUsingData(playerid)
{
	if(!gPlayerData[playerid][E_SPECTATING] || GetPlayerState(playerid) != PLAYER_STATE_SPECTATING) return;
	if(gPlayerData[playerid][E_HEALTH]) {
		gPlayerData[playerid][E_CASH] += GetPlayerMoney(playerid);
		switch(gSpecExitMethod) {
			case -3: {
				SetSpawnInfo(playerid, gPlayerData[playerid][E_TEAM], gPlayerData[playerid][E_SKIN], gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
				TogglePlayerSpectating(playerid, false);

				SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
				SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
				ResetPlayerWeapons(playerid);
				for(new i; i < 13; i++) {
					if(gPlayerData[playerid][E_WEAPON][i] != 0) {
						GivePlayerWeapon(playerid, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
						gPlayerData[playerid][E_WEAPON][i] = 0;
					}
				}
				SetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
				SetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
				ResetPlayerMoney(playerid);
				GivePlayerMoney(playerid, gPlayerData[playerid][E_CASH]);
				ClearSpawnData(playerid);
			}
			case -2: {
				TogglePlayerSpectating(playerid, false);
				alar_setspawndata(playerid);
			}
			default: {
				TogglePlayerSpectating(playerid, false);
				SetTimerEx("alar_setspawndata", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
			}
		}
	} else {
		TogglePlayerSpectating(playerid, false);
	}

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has left spectate mode", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
}

SpawnUsingPosition(playerid)
{
	if(!gPlayerData[playerid][E_SPECTATING] || GetPlayerState(playerid) != PLAYER_STATE_SPECTATING) return;
	if(gPlayerData[playerid][E_HEALTH]) {
		gPlayerData[playerid][E_CASH] += GetPlayerMoney(playerid);
		switch(gSpecExitMethod) {
			case -3: {
				SetSpawnInfo(playerid, gPlayerData[playerid][E_TEAM], gPlayerData[playerid][E_SKIN], gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
				TogglePlayerSpectating(playerid, false);

				SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
				SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
				ResetPlayerWeapons(playerid);
				for(new i; i < 13; i++) {
					if(gPlayerData[playerid][E_WEAPON][i] != 0) {
						GivePlayerWeapon(playerid, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
						gPlayerData[playerid][E_WEAPON][i] = 0;
					}
				}
				SetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
				SetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
				ResetPlayerMoney(playerid);
				GivePlayerMoney(playerid, gPlayerData[playerid][E_CASH]);
				ClearSpawnData(playerid);
			}
			case -2: {
				TogglePlayerSpectating(playerid, false);
				alar_setspawndata(playerid);
			}
			default: {
				TogglePlayerSpectating(playerid, false);
				SetTimerEx("alar_setspawndata", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
			}
		}
	} else {
		switch(gSpecExitMethod) {
			case 3: {
				SetSpawnInfo(playerid, GetPlayerTeam(playerid), GetPlayerSkin(playerid), gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
				TogglePlayerSpectating(playerid, false);
				SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
				SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
				SetCameraBehindPlayer(playerid);
			}
			case 2: {
				TogglePlayerSpectating(playerid, false);
				alar_setspawnposition(playerid);
			}
			default: {
				SetTimerEx("alar_setspawnposition", 500, 0, "i", playerid);
				TogglePlayerSpectating(playerid, false);
			}
		}
	}

	new msg[MAX_INPUT];
	format(msg, sizeof(msg), "%s has left spectate mode", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
}

SetPlayerSpectating(playerid, targetid)
{
	if(IsPlayerInAnyVehicle(targetid) && gPlayerData[playerid][E_SPECMODE] != 1) PlayerSpectateVehicle(playerid, GetPlayerVehicleID(targetid), gPlayerData[playerid][E_SPECMODE] == 0 ? SPECTATE_MODE_NORMAL : SPECTATE_MODE_SIDE);
	else PlayerSpectatePlayer(playerid, targetid);
	SetPlayerInterior(playerid, GetPlayerInterior(targetid));
	SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(targetid));
}

UpdatePlayerSpecHUD(playerid)
{
	if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID || gPlayerData[playerid][E_SPECHUD] == INVALID_TEXT_DRAW) return;

	new string[MAX_STRING];
	if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_COUNTRY][0] == '\0') {
		format(string, sizeof(string), "~p~~h~ID: ~b~%i   ~p~~h~Name: ~b~%s~n~~p~~h~IP: ~b~%s", gPlayerData[playerid][E_SPECID], ReturnPlayerName(gPlayerData[playerid][E_SPECID]), ReturnPlayerIP(gPlayerData[playerid][E_SPECID]));
	} else {
		format(string, sizeof(string), "~p~~h~ID: ~b~%i   ~p~~h~Name: ~b~%s~n~~p~~h~Country: ~b~%s   ~p~~h~IP: ~b~%s", gPlayerData[playerid][E_SPECID], ReturnPlayerName(gPlayerData[playerid][E_SPECID]), gPlayerData[gPlayerData[playerid][E_SPECID]][E_COUNTRY], ReturnPlayerIP(gPlayerData[playerid][E_SPECID]));
	}

	new status = gPlayerData[gPlayerData[playerid][E_SPECID]][E_STATE];
	if(status & ADMIN_STATE_JAILED) {
		strcat(string, "~n~~p~~h~Status: ~b~jailed");
		if(status & ADMIN_STATE_MUTED) strcat(string, " & muted");
		if(status & ADMIN_STATE_FROZEN) strcat(string, " & frozen");
		if(status & ADMIN_STATE_DESYNCED) strcat(string, " & desynced");
	} else if(status & ADMIN_STATE_MUTED) {
		strcat(string, "~n~~p~~h~Status: ~b~muted");
		if(status & ADMIN_STATE_FROZEN) strcat(string, " & frozen");
		if(status & ADMIN_STATE_DESYNCED) strcat(string, " & desynced");
	} else if(status & ADMIN_STATE_FROZEN) {
		strcat(string, "~n~~p~~h~Status: ~b~frozen");
		if(status & ADMIN_STATE_DESYNCED) strcat(string, " & desynced");
	} else if(status & ADMIN_STATE_DESYNCED) {
		strcat(string, "~n~~p~~h~Status: ~b~desynced");
	}

	TextDrawSetString(gPlayerData[playerid][E_SPECHUD], ReturnGameText(string));
}

ObserverSwitchPlayer(playerid, idealplayer)
{
	new direction = idealplayer >= gPlayerData[playerid][E_SPECID] ? 1 : -1,
		oldid = gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID ? gPlayerData[playerid][E_SPECID] : gPlayerData[playerid][E_SPECTATING] ? FREE_SPECTATE_ID : INVALID_PLAYER_ID;
	gPlayerData[playerid][E_SPECID] = idealplayer;
	for(new i; i < gMaxPlayers; i++) {
		if(gPlayerData[playerid][E_SPECID] >= gMaxPlayers) gPlayerData[playerid][E_SPECID] = 0;
		else if(gPlayerData[playerid][E_SPECID] < 0) gPlayerData[playerid][E_SPECID] = gMaxPlayers - 1;

		if(IsSpawned(gPlayerData[playerid][E_SPECID]) && gPlayerData[playerid][E_SPECID] != playerid) {
			if(oldid != gPlayerData[playerid][E_SPECID]) {
				SetPlayerSpectating(playerid, gPlayerData[playerid][E_SPECID]);

				UpdatePlayerSpecHUD(playerid);
				CallRemoteFunction("OnAdminSpectate", "iii", playerid, gPlayerData[playerid][E_SPECID], oldid);
			}
			return;
		}
		gPlayerData[playerid][E_SPECID] += direction;
	}
	gPlayerData[playerid][E_SPECID] = oldid;
	PutPlayerIntoFreeSpec(playerid);
	if(oldid != INVALID_PLAYER_ID) {
		CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, oldid);

		#if SPEC_TXT_TIME > 0
			gPlayerData[playerid][E_SPECMODE] = 3;
			ShowSpecTxt(playerid);
		#endif
	}
}

PutPlayerIntoFreeSpec(playerid)
{
	if(gPlayerData[playerid][E_SPECHUD] != INVALID_TEXT_DRAW) {
		TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
		TextDrawDestroy(gPlayerData[playerid][E_SPECHUD]);
		gPlayerData[playerid][E_SPECHUD] = INVALID_TEXT_DRAW;
	}
	new pstate = GetPlayerState(playerid);
	if(pstate == PLAYER_STATE_SPECTATING) {
		if(gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID) {
			if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID])) {
				new vid = GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]);
				GetVehiclePos(vid, gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
				GetVehicleZAngle(vid, gPlayerData[playerid][E_CAM_ROT_XY]);
			} else {
				GetPlayerPos(gPlayerData[playerid][E_SPECID], gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
				GetPlayerFacingAngle(gPlayerData[playerid][E_SPECID], gPlayerData[playerid][E_CAM_ROT_XY]);
			}
			gPlayerData[playerid][E_CAM_ROT_XY] += 90.0;
			gPlayerData[playerid][E_CAM_POS_Z] += 2.0;
			gPlayerData[playerid][E_CAM_POS_X] -= 3.0 * floatcos(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
			gPlayerData[playerid][E_CAM_POS_Y] -= 3.0 * floatsin(gPlayerData[playerid][E_CAM_ROT_XY], degrees);
		} else {
			GetPlayerPos(playerid, gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
			gPlayerData[playerid][E_CAM_POS_Z] -= 10.0;
			GetPlayerFacingAngle(playerid, gPlayerData[playerid][E_CAM_ROT_XY]);
			gPlayerData[playerid][E_CAM_ROT_XY] += 90.0;
		}
	} else if (pstate == PLAYER_STATE_DRIVER || pstate == PLAYER_STATE_PASSENGER) {
		new vehicleid = GetPlayerVehicleID(playerid);
		GetVehiclePos(vehicleid, gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
		GetVehicleZAngle(vehicleid, gPlayerData[playerid][E_CAM_ROT_XY]);
		gPlayerData[playerid][E_CAM_ROT_XY] += 90.0;
	} else {
		GetPlayerPos(playerid, gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
		GetPlayerFacingAngle(playerid, gPlayerData[playerid][E_CAM_ROT_XY]);
		gPlayerData[playerid][E_CAM_ROT_XY] += 90.0;
		gPlayerData[playerid][E_CAM_POS_Z] += 2.0;
	}
	gPlayerData[playerid][E_CAM_ROT_Z] = 0.0;
	gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;
	TogglePlayerSpectating(playerid, true);
	SetPlayerCameraPos(playerid, gPlayerData[playerid][E_CAM_POS_X], gPlayerData[playerid][E_CAM_POS_Y], gPlayerData[playerid][E_CAM_POS_Z]);
	SetPlayerCameraLookAt(playerid, gPlayerData[playerid][E_CAM_POS_X] + floatcos(gPlayerData[playerid][E_CAM_ROT_XY], degrees), gPlayerData[playerid][E_CAM_POS_Y] + floatsin(gPlayerData[playerid][E_CAM_ROT_XY], degrees), gPlayerData[playerid][E_CAM_POS_Z]);

	if(gSpecTimer == 0) {
		gSpecTimer = SetTimer("alar_specupdate", 20, 1);
	}
}

stock AddJoinChatLine(playerid, colour, const string[])
{
	LoopPlayers(i) {
		#if JOINMSG_LINES > 0
			if((gPlayerData[playerid][E_HIDEEXIT] == 1 || gPlayerData[i][E_JOINTEXT]) && i != playerid) {
				SendClientMessage(i, colour, string);
			}
		#else
			SendClientMessage(i, colour, string);
		#endif
	}
}

stock AddJoinTextLine(colour, const string[])
{
	colour = (colour & 0xFFFFFF00) | JOINMSG_ALPHA;

	// Move old entries
	for(new i = sizeof(gJoinMessage) - 1; i > 0; i--) {
		strcpy(gJoinMessage[i][E_TEXTBOX_STRING], gJoinMessage[i - 1][E_TEXTBOX_STRING], sizeof(SIZE_E_TEXTBOX[E_TEXTBOX_STRING]));
		TextDrawSetString(gJoinMessage[i][E_TEXTBOX_TEXT], gJoinMessage[i][E_TEXTBOX_STRING]);

		gJoinMessage[i][E_TEXTBOX_FADETIME] = gJoinMessage[i - 1][E_TEXTBOX_FADETIME];

		// Update colour
		if(gJoinMessage[i][E_TEXTBOX_COLOUR] != gJoinMessage[i - 1][E_TEXTBOX_COLOUR]) {
			gJoinMessage[i][E_TEXTBOX_COLOUR] = gJoinMessage[i - 1][E_TEXTBOX_COLOUR];
			TextDrawColor(gJoinMessage[i][E_TEXTBOX_TEXT], gJoinMessage[i][E_TEXTBOX_COLOUR]);
			TextDrawBackgroundColor(gJoinMessage[i][E_TEXTBOX_TEXT], gJoinMessage[i][E_TEXTBOX_COLOUR] & 0x000000FF);
			LoopPlayers(j) {
				if(!gPlayerData[j][E_JOINTEXT]) {
					TextDrawShowForPlayer(j, gJoinMessage[i][E_TEXTBOX_TEXT]);
				}
			}
		}
	}

	// Copy new string
	strcpy(gJoinMessage[0][E_TEXTBOX_STRING], string, sizeof(SIZE_E_TEXTBOX[E_TEXTBOX_STRING]));
	strreplacechar(gJoinMessage[0][E_TEXTBOX_STRING], '~', '-');
	TextDrawSetString(gJoinMessage[0][E_TEXTBOX_TEXT], gJoinMessage[0][E_TEXTBOX_STRING]);

	// Update colour
	if(gJoinMessage[0][E_TEXTBOX_COLOUR] != colour) {
		TextDrawColor(gJoinMessage[0][E_TEXTBOX_TEXT], (gJoinMessage[0][E_TEXTBOX_COLOUR] = colour));
		TextDrawBackgroundColor(gJoinMessage[0][E_TEXTBOX_TEXT], JOINMSG_ALPHA);
		gJoinMessage[0][E_TEXTBOX_FADETIME] = 0;
		LoopPlayers(i) {
			if(!gPlayerData[i][E_JOINTEXT]) {
				TextDrawShowForPlayer(i, gJoinMessage[0][E_TEXTBOX_TEXT]);
			}
		}
	}

	#if JOINMSG_TIME > 0
		// Start timer
		if(gJoinTimer == 0) gJoinTimer = SetTimer("alar_joinfade", JOINMSG_UPDATE, 1);
	#endif
}

LogAction(const string[])
{
	if(string[0] == '\0') return;

	if(gServerData[E_CONSOLE_MSGS]) printf("[ADMIN] %s", string);
	if(gServerData[E_LOG_ACTIONS]) {
		new File:handle = fopen(LOGFILE, io_append);
		if(handle) {
			new data[MAX_STRING], year, month, day, hours, minutes, seconds;
			gettime(hours, minutes, seconds); getdate(year, month, day);
			format(data, sizeof(data), "[%02i/%02i/%i %02i:%02i:%02i] %s\r\n", day, month, year, hours, minutes, seconds, string);
			fwrite(handle, data);
			fclose(handle);
		}
	}
}

//--------------------
// External Functions
//--------------------

public alar_AddJoinLine(playerid, colour, const string[])
{
	if(string[0] < ' ' || playerid < 0 || playerid >= gMaxPlayers || gPlayerData[playerid][E_HIDEEXIT] > 2) return 0;

	if(!gServerData[E_JOIN_MSGS]) {
		new msg[MAX_INPUT] = "*** ";
		strcat(msg, string);
		LoopPlayers(i) {
			if(i != playerid) {
				SendClientMessage(i, colour, msg);
			}
		}
		return 1;
	}

	if(gPlayerData[playerid][E_HIDEEXIT] < 2) {
		new msg[MAX_INPUT] = "*** ";
		strcat(msg, string);
		AddJoinChatLine(playerid, colour, msg);
	}

	#if JOINMSG_LINES > 0
		if(gPlayerData[playerid][E_HIDEEXIT] == 0 || gPlayerData[playerid][E_HIDEEXIT] == 2) {
			AddJoinTextLine(colour, string);
		}
	#endif

	gPlayerData[playerid][E_HIDEEXIT]++;
	return 1;
}

#if LOG_LINES > 0 && LOG_PAGES > 0
	public alar_AddAdminLogLine(colour, const string[])
	{
		if(string[0] < ' ') return 0;

		// Move old entries
		for(new i = sizeof(gAdminLog) - 1; i > 0; i--) {
			strcpy(gAdminLog[i][E_TEXTBOX_STRING], gAdminLog[i - 1][E_TEXTBOX_STRING], sizeof(SIZE_E_TEXTBOX[E_TEXTBOX_STRING]));
			TextDrawSetString(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_STRING]);

			// Update colour
			if(gAdminLog[i][E_TEXTBOX_COLOUR] != gAdminLog[i - 1][E_TEXTBOX_COLOUR]) {
				gAdminLog[i][E_TEXTBOX_COLOUR] = gAdminLog[i - 1][E_TEXTBOX_COLOUR];
				TextDrawColor(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_COLOUR]);
				for(new j, page = (i / LOG_LINES) + 1; j < gMaxPlayers; j++) {
					if(IsPlayerConnected(j) && gPlayerData[j][E_LOG_PAGE] == page) {
						TextDrawShowForPlayer(j, gAdminLog[i][E_TEXTBOX_TEXT]);
					}
				}
			}
		}

		// Copy new string
		strcpy(gAdminLog[0][E_TEXTBOX_STRING], string, sizeof(SIZE_E_TEXTBOX[E_TEXTBOX_STRING]));
		strreplacechar(gAdminLog[0][E_TEXTBOX_STRING], '~', '-');
		TextDrawSetString(gAdminLog[0][E_TEXTBOX_TEXT], gAdminLog[0][E_TEXTBOX_STRING]);

		// Update colour
		if(gAdminLog[0][E_TEXTBOX_COLOUR] != colour) {
			gAdminLog[0][E_TEXTBOX_COLOUR] = colour;
			TextDrawColor(gAdminLog[0][E_TEXTBOX_TEXT], colour);
			LoopPlayers(i) {
				if(gPlayerData[i][E_LOG_PAGE] == 1) {
					TextDrawShowForPlayer(i, gAdminLog[0][E_TEXTBOX_TEXT]);
				}
			}
		}
		return 1;
	}
#endif

public alar_GetAdminLevel(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	return gPlayerData[playerid][E_ADMINLEVEL];
}

public alar_GetAdminState(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	return gPlayerData[playerid][E_STATE];
}

public alar_GetAdminSpectating(playerid)
{
	if(!IsPlayerConnected(playerid)) return INVALID_PLAYER_ID;
	if(gPlayerData[playerid][E_SPECTATING]) {
		if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
			return FREE_SPECTATE_ID;
		}
		return gPlayerData[playerid][E_SPECID] + 1;
	}
	return 0;
}

public alar_SetAdminSpectating(playerid, targetid, bool:saveplayer)
{
	if(!IsPlayerConnected(playerid) || !IsPlayerConnected(targetid) || targetid == playerid || gPlayerData[playerid][E_ADMINLEVEL] < 0) {
		return 0;
	}
	if(IsSpawned(playerid)) {
		if(targetid == INVALID_PLAYER_ID) {
			for(targetid = 0; targetid < gMaxPlayers; targetid++) {
				if(IsSpawned(targetid)) {
					break;
				}
			}
			if(targetid == gMaxPlayers) {
				return 0;
			}
		} else {
			if(!IsSpawned(targetid)) {
				return 0;
			}
			if(saveplayer) {
				gPlayerData[playerid][E_LAST_SPECID] = targetid;
			}
		}

		new msg[50];
		format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);

		gPlayerData[playerid][E_SPECID] = targetid;
		gPlayerData[playerid][E_SPECMODE] = 0;
		if((gSpecExitMethod = CallRemoteFunction("OnAdminSpectate", "iii", playerid, targetid, INVALID_PLAYER_ID)) == 0) {
			StoreSpawnData(playerid);
		}
		TogglePlayerSpectating(playerid, true);

		gPlayerData[playerid][E_SPECTATING] = true;
		SetPlayerSpectating(playerid, targetid);

		#if SPEC_TXT_TIME > 0
			ShowSpecTxt(playerid);
		#endif
		return 1;
	} else if(gPlayerData[playerid][E_SPECTATING]) {
		if(targetid == INVALID_PLAYER_ID || !IsSpawned(targetid)) {
			return 0;
		}
		#if SPEC_TXT_TIME > 0
			if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
				gPlayerData[playerid][E_SPECMODE] = 0;
				ShowSpecTxt(playerid);
			}
		#endif
		ObserverSwitchPlayer(playerid, targetid);
		if(saveplayer) {
			gPlayerData[playerid][E_LAST_SPECID] = targetid;
		}
		return 1;
	}
	return 0;
}

public alar_DisableAdminSpectating(playerid)
{
	if(!IsPlayerConnected(playerid) || !gPlayerData[playerid][E_SPECTATING]) return 0;
	SpawnUsingData(playerid);
	return 1;
}

public alar_ClearAdminSpawnData(playerid)
{
	if(!IsPlayerConnected(playerid) || !gPlayerData[playerid][E_SPECTATING]) return 0;
	ClearSpawnData(playerid);
	return 1;
}

public alar_OnPlayerVehicleChange(playerid, newvehicleid)
{
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECID] == playerid && gPlayerData[i][E_SPECMODE] != 1) {
			PlayerSpectateVehicle(i, newvehicleid, gPlayerData[i][E_SPECMODE] == 0 ? SPECTATE_MODE_NORMAL : SPECTATE_MODE_SIDE);
		}
	}
	return 1;
}

public alar_OnPlayerWorldChange(playerid, newworldid)
{
	if(IsSpawned(playerid)) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				SetPlayerVirtualWorld(i, newworldid);
			}
		}
	}
	return 1;
}

public alar_SetAdminState(playerid, newstate, seconds)
{
	if(!IsPlayerConnected(playerid)) return 0;

	new oldstate = gPlayerData[playerid][E_STATE];
	if(0 < seconds < MIN_ACTION_TIME) {
		seconds = MIN_ACTION_TIME;
	}

	if(newstate & ADMIN_STATE_MUTED) {
		if(gPlayerData[playerid][E_UNMUTE]) KillTimer(gPlayerData[playerid][E_UNMUTE]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNMUTE] = SetTimerEx("alar_unmute", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_MUTE_TIME] = gettime() + seconds;
			UnwriteAdminState(playerid, ADMIN_STATE_MUTED);
		} else {
			WriteAdminState(playerid, ADMIN_STATE_MUTED);
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_MUTED;
	}

	if(newstate & ADMIN_STATE_JAILED) {
		if(gPlayerData[playerid][E_UNJAIL]) KillTimer(gPlayerData[playerid][E_UNJAIL]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNJAIL] = SetTimerEx("alar_unjail", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_JAIL_TIME] = gettime() + seconds;
			UnwriteAdminState(playerid, ADMIN_STATE_JAILED);
		} else {
			WriteAdminState(playerid, ADMIN_STATE_JAILED);
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_JAILED;
	}

	if(newstate & ADMIN_STATE_FROZEN) {
		if(gPlayerData[playerid][E_UNFREEZE]) KillTimer(gPlayerData[playerid][E_UNFREEZE]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_FREEZE_TIME] = gettime() + seconds;
			UnwriteAdminState(playerid, ADMIN_STATE_FROZEN);
		} else {
			WriteAdminState(playerid, ADMIN_STATE_FROZEN);
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_FROZEN;
	}

	if(newstate & ADMIN_STATE_DESYNCED) {
		if(gPlayerData[playerid][E_UNDESYNC]) KillTimer(gPlayerData[playerid][E_UNDESYNC]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNDESYNC] = SetTimerEx("alar_undesync", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_DESYNC_TIME] = gettime() + seconds;
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_DESYNCED;
	}

	if(oldstate != gPlayerData[playerid][E_STATE]) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], oldstate);
	}
	return 1;
}

public alar_ClearAdminState(playerid, newstate)
{
	if(!IsPlayerConnected(playerid)) return 0;

	new oldstate = gPlayerData[playerid][E_STATE];

	if(newstate & ADMIN_STATE_MUTED) {
		if(gPlayerData[playerid][E_UNMUTE]) KillTimer(gPlayerData[playerid][E_UNMUTE]);
		UnwriteAdminState(playerid, ADMIN_STATE_MUTED);
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_MUTED;
		gPlayerData[playerid][E_MUTE_TIME] = 0;
		gPlayerData[playerid][E_LASTMSG][0] = '\0';
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;
	}

	if(newstate & ADMIN_STATE_JAILED) {
		if(gPlayerData[playerid][E_UNJAIL]) KillTimer(gPlayerData[playerid][E_UNJAIL]);
		UnwriteAdminState(playerid, ADMIN_STATE_JAILED);
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_JAILED;
		gPlayerData[playerid][E_JAIL_TIME] = 0;
	}

	if(newstate & ADMIN_STATE_FROZEN) {
		if(gPlayerData[playerid][E_UNFREEZE]) KillTimer(gPlayerData[playerid][E_UNFREEZE]);
		UnwriteAdminState(playerid, ADMIN_STATE_FROZEN);
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_FROZEN;
		gPlayerData[playerid][E_FREEZE_TIME] = 0;
	}

	if(oldstate != gPlayerData[playerid][E_STATE]) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECID] == playerid) {
				UpdatePlayerSpecHUD(i);
			}
		}

		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], oldstate);
	}
	return 1;
}

public alar_BanPlayer(playerid, const reason[], const adminname[])
{
	if(!IsPlayerConnected(playerid)) return 0;

	new tmp[MAX_REASON];
	strcpy(tmp, reason);

	BanPlayer(ReturnPlayerName(playerid), ReturnPlayerIP(playerid), tmp, adminname[0] < ' ' ? ("Console") : adminname);

	new msg[MAX_INPUT];
	if(adminname[0] < ' ') {
		format(msg, sizeof(msg), "You have been banned from the server (%s)", tmp);
	} else {
		format(msg, sizeof(msg), "You have been banned from the server by %s (%s)", adminname, tmp);
	}
	SendClientMessage(playerid, COLOUR_WARNING, msg);
	if(gServerData[E_BAN_MSG][0] != '\0') {
		new year,
			month,
			day,
			hour,
			minute,
			date[15],
			time[10];

		getdate(year, month, day);
		gettime(hour, minute);
		format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
		format(time, sizeof(time), "%02i:%02i", hour, minute);

		SendBanMsg(playerid, gServerData[E_BAN_MSG], date, time, adminname[0] < ' ' ? ("Console") : adminname);
	}
	if(adminname[0] < ' ') {
		format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(playerid), playerid, tmp);
	} else {
		format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(playerid), playerid, adminname, tmp);
	}

	LogAction(msg);

	AddJoinString(playerid, COLOUR_BAN, msg);
	Kick(playerid);
	return 1;
}

public alar_SuspendPlayer(playerid, Float:hours, const reason[], const adminname[])
{
	if(!IsPlayerConnected(playerid)) return 0;

	new tmp[MAX_REASON];
	strcpy(tmp, reason);

	SuspendPlayer(ReturnPlayerName(playerid), ReturnPlayerIP(playerid), hours, tmp, adminname[0] < ' ' ? ("Console") : adminname);

	new msg[MAX_INPUT];
	if(adminname[0] < ' ') {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", hours, tmp);
	} else {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours by %s (%s)", hours, adminname, tmp);
	}
	SendClientMessage(playerid, COLOUR_WARNING, msg);
	if(gServerData[E_BAN_MSG][0] != '\0') {
		new year,
			month,
			day,
			hour,
			minute,
			date[15],
			time[10];

		getdate(year, month, day);
		gettime(hour, minute);
		format(date, sizeof(date), "%02i/%02i/%i", day, month, year);
		format(time, sizeof(time), "%02i:%02i", hour, minute);

		SendBanMsg(playerid, gServerData[E_SUSPEND_MSG], date, time, adminname[0] < ' ' ? ("Console") : adminname);
	}
	if(adminname[0] < ' ') {
		format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(playerid), playerid, hours, tmp);
	} else {
		format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %0.2f hours by %s (%s)", ReturnPlayerName(playerid), playerid, hours, adminname, tmp);
	}

	LogAction(msg);

	AddJoinString(playerid, COLOUR_SUSPEND, msg);
	Kick(playerid);
	return 1;
}
