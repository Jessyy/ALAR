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


#define ALAR_VERSION 		1.4.1

// Database
#define ALAR_DATABASE		"Alar.sqlite"

// Admin Log
#define ALAR_LOG			"Alar.log"

// Default Values
#define BANMSG				"If you feel you have been WRONGFULLY banned, please appeal on the website $(WEBSITE)|Name: $(NAME)|IP: $(IP)|Admin: $(ADMIN)|Date: $(DATETIME)"
#define CHATHISTORY			"Admins"	// Show pervious chat messages to joining players ("Admins"/"All"/"None")
#define CHATPREFIX			"@|//"		// The prefix(s) for admin chat
#define DEFAULTNUMPLATE		"alar!"		// The default number plate for admin created vehicles (! - vehicleid, # - random number from 0 to 9, $ - random letter from A to Z)
#define DEFAULTPW			"changeme"	// The default admin password
#define RANGEBANMSG			""			// The message to show people who are range banned (defaults to the normal message if left empty)
#define RANGESUSPENDMSG		""			// The message to show people who are range suspended (defaults to the normal message if left empty)
#define SUSPENDMSG			"If you feel you have been WRONGFULLY suspended, please appeal on the website $(WEBSITE)|Name: $(NAME)|IP: $(IP)|Admin: $(ADMIN)|Date: $(DATETIME)"

#define AUTOMUTETIME		60			// The time to mute spammers for (0 or less for a permanent mute)
#define DROPHEIGHT			15			// The height to drop players with /adrop
#define GIVEWEAPONAMMO		200			// The default ammo to give with weapons
#define MAXPING				450			// The maximium average ping a player may have
#define MINPWLENGTH			5			// The minimium length for admin passwords
#define PUNCHDECREMENT		20			// The amount of health/armour to take off with /apunch
#define RAGETIME			15			// The time after being killed to count as a rage quit (0 or less to disable rage quits)
#define RCONLEVEL			9			// The effective alar level of players logged into RCON
#define RCONLOGINLEVEL		9			// The level of the accounts for admins who use RCON to create their account (0 or less to disable account creation)
#define SIGNINTIME			45			// The time admins have to login before being kicked (0 or less to not kick)
#define SLAPDECREMENT		20			// The default amount of health to take off with /aslap

#define ADMINPMS			true		// Allow players to send a PM to all admins
#define ALIASADMINS			true		// Allow admins to login under different names
#define AUTOLOGIN			true		// Automatically login admins if their IP has not changed
#define CHATJOINS			true		// Show join messages in the chat history
#define CHECKMODS			true		// Check for invalid vehicle mods
#define CONSOLEMSGS			true		// Show admin activity in the console
#define EXTRASPECVIEWS		false		// Enable extra spectate modes
#define FIXRUNNING			true		// Use the same running animations for all skins
#define HIDEBANS			true		// Hide join/disconnect messages from banned/suspended players
#define JOINCOUNTRIES		true		// Show a player's country when they join
#define JOINDEFAULT			true		// Show join messages in the chat box by default
#define JOINMSGS			true		// Show join/disconnect messages
#define KICKALLIPS			true		// Kick all players who have the same IP as a player who is banned/suspended
#define LOGACTIONS			false		// Log admin activity to a seperate file
#define LOGLOGINS			false		// Show admin logins/logouts in the admin log
#define PINGIMMUNITY		true		// Allow admins to be immune from the ping kicker
#define RESPAWNVEHICLES		false		// Respawn admin create vehicles when they are destroyed
#define SPECHUD				true		// Allow spectating admins to see the HUD
#define STOREALIASES		true		// Store the alternate names and IPs of players


#define ALIASLEVEL			1
#define ALIAS2LEVEL			4
#define ALIAS3LEVEL			4
#define ARMOURALLLEVEL		7
#define ARMOURLEVEL			6
#define BANLEVEL			8
#define BANCHECKLEVEL		1
#define BRINGLEVEL			5
#define CARCOLOURLEVEL		4
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
#define IMITATELEVEL		-9
#define IMMUNELEVEL			9
#define INFOLEVEL			1
#define INTERIORLEVEL		3
#define IPLEVEL				1
#define IPUPDATELEVEL		10
#define JAILLEVEL			4
#define KICKLEVEL			2
#define LOGLEVEL			1
#define MSGLEVEL			1
#define MUTELEVEL			3
#define PUNCHLEVEL			4
#define RANGEBANLEVEL		9
#define RANGEKICKLEVEL		10
#define RANGESUSPENDLEVEL	9
#define RAPELEVEL			7
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
#define TELELEVEL			5
#define TIMELEVEL			9
#define TRACKLEVEL			10
#define UNBANLEVEL			8
#define UNDESYNCLEVEL		9
#define UNFREEZELEVEL		3
#define UNJAILLEVEL			4
#define UNMUTELEVEL			3
#define UNRAPELEVEL			7
#define UNSUSPENDLEVEL		8
#define UNWARNLEVEL			4
#define UNWHITELISTLEVEL	9
#define WARNLEVEL			4
#define WEATHERLEVEL		9
#define WILDBANLEVEL		9
#define WILDKICKLEVEL		9
#define WILDSUSPENDLEVEL	9
#define WHITELISTLEVEL		9
#define WORLDLEVEL			3

// Warnings
#define WARNLIMIT			5		// The number of warnings a player can have before being kicked/suspended (0 or less for infinite)
#define WARNPROTECTION		5		// The minimium time in seconds between warnings to prevent multiple admins warning the same player
#define WARNSUSPENDTIME		24		// The time in hours to suspend for when the number of allowed warnings is exceeded (0 or less to kick)
#define WARNTIMEOUT			168		// The time in hours for warnings to be active (0 or less for permanent warnings)

// Join Flood Kicker
#define JOINCOUNT			4		// The maximum amount of joins in the specified time (1 or less to disable join flood protection)
#define JOINTIME			10		// The time, in seconds, for the player to join x times
#define JOINBANTIME			120		// The number of seconds to ban for (set to 0 or less for a permanent ban)
#define JOINPREV			20		// The number of previous joins to check against

// RCON Password Kicker
#define RCONCOUNT			3		// The maximum amount of RCON attempts in the specified time (1 or less to disable RCON password protection)
#define RCONTIME			120		// The time, in seconds, for the player to attempt to login x times
#define RCONBANTIME			300		// The number of seconds to ban for (set to 0 or less for a permanent ban)
#define RCONPREV			40		// The number of previous RCON attempts to check against

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

// Colours
#define COLOUR_ADMIN		0xEE66EEAA
#define COLOUR_HELP			0xEEEE00AA
#define COLOUR_LOG			0xEE66EEFF
#define COLOUR_PAGE			0xFFFFFFAA
#define COLOUR_MSG			0x00FFDCAA
#define COLOUR_PLAYER		0x3333DDAA
#define COLOUR_SPECMODE		0xEE66EEFF
#define COLOUR_VEHICLE		0xEE66EEFF
#define COLOUR_WARNING		0xCC0000AA

#define COLOUR_CONNECT		0x22BB22AA
#define COLOUR_DISCONNECT	0xC0C0C0AA
#define COLOUR_RAGEQUIT		0x2222BBAA
#define COLOUR_TIMEOUT		0x990099AA
#define COLOUR_KICK			0xFFCC00AA
#define COLOUR_SUSPEND		0xFF6600AA
#define COLOUR_BAN			0xBB2222AA

// Join Message Textdraw
#define JOINMSG_LINES		10		// The number of joins/quits to show in the text box
#define JOINMSG_SIZE		2.8		// Scaling factor

#define JOINMSG_ALPHA		0xAA	// The initial alpha of the messages
#define JOINMSG_FADE		3		// The time in seconds to fade out the messages (0 or less for instant fading)
#define JOINMSG_TIME		10		// The time in seconds before the messages start fading (0 or less for no fading)
#define JOINMSG_UPDATE		200		// The time in ms to update the fading (lower = more cpu/bandwidth, higher = more jumpyness)

// Chat History
#define CHATHISTORY_SIZE	50		// The number of previous chat messages to store (0 or less to disable the chat history)

// Chat Prefix
#define CHATPREFIX_NUMBER	5		// The maximum number of chat prefixes
#define CHATPREFIX_LENGTH	10		// The maximum length of a chat prefix

// Log Settings
#define LOG_LINES			15		// Number of lines for the in-game admin log
#define LOG_PAGES			4		// Number of pages for the in-game admin log
#define LOG_SIZE			3.5		// Scaling factor

#define KEY_LOG_DOWN		KEY_ANALOG_LEFT
#define NAME_LOG_DOWN		"left analog"

#define KEY_LOG_UP			KEY_ANALOG_RIGHT
#define NAME_LOG_UP			"right analog"

// Vehicle tags
#define VEHICLE_TAGS_NUMBER		50		// The maximium number of 3D texts showing alar vehicleids
#define VEHICLE_TAGS_TIME		10		// The time in seconds to show the tags
#define VEHICLE_TAGS_DISTANCE	30.0	// The distance where you are able to see the 3D Text Label

// Mute/Jail/Freeze
#define MIN_ACTION_TIME		10		// The minimium time (in seconds) to mute/jail/freeze for

// Default reason for bans/mutes etc
#define DEFAULT_REASON		"No reason"

// Default name for bans/suspension messages
#define DEFAULT_NAME		"Console"

// Spec Mode
#define SPEC_TXT_TIME		10		// The time to show the spec mode (in seconds)

// Default spawning method
#define DEFAULT_SPAWNTYPE	SPAWN_ALAR_TIMER

// Sound volume
#define SOUND_VOLUME		20		// The number of times to play sounds to increase their volume

// Key Definitions
#define KEY_SPEC_LEFT		KEY_HANDBRAKE
#define NAME_SPEC_LEFT		"aim"

#define KEY_SPEC_RIGHT		KEY_FIRE
#define NAME_SPEC_RIGHT		"fire"

#define KEY_SPEC_EXIT		KEY_SECONDARY_ATTACK
#define NAME_SPEC_EXIT		"enter"

#define KEY_SPEC_MODE		KEY_WALK
#define NAME_SPEC_MODE		"walk"

#define KEY_SPEC_GOTO		KEY_LOOK_BEHIND
#define NAME_SPEC_GOTO		"look behind"

#define KEY_SPEC_HUD		KEY_CROUCH
#define NAME_SPEC_HUD		"crouch"

#define KEY_SPEC_LAST		KEY_JUMP
#define NAME_SPEC_LAST		"jump"


// The commands which should be checked for spamming
stock const gMutedCommands[][] = {
	"/apm",
	"/me",
	"/pm",
	"/tpm",
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
	"ffff",
	"whore"
};



//-------------------------------------------------------------------------------------------------------------------

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

enum E_INFOTYPE (<<=1) {
	INFOTYPE_POSITION = 1,
	INFOTYPE_WORLD,
	INFOTYPE_WEAPONS,
	INFOTYPE_CASH,
	INFOTYPE_HEALTH,
	INFOTYPE_ARMOUR,
	INFOTYPE_VEHICLE
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

//-------------------------------------------------------------------------------------------------------------------

#include <a_samp>

#tryinclude "alar/Bugfix"
#if !defined _alar_bugfix_included
	#include <alar/Bugfix>
#endif

#tryinclude "alar/Acmd"
#if !defined _alar_acmd_included
	#include <alar/Acmd>
#endif

#tryinclude "alar/String"
#if !defined _alar_string_included
	#include <alar/String>
#endif

#tryinclude "alar/Bans"
#if !defined _alar_bans_included
	#include <alar/Bans>
#endif

#tryinclude "alar/IP2c"
#if !defined _alar_ip2c_included
	#include <alar/IP2c>
#endif

#tryinclude "alar/Functions"
#if !defined _alar_functions_included
	#include <alar/Functions>
#endif

#tryinclude "alar/Zones"
#if !defined _alar_zones_included
	#include <alar/Zones>
#endif

#tryinclude "alar/Vehicles"
#if !defined _alar_vehicles_included
	#include <alar/Vehicles>
#endif

#tryinclude "alar/YSI_foreach"
#if !defined _foreach_included
	#tryinclude <alar/YSI_foreach>
#endif

#tryinclude "alar/Data"
#if !defined _alar_data_included
	#include <alar/Data>
#endif

//-------------------------------------------------------------------------------------------------------------------

#define rdcmd(%1,%2,%3)			if((strcmp((%3), #%1, true, (%2)) == 0) && ((((%3)[%2] == '\0') && (acmd_%1(INVALID_PLAYER_ID, "", false)))||(((%3)[%2] == ' ') && (acmd_%1(INVALID_PLAYER_ID, (%3)[(%2) + 1], false))))) return 1
#define rcmd(%1,%2)				if(strcmp((%2), #%1, true) == 0) return acmd_%1(INVALID_PLAYER_ID, "", false)
#define cmdchk(%1,%2)			(gServerData[%2] > 0 && (gPlayerData[%1][E_ADMINLEVEL] >= gServerData[%2] || gPlayerData[%1][E_RCONLEVEL] >= gServerData[%2]))
#define SendMessage(%1,%2,%3)	if((%1)==INVALID_PLAYER_ID) print(%3); else SendClientMessage(%1, %2, %3)
#define IsKeyJustDown(%1,%2,%3)	(((%2)&(%1))&&!((%3)&(%1)))
#define IsKeyJustUp(%1,%2,%3)	(((%3)&(%1))&&!((%2)&(%1)))
#define AddJoinString(%1,%2,%3)	alar_AddJoinLine(%1,%2,%3)

#if LOG_LINES > 0 && LOG_PAGES > 0
	#define AddLogString(%1)	alar_AddAdminLogLine(COLOUR_LOG, %1)
#else
	#define AddLogString(%1);
#endif

#if defined _foreach_included
	#define LoopPlayers(%1)		foreach(Player,%1)
#else
	#define LoopPlayers(%1)		for(new %1; %1 < gMaxPlayers; %1++) if(IsPlayerConnected(%1))
#endif

#assert (JOINMSG_ALPHA) >= 0x00 && (JOINMSG_ALPHA) <= 0xFF		// JOINMSG_ALPHA must be between 0 and 255
#assert (PINGCOUNT) >= 1										// PINGCOUNT must be more then 0
#assert (MSGCOUNT) >= 2											// MSGCOUNT must be more then 1

#define MAX_REASON			50


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
	E_LAST_UPDATE,
	E_LAST_ACTIVE,

	// The time they joined
	E_JOIN_TIME,

	// Their last warning
	E_LAST_WARNING,

	// Muted/frozen/jailed
	E_STATE,

	// Inactive for over a second
	E_PAUSED,

	#if JOINMSG_LINES > 0
		// Use textdraw instead of join/exit messages
		bool:E_JOINTEXT,
	#endif

	// Immune from ping kicker
	bool:E_IMMUNE,

	// Whitelisted
	bool:E_WHITELISTED,

	// Show exit message
	E_HIDEEXIT,

	// One time stuff
	#if CHATHISTORY_SIZE > 0
		bool:E_HISTORY_SENT,
	#endif
	bool:E_PRELOADED,

	// Spawn data
	E_INFOTYPE:E_SETINFO,
	Float:E_POSX,
	Float:E_POSY,
	Float:E_POSZ,
	Float:E_ROT,
	E_INTERIOR,
	E_WORLD,
	E_CASH,
	Float:E_HEALTH,
	Float:E_ARMOUR,
	E_ARMED,
	E_WEAPON[13],
	E_AMMO[13],
	E_VEHICLEID,
	E_SEATID,

	// Country code
	E_COUNTRY[3],
	Unsigned:E_IPCODE,

	// Admin stuff
	#if VEHICLE_TAGS_TIME > 0 && VEHICLE_TAGS_NUMBER > 0
		PlayerText3D:E_VEHICLETAGS[VEHICLE_TAGS_NUMBER],
		E_TIMER_VEHICLETAGS,
	#endif

	E_ADMINLEVEL,
	E_RCONLEVEL,

	#if LOG_LINES > 0
		bool:E_LOGKEYS,
		#if LOG_PAGES > 0
			E_LOG_PAGE,
		#endif
	#endif

	// Spectating
	bool:E_SPECTATING,
	E_SPECID,
	E_LAST_SPECID,
	E_SPECMODE,			// 0-normal, 1-player, 2-side, 3-free
	bool:E_SHOWHUD,
	Text:E_SPECHUD,
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

enum E_CHATPREFIX {
	E_CHAT_STRING[CHATPREFIX_LENGTH],
	E_CHAT_LEN
}; stock SIZE_E_CHATPREFIX[E_CHATPREFIX];

enum E_SERVERDATA {
	E_BAN_MSG[MAX_STRING],
	E_DEFAULT_NUM_PLATE[9],
	E_DEFAULT_PW[20],
	E_LOGGEDIN_FUNC[MAX_COMM_FUNC_NAME],
	E_RANGEBAN_MSG[MAX_STRING],
	E_RANGESUSPEND_MSG[MAX_STRING],
	E_SUSPEND_MSG[MAX_STRING],

	E_AUTOMUTE_TIME,
	#if CHATHISTORY_SIZE > 0
		E_CHAT_HISTORY,
		bool:E_CHAT_JOINS,
	#endif
	E_DROP_HEIGHT,
	E_GIVEWEAPON_AMMO,
	E_JOIN_BAN_TIME,
	E_MAX_PING,
	E_MIN_PW_LENGTH,
	E_PUNCH_DECREMENT,
	E_RAGE_TIME,
	E_RCON_LOGIN_LEVEL,
	E_RCON_BAN_TIME,
	E_SIGNIN_TIME,
	E_SLAP_DECREMENT,
	E_WARN_LIMIT,
	E_WARN_PROTECTION,
	E_WARN_SUSPEND_TIME,
	E_WARN_TIMEOUT,

	bool:E_ADMIN_PMS,
	bool:E_ALIAS_ADMINS,
	bool:E_AUTO_LOGIN,
	bool:E_CHECK_MODS,
	bool:E_CONSOLE_MSGS,
	bool:E_EXTRA_SPEC_VIEWS,
	bool:E_FIX_RUNNING,
	bool:E_HIDE_BANS,
	bool:E_JOIN_COUNTRIES,
	bool:E_JOIN_DEFAULT,
	bool:E_JOIN_MSGS,
	bool:E_KICK_ALL_IPS,
	bool:E_LOG_ACTIONS,
	bool:E_LOG_LOGINS,
	bool:E_PING_IMMUNITY,
	bool:E_RESPAWN_VEHICLES,
	bool:E_SPEC_HUD,
	bool:E_STORE_ALIASES,

	E_ALIAS_LEVEL,
	E_ALIAS2_LEVEL,
	E_ALIAS3_LEVEL,
	E_ARMOURALL_LEVEL,
	E_ARMOUR_LEVEL,
	E_BAN_LEVEL,
	E_BANCHECK_LEVEL,
	E_BRING_LEVEL,
	E_CARCOLOUR_LEVEL,
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
	E_IPUPDATE_LEVEL,
	E_JAIL_LEVEL,
	E_KICK_LEVEL,
	#if LOG_LINES > 0 && LOG_PAGES > 0
		E_LOG_LEVEL,
	#endif
	E_MSG_LEVEL,
	E_MUTE_LEVEL,
	E_PUNCH_LEVEL,
	E_RANGEBAN_LEVEL,
	E_RANGEKICK_LEVEL,
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
	E_UNWARN_LEVEL,
	E_UNWHITELIST_LEVEL,
	E_WARN_LEVEL,
	E_WEATHER_LEVEL,
	E_WILDBAN_LEVEL,
	E_WILDKICK_LEVEL,
	E_WILDSUSPEND_LEVEL,
	E_WHITELIST_LEVEL,
	E_WORLD_LEVEL
}; stock SIZE_E_SERVERDATA[E_SERVERDATA];

enum E_FLOOD {
	Unsigned:E_LASTIP,
	E_LASTTIME
}; stock SIZE_E_FLOOD[E_FLOOD];

enum E_TEXTBOX {
	Text:E_TEXTBOX_TEXT,
	E_TEXTBOX_STRING[MAX_INPUT],
	E_TEXTBOX_COLOUR,
	E_TEXTBOX_FADETIME
}; stock SIZE_E_TEXTBOX[E_TEXTBOX];

enum E_HISTORY {
	E_HISTORY_NAME[MAX_PLAYER_NAME],
	E_HISTORY_ID,
	E_HISTORY_COLOUR,
	E_HISTORY_FLAGS,
	E_HISTORY_MESSAGE[MAX_INPUT]
}; stock SIZE_E_HISTORY[E_HISTORY];

stock
	Text:g_txtSpecMode[4] = {INVALID_TEXT_DRAW, ...},
	gJoinList[JOINPREV][E_FLOOD],
	gRconList[RCONPREV][E_FLOOD],
	#if LOG_LINES > 0 && LOG_PAGES > 0
		gAdminLog[LOG_LINES * LOG_PAGES][E_TEXTBOX],
		#if LOG_PAGES > 1
			Text:gLogPage[LOG_PAGES] = {INVALID_TEXT_DRAW, ...},
		#endif
	#endif
	#if CHATHISTORY_SIZE > 0
		gChatHistory[CHATHISTORY_SIZE][E_HISTORY],
	#endif
	#if JOINMSG_LINES > 0
		gJoinMessage[JOINMSG_LINES][E_TEXTBOX],
	#endif
	gJoinTimer;

new Bit:g_bitAdmins[Bit_Bits(MAX_PLAYERS)],
	Bit:gCreatedVehicles[Bit_Bits(MAX_VEHICLES)],
	DB:gAlarDB,
	gDefaultPlayerData[E_PLAYERDATA],
	gChatPrefix[CHATPREFIX_NUMBER][E_CHATPREFIX],
	gMaxPlayers,
	gSpecTimer,
	E_SPAWNTYPE:gSpawnMethod = DEFAULT_SPAWNTYPE,	// 0-OnPlayerSpawn, 1-Timer, 2-OnPlayerSpawn, 3-SetPlayerSpawnInfo; <=0 = alar handles spawn info, >0 = gamemode handles spawn info
	E_INFOTYPE:gSpawnSaves = E_INFOTYPE:0xFFFFFFFF,
	gPlayerData[MAX_PLAYERS][E_PLAYERDATA],
	gServerData[E_SERVERDATA];

forward alar_autokick(playerid);
forward alar_fixkick(playerid);
forward alar_floodunban(Unsigned:IPcode);
forward alar_hidevehicletags(playerid);
forward alar_hidespectxt(playerid);
forward alar_jailplayer(playerid);
forward alar_joinfade();
forward alar_pausecheck();
forward alar_pingkick();
forward alar_rconupdate(Unsigned:IPCode);
forward alar_setspawndata(playerid);
forward alar_setspawnposition(playerid);
forward alar_setspawnpositiondata(playerid);
forward alar_undesync(playerid);
forward alar_unfreeze(playerid);
forward alar_unjail(playerid);
forward alar_unmute(playerid);
forward alar_specupdate();
forward alar_AddJoinLine(playerid, colour, const string[]);
forward alar_AddAdminLogLine(colour, const string[]);
forward alar_AddMessageToHistory(const playername[], colour, const message[], flags);
forward alar_AddLineToHistory(colour, const message[], flags);
forward alar_ClearHistory();
forward alar_DestroyVehicle(vehicleid);
forward alar_GetPlayerCountryCode(playerid);
forward alar_GetCountryCode(const IP[]);
forward alar_GetAdminLevel(playerid);
forward alar_GetAdminState(playerid);
forward alar_GetAdminSpectating(playerid);
forward alar_SetAdminSpectating(playerid, targetid, bool:saveplayer);
forward alar_DisableAdminSpectating(playerid);
forward alar_ClearAdminSpawnData(playerid);
forward alar_LoginFunc(const func[]);
forward alar_SetSpawnType(E_SPAWNTYPE:spawntype, E_INFOTYPE:spawnsaves);
forward alar_OnPlayerSpectatePlayer(playerid, specid);
forward alar_OnPlayerSpectateVehicle(playerid, vehicleid);
forward alar_OnPlayerVehicleChange(playerid, newvehicleid, oldvehicleid);
forward alar_OnPlayerWorldChange(playerid, newworldid);
forward alar_SetAdminState(playerid, newstate, seconds);
forward alar_ClearAdminState(playerid, newstate);
forward alar_Ban(const playername[], const playerip[], const reason[], const adminname[], const adminip[], bool:hidename);
forward alar_BanPlayer(playerid, const reason[], const adminname[], const adminip[], bool:hidename);
forward alar_Suspend(const playername[], const playerip[], Float:hours, const reason[], const adminname[], const adminip[], bool:hidename);
forward alar_SuspendPlayer(playerid, Float:hours, const reason[], const adminname[], const adminip[], bool:hidename);
forward alar_WarnPlayer(playerid, const reason[], const adminname[], const adminip[], bool:hidename);
forward alar_Warn(const playername[], const reason[], const adminname[], const adminip[], bool:hidename);

public OnFilterScriptInit()
{
	gAlarDB = db_open(ALAR_DATABASE);
	gMaxPlayers = GetMaxPlayers();

	gDefaultPlayerData[E_SPECID] = INVALID_PLAYER_ID;
	gDefaultPlayerData[E_LAST_SPECID] = INVALID_PLAYER_ID;
	gDefaultPlayerData[E_SPECHUD] = INVALID_TEXT_DRAW;
	gDefaultPlayerData[E_VEHICLEID] = INVALID_VEHICLE_ID;
	gDefaultPlayerData[E_SEATID] = INVALID_SEAT_ID;
	gDefaultPlayerData[E_LOGKEYS] = true;
	#if VEHICLE_TAGS_TIME > 0 && VEHICLE_TAGS_NUMBER > 0
		for(new i; i < sizeof(gDefaultPlayerData[E_VEHICLETAGS]); i++) {
			gDefaultPlayerData[E_VEHICLETAGS][i] = INVALID_PLAYER3DTEXT_ID;
		}
	#endif
	#if SPEC_TXT_TIME > 0
		gDefaultPlayerData[E_SPECTXT] = INVALID_TEXT_DRAW;
	#endif
	gDefaultPlayerData[E_LAST_UPDATE] = gDefaultPlayerData[E_LAST_ACTIVE] = GetTickCount();
	#if JOINMSG_LINES > 0
		gDefaultPlayerData[E_JOINTEXT] = true;
	#endif

	#if CHATHISTORY_SIZE > 0
		for(new i; i < sizeof(gChatHistory); i++) {
			gChatHistory[i][E_HISTORY_ID] = INVALID_PLAYER_ID;
		}
	#endif
	for (new i; i < sizeof(gPlayerData); i++) {
		gPlayerData[i] = gDefaultPlayerData;
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		#if LOG_PAGES > 1
			for(new i; i < sizeof(gLogPage); i++) {
				new string[20];
				format(string, sizeof(string), "%i/%i", i+1, LOG_PAGES);
				gLogPage[i] = TextDrawCreate(630.0, 430.0, string);
				TextDrawUseBox(gLogPage[i], 0);
				TextDrawFont(gLogPage[i], 1);
				TextDrawSetShadow(gLogPage[i], 1);
				TextDrawLetterSize(gLogPage[i], 0.08 * LOG_SIZE, 0.24 * LOG_SIZE);
				TextDrawSetOutline(gLogPage[i], 0);
				TextDrawColor(gLogPage[i], COLOUR_PAGE);
				TextDrawBackgroundColor(gLogPage[i], COLOUR_PAGE & 0x000000FF);
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
			TextDrawBackgroundColor(gAdminLog[i][E_TEXTBOX_TEXT], COLOUR_LOG & 0x000000FF);
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

		for(new i; i < sizeof(g_txtSpecMode); i++) {
			TextDrawUseBox(g_txtSpecMode[i], 0);
			TextDrawSetOutline(g_txtSpecMode[i], 0);
			TextDrawColor(g_txtSpecMode[i], COLOUR_SPECMODE);
			TextDrawBackgroundColor(g_txtSpecMode[i], COLOUR_SPECMODE & 0x000000FF);
			TextDrawAlignment(g_txtSpecMode[i], 1);
			TextDrawSetShadow(g_txtSpecMode[i], 1);
			TextDrawFont(g_txtSpecMode[i], 3);
		}
	#endif

	db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));

	TempBan_UnbanAll(gAlarDB);
	LoadData();

	SendClientMessageToAll(COLOUR_HELP, "Any Last Administrative Requests loaded");
	LogAction("Any Last Administrative Requests loaded (Version " #ALAR_VERSION ")");
	AddLogString("Any Last Administrative Requests loaded (Version " #ALAR_VERSION ")");

	new jointime = gettime(),
		pname[MAX_PLAYER_NAME],
		pIP[MAX_IP],
		msg[MAX_INPUT * 2];

	LoopPlayers(i) {
		gPlayerData[i][E_JOIN_TIME] = jointime;

		gPlayerData[i][E_HIDEEXIT] = 1;		// Default is 0 but since they didn't join increment it manually

		GetPlayerName(i, pname, sizeof(pname));
		GetPlayerIp(i, pIP, sizeof(pIP));

		if(!IsPlayerNPC(i)) {
			gPlayerData[i][E_WHITELISTED] = Whitelist_IsNameWhitelisted(gAlarDB, pname, true);

			new BanData[E_ALAR_BAN];
			if(Bans_GetBanInfo(gAlarDB, pname, pIP, BanData, gPlayerData[i][E_WHITELISTED], false, true)) {
				if(BanData[E_BAN_REASON][0]) {
					format(msg, sizeof(msg), "You are banned from this server (%s)", BanData[E_BAN_REASON]);
				} else {
					msg = "You are banned from this server";
				}
				SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
				if(gServerData[E_RANGEBAN_MSG][0] != '\0' && strfind(BanData[E_BAN_IP], "*") != -1) {
					SendBanMsg(i, gServerData[E_RANGEBAN_MSG], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
				} else if(gServerData[E_BAN_MSG][0] != '\0') {
					SendBanMsg(i, gServerData[E_BAN_MSG], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
				}
				if(BanData[E_BAN_REASON][0]) {
					strtruncate(BanData[E_BAN_REASON], BanData[E_BAN_REASON], MAX_REASON, .maxlength=sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
					format(msg, sizeof(msg), "%s(%i) is banned from this server (%s)", pname, i, BanData[E_BAN_REASON]);
				} else {
					format(msg, sizeof(msg), "%s(%i) is banned from this server", pname, i);
				}
				AddJoinString(i, COLOUR_BAN, msg);

				if(BanData[E_BAN_REASON][0]) {
					if(BanData[E_BAN_NAME][0]) {
						if(BanData[E_BAN_IP][0]) {
							format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server (%s)", pname, i, BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_REASON]);
						} else {
							format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server (%s)", pname, i, BanData[E_BAN_NAME], BanData[E_BAN_REASON]);
						}
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server (%s)", pname, i, BanData[E_BAN_IP], BanData[E_BAN_REASON]);
					}
				} else {
					if(BanData[E_BAN_NAME][0]) {
						if(BanData[E_BAN_IP][0]) {
							format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server", pname, i, BanData[E_BAN_NAME], BanData[E_BAN_IP]);
						} else {
							format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server", pname, i, BanData[E_BAN_NAME]);
						}
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server", pname, i, BanData[E_BAN_IP]);
					}
				}
				AddLogString(msg);
				LogAction(msg);
				Kick(i);
				continue;
			}

			new SuspendData[E_ALAR_SUSPENSION],
				bool:unsuspended = false;
			while(Suspensions_GetSuspendInfo(gAlarDB, pname, pIP, SuspendData, gPlayerData[i][E_WHITELISTED], false, true)) {
				if(SuspendData[E_SUSPEND_EXPIRED]) {
					Suspensions_UnsuspendPlayer(gAlarDB, pname, pIP, SuspendData);
					format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended", ReturnPlayerName(i), i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
					LogAction(msg);
					AddLogString(msg);
					unsuspended = true;
				} else {
					if(SuspendData[E_SUSPEND_REASON][0]) {
						format(msg, sizeof(msg), "You are suspended from this server until %s (%s)", SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "You are suspended from this server until %s", SuspendData[E_SUSPEND_EXPIRES]);
					}
					SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
					if(gServerData[E_RANGESUSPEND_MSG][0] != '\0' && strfind(SuspendData[E_SUSPEND_IP], "*") != -1) {
						SendBanMsg(i, gServerData[E_RANGESUSPEND_MSG], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
					} else if(gServerData[E_SUSPEND_MSG][0] != '\0') {
						SendBanMsg(i, gServerData[E_SUSPEND_MSG], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
					}
					if(SuspendData[E_SUSPEND_REASON][0]) {
						strtruncate(SuspendData[E_SUSPEND_REASON], SuspendData[E_SUSPEND_REASON], MAX_REASON, .maxlength=sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
						format(msg, sizeof(msg), "%s(%i) is suspended from this server until %s (%s)", pname, i, SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "%s(%i) is suspended from this server until %s", pname, i, SuspendData[E_SUSPEND_EXPIRES]);
					}
					if(gServerData[E_HIDE_BANS]) {
						gPlayerData[i][E_HIDEEXIT] = 3;
					} else {
						gPlayerData[i][E_HIDEEXIT] = 1;
						AddJoinString(i, COLOUR_SUSPEND, msg);
					}

					if(SuspendData[E_SUSPEND_REASON][0]) {
						if(SuspendData[E_SUSPEND_NAME][0]) {
							if(SuspendData[E_SUSPEND_IP][0]) {
								format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server (%s)", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
							} else {
								format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server (%s)", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_REASON]);
							}
						} else {
							format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server (%s)", pname, i, SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
						}
					} else {
						if(SuspendData[E_SUSPEND_NAME][0]) {
							if(SuspendData[E_SUSPEND_IP][0]) {
								format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
							} else {
								format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server", pname, i, SuspendData[E_SUSPEND_NAME]);
							}
						} else {
							format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server", pname, i, SuspendData[E_SUSPEND_IP]);
						}
					}
					AddLogString(msg);
					LogAction(msg);
					Kick(i);
					continue;
				}
			}
			if(unsuspended) {
				SendClientMessage(i, COLOUR_PLAYER, "You have been unsuspended");
				format(msg, sizeof(msg), "%s(%i) has been unsuspended", ReturnPlayerName(i), i);

				LoopPlayers(j) {
					if(gPlayerData[j][E_ADMINLEVEL] > 0 || gPlayerData[j][E_RCONLEVEL] > 0) {
						SendClientMessage(j, COLOUR_ADMIN, msg);
					}
				}
			}

			if(gServerData[E_STORE_ALIASES]) Alias_Add(gAlarDB, pname, pIP);
		}

		if(IsPlayerAdmin(i)) {
			gPlayerData[i][E_RCONLEVEL] = gServerData[E_RCON_LEVEL];
			if(gServerData[E_RCON_LEVEL] > 0) {
				Bit_Set(g_bitAdmins, i, 1);
				AllowPlayerTeleport(i, cmdchk(i, E_TELE_LEVEL));
			}
		}

		new logininfo[E_LOGINDATA];
		if(Admin_GetData(gAlarDB, pname, logininfo)) {
			strcpy(gPlayerData[i][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
			if(!logininfo[E_LOGIN_MANUAL] && gServerData[E_AUTO_LOGIN] && IPcompare(logininfo[E_LOGIN_IP], pIP)) {
				Bit_Set(g_bitAdmins, i, 1);
				gPlayerData[i][E_ADMINLEVEL] = logininfo[E_LOGIN_LEVEL];

				if(logininfo[E_LOGIN_HIDDEN]) {
					gPlayerData[i][E_STATE] |= ADMIN_STATE_HIDDEN;
				}
				gPlayerData[i][E_SHOWHUD] = logininfo[E_LOGIN_HUD];

				AllowPlayerTeleport(i, cmdchk(i, E_TELE_LEVEL));
				#if LOG_LINES > 0 && LOG_PAGES > 0
					if(logininfo[E_LOGIN_PAGE] < 0) {
						gPlayerData[i][E_LOGKEYS] = false;
						gPlayerData[i][E_LOG_PAGE] = -(logininfo[E_LOGIN_PAGE] + 1);
					} else {
						gPlayerData[i][E_LOG_PAGE] = logininfo[E_LOGIN_PAGE];
						gPlayerData[i][E_LOGKEYS] = true;
					}
					if(gPlayerData[i][E_LOG_PAGE] > 0 && gPlayerData[i][E_LOG_PAGE] <= LOG_PAGES && cmdchk(i, E_LOG_LEVEL)) {
						new offset = (gPlayerData[i][E_LOG_PAGE] - 1) * LOG_LINES;
						for(new j; j < LOG_LINES; j++) {
							TextDrawShowForPlayer(i, gAdminLog[j + offset][E_TEXTBOX_TEXT]);
						}
						#if LOG_PAGES > 1
							TextDrawShowForPlayer(i, gLogPage[gPlayerData[i][E_LOG_PAGE]-1]);
						#endif
					} else {
						gPlayerData[i][E_LOG_PAGE] = 0;
					}
				#endif

				format(msg, sizeof(msg), "You have successfully logged in (Level %i)", gPlayerData[i][E_ADMINLEVEL]);
				SendClientMessage(i, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has logged in as an admin (Level %i)", pname, gPlayerData[i][E_ADMINLEVEL]);

				if(gServerData[E_LOG_LOGINS]) {
					AddLogString(msg);
				} else {
					LoopPlayers(j) {
						if(j != i && (gPlayerData[j][E_ADMINLEVEL] > 0 || gPlayerData[j][E_RCONLEVEL] > 0)) {
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

		if(!IsPlayerNPC(i)) LoadPlayerData(i);
		if(gPlayerData[i][E_STATE] != 0) {
			if(gPlayerData[i][E_STATE] != ADMIN_STATE_HIDDEN) {
				new statstring[50];
				if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) {
					strcat(statstring, "muted");
				}
				if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) {
					if(statstring[0] != '\0') strcat(statstring, "/jailed");
					else strcat(statstring, "jailed");
					if(IsSpawned(i)) {
						StoreSpawnData(i);
						alar_jailplayer(i);
					}
				}
				if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) {
					if(statstring[0] != '\0') strcat(statstring, "/frozen");
					else strcat(statstring, "frozen");
					if(IsSpawned(i)) {
						TogglePlayerControllable(i, false);
					}
				}

				new string[MAX_INPUT];
				format(string, sizeof(string), "%s(%i) is %s", ReturnPlayerName(i), i, statstring);
				LogAction(string);
				AddLogString(string);
				format(string, sizeof(string), "You are %s", statstring);
				SendClientMessage(i, COLOUR_WARNING, string);
			}
			CallRemoteFunction("OnAdminStateChange", "iii", i, gPlayerData[i][E_STATE], 0);
		}

		strcpy(gPlayerData[i][E_COUNTRY], ReturnCuntCode(gAlarDB, pIP), sizeof(SIZE_E_PLAYERDATA[E_COUNTRY]));
		gPlayerData[i][E_IPCODE] = IP2Code(pIP);
	}

	db_free_result(db_query(gAlarDB, "END TRANSACTION"));

	SetTimer("alar_pingkick", PINGTIME * 1000, 1);
	SetTimer("alar_pausecheck", 400, 1);

	if(!existproperty(.value = ALAR_PROPERTY_ID)) {
		setproperty(.name = !#ALAR_VERSION, .value = ALAR_PROPERTY_ID);
	}
	CallRemoteFunction("OnAlarInit", "");
	return 1;
}

public OnFilterScriptExit()
{
	new exittime = gettime();

	db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));

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

		if(!IsPlayerNPC(i)) Alias_Update(gAlarDB, ReturnPlayerName(i), Code2IP(gPlayerData[i][E_IPCODE]), exittime - gPlayerData[i][E_JOIN_TIME]);

		if(gPlayerData[i][E_ADMINLEVEL] > 0) {
			AllowPlayerTeleport(i, false);
			Admin_Update(gAlarDB, gPlayerData[i][E_NAME], "", gPlayerData[i][E_STATE] & ADMIN_STATE_HIDDEN != 0, gPlayerData[i][E_LOGKEYS] ? gPlayerData[i][E_LOG_PAGE] : -gPlayerData[i][E_LOG_PAGE] - 1, gPlayerData[i][E_SHOWHUD]);
			CallRemoteFunction("OnAdminLogout", "i", i);
		}

		#if SPEC_TXT_TIME > 0
			if(gPlayerData[i][E_SPECTIMER]) {
				KillTimer(gPlayerData[i][E_SPECTIMER]);
				TextDrawHideForPlayer(i, gPlayerData[i][E_SPECTXT]);
			}
		#endif
		if(gPlayerData[i][E_SPECHUD] != INVALID_TEXT_DRAW) {
			SpecHUDHide(i);
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

	TempBan_UnbanAll(gAlarDB);

	db_free_result(db_query(gAlarDB, "END TRANSACTION"));

	db_close(gAlarDB);

	SendClientMessageToAll(COLOUR_HELP, "Any Last Administrative Requests unloaded");
	LogAction("Any Last Administrative Requests unloaded (Version " #ALAR_VERSION ")");

	CallRemoteFunction("OnAlarExit", "");
	if(existproperty(.value = ALAR_PROPERTY_ID)) {
		deleteproperty(.value = ALAR_PROPERTY_ID);
	}
	return 1;
}

public OnGameModeInit()
{
	if(gServerData[E_FIX_RUNNING]) {
		UsePlayerPedAnims();
	}

	#if LOG_LINES > 0 && LOG_PAGES > 0
		// Recreate destroyed textdraws
		#if LOG_PAGES > 1
			for(new i; i < sizeof(gLogPage); i++) {
				if(gLogPage[i] == INVALID_TEXT_DRAW) {
					new string[20];
					format(string, sizeof(string), "%i/%i", i+1, LOG_PAGES);
					gLogPage[i] = TextDrawCreate(630.0, 430.0, string);
					TextDrawUseBox(gLogPage[i], 0);
					TextDrawFont(gLogPage[i], 1);
					TextDrawSetShadow(gLogPage[i], 1);
					TextDrawLetterSize(gLogPage[i], 0.08 * LOG_SIZE, 0.24 * LOG_SIZE);
					TextDrawSetOutline(gLogPage[i], 0);
					TextDrawColor(gLogPage[i], COLOUR_PAGE);
					TextDrawBackgroundColor(gLogPage[i], COLOUR_PAGE & 0x000000FF);
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
				TextDrawBackgroundColor(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_COLOUR] & 0x000000FF);
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
		if(g_txtSpecMode[0] == INVALID_TEXT_DRAW) g_txtSpecMode[0] = TextDrawCreate(10.0, 390.0, "Normal Spectate");
		if(g_txtSpecMode[1] == INVALID_TEXT_DRAW) g_txtSpecMode[1] = TextDrawCreate(10.0, 390.0, "Player Spectate");
		if(g_txtSpecMode[2] == INVALID_TEXT_DRAW) g_txtSpecMode[2] = TextDrawCreate(10.0, 390.0, "Side Spectate");
		if(g_txtSpecMode[3] == INVALID_TEXT_DRAW) g_txtSpecMode[3] = TextDrawCreate(10.0, 390.0, "Free Spectate");

		for(new i; i < sizeof(g_txtSpecMode); i++) {
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
		gJoinList[i][E_LASTIP] = Unsigned:0;
		gJoinList[i][E_LASTTIME] = 0;
	}
	return 1;
}

public OnGameModeExit()
{
	Bit_SetAll(gCreatedVehicles, 0, sizeof(gCreatedVehicles));

	gSpawnMethod = DEFAULT_SPAWNTYPE;

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

	new pname[MAX_PLAYER_NAME],
		pIP[MAX_IP],
		msg[MAX_INPUT * 2];

	GetPlayerName(playerid, pname, sizeof(pname));
	GetPlayerIp(playerid, pIP, sizeof(pIP));

	gPlayerData[playerid][E_JOIN_TIME] = gettime();

	db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));

	if(!IsPlayerNPC(playerid)) {
		#if JOINCOUNT > 1
			if(JoinFloodCheck(playerid)) return 1;
		#endif

		gPlayerData[playerid][E_WHITELISTED] = Whitelist_IsNameWhitelisted(gAlarDB, pname, true);

		new BanData[E_ALAR_BAN];
		if(Bans_GetBanInfo(gAlarDB, pname, pIP, BanData, gPlayerData[playerid][E_WHITELISTED], false, true)) {
			if(BanData[E_BAN_REASON][0]) {
				format(msg, sizeof(msg), "You are banned from this server (%s)", BanData[E_BAN_REASON]);
			} else {
				msg = "You are banned from this server";
			}
			SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			if(gServerData[E_RANGEBAN_MSG][0] != '\0' && strfind(BanData[E_BAN_IP], "*") != -1) {
				SendBanMsg(playerid, gServerData[E_RANGEBAN_MSG], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
			} else if(gServerData[E_BAN_MSG][0] != '\0') {
				SendBanMsg(playerid, gServerData[E_BAN_MSG], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
			}

			if(BanData[E_BAN_REASON][0]) {
				strtruncate(BanData[E_BAN_REASON], BanData[E_BAN_REASON], MAX_REASON, .maxlength=sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
				format(msg, sizeof(msg), "%s(%i) is banned from this server (%s)", pname, playerid, BanData[E_BAN_REASON]);
			} else {
				format(msg, sizeof(msg), "%s(%i) is banned from this server", pname, playerid);
			}
			if(gServerData[E_HIDE_BANS]) {
				gPlayerData[playerid][E_HIDEEXIT] = 3;
			} else {
				gPlayerData[playerid][E_HIDEEXIT] = 1;
				AddJoinString(playerid, COLOUR_BAN, msg);
			}

			if(BanData[E_BAN_REASON][0]) {
				if(BanData[E_BAN_NAME][0]) {
					if(BanData[E_BAN_IP][0]) {
						format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server (%s)", pname, playerid, BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_REASON]);
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server (%s)", pname, playerid, BanData[E_BAN_NAME], BanData[E_BAN_REASON]);
					}
				} else {
					format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server (%s)", pname, playerid, BanData[E_BAN_IP], BanData[E_BAN_REASON]);
				}
			} else {
				if(BanData[E_BAN_NAME][0]) {
					if(BanData[E_BAN_IP][0]) {
						format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server", pname, playerid, BanData[E_BAN_NAME], BanData[E_BAN_IP]);
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server", pname, playerid, BanData[E_BAN_NAME]);
					}
				} else {
					format(msg, sizeof(msg), "%s(%i) [%s] is banned from this server", pname, playerid, BanData[E_BAN_IP]);
				}
			}
			AddLogString(msg);
			LogAction(msg);
			//Kick(playerid);
			db_free_result(db_query(gAlarDB, "END TRANSACTION"));
			SetTimerEx("alar_fixkick", 0, 0, "i", playerid);
			return 1;
		}

		new SuspendData[E_ALAR_SUSPENSION],
			bool:unsuspended = false;
		while(Suspensions_GetSuspendInfo(gAlarDB, pname, pIP, SuspendData, gPlayerData[playerid][E_WHITELISTED], false, true)) {
			if(SuspendData[E_SUSPEND_EXPIRED]) {
				Suspensions_UnsuspendPlayer(gAlarDB, pname, pIP, SuspendData);
				if(SuspendData[E_SUSPEND_REASON][0]) {
					strtruncate(SuspendData[E_SUSPEND_REASON], SuspendData[E_SUSPEND_REASON], MAX_REASON, .maxlength=sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
					format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended (%s)", ReturnPlayerName(playerid), playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
				} else {
					format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended", ReturnPlayerName(playerid), playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
				}
				LogAction(msg);
				AddLogString(msg);
				unsuspended = true;
			} else {
				if(SuspendData[E_SUSPEND_REASON][0]) {
					format(msg, sizeof(msg), "You are suspended from this server until %s (%s)", SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
				} else {
					format(msg, sizeof(msg), "You are suspended from this server until %s", SuspendData[E_SUSPEND_EXPIRES]);
				}
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
				if(gServerData[E_RANGESUSPEND_MSG][0] != '\0' && strfind(SuspendData[E_SUSPEND_IP], "*") != -1) {
					SendBanMsg(playerid, gServerData[E_RANGESUSPEND_MSG], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
				} else if(gServerData[E_SUSPEND_MSG][0] != '\0') {
					SendBanMsg(playerid, gServerData[E_SUSPEND_MSG], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
				}
				if(SuspendData[E_SUSPEND_REASON][0]) {
					strtruncate(SuspendData[E_SUSPEND_REASON], SuspendData[E_SUSPEND_REASON], MAX_REASON, .maxlength=sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
					format(msg, sizeof(msg), "%s(%i) is suspended from this server until %s (%s)", pname, playerid, SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
				} else {
					format(msg, sizeof(msg), "%s(%i) is suspended from this server until %s", pname, playerid, SuspendData[E_SUSPEND_EXPIRES]);
				}
				if(gServerData[E_HIDE_BANS]) {
					gPlayerData[playerid][E_HIDEEXIT] = 3;
				} else {
					gPlayerData[playerid][E_HIDEEXIT] = 1;
					AddJoinString(playerid, COLOUR_SUSPEND, msg);
				}

				if(SuspendData[E_SUSPEND_REASON][0]) {
					if(SuspendData[E_SUSPEND_NAME][0]) {
						if(SuspendData[E_SUSPEND_IP][0]) {
							format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server (%s)", pname, playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
						} else {
							format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server (%s)", pname, playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_REASON]);
						}
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server (%s)", pname, playerid, SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
					}
				} else {
					if(SuspendData[E_SUSPEND_NAME][0]) {
						if(SuspendData[E_SUSPEND_IP][0]) {
							format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server", pname, playerid, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
						} else {
							format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server", pname, playerid, SuspendData[E_SUSPEND_NAME]);
						}
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s] is suspended from this server", pname, playerid, SuspendData[E_SUSPEND_IP]);
					}
				}
				AddLogString(msg);
				LogAction(msg);

				//Kick(playerid);
				db_free_result(db_query(gAlarDB, "END TRANSACTION"));
				SetTimerEx("alar_fixkick", 0, 0, "i", playerid);
				return 1;
			}
		}
		if(unsuspended) {
			SendClientMessage(playerid, COLOUR_PLAYER, "You have been unsuspended");
		}
	}

	if(isNumeric(pname) && strval(pname) >= 0 && strval(pname) < GetMaxPlayers()) {
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Name is a number)", pname, playerid);
		SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Name is a number)");
		gPlayerData[playerid][E_HIDEEXIT] = 1;
		AddJoinString(playerid, COLOUR_KICK, msg);
		AddLogString(msg);
		LogAction(msg);
		//Kick(playerid);
		db_free_result(db_query(gAlarDB, "END TRANSACTION"));
		SetTimerEx("alar_fixkick", 0, 0, "i", playerid);
		return 1;
	}

	new logininfo[E_LOGINDATA];
	if(Admin_GetData(gAlarDB, pname, logininfo)) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_NAME][0] != '\0' && strcmp(pname, gPlayerData[i][E_NAME], true) == 0) {
				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Admin impersonation)", pname, playerid);
				SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Admin impersonation)");
				gPlayerData[playerid][E_HIDEEXIT] = 1;
				AddJoinString(playerid, COLOUR_KICK, msg);
				AddLogString(msg);
				LogAction(msg);
				//Kick(playerid);
				db_free_result(db_query(gAlarDB, "END TRANSACTION"));
				SetTimerEx("alar_fixkick", 0, 0, "i", playerid);
				return 1;
			}
		}

		// Store the name they must login as
		strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));

		if(!logininfo[E_LOGIN_MANUAL] && gServerData[E_AUTO_LOGIN] && IPcompare(logininfo[E_LOGIN_IP], pIP)) {
			Bit_Set(g_bitAdmins, playerid, 1);
			gPlayerData[playerid][E_ADMINLEVEL] = logininfo[E_LOGIN_LEVEL];

			if(logininfo[E_LOGIN_HIDDEN]) {
				gPlayerData[playerid][E_STATE] |= ADMIN_STATE_HIDDEN;
			}
			gPlayerData[playerid][E_SHOWHUD] = logininfo[E_LOGIN_HUD];

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));
			#if LOG_LINES > 0 && LOG_PAGES > 0
				if(logininfo[E_LOGIN_PAGE] < 0) {
					gPlayerData[playerid][E_LOGKEYS] = false;
					gPlayerData[playerid][E_LOG_PAGE] = -(logininfo[E_LOGIN_PAGE] + 1);
				} else {
					gPlayerData[playerid][E_LOG_PAGE] = logininfo[E_LOGIN_PAGE];
					gPlayerData[playerid][E_LOGKEYS] = true;
				}
				if(gPlayerData[playerid][E_LOG_PAGE] > 0 && gPlayerData[playerid][E_LOG_PAGE] <= LOG_PAGES && cmdchk(playerid, E_LOG_LEVEL)) {
					new offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES;
					for(new i; i < LOG_LINES; i++) {
						TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					#if LOG_PAGES > 1
						TextDrawShowForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
					#endif
				} else {
					gPlayerData[playerid][E_LOG_PAGE] = 0;
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

	if(gServerData[E_STORE_ALIASES] && !IsPlayerNPC(playerid)) Alias_Add(gAlarDB, pname, pIP);
	strcpy(gPlayerData[playerid][E_COUNTRY], ReturnCuntCode(gAlarDB, pIP), sizeof(SIZE_E_PLAYERDATA[E_COUNTRY]));
	gPlayerData[playerid][E_IPCODE] = IP2Code(pIP);

	db_free_result(db_query(gAlarDB, "END TRANSACTION"));

	if(gServerData[E_JOIN_MSGS]) {
		if(!IsPlayerNPC(playerid)) {
			if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
				if(gServerData[E_LOG_LOGINS]) {
					AddLogString(msg);

					if(gServerData[E_JOIN_COUNTRIES] && gPlayerData[playerid][E_COUNTRY][0]) {
						format(msg, sizeof(msg), "*** %s(%i) has joined the server (%s)", pname, playerid, ReturnCuntName(gPlayerData[playerid][E_COUNTRY]));
						AddJoinChatLine(playerid, COLOUR_CONNECT, msg);
						#if CHATHISTORY_SIZE > 0
							if(gServerData[E_CHAT_JOINS]) AddHistoryLine(COLOUR_CONNECT, msg, playerid);
						#endif

						#if JOINMSG_LINES > 0
							format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
							AddJoinTextLine(COLOUR_CONNECT, msg);
						#endif
					} else {
						format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
						AddJoinString(playerid, COLOUR_CONNECT, msg);
					}
				} else {
					new string[MAX_INPUT];
					#if JOINMSG_LINES > 0
						format(string, sizeof(string), "%s(%i) has joined the server", pname, playerid);
						AddJoinTextLine(COLOUR_CONNECT, string);
					#endif

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
					#if CHATHISTORY_SIZE > 0
						if(gServerData[E_CHAT_JOINS]) {
							AddHistoryLine(COLOUR_ADMIN, amsg, playerid, HISTORY_ADMIN_ONLY);
							AddHistoryLine(COLOUR_CONNECT, msg, playerid, HISTORY_PLAYER_ONLY);
						}
					#endif
					LoopPlayers(i) {
						if(!IsPlayerNPC(i) && playerid != i) {
							#if JOINMSG_LINES > 0
								if(gPlayerData[i][E_JOINTEXT]) {
									if(gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) {
										SendClientMessage(i, COLOUR_ADMIN, amsg);
									} else {
										SendClientMessage(i, COLOUR_CONNECT, string);
									}
								} else if(gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) {
									SendClientMessage(i, COLOUR_ADMIN, msg);
								}
							#else
								if(gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) {
									SendClientMessage(i, COLOUR_ADMIN, amsg);
								} else {
									SendClientMessage(i, COLOUR_CONNECT, string);
								}
							#endif
						}
					}
				}
			} else {
				if(gServerData[E_JOIN_COUNTRIES] && gPlayerData[playerid][E_COUNTRY][0]) {
					format(msg, sizeof(msg), "*** %s(%i) has joined the server (%s)", pname, playerid, ReturnCuntName(gPlayerData[playerid][E_COUNTRY]));
					AddJoinChatLine(playerid, COLOUR_CONNECT, msg);
					#if CHATHISTORY_SIZE > 0
						if(gServerData[E_CHAT_JOINS]) AddHistoryLine(COLOUR_CONNECT, msg, playerid);
					#endif

					#if JOINMSG_LINES > 0
						format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
						AddJoinTextLine(COLOUR_CONNECT, msg);
					#endif
				} else {
					format(msg, sizeof(msg), "%s(%i) has joined the server", pname, playerid);
					AddJoinString(playerid, COLOUR_CONNECT, msg);
				}
			}
			gPlayerData[playerid][E_HIDEEXIT] = 1;
		} else if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
			LoopPlayers(i) {
				if(!IsPlayerNPC(i) && (gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) && i != playerid) {
					SendClientMessage(i, COLOUR_ADMIN, msg);
				}
			}
		}
	} else if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		LoopPlayers(i) {
			if(!IsPlayerNPC(i) && (gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) && i != playerid) {
				SendClientMessage(i, COLOUR_ADMIN, msg);
			}
		}
	}

	if(!IsPlayerNPC(playerid)) LoadPlayerData(playerid);

	if(gPlayerData[playerid][E_STATE] != 0) {
		if(gPlayerData[playerid][E_STATE] != ADMIN_STATE_HIDDEN) {
			new statstring[50];
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_MUTED) {
				strcat(statstring, "muted");
			}
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) {
				if(statstring[0] != '\0') strcat(statstring, "/jailed");
				else strcat(statstring, "jailed");
			}
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_FROZEN) {
				if(statstring[0] != '\0') strcat(statstring, "/frozen");
				else strcat(statstring, "frozen");
			}

			new string[MAX_INPUT];
			format(string, sizeof(string), "%s(%i) is %s", ReturnPlayerName(playerid), playerid, statstring);
			LogAction(string);
			AddLogString(string);
			format(string, sizeof(string), "You are %s", statstring);
			SendClientMessage(playerid, COLOUR_WARNING, string);
		}
		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], 0);
	}

	gPlayerData[playerid][E_LAST_ACTIVE] = gPlayerData[playerid][E_LAST_WARNING] = GetTickCount();

	#if JOINMSG_LINES > 0
		if(!gPlayerData[playerid][E_JOINTEXT]) {
			for(new i; i < sizeof(gJoinMessage); i++) {
				if(gJoinMessage[i][E_TEXTBOX_COLOUR] & 0x000000FF != 0) {
					TextDrawShowForPlayer(playerid, gJoinMessage[i][E_TEXTBOX_TEXT]);
				}
			}
		}
	#endif
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(gPlayerData[playerid][E_KICK]) KillTimer(gPlayerData[playerid][E_KICK]);
	if(gPlayerData[playerid][E_UNMUTE]) KillTimer(gPlayerData[playerid][E_UNMUTE]);
	if(gPlayerData[playerid][E_UNJAIL]) KillTimer(gPlayerData[playerid][E_UNJAIL]);
	if(gPlayerData[playerid][E_UNFREEZE]) KillTimer(gPlayerData[playerid][E_UNFREEZE]);

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
			SpecHUDHide(playerid);
		}
	} else {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				ObserverSwitchPlayer(i, FindClosestPlayer(playerid));
				if(gPlayerData[i][E_SPECID] == playerid) {	// technically the player is still connected :(
					gPlayerData[i][E_SPECMODE] = 3;
					CallRemoteFunction("OnAdminSpectate", "iii", i, FREE_SPECTATE_ID, gPlayerData[i][E_SPECID]);

					PutPlayerIntoFreeSpec(i);
					gPlayerData[i][E_SPECID] = INVALID_PLAYER_ID;

					#if SPEC_TXT_TIME > 0
						ShowSpecTxt(i);
					#endif
				}
			}
		}
	}

	if(!IsPlayerNPC(playerid) && gettime() - gPlayerData[playerid][E_JOIN_TIME] > 10) {
		Alias_Update(gAlarDB, ReturnPlayerName(playerid), Code2IP(gPlayerData[playerid][E_IPCODE]), gettime() - gPlayerData[playerid][E_JOIN_TIME]);
	}

	Bit_Set(g_bitAdmins, playerid, 0);
	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		Admin_Update(gAlarDB, gPlayerData[playerid][E_NAME], "", gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN != 0, gPlayerData[playerid][E_LOGKEYS] ? gPlayerData[playerid][E_LOG_PAGE] : -gPlayerData[playerid][E_LOG_PAGE] - 1, gPlayerData[playerid][E_SHOWHUD]);
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

	if(gServerData[E_JOIN_MSGS] && !IsPlayerNPC(playerid) && gPlayerData[playerid][E_HIDEEXIT] < 3) {
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

	#if CHATHISTORY_SIZE > 0
		for(new i; i < sizeof(gChatHistory); i++) {
			if(gChatHistory[i][E_HISTORY_ID] == playerid) {
				gChatHistory[i][E_HISTORY_ID] = INVALID_PLAYER_ID;
			}
		}
	#endif

	gPlayerData[playerid] = gDefaultPlayerData;
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	gPlayerData[playerid][E_LAST_ACTIVE] = GetTickCount();

	#if CHATHISTORY_SIZE > 0
		if(!gPlayerData[playerid][E_HISTORY_SENT] && !IsPlayerNPC(playerid)) {
			gPlayerData[playerid][E_HISTORY_SENT] = true;

			if(gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? gServerData[E_CHAT_HISTORY] > 0 : gServerData[E_CHAT_HISTORY] == 1) {
				new originalcolour,
					colour,
					pname[MAX_PLAYER_NAME],
					originalname[MAX_PLAYER_NAME];

				GetPlayerName(playerid, pname, sizeof(pname));
				GetPlayerName(playerid, originalname, sizeof(originalname));
				originalcolour = colour = GetPlayerColor(playerid);

				for(new i; i < sizeof(gChatHistory); i++) {
					if(gChatHistory[i][E_HISTORY_ID] != playerid) {
						if(gChatHistory[i][E_HISTORY_MESSAGE][0] != '\0') {
							if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0 ? ~gChatHistory[i][E_HISTORY_FLAGS] & HISTORY_ADMIN_ONLY : ~gChatHistory[i][E_HISTORY_FLAGS] & HISTORY_PLAYER_ONLY) {
								if(gChatHistory[i][E_HISTORY_NAME][0] != '\0') {
									if(strcmp(gChatHistory[i][E_HISTORY_NAME], pname)) {
										new bool:skip = false;
										LoopPlayers(j) {
											if(strcmp(ReturnPlayerName(j), gChatHistory[i][E_HISTORY_NAME], true) == 0) {
												new othercolour = GetPlayerColor(j);
												if(othercolour != gChatHistory[i][E_HISTORY_COLOUR]) {
													SetPlayerColor(j, gChatHistory[i][E_HISTORY_COLOUR]);
													SendPlayerMessageToPlayer(playerid, j, gChatHistory[i][E_HISTORY_MESSAGE]);
													SetPlayerColor(j, othercolour);
												} else {
													SendPlayerMessageToPlayer(playerid, j, gChatHistory[i][E_HISTORY_MESSAGE]);
												}
												skip = true;
												break;
											}
										}
										if(skip) continue;
										strcpy(pname, gChatHistory[i][E_HISTORY_NAME]);
										SetPlayerName(playerid, pname);
									}
									if(colour != gChatHistory[i][E_HISTORY_COLOUR]) {
										SetPlayerColor(playerid, (colour = gChatHistory[i][E_HISTORY_COLOUR]));
									}
									SendPlayerMessageToPlayer(playerid, playerid, gChatHistory[i][E_HISTORY_MESSAGE]);
								} else {
									if(gChatHistory[i][E_HISTORY_FLAGS] & HISTORY_WRAPPED) {
										SendWrappedMessageToPlayer(playerid, gChatHistory[i][E_HISTORY_COLOUR], gChatHistory[i][E_HISTORY_MESSAGE]);
									} else {
										SendClientMessage(playerid, gChatHistory[i][E_HISTORY_COLOUR], gChatHistory[i][E_HISTORY_MESSAGE]);
									}
								}
							}
						}
					}
				}
				if(strcmp(pname, originalname)) {
					SetPlayerName(playerid, originalname);
				}
				if(originalcolour != colour) {
					SetPlayerColor(playerid, originalcolour);
				}
			}
		}
		for(new i; i < sizeof(gChatHistory); i++) {
			if(gChatHistory[i][E_HISTORY_ID] == playerid) {
				gChatHistory[i][E_HISTORY_ID] = INVALID_PLAYER_ID;
			}
		}
	#endif

	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(!gPlayerData[playerid][E_PRELOADED]) {
		ApplyAnimation(playerid, "FIGHT_B", "HitB_3", 1.0, 0, 1, 1, 0, 1);
		ClearAnimations(playerid);	// for some reason animations get suck no matter what params are used
		gPlayerData[playerid][E_PRELOADED] = true;
	}

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) {
		SetTimerEx("alar_jailplayer", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
	}

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_FROZEN) {
		TogglePlayerControllable(playerid, false);
	}

	// People spawning using the SpawnPlayer() command
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
			PlayerSpectatePlayer(i, gPlayerData[i][E_SPECID]);
		}
	}
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	gPlayerData[playerid][E_LAST_RAGE] = gettime();

	LoopPlayers(i) {
		if(i != playerid && gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
			ObserverSwitchPlayer(i, IsSpawned(killerid) ? killerid : FindClosestPlayer(playerid));
		}
	}
	return 1;
}

public OnPlayerText(playerid, text[])
{
	gPlayerData[playerid][E_LAST_ACTIVE] = GetTickCount();

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

	if(gChatPrefix[0][E_CHAT_LEN] && (gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0)) {
		for(new i; i < sizeof(gChatPrefix); i++) {
			if(gChatPrefix[i][E_CHAT_LEN] != 0 && strcmp(text, gChatPrefix[i][E_CHAT_STRING], true, gChatPrefix[i][E_CHAT_LEN]) == 0) {
				if(text[gChatPrefix[i][E_CHAT_LEN]] == '\0') return 0;
				new msg[MAX_INPUT + MAX_PLAYER_NAME + 20];
				format(msg, sizeof(msg), "<Adminchat> %s: %s", ReturnPlayerName(playerid), text[gChatPrefix[i][E_CHAT_LEN]]);
				SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, msg);
				#if CHATHISTORY_SIZE > 0
					alar_AddLineToHistory(COLOUR_MSG, msg, HISTORY_ADMIN_ONLY | HISTORY_WRAPPED);
				#endif
				LogAction(msg);
				return 0;
			}
		}
	}

	for(new i; i < sizeof(gRageWords); i++) {
		if(strfind(text, gRageWords[i], true) != -1) {
			gPlayerData[playerid][E_LAST_RAGE] = gettime();
			break;
		}
	}

	#if CHATHISTORY_SIZE > 0
		if(text[0] < '!' || text[0] > '&') {
			alar_AddMessageToHistory(ReturnPlayerName(playerid), GetPlayerColor(playerid), text, 0);
		}
	#endif
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	gPlayerData[playerid][E_LAST_ACTIVE] = GetTickCount();

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
	if(gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
		for(new i; i < sizeof(gChatPrefix); i++) {
			if(gChatPrefix[i][E_CHAT_STRING][0] == '/' && strcmp(cmdtext, gChatPrefix[i][E_CHAT_STRING], true, gChatPrefix[i][E_CHAT_LEN]) == 0) {
				if(cmdtext[gChatPrefix[i][E_CHAT_LEN]] == '\0' || SpamCheck(playerid, cmdtext)) return 1;
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
					format(msg, sizeof(msg), "<Adminchat> %s: %s", ReturnPlayerName(playerid), cmdtext[gChatPrefix[i][E_CHAT_LEN]]);
					SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, msg);
					#if CHATHISTORY_SIZE > 0
						alar_AddLineToHistory(COLOUR_MSG, msg, HISTORY_ADMIN_ONLY | HISTORY_WRAPPED);
					#endif
					LogAction(msg);
				}
				return 1;
			}
		}
	}

	// disable all commands (if the filterscript is first on the list)
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) return 1;

	return 0;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	if(gServerData[E_CHECK_MODS]) {
		new modelid = GetVehicleModel(vehicleid);
		if(isValidVehicleMod(modelid, componentid)) {
			return true;
		} else {
			new msg[MAX_INPUT];
			format(msg, sizeof(msg), "Invalid vehicle mod used by %s(%i) [%s:%i]", ReturnPlayerName(playerid), playerid, ReturnVehicleName(modelid), componentid);
			AddLogString(msg);
			LogAction(msg);
			return false;
		}
	}
	return true;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	if(gServerData[E_CHECK_MODS]) {
		if(-1 <= paintjobid <= 5) {
			return true;
		} else {
			new msg[MAX_INPUT];
			format(msg, sizeof(msg), "Invalid vehicle paintjob used by %s(%i) [%s:%i]", ReturnPlayerName(playerid), playerid, ReturnPlayerVehicleName(playerid), paintjobid);
			AddLogString(msg);
			LogAction(msg);
			return false;
		}
	}
	return true;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
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
				SpecHUDHide(playerid);
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
	if(newstate == PLAYER_STATE_SPAWNED) {
		gPlayerData[playerid][E_SPECID] = INVALID_PLAYER_ID;

		if((~gPlayerData[playerid][E_STATE] & ADMIN_STATE_JAILED) && gPlayerData[playerid][E_SETINFO]) {
			new bool:isinvehicle = false;
			if(gPlayerData[playerid][E_SETINFO] & INFOTYPE_VEHICLE) {
				if(GetVehicleModel(gPlayerData[playerid][E_VEHICLEID]) != INVALID_MODEL_ID) {
					if(IsVehicleSeatFree(gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID])) {
						if((gPlayerData[playerid][E_WORLD] = GetVehicleVirtualWorld(gPlayerData[playerid][E_VEHICLEID])) != GetPlayerVirtualWorld(playerid)) {
							SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
							alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
						}
						isinvehicle = true;
						PutPlayerInVehicle(playerid, gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID]);
						SetCameraBehindPlayer(playerid);
					}
				}
			}
			if(!isinvehicle && gPlayerData[playerid][E_SETINFO] & INFOTYPE_POSITION) {
				SetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
				SetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
				SetCameraBehindPlayer(playerid);
			}
			if(gPlayerData[playerid][E_SETINFO] & INFOTYPE_WORLD) {
				SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
				if(GetPlayerVirtualWorld(playerid) != gPlayerData[playerid][E_WORLD]) {
					SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
					alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
				}
			}
			if(gPlayerData[playerid][E_SETINFO] & INFOTYPE_HEALTH) {
				SetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
			}
			if(gPlayerData[playerid][E_SETINFO] & INFOTYPE_ARMOUR) {
				SetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
			}
			if(gPlayerData[playerid][E_SETINFO] & INFOTYPE_CASH) {
				ResetPlayerMoney(playerid);
				GivePlayerMoney(playerid, gPlayerData[playerid][E_CASH]);
			}
			if(gPlayerData[playerid][E_SETINFO] & INFOTYPE_WEAPONS) {
				ResetPlayerWeapons(playerid);
				for(new i; i < 13; i++) {
					if(gPlayerData[playerid][E_WEAPON][i] != 0) {
						GivePlayerWeapon(playerid, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
					}
				}
				SetPlayerArmedWeapon(playerid, gPlayerData[playerid][E_ARMED]);
			}
			ClearSpawnData(playerid);
		}
	} else if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER) {
		if(newstate == PLAYER_STATE_ONFOOT) {
			LoopPlayers(i) {
				if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
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
				if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
					PlayerSpectateVehicle(i, vehicleid, SPECTATE_MODE_NORMAL);
				}
			}
		}
	}
	if(newstate == PLAYER_STATE_SPECTATING) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				ObserverSwitchPlayer(i, FindClosestPlayer(playerid));
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
					Float:dist = FLOAT_INF,
					Float:px,
					Float:py,
					Float:pz,
					Float:tmp;
				LoopPlayers(i) {
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
			if(IsKeyJustDown(KEY_LOOK_BEHIND, newkeys, oldkeys) && cmdchk(playerid, E_TELE_LEVEL)) {
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

				gPlayerData[playerid][E_INTERIOR] = GetPlayerInterior(playerid);
				gPlayerData[playerid][E_WORLD] = GetPlayerVirtualWorld(playerid);

				gPlayerData[playerid][E_VEHICLEID] = INVALID_VEHICLE_ID;
				gPlayerData[playerid][E_SEATID] = INVALID_VEHICLE_ID;

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
			if(IsKeyJustDown(KEY_SPEC_GOTO, newkeys, oldkeys) && cmdchk(playerid, E_GOTO_LEVEL)) {
				new Float:X, Float:Y, Float:Z, Float:angle;
				if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID])) {
					new vid = GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]);
					GetVehiclePos(vid, X, Y, Z);
					GetVehicleZAngle(vid, angle);
				} else {
					GetPlayerFacingAngle(gPlayerData[playerid][E_SPECID], angle);
					GetPlayerPos(gPlayerData[playerid][E_SPECID], X, Y, Z);
				}

				gPlayerData[playerid][E_POSX] = X + floatsin(angle, degrees);
				gPlayerData[playerid][E_POSY] = Y - floatcos(angle, degrees);
				gPlayerData[playerid][E_POSZ] = Z + 3.0;
				gPlayerData[playerid][E_INTERIOR] = GetPlayerInterior(gPlayerData[playerid][E_SPECID]);
				gPlayerData[playerid][E_WORLD] = GetPlayerVirtualWorld(gPlayerData[playerid][E_SPECID]);

				if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID])) {
					new vid = GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]);
					if((gPlayerData[playerid][E_SEATID] = GetVehicleFreeSeat(vid)) != INVALID_SEAT_ID) {
						gPlayerData[playerid][E_VEHICLEID] = vid;
					} else {
						new trailerid = GetVehicleTrailer(vid);
						for(; trailerid && trailerid != vid && (gPlayerData[playerid][E_SEATID] = GetVehicleFreeSeat(trailerid, false)) == INVALID_SEAT_ID;) {
							trailerid = GetVehicleTrailer(trailerid);
						}
						if(gPlayerData[playerid][E_SEATID] != INVALID_SEAT_ID) {
							gPlayerData[playerid][E_VEHICLEID] = trailerid;
						} else {
							gPlayerData[playerid][E_VEHICLEID] = INVALID_VEHICLE_ID;
						}
					}
				}

				SpawnUsingPosition(playerid);

				new msg[MAX_INPUT];
				format(msg, sizeof(msg), "%s has teleported to %s", ReturnPlayerName(playerid), ReturnPlayerName(gPlayerData[playerid][E_SPECID]));
				LogAction(msg);
				AddLogString(msg);

				format(msg, sizeof(msg), "You have teleported to %s", ReturnPlayerName(gPlayerData[playerid][E_SPECID]));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				return;
			}
			if(IsKeyJustDown(KEY_SPEC_MODE, newkeys, oldkeys)) {
				if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID])) {
					if(gServerData[E_EXTRA_SPEC_VIEWS]) {
						gPlayerData[playerid][E_SPECMODE] = (gPlayerData[playerid][E_SPECMODE]+1) % 4;
					} else if(gPlayerData[playerid][E_SPECMODE]){
						gPlayerData[playerid][E_SPECMODE] = 0;
					} else {
						gPlayerData[playerid][E_SPECMODE] = 3;
					}
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
					gPlayerData[playerid][E_SHOWHUD] = false;
					SpecHUDHide(playerid);
				} else {
					gPlayerData[playerid][E_SHOWHUD] = true;
					SpecHUDShow(playerid);
				}
				return;
			}
		}
	}
	#if LOG_LINES > 0 && LOG_PAGES > 0
		if(cmdchk(playerid, E_LOG_LEVEL) && gPlayerData[playerid][E_LOGKEYS]) {
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
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SetPlayerInterior(i, newinteriorid);
			}
		}
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	gPlayerData[playerid][E_LAST_UPDATE] = GetTickCount();
	new keys, updown, leftright;
	GetPlayerKeys(playerid, keys, updown, leftright);
	if(keys || updown || leftright) gPlayerData[playerid][E_LAST_ACTIVE] = GetTickCount();
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_DESYNCED) return 0;
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(gPlayerData[playerid][E_SPECTATING]) {
		if(gPlayerData[playerid][E_SPECID] == clickedplayerid) return 0;
		if(IsSpawned(clickedplayerid)) {
			#if SPEC_TXT_TIME > 0
				if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
					gPlayerData[playerid][E_SPECMODE] = 0;
					ShowSpecTxt(playerid);
				}
			#endif
			gPlayerData[playerid][E_LAST_SPECID] = clickedplayerid;
			ObserverSwitchPlayer(playerid, clickedplayerid);
			return 1;
		}

	}
	return 0;
}

public OnRconCommand(cmd[])
{
	if(gServerData[E_RCON_LEVEL] > 0 && cmd[0] == 'a' || cmd[0] == 'A') {
		rcmd(acommands, cmd);
		rcmd(adesynced, cmd);
		rcmd(admins, cmd);
		rcmd(afrozen, cmd);
		//rcmd(aipupdate, cmd);		// Crashy
		rcmd(ajailed, cmd);
		rcmd(amuted, cmd);
		rcmd(apaused, cmd);
		rcmd(areloaddata, cmd);
		rcmd(asinfo, cmd);
		rcmd(aspectating, cmd);

		rdcmd(aalias, 6, cmd);
		rdcmd(aalias2, 7, cmd);
		rdcmd(aalias3, 7, cmd);
		rdcmd(abancheck, 9, cmd);
		rdcmd(ainfo, 5, cmd);
		rdcmd(aip, 3, cmd);
		rdcmd(asetping, 8, cmd);
		rdcmd(apm, 3, cmd);
		rdcmd(awarnings, 9, cmd);
	}
	return 0;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	if(success) {
		new Unsigned:IPCode = IP2Code(ip);
		#if RCONCOUNT > 1
			for(new i; i < sizeof(gRconList); i++) {
				if(gRconList[i][E_LASTIP] == IPCode) gRconList[i][E_LASTIP] = Unsigned:0;
			}
		#endif
		SetTimerEx("alar_rconupdate", 100, 0, "i", _:IPCode);
	} else {
		#if RCONCOUNT > 1
			RconFloodCheck(ip);
		#endif
	}
	return 1;
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
	LoopPlayers(i) {
		if(gPlayerData[i][E_VEHICLEID] == vehicleid) {
			gPlayerData[i][E_VEHICLEID] = INVALID_VEHICLE_ID;
			gPlayerData[i][E_SEATID] = INVALID_SEAT_ID;
		}
	}
	return 1;
}

//-----------
// COMMANDS
//-----------

acmd:aalias(const playerid, const params[], const bool:help)
{
	if(!gServerData[E_STORE_ALIASES] || (playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;
	if(LevelCheck(playerid, E_ALIAS_LEVEL)) return 1;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias [player] or [player name] or [IP]");
		SendMessage(playerid, COLOUR_HELP, "Displays the other names a player has used on the server");
		return 1;
	}

	if(isnull(params)) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias [player] or [player name] or [IP]");
		return 1;
	}

	new string[512],
		pid;
	if(params[0] == '"' && (pid = strlen(params)) > 2 && params[pid-1] == '"') {
		new pname[MAX_PLAYER_NAME];
		strmid(pname, params, 1, pid-1);
		if(isValidName(pname)) {
			format(string, sizeof(string), "%s's Aliases: ", pname);
			if(Alias_GetAliasFromName(gAlarDB, pname, string)) {
				if(playerid == INVALID_PLAYER_ID) {
					print(string);
				} else {
					SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
				}
			} else {
				format(string, sizeof(string), "No aliases found for %s", params);
				SendMessage(playerid, COLOUR_WARNING, string);
			}
		} else {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
		}
	} else if(IPisvalid(params, false)) {
		format(string, sizeof(string), "%s's Aliases: ", params);
		if(Alias_GetAliasFromIP(gAlarDB, params, string)) {
			if(playerid == INVALID_PLAYER_ID) {
				print(string);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			}
		} else {
			format(string, sizeof(string), "No aliases found for %s", params);
			SendMessage(playerid, COLOUR_WARNING, string);
		}
	} else if((pid = FindPlayer(params)) != INVALID_PLAYER_ID) {
		format(string, sizeof(string), "%s's Aliases: ", ReturnPlayerName(pid));
		if(Alias_GetAliasFromIP(gAlarDB, ReturnPlayerIP(pid), string)) {
			if(playerid == INVALID_PLAYER_ID) {
				print(string);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			}
		} else {
			format(string, sizeof(string), "No aliases found for %s", ReturnPlayerName(pid));
			SendMessage(playerid, COLOUR_WARNING, string);
		}
	} else if(isValidName(params)) {
		format(string, sizeof(string), "%s's Aliases: ", params);
		if(Alias_GetAliasFromName(gAlarDB, params, string)) {
			if(playerid == INVALID_PLAYER_ID) {
				print(string);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			}
		} else {
			format(string, sizeof(string), "No aliases found for %s", params);
			SendMessage(playerid, COLOUR_WARNING, string);
		}
	} else {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias [player] or [player name] or [IP]");
	}
	return 1;
}

acmd:aalias2(const playerid, const params[], const bool:help)
{
	if(!gServerData[E_STORE_ALIASES] || (playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;
	if(LevelCheck(playerid, E_ALIAS2_LEVEL)) return 1;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias2 [player] or [player name] or [IP]");
		SendMessage(playerid, COLOUR_HELP, "Displays the names of other players on the same subnet");
		return 1;
	}

	if(isnull(params)) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias2 [player] or [player name] or [IP]");
		return 1;
	}

	new pIP[MAX_IP],
		pid;
	if(params[0] == '"' && (pid = strlen(params)) > 2 && params[pid-1] == '"') {
		new pname[MAX_PLAYER_NAME];
		strmid(pname, params, 1, pid-1);
		if(isValidName(pname)) {
			pIP = Alias_GetLastIP(gAlarDB, pname);
			if(!isnull(pIP)) {
				pIP = IPsubnet(pIP);
			}
		} else {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	} else if(IPisvalid(params, false)) {
		pIP = IPsubnet(params);
	} else if((pid = FindPlayer(params)) != INVALID_PLAYER_ID) {
		GetPlayerIp(pid, pIP, sizeof(pIP));
		pIP = IPsubnet(pIP);
	} else if(isValidName(params)) {
		pIP = Alias_GetLastIP(gAlarDB, params);
		if(!isnull(pIP)) {
			pIP = IPsubnet(pIP);
		}
	} else {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias2 [player] or [player name] or [IP]");
		return 1;
	}

	new string[512];
	if(!isnull(pIP)) {
		format(string, sizeof(string), "%s's Aliases: ", pIP);
		if(Alias_GetAliasFromIP(gAlarDB, pIP, string, sizeof(string))) {
			if(playerid == INVALID_PLAYER_ID) {
				print(string);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			}
		} else {
			format(string, sizeof(string), "No aliases found for %s", pIP);
			SendMessage(playerid, COLOUR_WARNING, string);
		}
	} else {
		format(string, sizeof(string), "No aliases found for %s", params);
		SendMessage(playerid, COLOUR_WARNING, string);
	}
	return 1;
}

acmd:aalias3(const playerid, const params[], const bool:help)
{
	if(!gServerData[E_STORE_ALIASES] || (playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;
	if(LevelCheck(playerid, E_ALIAS3_LEVEL)) return 1;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias3 [player] or [player name]");
		SendMessage(playerid, COLOUR_HELP, "Display the other names used by all the player's previous IPs");
		return 1;
	}

	if(isnull(params)) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aalias3 [player] or [player name]");
		return 1;
	}

	new pid,
		string[512];
	if(params[0] == '"' && (pid = strlen(params)) > 2 && params[pid-1] == '"') {
		new pname[MAX_PLAYER_NAME];
		strmid(pname, params, 1, pid-1);
		if(isValidName(pname)) {
			format(string, sizeof(string), "%s's Aliases: ", params);
			if(Alias_GetAlias3FromName(gAlarDB, params, string, sizeof(string))) {
				if(playerid == INVALID_PLAYER_ID) {
					print(string);
				} else {
					SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
				}
			} else {
				format(string, sizeof(string), "No aliases found for %s", params);
				SendMessage(playerid, COLOUR_WARNING, string);
			}
		} else {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	} else if((pid = FindPlayer(params)) != INVALID_PLAYER_ID) {
		new pname[MAX_PLAYER_NAME];
		GetPlayerName(pid, pname, sizeof(pname));
		format(string, sizeof(string), "%s's Aliases: ", pname);
		if(Alias_GetAlias3FromName(gAlarDB, pname, string, sizeof(string))) {
			if(playerid == INVALID_PLAYER_ID) {
				print(string);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			}
		} else {
			format(string, sizeof(string), "No aliases found for %s", pname);
			SendMessage(playerid, COLOUR_WARNING, string);
		}
	} else if(isValidName(params)) {
		format(string, sizeof(string), "%s's Aliases: ", params);
		if(Alias_GetAlias3FromName(gAlarDB, params, string, sizeof(string))) {
			if(playerid == INVALID_PLAYER_ID) {
				print(string);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			}
		} else {
			format(string, sizeof(string), "No aliases found for %s", params);
			SendMessage(playerid, COLOUR_WARNING, string);
		}
	} else {
		SendMessage(playerid, COLOUR_WARNING, "Invalid name");
	}
	return 1;
}

acmd:aarmour(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_ARMOUR_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aarmour [player] (armour)");
		SendClientMessage(playerid, COLOUR_HELP, "Gives armour to a player, or removes if armour is 0");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aarmour [player] (armour)");
		return 1;
	}

	new pid, Float:armour;
	if(strscan(params, "pf", pid, armour)) armour = 100.0;

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

acmd:aarmourall(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_ARMOURALL_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aarmourall (armour)");
		SendClientMessage(playerid, COLOUR_HELP, "Gives armour to all players, or removes if armour is 0");
		return 1;
	}

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

acmd:aautologin(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) return 0;
	if(!gServerData[E_AUTO_LOGIN]) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aautologin");
		SendClientMessage(playerid, COLOUR_HELP, "Toggles autologin by IP, useful for shared computers");
		return 1;
	}

	if(Admin_Manuallogin(gAlarDB, gPlayerData[playerid][E_NAME])) {
		SendClientMessage(playerid, COLOUR_ADMIN, "Automatic login has been disabled");
	} else {
		SendClientMessage(playerid, COLOUR_ADMIN, "Automatic login has been enabled");
	}
	return 1;
}

acmd:aban(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aban [player] (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Bans a player by both IP and name");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aban [player] (reason)");
		return 1;
	}

	new breason[MAX_INPUT] = DEFAULT_REASON, pid;
	strscan(params, "pz", pid, breason, sizeof(breason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot ban yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot ban NPCs");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot ban level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new bIP[MAX_IP],
		pname[MAX_PLAYER_NAME];
	GetPlayerIp(pid, bIP, sizeof(bIP));
	GetPlayerName(pid, pname, sizeof(pname));

	new bool:IPonly = gServerData[E_LOGGEDIN_FUNC][0] == '\0' || !CallRemoteFunction(gServerData[E_LOGGEDIN_FUNC], "i", pid),
		level;
	if(IPonly) {
		level = Admin_GetHighestLevel(gAlarDB, "", bIP);
	} else {
		level = Admin_GetHighestLevel(gAlarDB, pname, bIP);
	}
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot ban level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(!IPonly) {
		format(msg, sizeof(msg), "Name: \"%s\" successfully banned", pname);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
	}
	format(msg, sizeof(msg), "IP: \"%s\" successfully banned", bIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	if(breason[0]) {
		format(msg, sizeof(msg), "You have been banned from the server (%s)", breason);
		SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
	} else {
		SendClientMessage(pid, COLOUR_WARNING, "You have been banned from the server");
	}

	new datetime[MAX_TIMESTAMP],
		shortreason[MAX_REASON];
	datetime = ReturnTimeStamp();

	if(gServerData[E_BAN_MSG][0] != '\0') {
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			SendBanMsg(pid, gServerData[E_BAN_MSG], datetime, "");
		} else {
			SendBanMsg(pid, gServerData[E_BAN_MSG], datetime, gPlayerData[playerid][E_NAME]);
		}
	}
	if(breason[0]) {
		strtruncate(shortreason, breason);
		format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", pname, pid, ReturnPlayerName(playerid), shortreason);
	} else {
		format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s", pname, pid, ReturnPlayerName(playerid));
	}

	AddLogString(msg);
	LogAction(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", pname, pid, shortreason);
		} else {
			format(msg, sizeof(msg), "%s(%i) has been banned from the server", pname, pid);
		}
	}
	AddJoinString(pid, COLOUR_BAN, msg);
	Kick(pid);

	new hits = 1;
	if(gServerData[E_KICK_ALL_IPS]) {
		LoopPlayers(i) {
			if(i != pid && !IsPlayerNPC(i) && IPcompare(bIP, ReturnPlayerIP(i))) {
				if(breason[0]) {
					format(msg, sizeof(msg), "You are banned from the server (%s)", breason);
					SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
				} else {
					SendClientMessage(i, COLOUR_WARNING, "You are banned from the server");
				}
				if(gServerData[E_BAN_MSG][0] != '\0') {
					if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
						SendBanMsg(i, gServerData[E_BAN_MSG], datetime, "");
					} else {
						SendBanMsg(i, gServerData[E_BAN_MSG], datetime, gPlayerData[playerid][E_NAME]);
					}
				}
				if(shortreason[0]) {
					format(msg, sizeof(msg), "%s(%i) is banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
				} else {
					format(msg, sizeof(msg), "%s(%i) is banned from the server", ReturnPlayerName(i), i);
				}
				LogAction(msg);
				AddLogString(msg);
				AddJoinString(i, COLOUR_BAN, msg);
				Kick(i);
				hits++;
			}
		}
	} else {
		msg = "Players with the same IP:";
		LoopPlayers(i) {
			if(i != pid && IPcompare(bIP, ReturnPlayerIP(i))) {
				format(msg, sizeof(msg), "%s %s(%i)", ReturnPlayerName(i), i);
			}
		}
		if(msg[25]) {
			SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
		}
	}

	if(IPonly) {
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			Bans_BanIP(gAlarDB, bIP, breason, "", ReturnPlayerIP(playerid), hits);
		} else {
			Bans_BanIP(gAlarDB, bIP, breason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
		}
	} else {
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			Bans_BanPlayer(gAlarDB, pname, bIP, breason, "", ReturnPlayerIP(playerid), hits);
		} else {
			Bans_BanPlayer(gAlarDB, pname, bIP, breason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
		}
	}
	return 1;
}

acmd:abancheck(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_BANCHECK_LEVEL)) return 1;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /abancheck [player name] or [IP]");
		SendMessage(playerid, COLOUR_HELP, "Checks if a player name or IP is currently banned or suspened");
		return 1;
	}

	new bool:isanip,
		check[MAX_IP + MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			new pname[MAX_PLAYER_NAME];
			strmid(pname, params, 1, len-1);
			if(isValidName(pname)) {
				strcpy(check, pname);
			} else {
				SendMessage(playerid, COLOUR_WARNING, "Invalid name");
				return 1;
			}
		} else {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /abancheck [player name] or [IP]");
			return 1;
		}
	} else {
		isanip = IPisvalid(params, false);
		if(isnull(params) || (!isanip && !isValidName(params))) {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /abancheck [player name] or [IP]");
			return 1;
		}
		strcpy(check, params);
	}

	new BanData[E_ALAR_BAN],
		msg[MAX_INPUT * 2];
	if(isanip) {
		if(Bans_GetBanInfo(gAlarDB, "", check, BanData)) {
			if(BanData[E_BAN_REASON][0]) {
				if(BanData[E_BAN_ADMIN][0]) {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is banned [%s %s] (%s)", BanData[E_BAN_IP], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
					} else {
						format(msg, sizeof(msg), "The ip %s is banned [%s] (%s)", BanData[E_BAN_IP], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
					}
				} else {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is banned [%s] (%s)", BanData[E_BAN_IP], BanData[E_BAN_DATETIME], BanData[E_BAN_REASON]);
					} else {
						format(msg, sizeof(msg), "The ip %s is banned (%s)", BanData[E_BAN_IP], BanData[E_BAN_REASON]);
					}
				}
			} else {
				if(BanData[E_BAN_ADMIN][0]) {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is banned [%s %s]", BanData[E_BAN_IP], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
					} else {
						format(msg, sizeof(msg), "The ip %s is banned [%s]", BanData[E_BAN_IP], BanData[E_BAN_ADMIN]);
					}
				} else {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is banned [%s]", BanData[E_BAN_IP], BanData[E_BAN_DATETIME]);
					} else {
						format(msg, sizeof(msg), "The ip %s is banned", BanData[E_BAN_IP]);
					}
				}
			}
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	} else {
		if(Bans_GetBanInfo(gAlarDB, check, "", BanData)) {
			if(BanData[E_BAN_REASON][0]) {
				if(BanData[E_BAN_ADMIN][0]) {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is banned [%s %s] (%s)", BanData[E_BAN_NAME], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
					} else {
						format(msg, sizeof(msg), "The name %s is banned [%s] (%s)", BanData[E_BAN_NAME], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
					}
				} else {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is banned [%s] (%s)", BanData[E_BAN_NAME], BanData[E_BAN_DATETIME], BanData[E_BAN_REASON]);
					} else {
						format(msg, sizeof(msg), "The name %s is banned (%s)", BanData[E_BAN_NAME], BanData[E_BAN_REASON]);
					}
				}
			} else {
				if(BanData[E_BAN_ADMIN][0]) {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is banned [%s %s]", BanData[E_BAN_NAME], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
					} else {
						format(msg, sizeof(msg), "The name %s is banned [%s]", BanData[E_BAN_NAME], BanData[E_BAN_ADMIN]);
					}
				} else {
					if(BanData[E_BAN_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is banned [%s]", BanData[E_BAN_NAME], BanData[E_BAN_DATETIME]);
					} else {
						format(msg, sizeof(msg), "The name %s is banned", BanData[E_BAN_NAME]);
					}
				}
			}
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
		if(Suspensions_GetSuspendInfo(gAlarDB, "", check, SuspendData)) {
			if(SuspendData[E_SUSPEND_REASON][0]) {
				if(SuspendData[E_SUSPEND_ADMIN][0]) {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is suspended until %s [%s %s] (%s)", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "The ip %s is suspended until %s [%s] (%s)", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
					}
				} else {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is suspended until %s [%s] (%s)", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "The ip %s is suspended until %s (%s)", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
					}
				}
			} else {
				if(SuspendData[E_SUSPEND_ADMIN][0]) {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is suspended until %s [%s %s]", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
					} else {
						format(msg, sizeof(msg), "The ip %s is suspended until %s [%s]", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN]);
					}
				} else {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The ip %s is suspended until %s [%s]", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME]);
					} else {
						format(msg, sizeof(msg), "The ip %s is suspended until %s", SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_EXPIRES]);
					}
				}
			}
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	} else {
		if(Suspensions_GetSuspendInfo(gAlarDB, check, "", SuspendData)) {
			if(SuspendData[E_SUSPEND_REASON][0]) {
				if(SuspendData[E_SUSPEND_ADMIN][0]) {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is suspended until %s [%s %s] (%s)", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "The name %s is suspended until %s [%s] (%s)", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
					}
				} else {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is suspended until %s [%s] (%s)", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "The name %s is suspended until %s (%s)", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
					}
				}
			} else {
				if(SuspendData[E_SUSPEND_ADMIN][0]) {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is suspended until %s [%s %s]", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
					} else {
						format(msg, sizeof(msg), "The name %s is suspended until %s [%s]", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_ADMIN]);
					}
				} else {
					if(SuspendData[E_SUSPEND_DATETIME][0]) {
						format(msg, sizeof(msg), "The name %s is suspended until %s [%s]", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME]);
					} else {
						format(msg, sizeof(msg), "The name %s is suspended until %s", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES]);
					}
				}
			}
			if(playerid == INVALID_PLAYER_ID) {
				print(msg);
			} else {
				SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
	}
	format(msg, sizeof(msg), "The %s %s is not banned", isanip ? ("ip") : ("name"), check);
	SendMessage(playerid, COLOUR_ADMIN, msg);
	return 1;
}

acmd:abanip(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abanip [IP] or [player] (reason)");
		if(cmdchk(playerid, E_RANGEBAN_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "Bans an IP or a player by their IP, an IP range such as 127.0.*.* may also be used");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Bans an IP or a player by their IP");
		}
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abanip [IP] or [player] (reason)");
		return 1;
	}

	new breason[MAX_INPUT] = DEFAULT_REASON,
	#if MAX_IP > MAX_PLAYER_NAME
		bIP[MAX_IP];
	#else
		bIP[MAX_PLAYER_NAME];
	#endif
	strscan(params, "sz", bIP, sizeof(bIP), breason, sizeof(breason));

	if(!IPisvalid(bIP, cmdchk(playerid, E_RANGEBAN_LEVEL))) {
		new pid = FindPlayer(bIP);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid IP");
			return 1;
		} else {
			GetPlayerIp(pid, bIP, sizeof(bIP));
		}
	}

	new msg[MAX_INPUT * 2];
	if(!Bans_IsIPNotBanned(gAlarDB, bIP)) {
		format(msg, sizeof(msg), "IP: \"%s\" is already banned", bIP);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new level = Admin_GetHighestLevel(gAlarDB, "", bIP);
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot ban level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	format(msg, sizeof(msg), "IP: %s successfully banned", bIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	new shortreason[MAX_REASON];
	if(breason[0]) {
		strtruncate(shortreason, breason);
		format(msg, sizeof(msg), "%s has banned the ip %s (%s)", ReturnPlayerName(playerid), bIP, shortreason);
	} else {
		format(msg, sizeof(msg), "%s has banned the ip %s", ReturnPlayerName(playerid), bIP);
	}

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "The ip %s has been banned (%s)", bIP, shortreason);
		} else {
			format(msg, sizeof(msg), "The ip %s has been banned", bIP);
		}
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new datetime[MAX_TIMESTAMP];
	datetime = ReturnTimeStamp();

	new hits;
	LoopPlayers(i) {
		if(!IsPlayerNPC(i) && IPcompare(bIP, ReturnPlayerIP(i))) {
			if(breason[0]) {
				format(msg, sizeof(msg), "You have been banned from the server (%s)", breason);
				SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
			} else {
				SendClientMessage(i, COLOUR_WARNING, "You have been banned from the server");
			}
			if(gServerData[E_RANGEBAN_MSG][0] != '\0' && strfind(bIP, "*") != -1) {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
					SendBanMsg(i, gServerData[E_RANGEBAN_MSG], datetime, "");
				} else {
					SendBanMsg(i, gServerData[E_RANGEBAN_MSG], datetime, gPlayerData[playerid][E_NAME]);
				}
			} else if(gServerData[E_BAN_MSG][0] != '\0') {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
					SendBanMsg(i, gServerData[E_BAN_MSG], datetime, "");
				} else {
					SendBanMsg(i, gServerData[E_BAN_MSG], datetime, gPlayerData[playerid][E_NAME]);
				}
			}
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s", ReturnPlayerName(i), i, ReturnPlayerName(playerid));
			}

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				if(shortreason[0]) {
					format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
				} else {
					format(msg, sizeof(msg), "%s(%i) has been banned from the server", ReturnPlayerName(i), i);
				}
			}

			AddJoinString(i, COLOUR_BAN, msg);
			Kick(i);
			hits++;
		}
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
		Bans_BanIP(gAlarDB, bIP, breason, "", ReturnPlayerIP(playerid), hits);
	} else {
		Bans_BanIP(gAlarDB, bIP, breason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
	}
	return 1;
}

acmd:abanname(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abanname [player name] (reason)");
		if(cmdchk(playerid, E_WILDBAN_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "Bans a name from the server, the wildcards * and ? may be used");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Bans a name from the server");
		}
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abanname [player name] (reason)");
		return 1;
	}

	new breason[MAX_INPUT] = DEFAULT_REASON, bname[MAX_PLAYER_NAME + 2];
	strscan(params, "sz", bname, sizeof(bname), breason, sizeof(breason));

	if(bname[0] == '"') {
		new len = strlen(bname);
		if(len > 2 && bname[len-1] == '"') {
			strmid(bname, bname, 1, len-1);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	}

	if(!isValidName(bname, cmdchk(playerid, E_WILDBAN_LEVEL))) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(!Bans_IsNameNotBanned(gAlarDB, bname)) {
		format(msg, sizeof(msg), "Name: \"%s\" is already banned", bname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new level = Admin_GetHighestLevel(gAlarDB, bname);
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot ban level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	format(msg, sizeof(msg), "Name: \"%s\" successfully banned", bname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);


	new shortreason[MAX_REASON];
	if(breason[0]) {
		strtruncate(shortreason, breason);
		format(msg, sizeof(msg), "%s has banned the name %s (%s)", ReturnPlayerName(playerid), bname, shortreason);
	} else {
		format(msg, sizeof(msg), "%s has banned the name %s", ReturnPlayerName(playerid), bname);
	}

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "The name %s has been banned (%s)", bname, shortreason);
		} else {
			format(msg, sizeof(msg), "The name %s has been banned", bname);
		}
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new datetime[MAX_TIMESTAMP];
	datetime = ReturnTimeStamp();

	new hits;
	LoopPlayers(i) {
		if(!IsPlayerNPC(i) && strwild(bname, ReturnPlayerName(i), true)) {
			if(breason[0]) {
				format(msg, sizeof(msg), "You have been banned from the server (%s)", breason);
				SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
			} else {
				SendClientMessage(i, COLOUR_WARNING, "You have been banned from the server");
			}
			if(gServerData[E_BAN_MSG][0] != '\0') {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
					SendBanMsg(i, gServerData[E_BAN_MSG], datetime, "");
				} else {
					SendBanMsg(i, gServerData[E_BAN_MSG], datetime, gPlayerData[playerid][E_NAME]);
				}
			}

			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s(%i) has been banned from the server by %s", ReturnPlayerName(i), i, ReturnPlayerName(playerid));
			}
			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				if(shortreason[0]) {
					format(msg, sizeof(msg), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
				} else {
					format(msg, sizeof(msg), "%s(%i) has been banned from the server", ReturnPlayerName(i), i);
				}
			}
			AddJoinString(i, COLOUR_BAN, msg);
			Kick(i);
			hits++;
		}
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
		Bans_BanName(gAlarDB, bname, breason, "", ReturnPlayerIP(playerid), hits);
	} else {
		Bans_BanName(gAlarDB, bname, breason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
	}
	return 1;
}

acmd:abring(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_BRING_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abring [player] (target)");
		SendClientMessage(playerid, COLOUR_HELP, "Brings a player to your current location");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /abring [player] (target)");
		return 1;
	}

	new pid, tname[MAX_PLAYER_NAME];
	strscan(params, "pz", pid, tname, sizeof(tname));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot bring NPCs");
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

				if(gSpawnMethod <= SPAWN_DEFAULT) {
					StoreSpawnData(pid);
				}
				CallRemoteFunction("OnAdminSpectate", "iii", pid, FREE_SPECTATE_ID, INVALID_PLAYER_ID);

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
				if(gSpawnMethod <= SPAWN_DEFAULT) StoreSpawnData(pid);
				CallRemoteFunction("OnAdminSpectate", "iii", pid, gPlayerData[pid][E_SPECID], INVALID_PLAYER_ID);
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

		if(IsPlayerInAnyVehicle(tid)) {
			new vid = GetPlayerVehicleID(tid);
			if((gPlayerData[pid][E_SEATID] = GetVehicleFreeSeat(vid)) != INVALID_SEAT_ID) {
				gPlayerData[pid][E_VEHICLEID] = vid;
			} else {
				new trailerid = GetVehicleTrailer(vid);
				for(; trailerid && trailerid != vid && (gPlayerData[pid][E_SEATID] = GetVehicleFreeSeat(trailerid, false)) == INVALID_SEAT_ID;) {
					trailerid = GetVehicleTrailer(trailerid);
				}
				if(gPlayerData[pid][E_SEATID] != INVALID_SEAT_ID) {
					gPlayerData[pid][E_VEHICLEID] = vid;
				} else {
					gPlayerData[pid][E_VEHICLEID] = INVALID_VEHICLE_ID;
				}
			}
		}

		SpawnUsingPosition(pid);
	} else {
		new interiorid = GetPlayerInterior(tid),
			worldid = GetPlayerVirtualWorld(tid);

		SetPlayerInterior(pid, interiorid);
		SetPlayerVirtualWorld(pid, worldid);
		alar_OnPlayerWorldChange(pid, worldid);

		if(IsPlayerInAnyVehicle(pid)) {
			new vid = GetPlayerVehicleID(pid);
			SetVehiclePos(GetPlayerVehicleID(pid), X + 4*floatcos(ang + 90.0, degrees), Y + 4*floatsin(ang + 90.0, degrees), Z);
			LinkVehicleToInterior(vid, GetPlayerInterior(tid));
			SetVehicleVirtualWorld(vid, GetPlayerVirtualWorld(tid));

			LoopPlayers(i) {
				if(i != pid && i != tid && IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == vid) {
					SetPlayerInterior(i, interiorid);
					SetPlayerVirtualWorld(i, worldid);
					alar_OnPlayerWorldChange(i, worldid);
				}
			}
		} else if(GetPlayerSpecialAction(pid) == SPECIAL_ACTION_USEJETPACK) {
			SetPlayerPos(pid, X + 4*floatcos(ang + 90.0, degrees), Y + 4*floatsin(ang + 90.0, degrees), Z + 1.0);
			SetPlayerSpecialAction(pid, SPECIAL_ACTION_USEJETPACK);
		} else {
			new bool:wasseated = false;
			if(IsPlayerInAnyVehicle(tid)) {
				new vid = GetPlayerVehicleID(tid),
					seatid = GetVehicleFreeSeat(vid);
				if(seatid != INVALID_SEAT_ID) {
					wasseated = true;
					PutPlayerInVehicle(pid, vid, seatid);
				} else {
					new trailerid = GetVehicleTrailer(vid);
					for(; trailerid && trailerid != vid && (seatid = GetVehicleFreeSeat(trailerid, false)) == INVALID_SEAT_ID;) {
						trailerid = GetVehicleTrailer(trailerid);
					}
					if(seatid != INVALID_SEAT_ID) {
						wasseated = true;
						PutPlayerInVehicle(pid, trailerid, seatid);
					}
				}
			}
			if(!wasseated) {
				SetPlayerPos(pid, X + 4*floatcos(ang + 90.0, degrees), Y + 4*floatsin(ang + 90.0, degrees), Z + 1.0);
			}
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

acmd:acarcolour(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CARCOLOUR_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /acarcolour [player] [colour1] (colour2)");
		SendClientMessage(playerid, COLOUR_HELP, "Changes a player's vehicle colour, either gta colour codes -1 - 127 or colour names can be used");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /acarcolour [player] [colour1] (colour2)");
		return 1;
	}

	new pid, colour1[MAX_CAR_COLOUR_NAME], colour2[MAX_CAR_COLOUR_NAME];
	strscan(params, "psz", pid, colour1, sizeof(colour1), colour2, sizeof(colour2));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!IsPlayerInAnyVehicle(pid)) {
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not in a vehicle");
		} else {
			format(msg, sizeof(msg), "%s is not in a vehicle", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		}
		return 1;
	}

	new colourid1 = GetCarColour(colour1),
		colourid2;
	if(colourid1 == UNKNOWN_CAR_COLOUR) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid colour");
		return 1;
	}
	if(colour2[0] == '\0') {
		colourid2 = colourid1;
	} else {
		colourid2 = GetCarColour(colour2);
		if(colourid2 == UNKNOWN_CAR_COLOUR) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid colour");
			return 1;
		}
	}

	new vid = GetPlayerVehicleID(pid);
	ChangeVehicleColor(vid, colourid1, colourid2);

	if(pid == playerid) {
		format(msg, sizeof(msg), "You have changed the colour of your %s", ReturnPlayerVehicleName(playerid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has changed the colour of their %s", ReturnPlayerName(playerid), ReturnPlayerVehicleName(playerid));
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The colour of your %s has been changed", ReturnPlayerVehicleName(pid));
		} else {
			format(msg, sizeof(msg), "The colour of your %s has been changed by %s", ReturnPlayerVehicleName(pid), ReturnPlayerName(playerid));
		}
		SendClientMessage(pid, COLOUR_PLAYER, msg);
		format(msg, sizeof(msg), "The colour of %s's %s has been changed", ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has changed the colour of %s's %s", ReturnPlayerName(playerid), ReturnPlayerName(pid), ReturnPlayerVehicleName(pid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:achangemode(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CHANGEMODE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /achangemode [gamemode]");
		SendClientMessage(playerid, COLOUR_HELP, "Changes the server gamemode, only modes listed with alistmodes can be changed to");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /achangemode [gamemode]");
		return 1;
	}

	new string[128];
	if(Gamemodes_Exists(gAlarDB, params, string)) {
		new msg[MAX_STRING];
		format(msg, sizeof(msg), "%s is changing the gamemode to %s", ReturnPlayerName(playerid), string);
		LogAction(msg);
		AddLogString(msg);

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The gamemode has been changed to %s", string);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);

		format(msg, sizeof(msg), "changemode %s", string);
		SendRconCommand(msg);
	} else {
		format(string, sizeof(string), "Gamemode \"%s\" not found", params);
		SendClientMessage(playerid, COLOUR_WARNING, string);
	}
	return 1;
}

acmd:achangepw(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /achangepw [new password]");
		if(cmdchk(playerid, E_CHANGEPW_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "Changes your alar password");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Changes your alar password, this command is only available if your password has not been changed yet");
		}
		return 1;
	}

	new logininfo[E_LOGINDATA];
	if(!Admin_GetData(gAlarDB, gPlayerData[playerid][E_NAME], logininfo) || (!Hash_Compare(gServerData[E_DEFAULT_PW], logininfo[E_LOGIN_HASH]) && LevelCheck(playerid, E_CHANGEPW_LEVEL))) return 1;

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /achangepw [new password]");
		return 1;
	}

	new msg[MAX_INPUT];
	if(strlen(params) < gServerData[E_MIN_PW_LENGTH]) {
		format(msg, sizeof(msg), "Your password must be at least %i characters long", gServerData[E_MIN_PW_LENGTH]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	Admin_Password(gAlarDB, gPlayerData[playerid][E_NAME], Hash_String(params));

	format(msg, sizeof(msg), "%s has changed their password", ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	format(msg, sizeof(msg), "Your password has been set to \"%s\"", params);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	return 1;
}

acmd:aclearbans(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CLEARBANS_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aclearbans");
		SendClientMessage(playerid, COLOUR_HELP, "Removes all bans, suspensions and whilelisted names");
		return 1;
	}

	Bans_Clear(gAlarDB);
	Suspensions_Clear(gAlarDB);
	Whitelist_Clear(gAlarDB);

	LoopPlayers(i) {
		if(gPlayerData[i][E_WHITELISTED]) {
			gPlayerData[i][E_WHITELISTED] = false;
		}
	}

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

acmd:aclearstatus(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CLEARSTATUS_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aclearstatus");
		SendClientMessage(playerid, COLOUR_HELP, "Removes all freezes/jails and mutes");
		return 1;
	}

	Player_ClearAllStatus(gAlarDB);

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

			if(gPlayerData[i][E_HEALTH]) {
				switch(gSpawnMethod) {
					case SPAWN_ALAR_SPAWN: {
						if(gSpawnSaves & INFOTYPE_POSITION) {
							SetSpawnInfo(i, GetPlayerTeam(i), GetPlayerSkin(i), gPlayerData[i][E_POSX], gPlayerData[i][E_POSY], gPlayerData[i][E_POSZ], gPlayerData[i][E_ROT], 0, 0, 0, 0, 0, 0);
						}
						gPlayerData[i][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
						SpawnPlayer(i);
					}
					case SPAWN_ALAR_TIMER: {
						SpawnPlayer(i);
						SetTimerEx("alar_setspawndata", 500, 0, "i", i);	// stops stupid gamemode spawn stuff
					}
					default: {
						gPlayerData[i][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_POSITION | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
						SpawnPlayer(i);
					}
				}
			} else {
				SetPlayerVirtualWorld(i, 0);
				alar_OnPlayerWorldChange(i, 0);
				SetPlayerInterior(i, 0);
				SpawnPlayer(i);
			}

			if(gPlayerData[i][E_UNJAIL]) {
				KillTimer(gPlayerData[i][E_UNJAIL]);
				gPlayerData[i][E_UNJAIL] = 0;
			}
			gPlayerData[i][E_JAIL_TIME] = 0;
		}

		if(oldstatus != gPlayerData[i][E_STATE]) {
			CallRemoteFunction("OnAdminStateChange", "iii", i, gPlayerData[i][E_STATE], oldstatus);
			LoopPlayers(j) {
				if(gPlayerData[j][E_SPECTATING] && gPlayerData[j][E_SPECID] == i) {
					SpecHUDUpdate(j);
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

acmd:aclr(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CLR_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aclr");
		SendClientMessage(playerid, COLOUR_HELP, "Clears the chatbox of all messages");
		return 1;
	}

	for(new i; i < 100; i++) SendClientMessageToAll(COLOUR_MSG, " ");
	#if CHATHISTORY_SIZE > 0
		alar_ClearHistory();
	#endif

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

acmd:acommands(const playerid, const params[], const bool:help)
{
	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /acommands");
		SendMessage(playerid, COLOUR_HELP, "Displays a list of all available commands");
		return 1;
	}

	if(playerid == INVALID_PLAYER_ID) {
		new msg[200] = "Admin Commands:";
		if(gServerData[E_STORE_ALIASES]) {
			if(gServerData[E_RCON_LEVEL] >= gServerData[E_ALIAS_LEVEL] && gServerData[E_ALIAS_LEVEL] > 0) {
				strcat(msg, "\n  aalias");
			}
			if(gServerData[E_RCON_LEVEL] >= gServerData[E_ALIAS2_LEVEL] && gServerData[E_ALIAS2_LEVEL] > 0) {
				strcat(msg, "\n  aalias2");
			}
			if(gServerData[E_RCON_LEVEL] >= gServerData[E_ALIAS3_LEVEL] && gServerData[E_ALIAS3_LEVEL] > 0) {
				strcat(msg, "\n  aalias3");
			}
		}
		strcat(msg, "\n  abancheck\n  adesynced\n  admins\n  afrozen");
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_INFO_LEVEL] && gServerData[E_INFO_LEVEL] > 0) {
			strcat(msg, "\n  ainfo");
		}
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_IP_LEVEL] && gServerData[E_IP_LEVEL] > 0) {
			strcat(msg, "\n  aip");
		}
/*		if(gServerData[E_RCON_LEVEL] >= gServerData[E_IPUPDATE_LEVEL] && gServerData[E_IPUPDATE_LEVEL] > 0) {
			strcat(msg, "\n  aipupdate");
		}
*/		strcat(msg, "\n  ajailed\n  amuted\n  apaused");
		if(gServerData[E_ADMIN_PMS]) {
			strcat(msg, "\n  apm");
		}
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_RELOADDATA_LEVEL] && gServerData[E_RELOADDATA_LEVEL] > 0) {
			strcat(msg, "\n  areloaddata");
		}
		if(gServerData[E_RCON_LEVEL] >= gServerData[E_SETPING_LEVEL] && gServerData[E_SETPING_LEVEL] > 0) {
			strcat(msg, "\n  asetping");
		}
		strcat(msg, "\n  asinfo\n  aspectating\n  awarnings");

		print(msg);
	} else if(gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
		new msg[1000] = "ADMIN COMMANDS:";

		if(gServerData[E_STORE_ALIASES]) {
			if(cmdchk(playerid, E_ALIAS_LEVEL)) strcat(msg, " /aalias");
			if(cmdchk(playerid, E_ALIAS2_LEVEL)) strcat(msg, " /aalias2");
			if(cmdchk(playerid, E_ALIAS3_LEVEL)) strcat(msg, " /aalias3");
		}
		if(cmdchk(playerid, E_ARMOUR_LEVEL)) strcat(msg, " /aarmour");
		if(cmdchk(playerid, E_ARMOURALL_LEVEL)) strcat(msg, " /aarmourall");
		if(gServerData[E_AUTO_LOGIN] && gPlayerData[playerid][E_ADMINLEVEL] > 0) strcat(msg, " /aautologin");
		if(cmdchk(playerid, E_BAN_LEVEL)) strcat(msg, " /aban");
		if(cmdchk(playerid, E_BANCHECK_LEVEL)) strcat(msg, " /abancheck");
		if(cmdchk(playerid, E_BAN_LEVEL)) strcat(msg, " /abanip /abanname");
		if(cmdchk(playerid, E_BRING_LEVEL)) strcat(msg, " /abring");
		if(cmdchk(playerid, E_CARCOLOUR_LEVEL)) strcat(msg, " /acarcolour");
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
		#if CHATHISTORY_SIZE > 0
			if(gServerData[E_CHAT_HISTORY] > 0) strcat(msg, " /ahistory");
		#endif
		if(cmdchk(playerid, E_IMITATE_LEVEL)) strcat(msg, " /aimitate");
		if(cmdchk(playerid, E_IMMUNE_LEVEL)) strcat(msg, " /aimmune");
		if(cmdchk(playerid, E_INFO_LEVEL)) strcat(msg, " /ainfo");
		if(cmdchk(playerid, E_INTERIOR_LEVEL)) strcat(msg, " /ainterior");
		if(cmdchk(playerid, E_IP_LEVEL)) strcat(msg, " /aip");
		if(cmdchk(playerid, E_IPUPDATE_LEVEL)) strcat(msg, " /aipupdate");
		if(cmdchk(playerid, E_JAIL_LEVEL)) strcat(msg, " /ajail");
		#if JOINMSG_LINES > 0
			strcat(msg, " /ajailed /ajoins");
		#else
			strcat(msg, " /ajailed");
		#endif
		if(cmdchk(playerid, E_KICK_LEVEL)) strcat(msg, " /akick");
		if(cmdchk(playerid, E_CHANGEMODE_LEVEL)) strcat(msg, " /alistmodes");
		#if LOG_LINES > 0 && LOG_PAGES > 0
			if(cmdchk(playerid, E_LOG_LEVEL)) strcat(msg, " /alog");
		#endif
		if(gPlayerData[playerid][E_ADMINLEVEL] > 0) strcat(msg, " /alogout");
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
		strcat(msg, " /aspectating");
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
		if(cmdchk(playerid, E_UNWARN_LEVEL)) strcat(msg, " /aunwarn");
		if(cmdchk(playerid, E_UNWHITELIST_LEVEL)) strcat(msg, " /aunwhitelist");
		if(cmdchk(playerid, E_WARN_LEVEL)) strcat(msg, " /awarn");
		strcat(msg, " /awarnings");
		if(cmdchk(playerid, E_WEATHER_LEVEL)) strcat(msg, " /aweather");
		if(cmdchk(playerid, E_WHITELIST_LEVEL)) strcat(msg, " /awhitelist");
		if(cmdchk(playerid, E_WORLD_LEVEL)) strcat(msg, " /aworld");
		SendWrappedMessageToPlayer(playerid, COLOUR_HELP, msg);
	} else {
		new string[MAX_INPUT] = "ADMIN COMMANDS: /adesynced /admins /afrozen /ahelp";
		#if CHATHISTORY_SIZE > 0
			if(gServerData[E_CHAT_HISTORY] == 1) strcat(string, " /ahistory");
		#endif
		strcat(string, " /ajailed");
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

acmd:acreate(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CREATE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /acreate [vehicle name] or [model ID]");
		SendClientMessage(playerid, COLOUR_HELP, "Creates a vehicle");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /acreate [vehicle name] or [model ID]");
		return 1;
	}
	if(!IsSpawned(playerid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must be spawned to use this command");
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
		modid = ReturnVehicleModel(params);
		if(modid == INVALID_MODEL_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid vehicle name");
			return 1;
		}
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

acmd:adestroy(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_DESTROY_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adestroy [vehicle ID] or \"all\" or \"visible\" or \"current\"");
		SendClientMessage(playerid, COLOUR_HELP, "Destroys vehicles created with acreate");
		return 1;
	}

	new string[512];
	if(isnull(params)) {
		if(Bit_GetStringFromArray(gCreatedVehicles, string)) {
			strins(string, "Vehicle IDs: ", 0);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
			#if VEHICLE_TAGS_TIME > 0 && VEHICLE_TAGS_NUMBER > 0
				ShowVehicleTags(playerid);
			#endif
		} else {
			SendClientMessage(playerid, COLOUR_ADMIN, "There are no admin created vehicles");
		}
		return 1;
	}

	new vid;
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

		format(string, sizeof(string), "You have destroyed all %i created vehicles", num);
		SendClientMessage(playerid, COLOUR_ADMIN, string);

		format(string, sizeof(string), "%s has destroyed all %i created vehicles", ReturnPlayerName(playerid), num);
		LogAction(string);
		AddLogString(string);
		return 1;
	} else if(strcmp("current", params, true) == 0) {
		if(!IsPlayerInAnyVehicle(playerid)) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not in a vehicle");
			return 1;
		}
		vid = GetPlayerVehicleID(playerid);
		if(!Bit_Get(gCreatedVehicles, vid)) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not in an admin created vehicle");
			return 1;
		}

	} else if(strcmp("visible", params, true) == 0) {
		new num,
			Bit:destroyed[Bit_Bits(MAX_VEHICLES)];
		Bit_Loop(gCreatedVehicles, i) {
			if(IsVehicleStreamedIn(i, playerid)) {
				Bit_Let(destroyed, i);
				num++;
				vid = i;
			}
		}
		if(num == 0) {
			SendClientMessage(playerid, COLOUR_WARNING, "There are no visible admin vehicles");
			return 1;
		} else if(num > 0) {
			Bit_Loop(destroyed, i) {
				DestroyVehicle(i);
				Bit_Vet(gCreatedVehicles, i);
			}
			Bit_GetStringFromArray(destroyed, string);
			strins(string, "You have destroyed vehicles ", 0);
			SendClientMessage(playerid, COLOUR_ADMIN, string);

			format(string, sizeof(string), "%s has destroyed %i created vehicles", ReturnPlayerName(playerid), num);
			LogAction(string);
			AddLogString(string);
			return 1;
		}
	} else {
		if(!isNumeric(params)) {
			new num,
				Bit:destroyed[Bit_Bits(MAX_VEHICLES)];
			if(Bit_GetArrayFromString(destroyed, params)) {
				Bit_Loop(destroyed, i) {
					if(!Bit_Get(gCreatedVehicles, i)) {
						Bit_Vet(destroyed, i);
					} else {
						num++;
						vid = i;
					}
				}
				if(num == 0) {
					SendClientMessage(playerid, COLOUR_WARNING, "There are no admin vehicles in the list");
					return 1;
				} else if(num > 1) {
					Bit_Loop(destroyed, i) {
						DestroyVehicle(i);
						Bit_Vet(gCreatedVehicles, i);
					}
					Bit_GetStringFromArray(destroyed, string);
					strins(string, "You have destroyed vehicles ", 0);
					SendClientMessage(playerid, COLOUR_ADMIN, string);

					format(string, sizeof(string), "%s has destroyed %i created vehicles", ReturnPlayerName(playerid), num);
					LogAction(string);
					AddLogString(string);
					return 1;
				}
			} else {

				SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adestroy [vehicle IDs] or \"all\" or \"visible\" or \"current\"");
				return 1;
			}
		}

		vid = strval(params);
		if(vid <= 0 || vid > MAX_VEHICLES) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid Vehicle ID");
			return 1;
		}

		if(!Bit_Get(gCreatedVehicles, vid)) {
			format(string, sizeof(string), "Vehicle ID %i is not an admin created vehicle", vid);
			SendClientMessage(playerid, COLOUR_WARNING, string);
			return 1;
		}
	}

	Bit_Vet(gCreatedVehicles, vid);
	new model = GetVehicleModel(vid);
	DestroyVehicle(vid);

	format(string, sizeof(string), "You have destroyed vehicle %i(%s)", vid, ReturnVehicleName(model));
	SendClientMessage(playerid, COLOUR_ADMIN, string);

	format(string, sizeof(string), "%s has destroyed vehicle %i(%s)", ReturnPlayerName(playerid), vid, ReturnVehicleName(model));
	LogAction(string);
	AddLogString(string);
	return 1;
}

acmd:adesync(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_DESYNC_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adesync [player] (seconds) (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Desyncs a player to other people");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adesync [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], pid, reason[MAX_INPUT];
	strscan(params, "pzz", pid, timestr, sizeof(timestr), reason, sizeof(reason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot desync yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot desync NPCs");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot desync level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new desynctime = strval(timestr);
	if(0 < desynctime < MIN_ACTION_TIME) desynctime = MIN_ACTION_TIME;

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
			reason = DEFAULT_REASON;
		}
	} else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	} else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	} else {
		reason = DEFAULT_REASON;
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_DESYNCED;

	new shortreason[MAX_REASON];
	if(reason[0]) {
		strtruncate(shortreason, reason);
	}

	if(desynctime > 0) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been desynced by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), desynctime, shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been desynced by %s for %i seconds", ReturnPlayerName(pid), ReturnPlayerName(playerid), desynctime);
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been desynced for %i seconds (%s)", ReturnPlayerName(pid), desynctime, shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been desynced for %i seconds", ReturnPlayerName(pid), desynctime);
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been desynced for %i seconds (%s)", desynctime, reason);
			} else {
				format(msg, sizeof(msg), "You have been desynced for %i seconds by %s (%s)", desynctime, ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "%s has been desynced for %i seconds (%s)", ReturnPlayerName(pid), desynctime, reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been desynced for %i seconds", desynctime);
			} else {
				format(msg, sizeof(msg), "You have been desynced for %i seconds by %s", desynctime, ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "%s has been desynced for %i seconds", ReturnPlayerName(pid), desynctime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(gPlayerData[pid][E_UNDESYNC]) KillTimer(gPlayerData[pid][E_UNDESYNC]);
		gPlayerData[pid][E_UNDESYNC] = SetTimerEx("alar_undesync", desynctime * 1000, 0, "i", pid);
		gPlayerData[pid][E_DESYNC_TIME] = gettime() + desynctime;
	} else {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been desynced by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been desynced by %s" , ReturnPlayerName(pid), ReturnPlayerName(playerid));
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been desynced (%s)", ReturnPlayerName(pid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been desynced", ReturnPlayerName(pid));
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been desynced (%s)", reason);
			} else {
				format(msg, sizeof(msg), "You have been desynced by %s (%s)", ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "%s has been desynced (%s)", ReturnPlayerName(pid), reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				msg = "You have been desynced";
			} else {
				format(msg, sizeof(msg), "You have been desynced by %s", ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "%s has been desynced", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
	}

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_DESYNCED);
	return 1;
}

acmd:adesynced(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adesynced");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a list of currently desynced players");
		return 1;
	}

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
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

acmd:admins(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /admins");
		if(gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
			SendWrappedMessageToPlayer(playerid, COLOUR_HELP, "Displays a list of online admins, ® appears for RCON admins, ° shows the admin is hidden from non-admins, and © appears for admins who are under logged in under a different name");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Displays a list of online admins, ® appears for RCON admins");
		}
		return 1;
	}

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
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

acmd:adrop(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_DROP_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adrop [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Drops a player, potentially removing them from their vehicle");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /adrop [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot drop NPCs");
		return 1;
	}

	if(pid != playerid && max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
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

acmd:aeject(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_EJECT_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aeject [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Ejects a player from their vehicle");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aeject [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot eject NPCs");
		return 1;
	}

	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (pid != playerid)) {
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

acmd:aejectall(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_EJECTALL_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aejectall");
		SendClientMessage(playerid, COLOUR_HELP, "Ejects all players from their vehicle");
		return 1;
	}

	new msg[MAX_INPUT], num_ejected, num_notejected;

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		msg = "You have been ejected";
	} else {
		format(msg, sizeof(msg), "%s has ejected you", ReturnPlayerName(playerid));
	}

	LoopPlayers(i) {
		if(!IsPlayerNPC(i)) {
			if(max(gPlayerData[i][E_ADMINLEVEL], gPlayerData[i][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (i != playerid)) {
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

acmd:aexplode(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_EXPLODE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aexplode [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Creates an explosion where a player is");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aexplode [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(pid != playerid && max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
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
		SendClientMessage(playerid, COLOUR_WARNING, "You have exploded yourself");
		format(msg, sizeof(msg), "%s has exploded themself", ReturnPlayerName(playerid));
	} else {
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			SendClientMessage(pid, COLOUR_WARNING, "You have been exploded");
		} else {
			format(msg, sizeof(msg), "You have been exploded by %s", ReturnPlayerName(playerid));
			SendClientMessage(pid, COLOUR_WARNING, msg);
		}
		format(msg, sizeof(msg), "%s has been exploded", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "%s has exploded %s", ReturnPlayerName(playerid), ReturnPlayerName(pid));
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:aflip(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_FLIP_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aflip (player)");
		SendClientMessage(playerid, COLOUR_HELP, "Flips a player's vehicle, or your own if no player is specified");
		return 1;
	}

	new pid = INVALID_PLAYER_ID;
	if(isnull(params)) {
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
		Float:val;

	GetVehicleZAngle(vid, val);
	SetVehicleZAngle(vid, val);

	GetVehicleHealth(vid, val);
	if(val < 300) SetVehicleHealth(vid, 300.0);

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

acmd:afreeze(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_FREEZE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /afreeze [player] (seconds) (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Freezes a player, permanently if no time is specified");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /afreeze [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], pid, reason[MAX_INPUT];
	strscan(params, "pzz", pid, timestr, sizeof(timestr), reason, sizeof(reason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot freeze yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot freeze NPCs");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot freeze level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new freezetime = strval(timestr);
	if(0 < freezetime < MIN_ACTION_TIME) freezetime = MIN_ACTION_TIME;

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_FROZEN) {
		if(gPlayerData[pid][E_FREEZE_TIME] == 0) {
			if(freezetime <= 0) {
				format(msg, sizeof(msg), "%s is already frozen", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			} else {
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_FROZEN, freezetime);
				}
				gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", freezetime * 1000, 0, "i", pid);
				gPlayerData[pid][E_FREEZE_TIME] = gettime() + freezetime;

				format(msg, sizeof(msg), "%s's freeze time has been set to %i seconds", ReturnPlayerName(pid), freezetime);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's freeze time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), freezetime);
			}
		} else {
			if(freezetime <= 0) {
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_FROZEN);
				}
				if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);
				gPlayerData[pid][E_FREEZE_TIME] = 0;

				format(msg, sizeof(msg), "%s's freeze has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's freeze permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + freezetime - gPlayerData[pid][E_FREEZE_TIME];

				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_FROZEN, freezetime);
				}
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
			reason = DEFAULT_REASON;
		}
	} else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	} else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	} else {
		reason = DEFAULT_REASON;
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_FROZEN;
	TogglePlayerControllable(pid, false);
	SetCameraBehindPlayer(pid);

	new shortreason[MAX_REASON];
	if(reason[0]) {
		strtruncate(shortreason, reason);
	}

	if(freezetime > 0) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been frozen by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), freezetime, shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been frozen by %s for %i seconds", ReturnPlayerName(pid), ReturnPlayerName(playerid), freezetime);
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been frozen for %i seconds (%s)", ReturnPlayerName(pid), freezetime, shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been frozen for %i seconds", ReturnPlayerName(pid), freezetime);
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been frozen for %i seconds (%s)", freezetime, reason);
			} else {
				format(msg, sizeof(msg), "You have been frozen for %i seconds by %s (%s)", freezetime, ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have frozen %s for %i seconds (%s)", ReturnPlayerName(pid), freezetime, reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been frozen for %i seconds", freezetime);
			} else {
				format(msg, sizeof(msg), "You have been frozen for %i seconds by %s", freezetime, ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have frozen %s for %i seconds", ReturnPlayerName(pid), freezetime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_FROZEN, freezetime);
		}
		gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", freezetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_FREEZE_TIME] = gettime() + freezetime;
	} else {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been frozen by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been frozen by %s" , ReturnPlayerName(pid), ReturnPlayerName(playerid));
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been frozen (%s)", ReturnPlayerName(pid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been frozen", ReturnPlayerName(pid));
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been frozen (%s)", reason);
			} else {
				format(msg, sizeof(msg), "You have been frozen by %s (%s)", ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have frozen %s (%s)", ReturnPlayerName(pid), reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				msg = "You have been frozen";
			} else {
				format(msg, sizeof(msg), "You have been frozen by %s", ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have frozen %s", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_FROZEN);
		}
	}
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_FROZEN);
	return 1;
}

acmd:afrozen(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /afrozen");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a list of all currently frozen players");
		return 1;
	}

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
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

acmd:agiveallcash(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_GIVEALLCASH_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveallcash [amount]");
		SendClientMessage(playerid, COLOUR_HELP, "Gives all players the specified amount of money");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveallcash [amount]");
		return 1;
	}

	new amt = strval(params);
	if(!isInteger(params) || amt > 10000000 || amt < -10000000 || amt == 0) {
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

acmd:agiveallweapon(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_GIVEALLWEAPON_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveallweapon [weapon name] (ammo)");
		SendClientMessage(playerid, COLOUR_HELP, "Gives all players the specified weapon");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveallweapon [weapon name] (ammo)");
		return 1;
	}

	new weap[MAX_INPUT], tmp[MAX_INPUT];
	strscan(params, "sz", weap, sizeof(weap), tmp, sizeof(tmp));

	new wid = ReturnWeaponID(weap);
	if(wid == INVALID_WEAPON_ID) {
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

acmd:agivecash(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_GIVECASH_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agivecash [player] [amount]");
		SendClientMessage(playerid, COLOUR_HELP, "Gives a player the specified amount of money");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agivecash [player] [amount]");
		return 1;
	}

	new pid, tmp[MAX_INPUT];
	strscan(params, "ps", pid, tmp, sizeof(tmp));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	new amt = strval(tmp);
	if(!isInteger(tmp) || amt > 10000000 || amt < -10000000) {
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

acmd:agiveweapon(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_GIVEWEAPON_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveweapon [player] [weapon name] (ammo)");
		SendClientMessage(playerid, COLOUR_HELP, "Gives a player the specified weapon");
		return 1;
	}
	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agiveweapon [player] [weapon name] (ammo)");
		return 1;
	}

	new pid, weap[MAX_INPUT], tmp[MAX_INPUT];
	strscan(params, "psz", pid, weap, sizeof(weap), tmp, sizeof(tmp));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new wid = ReturnWeaponID(weap);
	if(wid == INVALID_WEAPON_ID) {
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

acmd:agoto(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_GOTO_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agoto [player] (x offset) (y offset) (z offset)");
		SendClientMessage(playerid, COLOUR_HELP, "Teleports you to a player with an optional offset");
		return 1;
	}
	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agoto [player] (x offset) (y offset) (z offset)");
		return 1;
	}
	if(!IsSpawned(playerid) && !gPlayerData[playerid][E_SPECTATING]) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must be spawned to use this command");
		return 1;
	}

	new pid,
		bool:nooffset,
		Float:xoff = FLOAT_NAN,
		Float:yoff = FLOAT_NAN,// = -1.0,
		Float:zoff = FLOAT_NAN;// = 3.0;

	strscan(params, "pfff", pid, xoff, yoff, zoff);

	if(xoff != xoff) {
		nooffset = true;
		xoff = 0.0;
		yoff = -1.0;
		zoff = 3.0;
	} else if(yoff != yoff) {
		yoff = -1.0;
		zoff = 3.0;
	} else if(zoff != zoff) {
		zoff = 3.0;
	}

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new msg[MAX_INPUT];
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

				if(gSpawnMethod <= SPAWN_DEFAULT) {
					StoreSpawnData(playerid);
				}
				CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, INVALID_PLAYER_ID);

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

				if(gSpawnMethod <= SPAWN_DEFAULT) {
					StoreSpawnData(playerid);
				}
				CallRemoteFunction("OnAdminSpectate", "iii", playerid, gPlayerData[playerid][E_SPECID], INVALID_PLAYER_ID);

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
			new vid = GetPlayerVehicleID(playerid),
				worldid = GetPlayerVirtualWorld(pid),
				interiorid = GetPlayerInterior(pid);

			LinkVehicleToInterior(vid, interiorid);
			SetVehicleVirtualWorld(vid, GetPlayerVirtualWorld(pid));
			SetVehiclePos(vid, X + xoff, Y + yoff, Z + zoff);

			LoopPlayers(i) {
				if(i != pid && IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == vid) {
					SetPlayerInterior(i, interiorid);
					SetPlayerVirtualWorld(i, worldid);
					alar_OnPlayerWorldChange(i, worldid);
				}
			}
		} else if(gPlayerData[playerid][E_SPECTATING]) {
				gPlayerData[playerid][E_POSX] = X + xoff;
				gPlayerData[playerid][E_POSY] = Y + yoff;
				gPlayerData[playerid][E_POSZ] = Z + zoff;
				gPlayerData[playerid][E_INTERIOR] = GetPlayerInterior(pid);
				gPlayerData[playerid][E_WORLD] = GetPlayerVirtualWorld(pid);

				if(IsPlayerInAnyVehicle(pid) && nooffset) {
					new vid = GetPlayerVehicleID(pid);
					if((gPlayerData[playerid][E_SEATID] = GetVehicleFreeSeat(vid)) != INVALID_SEAT_ID) {
						gPlayerData[playerid][E_VEHICLEID] = vid;
					} else {
						new trailerid = GetVehicleTrailer(vid);
						for(; trailerid && trailerid != vid && (gPlayerData[playerid][E_SEATID] = GetVehicleFreeSeat(trailerid, false)) == INVALID_SEAT_ID;) {
							trailerid = GetVehicleTrailer(trailerid);
						}
						if(gPlayerData[playerid][E_SEATID] != INVALID_SEAT_ID) {
							gPlayerData[playerid][E_VEHICLEID] = trailerid;
						} else {
							gPlayerData[playerid][E_VEHICLEID] = INVALID_VEHICLE_ID;
						}
					}
				}

				SpawnUsingPosition(playerid);
		} else if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK) {
			SetPlayerPos(playerid, X + xoff, Y + yoff, Z + zoff);
			SetPlayerInterior(playerid, GetPlayerInterior(pid));
			new worldid = GetPlayerVirtualWorld(pid);
			SetPlayerVirtualWorld(playerid, worldid);
			alar_OnPlayerWorldChange(playerid, worldid);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);
		} else {
			SetPlayerInterior(playerid, GetPlayerInterior(pid));
			new worldid = GetPlayerVirtualWorld(pid);
			if(GetPlayerVirtualWorld(playerid) != worldid) {
				SetPlayerVirtualWorld(playerid, worldid);
				alar_OnPlayerWorldChange(playerid, worldid);
			}
			new bool:wasseated = false;
			if(IsPlayerInAnyVehicle(pid) && nooffset) {
				new vid = GetPlayerVehicleID(pid),
					seatid = GetVehicleFreeSeat(vid);
				if(seatid != INVALID_SEAT_ID) {
					wasseated = true;
					PutPlayerInVehicle(playerid, vid, seatid);
				} else {
					new trailerid = GetVehicleTrailer(vid);
					for(; trailerid && trailerid != vid && (seatid = GetVehicleFreeSeat(trailerid, false)) == INVALID_SEAT_ID;) {
						trailerid = GetVehicleTrailer(trailerid);
					}
					if(seatid != INVALID_SEAT_ID) {
						wasseated = true;
						PutPlayerInVehicle(playerid, trailerid, seatid);
					}
				}
			}
			if(!wasseated) {
				SetPlayerPos(playerid, X + xoff, Y + yoff, Z + zoff);
			}
		}

		format(msg, sizeof(msg), "%s has teleported to %s", ReturnPlayerName(playerid), playerid == pid ? ("themself") : ReturnPlayerName(pid));
		LogAction(msg);
		AddLogString(msg);
	}

	format(msg, sizeof(msg), "You have teleported to %s", playerid == pid ? ("yourself") : ReturnPlayerName(pid));
	SendClientMessage(playerid, COLOUR_ADMIN, msg);
	return 1;
}

acmd:agravity(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_GRAVITY_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /agravity [value] or \"default\"");
		SendClientMessage(playerid, COLOUR_HELP, "Changes the server gravity, the default value is 0.008");
		return 1;
	}
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

acmd:aheal(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_HEAL_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aheal [player] (health)");
		SendClientMessage(playerid, COLOUR_HELP, "Heals a player, can also be used to set a player's health");
		return 1;
	}
	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aheal [player] (health)");
		return 1;
	}
	new pid, Float:health;
	strscan(params, "pf", pid, health);
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
			format(msg, sizeof(msg), "You have set your health to %0.0f", health);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has set their health to %0.0f", ReturnPlayerName(playerid), health);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "Your health has been set to %0.0f", health);
			} else {
				format(msg, sizeof(msg), "%s has set your health to %0.0f", ReturnPlayerName(playerid), health);
			}
			SendClientMessage(pid, COLOUR_PLAYER, msg);

			format(msg, sizeof(msg), "You have set %s's health to %0.0f", ReturnPlayerName(pid), health);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has set %s's health to %0.0f", ReturnPlayerName(playerid), ReturnPlayerName(pid), health);
		}
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:ahealall(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_HEALALL_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ahealall (health)");
		SendClientMessage(playerid, COLOUR_HELP, "Heals all players, can also be used to set the health of all players");
		return 1;
	}

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

acmd:ahelp(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ahelp (command)");
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) {
			SendClientMessage(playerid, COLOUR_HELP, "Displays help about a command");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Displays help about a command, or useful information if no command is specified");
		}
		return 1;
	}

	if(!isnull(params)) {
		if(!ACMD_FunctionHelp(playerid, params)) {
			SendClientMessage(playerid, COLOUR_WARNING, "Unknown command, for a complete command list type /acommands");
		}
		return 1;
	} else if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ahelp (command)");
		return 1;
	}

	SendClientMessage(playerid, COLOUR_HELP, "For a complete command list type /acommands");
	SendClientMessage(playerid, COLOUR_HELP, "A playerid or part of a player's name may be used for commands with [player] as a parameter");
	if(gChatPrefix[0][E_CHAT_LEN]) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "Admin chat can be used by typing \"%s\"", gChatPrefix[0][E_CHAT_STRING]);
		for(new i = 1; i < sizeof(gChatPrefix) && gChatPrefix[i][E_CHAT_STRING][0]; i++) {
			if(i == sizeof(gChatPrefix) - 1 || gChatPrefix[i+1][E_CHAT_STRING] == '\0') {
				format(msg, sizeof(msg), "%s or \"%s\"", msg, gChatPrefix[i][E_CHAT_STRING]);
				break;
			} else {
				format(msg, sizeof(msg), "%s, \"%s\"", msg, gChatPrefix[i][E_CHAT_STRING]);
			}
		}
		strcat(msg, " infront of your text");
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

acmd:ahide(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ahide");
		SendClientMessage(playerid, COLOUR_HELP, "Hides your admin status from non-admin players");
		return 1;
	}

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are already hidden from the admin list");
		return 1;
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		Admin_Hidden(gAlarDB, gPlayerData[playerid][E_NAME], true);
	}

	gPlayerData[playerid][E_STATE] |= ADMIN_STATE_HIDDEN;
	SendClientMessage(playerid, COLOUR_ADMIN, "You have been hidden from the admin list");
	CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] & ~ADMIN_STATE_HIDDEN);
	return 1;
}

#if CHATHISTORY_SIZE > 0
	acmd:ahistory(const playerid, const params[], const bool:help)
	{
		if((gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) ? gServerData[E_CHAT_HISTORY] != 1 : gServerData[E_CHAT_HISTORY] <= 0) return 0;

		if(help) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ahistory");
			SendClientMessage(playerid, COLOUR_HELP, "Shows the previous chat messages");
			return 1;
		}

		SendClientMessage(playerid, COLOUR_ADMIN, "/--------------        Chat History        --------------\\");
		new originalcolour,
			colour,
			pname[MAX_PLAYER_NAME],
			originalname[MAX_PLAYER_NAME];

		GetPlayerName(playerid, pname, sizeof(pname));
		GetPlayerName(playerid, originalname, sizeof(originalname));
		originalcolour = colour = GetPlayerColor(playerid);

		for(new i; i < sizeof(gChatHistory); i++) {
			if(gChatHistory[i][E_HISTORY_MESSAGE][0] != '\0') {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0 ? ~gChatHistory[i][E_HISTORY_FLAGS] & HISTORY_ADMIN_ONLY : ~gChatHistory[i][E_HISTORY_FLAGS] & HISTORY_PLAYER_ONLY) {
					if(gChatHistory[i][E_HISTORY_NAME][0] != '\0') {
						if(strcmp(gChatHistory[i][E_HISTORY_NAME], pname)) {
							new bool:skip = false;
							LoopPlayers(j) {
								if(strcmp(ReturnPlayerName(j), gChatHistory[i][E_HISTORY_NAME], true) == 0) {
									new othercolour = GetPlayerColor(j);
									if(othercolour != gChatHistory[i][E_HISTORY_COLOUR]) {
										SetPlayerColor(j, gChatHistory[i][E_HISTORY_COLOUR]);
										SendPlayerMessageToPlayer(playerid, j, gChatHistory[i][E_HISTORY_MESSAGE]);
										SetPlayerColor(j, othercolour);
									} else {
										SendPlayerMessageToPlayer(playerid, j, gChatHistory[i][E_HISTORY_MESSAGE]);
									}
									skip = true;
									break;
								}
							}
							if(skip) continue;
							strcpy(pname, gChatHistory[i][E_HISTORY_NAME]);
							SetPlayerName(playerid, pname);
						}
						if(colour != gChatHistory[i][E_HISTORY_COLOUR]) {
							SetPlayerColor(playerid, (colour = gChatHistory[i][E_HISTORY_COLOUR]));
						}
						SendPlayerMessageToPlayer(playerid, playerid, gChatHistory[i][E_HISTORY_MESSAGE]);
					} else {
						if(gChatHistory[i][E_HISTORY_FLAGS] & HISTORY_WRAPPED) {
							SendWrappedMessageToPlayer(playerid, gChatHistory[i][E_HISTORY_COLOUR], gChatHistory[i][E_HISTORY_MESSAGE]);
						} else {
							SendClientMessage(playerid, gChatHistory[i][E_HISTORY_COLOUR], gChatHistory[i][E_HISTORY_MESSAGE]);
						}
					}
				}
			}
		}

		if(strcmp(pname, originalname)) {
			SetPlayerName(playerid, originalname);
		}

		if(originalcolour != colour) {
			SetPlayerColor(playerid, originalcolour);
		}

		SendClientMessage(playerid, COLOUR_ADMIN, "\\--------------        Chat History        --------------/");
		return 1;
	}
#endif

acmd:aimitate(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_IMITATE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aimitate [player] [message]");
		SendClientMessage(playerid, COLOUR_HELP, "Imitates a player's chat message");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aimitate [player] [message]");
		return 1;
	}

	new pid, msg[MAX_INPUT];
	strscan(params, "ps", pid, msg, sizeof(msg));
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot imitate yourself");
		return 1;
	}

	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot imitate level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(msg[0] == '\0') {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid message");
		return 1;
	}

	SendPlayerMessageToAll(pid, msg);
	#if CHATHISTORY_SIZE > 0
		alar_AddMessageToHistory(ReturnPlayerName(pid), GetPlayerColor(pid), msg, 0);
	#endif

	format(msg, sizeof(msg), "%s has imitated %s (%s)", ReturnPlayerName(playerid), ReturnPlayerName(pid), msg);
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:aimmune(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_IMMUNE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aimmune [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Toggles a player's immunity from the ping kicker");
		return 1;
	}

	if(isnull(params)) {
		new msg[512] = "Immune players:";
		LoopPlayers(i) {
			if(gPlayerData[i][E_IMMUNE]) {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(i));
			}
		}
		if(msg[15]) {
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			SendClientMessage(playerid, COLOUR_ADMIN, "None of the connected players are immune from the ping kicker");
		}
		return 1;
	}

	new pid = INVALID_PLAYER_ID,
		pname[MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			strmid(pname, params, 1, len-1);
		}
		if(!isValidName(pname)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
		LoopPlayers(i) {
			if(strcmp(pname, ReturnPlayerName(i), true) == 0) {
				GetPlayerName(i, pname, sizeof(pname));
				pid = i;
				break;
			}
		}
	} else if((pid = FindPlayer(params)) != INVALID_PLAYER_ID) {
		GetPlayerName(pid, pname, sizeof(pname));
	} else {
		if(!isValidName(params)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
		strcpy(pname, params);
	}

	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "NPCs cannot be made immune");
		return 1;
	}

	new msg[MAX_INPUT],
		bool:toggle;
	if(pid == INVALID_PLAYER_ID) {
		if((toggle = !Player_GetImmune(gAlarDB, pname))) {
			format(msg, sizeof(msg), "You have made the name %s immune from the ping kicker", pname);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has made the name %s immune from the ping kicker", ReturnPlayerName(playerid), pname);
		} else {
			format(msg, sizeof(msg), "You have removed the name %s's immunity from the ping kicker", pname);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			format(msg, sizeof(msg), "%s has removed the name %s's immunity from the ping kicker", ReturnPlayerName(playerid), pname);
		}
	} else {
		if(gPlayerData[pid][E_IMMUNE]) {
			if(pid != playerid) {
				format(msg, sizeof(msg), "%s's immunity from the ping kicker has been removed", pname);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);

				if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
					SendClientMessage(pid, COLOUR_WARNING, "Your immunity from the ping kicker has been removed");
				} else {
					format(msg, sizeof(msg), "%s has removed your immunity from the pingkicker", ReturnPlayerName(playerid));
					SendClientMessage(pid, COLOUR_WARNING, msg);
				}

				format(msg, sizeof(msg), "%s has removed %s's immunity from the ping kicker", ReturnPlayerName(playerid), pname);
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You have removed your immunity from the pingkicker");
				format(msg, sizeof(msg), "%s has removed their immunity from the ping kicker", ReturnPlayerName(playerid));
			}
		} else {
			if(pid != playerid) {
				format(msg, sizeof(msg), "%s has been made immune from the ping kicker", pname);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);

				if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
					SendClientMessage(pid, COLOUR_PLAYER, "You have been made immune from the ping kicker");
				} else {
					format(msg, sizeof(msg), "%s has made you immune from the pingkicker", ReturnPlayerName(playerid));
					SendClientMessage(pid, COLOUR_PLAYER, msg);
				}

				format(msg, sizeof(msg), "%s has made %s immune from the ping kicker", ReturnPlayerName(playerid), pname);
			} else {
				SendClientMessage(playerid, COLOUR_ADMIN, "You have made yourself immune from the pingkicker");
				format(msg, sizeof(msg), "%s has made themself immune from the ping kicker", ReturnPlayerName(playerid));
			}
		}
		gPlayerData[pid][E_IMMUNE] = toggle = !gPlayerData[pid][E_IMMUNE];
	}

	Player_SetImmune(gAlarDB, pname, toggle);

	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:ainfo(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && (playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;
	if(LevelCheck(playerid, E_INFO_LEVEL)) return 1;

	if(help) {
		if(playerid == INVALID_PLAYER_ID) {
			print("USAGE: /ainfo (player)");
			print("Displays information about a player, or all players if no player is specified");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ainfo [player]");
			SendClientMessage(playerid, COLOUR_HELP, "Displays information about a player");
		}
		return 1;
	}

	if(isnull(params)) {
		if(playerid == INVALID_PLAYER_ID) {
			print("ID   Name              Level  Ping  IP               Location");
			LoopPlayers(i) {
				printf("%3i  %16s  %5i %5i  %15s  %s", i, ReturnPlayerName(i), gPlayerData[i][E_ADMINLEVEL], GetAvePing(i), ReturnPlayerIP(i), ReturnCuntName(gPlayerData[i][E_COUNTRY]));
			}
			return 1;
		} else if(!gPlayerData[playerid][E_SPECTATING] || gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ainfo [player]");
			return 1;
		}
	}

	new pid = isnull(params) ? gPlayerData[playerid][E_SPECID] : FindPlayer(params);
	if(pid == INVALID_PLAYER_ID) {
		SendMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new Float:phel, Float:parm, msg[MAX_INPUT];
	if(IsPlayerNPC(pid)) {
		format(msg, sizeof(msg), "Name: %s [NPC]  ID: %i  Level: %i", ReturnPlayerName(pid), pid, gPlayerData[pid][E_ADMINLEVEL]);
	} else {
		format(msg, sizeof(msg), "Name: %s  ID: %i  Level: %i", ReturnPlayerName(pid), pid, gPlayerData[pid][E_ADMINLEVEL]);
	}
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

	format(msg, sizeof(msg), "    IP: %s  Location: %s  Ping: %i  Ave Ping: %i", ReturnPlayerIP(pid), ReturnCuntName(gPlayerData[pid][E_COUNTRY]), GetPlayerPing(pid), GetAvePing(pid));
	if(gAlarDB) {
		new warnings = Warnings_GetWarningCount(gAlarDB, ReturnPlayerName(pid), gServerData[E_WARN_TIMEOUT]);
		if(warnings) {
			format(msg, sizeof(msg), "%s  Warnings: %i", msg, warnings);
		}
	}
	if(gPlayerData[pid][E_IMMUNE]) {
		if(gPlayerData[pid][E_WHITELISTED]) strcat(msg, " (immune+whitelisted)");
		else strcat(msg, " (immune)");
	} else if(gPlayerData[pid][E_WHITELISTED]) {
		strcat(msg, " (whitelisted)");
	}
	SendMessage(playerid, COLOUR_ADMIN, msg);

	GetPlayerHealth(pid, phel);
	GetPlayerArmour(pid, parm);

	new time = (GetTickCount() - gPlayerData[pid][E_LAST_UPDATE]) / 1000;
	if(!IsSpawned(pid) || time <= 1) {
		format(msg, sizeof(msg), "    Health: %0.1f  Armour: %0.1f  Cash: %i", phel, parm, GetPlayerMoney(pid));
	} else if(time > 3600) {
		new hours = time / 3600,
			minutes = (time - hours * 3600) / 60;
		format(msg, sizeof(msg), "    Health: %0.1f  Armour: %0.1f  Cash: %i  Paused: %i hrs %i min %i sec", phel, parm, GetPlayerMoney(pid), hours, minutes, time - hours * 3600 - minutes * 60);
	} else if(time > 60) {
		new minutes = time / 60;
		format(msg, sizeof(msg), "    Health: %0.1f  Armour: %0.1f  Cash: %i  Paused: %i min %i sec", phel, parm, GetPlayerMoney(pid), minutes, time - minutes * 60);
	} else {
		format(msg, sizeof(msg), "    Health: %0.1f  Armour: %0.1f  Cash: %i  Paused: %i sec", phel, parm, GetPlayerMoney(pid), time);
	}
	SendMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "    Position: %s  Interior: %i  World: %i", ReturnPlayerZone(pid), GetPlayerInterior(pid), GetPlayerVirtualWorld(pid));
	SendMessage(playerid, COLOUR_ADMIN, msg);

	if(IsPlayerInAnyVehicle(pid)) {
		GetVehicleHealth(GetPlayerVehicleID(pid), phel);
		format(msg, sizeof(msg), "    Vehicle: %s  Seat: %i  VehicleID: %i  Vehicle Health: %i", ReturnPlayerVehicleName(pid), GetPlayerVehicleSeat(pid), GetPlayerVehicleID(pid), floatround(phel));
		SendMessage(playerid, COLOUR_ADMIN, msg);
	} else if(GetPlayerSpecialAction(pid) == SPECIAL_ACTION_USEJETPACK) {
		SendMessage(playerid, COLOUR_ADMIN, "    Vehicle: Jetpack");
	} else if(GetPlayerState(pid) == PLAYER_STATE_SPECTATING) {
		if(gPlayerData[pid][E_SPECTATING]) {
			if(gPlayerData[pid][E_SPECID] != INVALID_PLAYER_ID) {
				format(msg, sizeof(msg), "    Admin Spectating: %s(%i)", ReturnPlayerName(gPlayerData[pid][E_SPECID]), gPlayerData[pid][E_SPECID]);
				SendMessage(playerid, COLOUR_ADMIN, msg);
			} else {
				SendMessage(playerid, COLOUR_ADMIN, "    Admin Spectating: Unknown");
			}
		} else {
			if(gPlayerData[pid][E_SPECID] != INVALID_PLAYER_ID) {
				format(msg, sizeof(msg), "    Spectating: %s(%i)", ReturnPlayerName(gPlayerData[pid][E_SPECID]), gPlayerData[pid][E_SPECID]);
				SendMessage(playerid, COLOUR_ADMIN, msg);
			} else {
				SendMessage(playerid, COLOUR_ADMIN, "    Spectating: Unknown");
			}
		}
	} else if(GetPlayerSurfingVehicleID(pid) != INVALID_VEHICLE_ID) {
		new vid = GetPlayerSurfingVehicleID(pid);
		format(msg, sizeof(msg), "    Surfing: %s(%i)", ReturnVehicleName(GetVehicleModel(vid)), vid);
		SendMessage(playerid, COLOUR_ADMIN, msg);
	}

	new pweapon,
		pammo,
		string[512] = "    Weapons:";
	for(new i; i < 13; i++) {
		GetPlayerWeaponData(pid, i, pweapon, pammo);
		if(pweapon != 0) {
			if(pammo == -1) format(string, sizeof(string), "%s %s", string, ReturnWeaponName(pweapon));
			else format(string, sizeof(string), "%s %s(%i)", string, ReturnWeaponName(pweapon), pammo);
		}
	}
	if(string[12]) {
		if(playerid == INVALID_PLAYER_ID) {
			print(string);
		} else {
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string, .prefix="        ");
		}
	}
	return 1;
}

acmd:ainterior(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_INTERIOR_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ainterior [player] [interior]");
		SendClientMessage(playerid, COLOUR_HELP, "Sets a player's interior");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ainterior [player] [interior]");
		return 1;
	}

	new pid, interior;
	strscan(params, "pi", pid, interior);

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	new msg[MAX_INPUT];
	if(!IsSpawned(pid) && !(gPlayerData[pid][E_SPECTATING] && gPlayerData[pid][E_SPECID] == INVALID_PLAYER_ID)) {
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

	if(IsPlayerInAnyVehicle(pid)) {
		new vid = GetPlayerVehicleID(pid);
		LinkVehicleToInterior(vid, interior);
		LoopPlayers(i) {
			if(IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == vid) {
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

acmd:aip(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_IP_LEVEL)) return 1;

	if(help) {
		if(gServerData[E_STORE_ALIASES]) {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aip [player] or [player name]");
			SendMessage(playerid, COLOUR_HELP, "Displays the current and previous IPs of a player");
		} else {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aip [player]");
			SendMessage(playerid, COLOUR_HELP, "Displays the current IP and country of a player");
		}
		return 1;
	}

	if(isnull(params) && (!gPlayerData[playerid][E_SPECTATING] || gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID)) {
		if(gServerData[E_STORE_ALIASES]) {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aip [player] or [player name]");
		} else {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aip [player]");
		}
		return 1;
	}

	new pid;
	if(gServerData[E_STORE_ALIASES]) {
		new string[512],
			pname[MAX_PLAYER_NAME];
		if((pid = isnull(params) ? gPlayerData[playerid][E_SPECID] : FindPlayer(params)) == INVALID_PLAYER_ID) {
			if(params[0] == '"') {
				new len = strlen(params);
				if(len > 2 && params[len-1] == '"') {
					strmid(pname, params, 1, len-1);
				} else {
					SendMessage(playerid, COLOUR_HELP, "USAGE: /aip [player] or [player name]");
					return 1;
				}
			} else {
				strcpy(pname, params);
			}
			if(!isValidName(pname)) {
				SendMessage(playerid, COLOUR_WARNING, "Invalid name");
				return 1;
			}
			format(string, sizeof(string), "%s's IPs: ", params);
			if(Alias_GetIPsFromName(gAlarDB, params, string)) {
				if(playerid == INVALID_PLAYER_ID) {
					print(string);
				} else {
					SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
				}
				return 1;
			}
			SendMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}

		new pIP[MAX_IP];
		GetPlayerIp(pid, pIP, sizeof(pIP));
		GetPlayerName(pid, pname, sizeof(pname));
		format(string, sizeof(string), "Player: %s  IP: %s  Location: %s", pname, pIP, ReturnCuntName(gPlayerData[pid][E_COUNTRY]));
		SendMessage(playerid, COLOUR_ADMIN, string);

		string = "Old IPs: ";
		new number = Alias_GetIPsFromName(gAlarDB, pname, string);
		if(number) {
			if(number - strdelword(string, pIP) > 0) {
				if(playerid == INVALID_PLAYER_ID) {
					print(string);
				} else {
					SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
				}
			}
		}
	} else if((pid = FindPlayer(params)) == INVALID_PLAYER_ID) {
		SendMessage(playerid, COLOUR_WARNING, "Player not found");
	} else {
		new string[MAX_INPUT];
		format(string, sizeof(string), "Player: %s  IP: %s  Location: %s", ReturnPlayerName(pid), ReturnPlayerIP(pid), ReturnCuntName(gPlayerData[pid][E_COUNTRY]));
		SendMessage(playerid, COLOUR_ADMIN, string);
	}

	return 1;
}

acmd:aipupdate(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_IPUPDATE_LEVEL)) return 1;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /aipupdate");
		SendMessage(playerid, COLOUR_HELP, "Updates the IP to Country files from a CVS file (may cause server lag)");
		return 1;
	}

	db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));

	new counter = CreateCuntDefinitions(gAlarDB);

	if(counter) {
		new msg[MAX_INPUT];
		format(msg, sizeof(msg), "You have updated the IP definitions (%i entries written)", counter);
		SendMessage(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has updated the IP definitions (%i entries written)", ReturnPlayerName(playerid), counter);
		LogAction(msg);

		format(msg, sizeof(msg), "%s has updated the IP definitions", ReturnPlayerName(playerid));
		AddLogString(msg);

		LoopPlayers(i) {
			strcpy(gPlayerData[i][E_COUNTRY], ReturnCuntCode(gAlarDB, ReturnPlayerIP(i)), sizeof(SIZE_E_PLAYERDATA[E_COUNTRY]));
		}
	} else {
		SendMessage(playerid, COLOUR_WARNING, "IP definitions update failed");
	}
	db_free_result(db_query(gAlarDB, "END TRANSACTION"));
	return 1;
}

acmd:ajail(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_JAIL_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ajail [player] (seconds) (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Jails a player, permanently if no time is specified");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ajail [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], pid, reason[MAX_INPUT];
	strscan(params, "pzz", pid, timestr, sizeof(timestr), reason, sizeof(reason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot jail yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot jail NPCs");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot jail level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new jailtime = strval(timestr);
	if(0 < jailtime < MIN_ACTION_TIME) jailtime = MIN_ACTION_TIME;

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_JAILED) {
		if(gPlayerData[pid][E_JAIL_TIME] == 0) {
			if(jailtime <= 0) {
				format(msg, sizeof(msg), "%s is already jailed", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			} else {
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_JAILED, jailtime);
				}
				gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", jailtime * 1000, 0, "i", pid);
				gPlayerData[pid][E_JAIL_TIME] = gettime() + jailtime;

				format(msg, sizeof(msg), "%s's jail time has been set to %i seconds", ReturnPlayerName(pid), jailtime);
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has set %s's jail time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), jailtime);
			}
		} else {
			if(jailtime <= 0) {
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_JAILED);
				}
				if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
				gPlayerData[pid][E_JAIL_TIME] = 0;

				format(msg, sizeof(msg), "%s's jail has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's jail permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + jailtime - gPlayerData[pid][E_JAIL_TIME];

				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_JAILED, jailtime);
				}
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
			reason = DEFAULT_REASON;
		}
	} else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	} else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	} else {
		reason = DEFAULT_REASON;
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
		//if(gPlayerData[pid][E_SPECTATING]) ClearSpawnData(pid);
		TogglePlayerSpectating(pid, false);
		//SetTimerEx("alar_jailplayer", 500, 0, "i", pid);
	}

	new shortreason[MAX_REASON];
	if(reason[0]) {
		strtruncate(shortreason, reason);
	}

	if(jailtime > 0) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been jailed by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), jailtime, shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been jailed by %s for %i seconds", ReturnPlayerName(pid), ReturnPlayerName(playerid), jailtime);
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been jailed for %i seconds (%s)", ReturnPlayerName(pid), jailtime, shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been jailed for %i seconds", ReturnPlayerName(pid), jailtime);
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been jailed for %i seconds (%s)", jailtime, reason);
			} else {
				format(msg, sizeof(msg), "You have been jailed for %i seconds by %s (%s)", jailtime, ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have jailed %s for %i seconds (%s)", ReturnPlayerName(pid), jailtime, reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been jailed for %i seconds", jailtime);
			} else {
				format(msg, sizeof(msg), "You have been jailed for %i seconds by %s", jailtime, ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have jailed %s for %i seconds", ReturnPlayerName(pid), jailtime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_JAILED, jailtime);
		}
		if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
		gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", jailtime * 1000, 0, "i", pid);
		gPlayerData[pid][E_JAIL_TIME] = gettime() + jailtime;
	} else {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been jailed by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been jailed by %s" , ReturnPlayerName(pid), ReturnPlayerName(playerid));
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been jailed (%s)", ReturnPlayerName(pid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been jailed", ReturnPlayerName(pid));
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been jailed (%s)", reason);
			} else {
				format(msg, sizeof(msg), "You have been jailed by %s (%s)", ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have jailed %s (%s)", ReturnPlayerName(pid), reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				msg = "You have been jailed";
			} else {
				format(msg, sizeof(msg), "You have been jailed by %s", ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have jailed %s", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_JAILED);
		}
	}

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_JAILED);
	return 1;
}

acmd:ajailed(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ajailed");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a list of all currently jailed players");
		return 1;
	}

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
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

#if JOINMSG_LINES > 0
	acmd:ajoins(const playerid, const params[], const bool:help)
	{
		if(!gServerData[E_JOIN_MSGS] || IsPlayerNPC(playerid)) return 0;

		if(help) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ajoins");
			SendClientMessage(playerid, COLOUR_HELP, "Toggles the join messages between textdraws and chatbox messages");
			return 1;
		}

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

		Player_SetJointext(gAlarDB, ReturnPlayerName(playerid), gPlayerData[playerid][E_JOINTEXT]);
		return 1;
	}
#endif

acmd:akick(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_KICK_LEVEL)) return 1;

	if(help) {
		if(cmdchk(playerid, E_WILDKICK_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player] or [player name] or [IP]");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player] or [IP]");
		}
		SendClientMessage(playerid, COLOUR_HELP, "Kicks a player(s) from the server");
		return 1;
	}

	if(isnull(params)) {
		if(cmdchk(playerid, E_WILDKICK_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player] or [player name] or [IP]");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player] or [IP]");
		}
		return 1;
	}

	new reason[MAX_INPUT] = DEFAULT_REASON, target[MAX_PLAYER_NAME+MAX_IP];
	strscan(params, "sz", target, sizeof(target), reason, sizeof(reason));

	new pid;
	if(target[0] == '"' || (pid = FindPlayer(target)) == INVALID_PLAYER_ID) {
		if(target[0] != '"') {
			if(IPisvalid(target, cmdchk(playerid, E_RANGEKICK_LEVEL))) {
				new count,
					kickstring[MAX_INPUT * 2],
					msg[MAX_INPUT];
				if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
					if(reason[0]) {
						format(kickstring, sizeof(kickstring), "You have been kicked from the server (%s)", reason);
					} else {
						kickstring = "You have been kicked from the server";
					}
				} else {
					if(reason[0]) {
						format(kickstring, sizeof(kickstring), "You have been kicked from the server by %s (%s)", ReturnPlayerName(playerid), reason);
					} else {
						format(kickstring, sizeof(kickstring), "You have been kicked from the server by %s", ReturnPlayerName(playerid));
					}
				}
				strtruncate(reason, reason, MAX_REASON);
				LoopPlayers(i) {
					if(max(gPlayerData[i][E_ADMINLEVEL], gPlayerData[i][E_RCONLEVEL]) < max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && IPcompare(target, ReturnPlayerIP(i))) {
						SendWrappedMessageToPlayer(i, COLOUR_WARNING, kickstring);
						format(msg, sizeof(msg), "%s(%i) has been kicked from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), reason);
						LogAction(msg);
						AddLogString(msg);
						if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
							format(msg, sizeof(msg), "%s(%i) has been kicked from the server (%s)", ReturnPlayerName(i), i, reason);
						}
						AddJoinString(i, COLOUR_KICK, msg);
						Kick(i);
						count++;
					}
				}
				if(count == 0) {
					format(msg, sizeof(msg), "No players found with the IP %s", target);
					SendClientMessage(playerid, COLOUR_WARNING, msg);
				}
				return 1;
			}
		} else {
			new len = strlen(target);
			if(len > 2 && target[len-1] == '"') {	// "
				strmid(target, target, 1, len-1);
			} else {
				if(cmdchk(playerid, E_WILDKICK_LEVEL)) {
					SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player] or [player name] or [IP]");
				} else {
					SendClientMessage(playerid, COLOUR_HELP, "USAGE: /akick [player] or [IP]");
				}
				return 1;
			}
		}
		if(cmdchk(playerid, E_WILDKICK_LEVEL) && (strfind(target, "*") != -1 || strfind(target, "?") != -1)) {
			if(!isValidName(target, true)) {
				SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
				return 1;
			}
			new count,
				kickstring[MAX_INPUT],
				msg[MAX_INPUT];
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				if(reason[0]) {
					format(kickstring, sizeof(kickstring), "You have been kicked from the server (%s)", reason);
				} else {
					kickstring = "You have been kicked from the server";
				}
			} else {
				if(reason[0]) {
					format(kickstring, sizeof(kickstring), "You have been kicked from the server by %s (%s)", ReturnPlayerName(playerid), reason);
				} else {
					format(kickstring, sizeof(kickstring), "You have been kicked from the server by %s", ReturnPlayerName(playerid));
				}
			}
			strtruncate(reason, reason, MAX_REASON);
			LoopPlayers(i) {
				if(max(gPlayerData[i][E_ADMINLEVEL], gPlayerData[i][E_RCONLEVEL]) < max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && strwild(target, ReturnPlayerName(i), true)) {
					SendWrappedMessageToPlayer(i, COLOUR_WARNING, kickstring);
					format(msg, sizeof(msg), "%s(%i) has been kicked from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), reason);
					LogAction(msg);
					AddLogString(msg);
					if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
						format(msg, sizeof(msg), "%s(%i) has been kicked from the server (%s)", ReturnPlayerName(i), i, reason);
					}
					AddJoinString(i, COLOUR_KICK, msg);
					Kick(i);
					count++;
				}
			}
			if(count == 0) {
				format(msg, sizeof(msg), "No players found with the name %s", target);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
			}
			return 1;
		}
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot kick yourself");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot kick level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(reason[0]) {
			format(msg, sizeof(msg), "You have been kicked from the server (%s)", reason);
		} else {
			msg = "You have been kicked from the server";
		}
	} else {
		if(reason[0]) {
			format(msg, sizeof(msg), "You have been kicked from the server by %s (%s)", ReturnPlayerName(playerid), reason);
		} else {
			format(msg, sizeof(msg), "You have been kicked from the server by %s", ReturnPlayerName(playerid));
		}
	}
	SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);

	strtruncate(reason, reason, MAX_REASON);
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

acmd:alistmodes(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_CHANGEMODE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /alistmodes");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a list of modes which can be used with achangemode");
		return 1;
	}

	new string[512] = "Gamemodes: ";
	if(Gamemodes_List(gAlarDB, string)) {
		SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
	} else {
		SendClientMessage(playerid, COLOUR_WARNING, "No gamemodes are listed in the database");
	}
	return 1;
}

#if LOG_LINES > 0 && LOG_PAGES > 0
	acmd:alog(const playerid, const params[], const bool:help)
	{
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
		if(LevelCheck(playerid, E_LOG_LEVEL)) return 1;

		if(help) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /alog (page)");
			SendClientMessage(playerid, COLOUR_HELP, "Changes the admin log page, or toggles the log keys if no pages is specified");
			return 1;
		}

		if(isnull(params)) {
			if(gPlayerData[playerid][E_LOGKEYS]) {
				SendClientMessage(playerid, COLOUR_ADMIN, "Admin log keys have been disabled");
			} else {
				SendClientMessage(playerid, COLOUR_ADMIN, "Admin log keys have been enabled");
			}
			gPlayerData[playerid][E_LOGKEYS] = !gPlayerData[playerid][E_LOGKEYS];
			return 1;
		}

		new page;
		if(!isNumeric(params) || (page = strval(params)) < 0 || page > LOG_PAGES) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid page");
			return 1;
		}

		if(page == gPlayerData[playerid][E_LOG_PAGE]) return 1;

		if(gPlayerData[playerid][E_LOG_PAGE] != 0) {
			new offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES;
			#if LOG_PAGES > 1
				TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
			#endif
			for(new i; i < LOG_LINES; i++) {
				TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
			}
		}

		if(page != 0) {
			new offset = (page - 1) * LOG_LINES;
			for(new i; i < LOG_LINES; i++) {
				TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
			}
			#if LOG_PAGES > 1
				TextDrawShowForPlayer(playerid, gLogPage[page - 1]);
			#endif
		}
		gPlayerData[playerid][E_LOG_PAGE] = page;
		return 1;
	}
#endif

acmd:alogin(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /alogin [password]");
		if(IsPlayerAdmin(playerid)) {
			SendClientMessage(playerid, COLOUR_HELP, "Logs you into your account, or creates an account if none exists");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Logs you into your account");
		}
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /alogin [password]");
		return 1;
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are already logged in");
		return 1;
	}

	new pname[MAX_PLAYER_NAME];
	GetPlayerName(playerid, pname, sizeof(pname));

	strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));

	new logininfo[E_LOGINDATA];
	if(Admin_GetData(gAlarDB, gPlayerData[playerid][E_NAME], logininfo)) {
		new msg[MAX_INPUT];
		if(Hash_Compare(params, logininfo[E_LOGIN_HASH])) {
			Bit_Set(g_bitAdmins, playerid, 1);
			gPlayerData[playerid][E_ADMINLEVEL] = logininfo[E_LOGIN_LEVEL];

			if(logininfo[E_LOGIN_HIDDEN]) {
				gPlayerData[playerid][E_STATE] |= ADMIN_STATE_HIDDEN;
			}
			gPlayerData[playerid][E_SHOWHUD] = logininfo[E_LOGIN_HUD];

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));

			#if LOG_LINES > 0 && LOG_PAGES > 0
				new page;
				if(logininfo[E_LOGIN_PAGE] < 0) {
					gPlayerData[playerid][E_LOGKEYS] = false;
					page = -(logininfo[E_LOGIN_PAGE] + 1);
				} else {
					gPlayerData[playerid][E_LOGKEYS] = true;
					page = logininfo[E_LOGIN_PAGE];
				}
				if(gPlayerData[playerid][E_LOG_PAGE] != page) {
					if(gPlayerData[playerid][E_LOG_PAGE] != 0) {
						#if LOG_PAGES > 1
							TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
						#endif
						for(new i, offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
							TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
						}
					}
					if((gPlayerData[playerid][E_LOG_PAGE] = page)) {
						if(gPlayerData[playerid][E_LOG_PAGE] > 0 && gPlayerData[playerid][E_LOG_PAGE] <= LOG_PAGES && cmdchk(playerid, E_LOG_LEVEL)) {
							new offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES;
							for(new i; i < LOG_LINES; i++) {
								TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
							}
							#if LOG_PAGES > 1
								TextDrawShowForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
							#endif
						} else {
							gPlayerData[playerid][E_LOG_PAGE] = 0;
						}
					}
				}
			#endif

			Admin_Update(gAlarDB, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), logininfo[E_LOGIN_HIDDEN], logininfo[E_LOGIN_PAGE], logininfo[E_LOGIN_HUD]);

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
					if((gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) && i != playerid) {
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
	} else if(IsPlayerAdmin(playerid) && gServerData[E_RCON_LOGIN_LEVEL] > 0) {	// Using RCON
			new msg[MAX_INPUT];
			if(strlen(params) < gServerData[E_MIN_PW_LENGTH]) {
				format(msg, sizeof(msg), "Your password must be at least %i characters long", gServerData[E_MIN_PW_LENGTH]);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}

			strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));

			new newinfo[E_LOGINDATA];
			newinfo[E_LOGIN_LEVEL] = gServerData[E_RCON_LOGIN_LEVEL];
			GetPlayerIp(playerid, newinfo[E_LOGIN_IP], sizeof(SIZE_E_LOGINDATA[E_LOGIN_IP]));
			strcpy(newinfo[E_LOGIN_HASH], Hash_String(params), sizeof(SIZE_E_LOGINDATA[E_LOGIN_HASH]));
			Admin_SetAdmin(gAlarDB, pname, newinfo);


			format(msg, sizeof(msg), "You have made a level %i admin. Type /ahelp for more info", gServerData[E_RCON_LOGIN_LEVEL]);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "Your password has been set to \"%s\"", params);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			gPlayerData[playerid][E_ADMINLEVEL] = gServerData[E_RCON_LOGIN_LEVEL];

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));

			format(msg, sizeof(msg), "%s has been made an admin (level %i)", ReturnPlayerName(playerid), gServerData[E_RCON_LOGIN_LEVEL]);
			LogAction(msg);
			AddLogString(msg);
			return 1;
	}
	SendClientMessage(playerid, COLOUR_WARNING, "Login failure");
	return 1;
}

acmd:aloginas(const playerid, const params[], const bool:help)
{
	if(!gServerData[E_ALIAS_ADMINS]) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aloginas [name] [password]");
		SendClientMessage(playerid, COLOUR_HELP, "Logs you into your account while using a different name, and automatically hides you from non-admins");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aloginas [name] [password]");
		return 1;
	}
	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are already logged in");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], password[MAX_INPUT];
	strscan(params, "ss", pname, sizeof(pname), password, sizeof(password));

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

	new BanData[E_ALAR_BAN];
	if(Bans_GetBanInfo(gAlarDB, pname, "", BanData)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Login failure");

		new string[MAX_INPUT];
		format(string, sizeof(string), "%s(%i) attepted to login to a banned name (%s)", ReturnPlayerName(playerid), playerid, pname);

		#if LOG_LINES > 0 && LOG_PAGES > 0
			alar_AddAdminLogLine(COLOUR_WARNING, string);
		#else
			LoopPlayers(i) {
				if(gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) {
					SendClientMessage(i, COLOUR_WARNING, string);
				}
			}
		#endif

		LogAction(string);
		return 1;
	}

	new SuspendData[E_ALAR_SUSPENSION];
	if(Suspensions_GetSuspendInfo(gAlarDB, pname, "", SuspendData)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Login failure");

		new string[MAX_INPUT];
		format(string, sizeof(string), "%s(%i) attepted to login to a suspended name (%s)", ReturnPlayerName(playerid), playerid, pname);

		#if LOG_LINES > 0 && LOG_PAGES > 0
			alar_AddAdminLogLine(COLOUR_WARNING, string);
		#else
			LoopPlayers(i) {
				if(gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) {
					SendClientMessage(i, COLOUR_WARNING, string);
				}
			}
		#endif

		LogAction(string);
		return 1;
	}

	new logininfo[E_LOGINDATA];
	if(Admin_GetData(gAlarDB, pname, logininfo)) {
		new msg[MAX_INPUT];
		if(Hash_Compare(password, logininfo[E_LOGIN_HASH])) {
			LoopPlayers(i) {
				if((gPlayerData[i][E_NAME][0] != '\0' && strcmp(pname, gPlayerData[i][E_NAME], true) == 0) || strcmp(pname, ReturnPlayerName(i), true) == 0) {
					format(msg, sizeof(msg), "%s's account is already in use by %s(%i)", pname, ReturnPlayerName(i), i);
					SendClientMessage(playerid, COLOUR_WARNING, msg);
					return 1;
				}
			}

			Bit_Set(g_bitAdmins, playerid, 1);
			gPlayerData[playerid][E_ADMINLEVEL] = logininfo[E_LOGIN_LEVEL];
			gPlayerData[playerid][E_STATE] |= ADMIN_STATE_HIDDEN;
			gPlayerData[playerid][E_SHOWHUD] = logininfo[E_LOGIN_HUD];
			strcpy(gPlayerData[playerid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));

			Admin_Update(gAlarDB, pname, ReturnPlayerIP(playerid), true, logininfo[E_LOGIN_PAGE], logininfo[E_LOGIN_HUD]);

			format(msg, sizeof(msg), "You have successfully logged in as %s (Level %i)", pname, gPlayerData[playerid][E_ADMINLEVEL]);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);

			AllowPlayerTeleport(playerid, cmdchk(playerid, E_TELE_LEVEL));

			#if LOG_LINES > 0 && LOG_PAGES > 0
				new page;
				if(logininfo[E_LOGIN_PAGE] < 0) {
					gPlayerData[playerid][E_LOGKEYS] = false;
					page = -(logininfo[E_LOGIN_PAGE] + 1);
				} else {
					gPlayerData[playerid][E_LOGKEYS] = true;
					page = logininfo[E_LOGIN_PAGE];
				}
				if(gPlayerData[playerid][E_LOG_PAGE] != page) {
					if(gPlayerData[playerid][E_LOG_PAGE] != 0) {
						#if LOG_PAGES > 1
							TextDrawHideForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
						#endif
						for(new i, offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
							TextDrawHideForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
						}
					}
					if((gPlayerData[playerid][E_LOG_PAGE] = page)) {
						if(gPlayerData[playerid][E_LOG_PAGE] > 0 && gPlayerData[playerid][E_LOG_PAGE] <= LOG_PAGES && cmdchk(playerid, E_LOG_LEVEL)) {
							new offset = (gPlayerData[playerid][E_LOG_PAGE] - 1) * LOG_LINES;
							for(new i; i < LOG_LINES; i++) {
								TextDrawShowForPlayer(playerid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
							}
							#if LOG_PAGES > 1
								TextDrawShowForPlayer(playerid, gLogPage[gPlayerData[playerid][E_LOG_PAGE]-1]);
							#endif
						} else {
							gPlayerData[playerid][E_LOG_PAGE] = 0;
						}
					}
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
					if((gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) && i != playerid) {
						SendClientMessage(i, COLOUR_ADMIN, msg);
					}
				}
			}
			LogAction(msg);

			CallRemoteFunction("OnAdminLogin", "ii", playerid, gPlayerData[playerid][E_ADMINLEVEL]);
			return 1;
		}

		SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked from the server (Incorrect password)");
		format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Incorrect password)", ReturnPlayerName(playerid), playerid);
		AddJoinString(playerid, COLOUR_KICK, msg);
		AddLogString(msg);
		LogAction(msg);
		Kick(playerid);
		return 1;
	}
	SendClientMessage(playerid, COLOUR_WARNING, "Login failure");
	return 1;
}

acmd:alogout(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /alogout");
		if(gServerData[E_AUTO_LOGIN]) {
			SendClientMessage(playerid, COLOUR_HELP, "Logs you out of your account, disabling autologin the next time you connect");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Logs you out of your account");
		}
		return 1;
	}

	Admin_Update(gAlarDB, gPlayerData[playerid][E_NAME], "NULL", gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN != 0, gPlayerData[playerid][E_LOGKEYS] ? gPlayerData[playerid][E_LOG_PAGE] : -gPlayerData[playerid][E_LOG_PAGE] - 1, gPlayerData[playerid][E_SHOWHUD]);

	SendClientMessage(playerid, COLOUR_PLAYER, "You have been logged out");

	if(gPlayerData[playerid][E_RCONLEVEL] <= 0) {
		Bit_Set(g_bitAdmins, playerid, 0);
	}
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
	format(msg, sizeof(msg), "%s has logged out", ReturnPlayerName(playerid));

	if(gServerData[E_LOG_LOGINS]) {
		AddLogString(msg);
	} else {
		LoopPlayers(i) {
			if(i != playerid && (gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0)) {
				SendClientMessage(i, COLOUR_ADMIN, msg);
			}
		}
	}
	LogAction(msg);

	CallRemoteFunction("OnAdminLogout", "i", playerid);
	return 1;
}

acmd:amsg(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_MSG_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amsg [message]");
		SendClientMessage(playerid, COLOUR_HELP, "Sends a chatbox message to all players in the server");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amsg [message]");
		return 1;
	}

	new msg[MAX_INPUT + MAX_PLAYER_NAME + 20] = "<Admin> ";
	strcat(msg, params);
	SendWrappedMessageToAll(COLOUR_MSG, msg);
	#if CHATHISTORY_SIZE > 0
		alar_AddLineToHistory(COLOUR_MSG, msg, HISTORY_WRAPPED);
	#endif
	format(msg, sizeof(msg), "%s sent admin text: \"%s\"", ReturnPlayerName(playerid), params);
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:amute(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_MUTE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amute [player] (seconds) (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Mutes a player, permanently if no time is specified");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amute [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], pid, reason[MAX_INPUT];
	strscan(params, "pzz", pid, timestr, sizeof(timestr), reason, sizeof(reason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot mute yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot mute NPCs");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot mute level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new mutetime = strval(timestr);
	if(0 < mutetime < MIN_ACTION_TIME) mutetime = MIN_ACTION_TIME;

	if(gPlayerData[pid][E_STATE] & ADMIN_STATE_MUTED) {
		if(gPlayerData[pid][E_MUTE_TIME] == 0) {
			if(mutetime <= 0) {
				format(msg, sizeof(msg), "%s is already muted", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
			if(!IsPlayerNPC(pid)) {
				Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED, mutetime);
			}
			gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", mutetime * 1000, 0, "i", pid);
			gPlayerData[pid][E_MUTE_TIME] = gettime() + mutetime;

			format(msg, sizeof(msg), "%s's mute time has been set to %i seconds", ReturnPlayerName(pid), mutetime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set %s's mute time to %i seconds", ReturnPlayerName(playerid), ReturnPlayerName(pid), mutetime);
		} else {
			if(mutetime <= 0) {
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED);
				}
				if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
				gPlayerData[pid][E_MUTE_TIME] = 0;

				format(msg, sizeof(msg), "%s's mute has been made permanent", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has made %s's mute permanent", ReturnPlayerName(playerid), ReturnPlayerName(pid));
			} else {
				new timediff = gettime() + mutetime - gPlayerData[pid][E_MUTE_TIME];

				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED, mutetime);
				}
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
			reason = DEFAULT_REASON;
		}
	} else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	} else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	} else {
		reason = DEFAULT_REASON;
	}

	gPlayerData[pid][E_STATE] |= ADMIN_STATE_MUTED;

	new shortreason[MAX_REASON];
	if(reason[0]) {
		strtruncate(shortreason, reason);
	}

	if(mutetime > 0) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been muted by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), mutetime, shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been muted by %s for %i seconds", ReturnPlayerName(pid), ReturnPlayerName(playerid), mutetime);
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been muted for %i seconds (%s)", ReturnPlayerName(pid), mutetime, shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been muted for %i seconds", ReturnPlayerName(pid), mutetime);
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been muted for %i seconds (%s)", mutetime, reason);
			} else {
				format(msg, sizeof(msg), "You have been muted for %i seconds by %s (%s)", mutetime, ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have muted %s for %i seconds (%s)", ReturnPlayerName(pid), mutetime, reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been muted for %i seconds", mutetime);
			} else {
				format(msg, sizeof(msg), "You have been muted for %i seconds by %s", mutetime, ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have muted %s for %i seconds", ReturnPlayerName(pid), mutetime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED, mutetime);
		}
		if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
		gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", mutetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_MUTE_TIME] = gettime() + mutetime;
	} else {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been muted by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been muted by %s" , ReturnPlayerName(pid), ReturnPlayerName(playerid));
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been muted (%s)", ReturnPlayerName(pid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been muted", ReturnPlayerName(pid));
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been muted (%s)", reason);
			} else {
				format(msg, sizeof(msg), "You have been muted by %s (%s)", ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have muted %s (%s)", ReturnPlayerName(pid), reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				msg = "You have been muted";
			} else {
				format(msg, sizeof(msg), "You have been muted by %s", ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have muted %s", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED);
		}
	}
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}
	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] & ~ADMIN_STATE_MUTED);
	return 1;
}

acmd:amuted(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /amuted");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a list of all currently muted players");
		return 1;
	}

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
		SendWrappedMessageToPlayer(playerid, gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER, msg);
	}
	return 1;
}

acmd:apaused(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && (gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apaused");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a list of all currently paused players");
		return 1;
	}

	new idlestring[512] = "Idle players:",
		pausedstring[512] = "Paused players:",
		tick = GetTickCount();
	LoopPlayers(i) {
		if(!IsSpawned(i) || IsPlayerNPC(i)) continue;		// Goddamn it sa-mp...
		new time = (tick - gPlayerData[i][E_LAST_UPDATE]) / 1000;
		if(time > 3600) {
			new hours = time / 3600,
				minutes = (time - hours * 3600) / 60;
			format(pausedstring, sizeof(pausedstring), "%s %s(%i:%02i:%02i)", pausedstring, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
		} else if(time > 60) {
			new minutes = time / 60;
			format(pausedstring, sizeof(pausedstring), "%s %s(%i:%02i)", pausedstring, ReturnPlayerName(i), minutes, time - minutes * 60);
		} else if(time > 1){
			format(pausedstring, sizeof(pausedstring), "%s %s(%i)", pausedstring, ReturnPlayerName(i), time);
		} else if((time = (tick - gPlayerData[i][E_LAST_ACTIVE]) / 1000) > 3600) {
			new hours = time / 3600,
				minutes = (time - hours * 3600) / 60;
			format(idlestring, sizeof(idlestring), "%s %s(%i:%02i:%02i)", idlestring, ReturnPlayerName(i), hours, minutes, time - hours * 3600 - minutes * 60);
		} else if(time > 60) {
			new minutes = time / 60;
			format(idlestring, sizeof(idlestring), "%s %s(%i:%02i)", idlestring, ReturnPlayerName(i), minutes, time - minutes * 60);
		} else if(time > 10){
			format(idlestring, sizeof(idlestring), "%s %s(%i)", idlestring, ReturnPlayerName(i), time);
		}
	}
	if(playerid == INVALID_PLAYER_ID) {
		if(idlestring[13]) print(idlestring);
		if(pausedstring[16]) print(pausedstring);
		if(!idlestring[13] && !pausedstring[16])  print("No players are currently paused");
	} else {
		if(idlestring[13]) SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, idlestring);
		if(pausedstring[16]) SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, pausedstring);
		if(!idlestring[13] && !pausedstring[16]) SendClientMessage(playerid, COLOUR_ADMIN, "No players are currently paused");
	}
	return 1;
}

acmd:apm(const playerid, const params[], const bool:help)
{
	if(help) {
		if(playerid == INVALID_PLAYER_ID) {
			print("USAGE: /apm [player] [message]");
			print("Sends a message to a player which all admins an see");
		} else if(gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apm [player] [message]");
			SendClientMessage(playerid, COLOUR_HELP, "Sends a message to a player which all admins an see");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apm [message]");
			SendClientMessage(playerid, COLOUR_HELP, "Sends a message to all admins");
		}
		return 1;
	}

	if(isnull(params)) {
		if(playerid == INVALID_PLAYER_ID) {
			print("USAGE: /apm [player] [message]");
		} else if(gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apm [player] [message]");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apm [message]");
		}
		return 1;
	}

	if(playerid == INVALID_PLAYER_ID || gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
		new pid, msg[MAX_INPUT];
		strscan(params, "ps", pid, msg, sizeof(msg));
		if(pid == INVALID_PLAYER_ID) {
			SendMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}
		if(pid == playerid) {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot pm yourself");
			return 1;
		}
		if(msg[0] == '\0') {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /apm [player] [message]");
			return 1;
		}

		if(playerid != INVALID_PLAYER_ID) {
			for(new i; i < sizeof(gRageWords); i++) {
				if(strfind(msg, gRageWords[i], true) != -1) {
					gPlayerData[playerid][E_LAST_RAGE] = gettime();
					break;
				}
			}
		}

		new string[MAX_INPUT + 2 * MAX_PLAYER_NAME + 30],
			pname[MAX_PLAYER_NAME];
		if(playerid != INVALID_PLAYER_ID) {
			GetPlayerName(playerid, pname, sizeof(pname));
		} else {
			pname = "The console";
		}
		if(gPlayerData[pid][E_ADMINLEVEL] > 0 || gPlayerData[pid][E_RCONLEVEL] > 0) {
			format(string, sizeof(string), "<Adminchat> %s: %s", pname, msg);
			SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, string);
			#if CHATHISTORY_SIZE > 0
				alar_AddLineToHistory(COLOUR_MSG, msg, HISTORY_ADMIN_ONLY | HISTORY_WRAPPED);
			#endif
			LogAction(string);
			return 1;
		}

		format(string, sizeof(string), "PM from Admins: %s", msg);
		SendClientMessage(pid, COLOUR_MSG, string);

		format(string, sizeof(string), "PM sent to %s(%i): %s", ReturnPlayerName(pid), pid, msg);
		if(playerid == INVALID_PLAYER_ID) {
			print(string);
		} else {
			SendWrappedMessageToPlayer(playerid, COLOUR_MSG, string);
		}

		format(string, sizeof(string), "%s sent an admin pm to %s(%i): %s", pname, ReturnPlayerName(pid), pid, msg);
		new Bit:bitPlayers[Bit_Bits(MAX_PLAYERS)];
		bitPlayers = g_bitAdmins;
		Bit_Vet(bitPlayers, playerid);
		SendWrappedMessageToClients(bitPlayers, COLOUR_MSG, string);
		#if CHATHISTORY_SIZE > 0
			alar_AddLineToHistory(COLOUR_MSG, string, HISTORY_ADMIN_ONLY | HISTORY_WRAPPED);
		#endif
		LogAction(string);
	} else {
		new msg[MAX_INPUT + MAX_PLAYER_NAME + 20], pname[MAX_PLAYER_NAME];
		GetPlayerName(playerid, pname, sizeof(pname));
		format(msg, sizeof(msg), "PM from %s(%i): %s", pname, playerid, params);
		SendWrappedMessageToClients(g_bitAdmins, COLOUR_MSG, msg);
		#if CHATHISTORY_SIZE > 0
			alar_AddLineToHistory(COLOUR_MSG, msg, HISTORY_ADMIN_ONLY | HISTORY_WRAPPED);
		#endif
		format(msg, sizeof(msg), "%s sent a pm to admins \"%s\"", pname, params);
		LogAction(msg);
		format(msg, sizeof(msg), "PM sent to admins: %s", params);
		SendClientMessage(playerid, COLOUR_MSG, msg);
	}
	return 1;
}

acmd:apunch(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_PUNCH_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apunch [player] (amount)");
		SendClientMessage(playerid, COLOUR_HELP, "Removes armour and health from a player");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /apunch [player] (amount)");
		return 1;
	}

	new pid, amount = gServerData[E_PUNCH_DECREMENT];
	strscan(params, "pi", pid, amount);

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new msg[MAX_INPUT];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && pid != playerid) {
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
	if(amount < 0 || amount > 200) amount = gServerData[E_PUNCH_DECREMENT];

	#if SOUND_VOLUME > 0
		new Float:px, Float:py, Float:pz;
		GetPlayerPos(pid, px, py, pz);
		for(new i; i < SOUND_VOLUME; i++) {
			PlayerPlaySound(pid, 1130, px, py, pz);
		}
	#endif

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

acmd:ar(const playerid, const params[], const bool:help)
{
	return acmd_arepair(playerid, params, help);
}

acmd:arape(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_RAPE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arape [player] (seconds) (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Freezes/jails and mutes a player, permanently if no time is specified");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arape [player] (seconds) (reason)");
		return 1;
	}

	new timestr[20], pid, reason[MAX_INPUT];
	strscan(params, "pzz", pid, timestr, sizeof(timestr), reason, sizeof(reason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot rape yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot rape NPCs");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot rape level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new rapetime = strval(timestr);
	if(0 < rapetime < MIN_ACTION_TIME) {
		rapetime = MIN_ACTION_TIME;
	}

	if(gPlayerData[pid][E_STATE] & (ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED) == (ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED)) {
		if(gPlayerData[pid][E_JAIL_TIME] == 0 && gPlayerData[pid][E_MUTE_TIME] == 0 && gPlayerData[pid][E_FREEZE_TIME] == 0) {
			if(rapetime <= 0) {
				format(msg, sizeof(msg), "%s has already been raped", ReturnPlayerName(pid));
				SendClientMessage(playerid, COLOUR_WARNING, msg);
				return 1;
			}
			if(!IsPlayerNPC(pid)) {
				Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED, rapetime);
			}

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
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);
				}

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
				if(!IsPlayerNPC(pid)) {
					Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED, rapetime);
				}

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
			reason = DEFAULT_REASON;
		}
	} else if(reason[0] != '\0') {
		format(reason, sizeof(reason), "%s %s", timestr, reason);
	} else if(timestr[0] != '\0') {
		strcpy(reason, timestr);
	} else {
		reason = DEFAULT_REASON;
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

	new oldstatus = gPlayerData[pid][E_STATE];
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

	new shortreason[MAX_REASON];
	if(reason[0]) {
		strtruncate(shortreason, reason);
	}

	if(rapetime > 0) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been raped by %s for %i seconds (%s)", ReturnPlayerName(pid), ReturnPlayerName(playerid), rapetime, shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been raped by %s for %i seconds", ReturnPlayerName(pid), ReturnPlayerName(playerid), rapetime);
		}
		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been raped for %i seconds (%s)", ReturnPlayerName(pid), rapetime, shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been raped for %i seconds", ReturnPlayerName(pid), rapetime);
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}
		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been raped for %i seconds (%s)", rapetime, reason);
			} else {
				format(msg, sizeof(msg), "You have been raped for %i seconds by %s (%s)", rapetime, ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have raped %s for %i seconds (%s)", ReturnPlayerName(pid), rapetime, reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been raped for %i seconds", rapetime);
			} else {
				format(msg, sizeof(msg), "You have been raped for %i seconds by %s", rapetime, ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have raped %s for %i seconds", ReturnPlayerName(pid), rapetime);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}
		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED, rapetime);
		}

		if(gPlayerData[pid][E_UNJAIL]) KillTimer(gPlayerData[pid][E_UNJAIL]);
		if(gPlayerData[pid][E_UNMUTE]) KillTimer(gPlayerData[pid][E_UNMUTE]);
		if(gPlayerData[pid][E_UNFREEZE]) KillTimer(gPlayerData[pid][E_UNFREEZE]);

		gPlayerData[pid][E_UNJAIL] = SetTimerEx("alar_unjail", rapetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_UNMUTE] = SetTimerEx("alar_unmute", rapetime * 1000, 0, "i", pid);
		gPlayerData[pid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", rapetime * 1000, 0, "i", pid);

		gPlayerData[pid][E_MUTE_TIME] = gPlayerData[pid][E_JAIL_TIME] = gPlayerData[pid][E_FREEZE_TIME] = gettime() + rapetime;
	} else {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s has been raped by %s (%s)" , ReturnPlayerName(pid), ReturnPlayerName(playerid), shortreason);
		} else {
			format(msg, sizeof(msg), "%s has been raped by %s" , ReturnPlayerName(pid), ReturnPlayerName(playerid));
		}
		LogAction(msg);
		AddLogString(msg);

		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s has been raped (%s)", ReturnPlayerName(pid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s has been raped", ReturnPlayerName(pid));
			}
		}
		LoopPlayers(i) {
			if(i != playerid && i != pid) {
				SendClientMessage(i, COLOUR_WARNING, msg);
			}
		}

		if(reason[0]) {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "You have been raped (%s)", reason);
			} else {
				format(msg, sizeof(msg), "You have been raped by %s (%s)", ReturnPlayerName(playerid), reason);
			}
			SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have raped %s (%s)", ReturnPlayerName(pid), reason);
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				msg = "You have been raped";
			} else {
				format(msg, sizeof(msg), "You have been raped by %s", ReturnPlayerName(playerid));
			}
			SendClientMessage(pid, COLOUR_WARNING, msg);
			format(msg, sizeof(msg), "You have raped %s", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
		}

		if(!IsPlayerNPC(pid)) {
			Player_SetStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);
		}
	}

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], oldstatus);
	return 1;
}

acmd:areloaddata(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && (gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;
	if(LevelCheck(playerid, E_RELOADDATA_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /areloaddata");
		SendClientMessage(playerid, COLOUR_HELP, "Reloads server settings");
		return 1;
	}

	new msg[MAX_INPUT] = "Server data reloaded by the console";
	if(playerid != INVALID_PLAYER_ID) {
		format(msg, sizeof(msg), "%s has reloaded the server data", ReturnPlayerName(playerid));
	}

	db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));
	LoadData();
	db_free_result(db_query(gAlarDB, "END TRANSACTION"));

	LoopPlayers(i) {
		if(IsPlayerAdmin(i)) {
			gPlayerData[i][E_RCONLEVEL] = gServerData[E_RCON_LEVEL];
		}

		AllowPlayerTeleport(i, cmdchk(i, E_TELE_LEVEL));

		if(gPlayerData[i][E_SPECTATING]) {
			if(!cmdchk(i, E_SPEC_LEVEL)) {
				SpawnUsingData(i);
			} else if(!gServerData[E_EXTRA_SPEC_VIEWS] && (gPlayerData[i][E_SPECMODE] == 1 || gPlayerData[i][E_SPECMODE] == 2)) {
				gPlayerData[i][E_SPECMODE] = 0;
				if(IsPlayerInAnyVehicle(gPlayerData[i][E_SPECID])) {
					PlayerSpectateVehicle(i, GetPlayerVehicleID(gPlayerData[i][E_SPECID]));
				}
			}
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
			SpecHUDHide(i);
		}
	}
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:aremallcash(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_REMALLCASH_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremallcash");
		SendClientMessage(playerid, COLOUR_HELP, "Resets the money of all players");
		return 1;
	}

	LoopPlayers(i) ResetPlayerMoney(i);

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

acmd:aremcash(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_REMCASH_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremcash [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Resets a player's money");
		return 1;
	}

	if(isnull(params)) {
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

acmd:aremallweapons(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_REMALLWEAPONS_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremallweapons");
		SendClientMessage(playerid, COLOUR_HELP, "Resets the weapons of all players");
		return 1;
	}

	LoopPlayers(i) ResetPlayerWeapons(i);

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

acmd:aremweapons(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_REMWEAPONS_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremweapons [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Resets a player's weapons");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aremweapons [player]");
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

acmd:arepair(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_REPAIR_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arepair (player) (amount)");
		SendClientMessage(playerid, COLOUR_HELP, "Repairs a player's vehicle or sets their vehicle health, if no player is specified your own vehicle is repaired");
		return 1;
	}

	new pname[MAX_PLAYER_NAME], amount, pid = INVALID_PLAYER_ID, bool:fullhealth;
	if(strscan(params, "si", pname, sizeof(pname), amount)) fullhealth = true;
	if(pname[0] == '\0') {
		if(gPlayerData[playerid][E_SPECID] != INVALID_PLAYER_ID) {
			pid = gPlayerData[playerid][E_SPECID];
		} else if(IsPlayerInAnyVehicle(playerid)) {
			pid = playerid;
		} else if((amount = GetPlayerSurfingVehicleID(playerid)) != INVALID_VEHICLE_ID) {
			LoopPlayers(i) {
				if(IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == amount) {
					if(GetPlayerState(i) == PLAYER_STATE_DRIVER) {
						pid = i;
						break;
					} else {
						pid = i;
					}
				}
			}
		}
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not in a vehicle");
			return 1;
		}
	} else {
		pid = FindPlayer(pname);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
			return 1;
		}
	}
	GetPlayerName(pid, pname, sizeof(pname));

	new msg[MAX_INPUT];
	if(pid != playerid && !IsPlayerInAnyVehicle(pid)) {
		format(msg, sizeof(msg), "%s is not in a vehicle", pname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
	if(!(0 <= amount < 1000)) amount = 1000;

	if(fullhealth) {
		new Float:current,
			vid = GetPlayerVehicleID(pid);
		GetVehicleHealth(vid, current);
		if(current >= 1000.0) {
			if(playerid == pid) {
				format(msg, sizeof(msg), "Your %s already has full health", ReturnPlayerVehicleName(pid));
			} else {
				format(msg, sizeof(msg), "%s's %s already has full health", pname, ReturnPlayerVehicleName(pid));
			}
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		new mid = GetVehicleModel(vid);
		RepairVehicle(vid);
		if(playerid == pid) {
			format(msg, sizeof(msg), "You have repaired your %s", ReturnVehicleName(mid));
			SendClientMessage(pid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has repaired their %s", pname, ReturnVehicleName(mid));
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "Your %s has been repaired", ReturnVehicleName(mid));
			} else {
				format(msg, sizeof(msg), "%s has repaired your %s", ReturnPlayerName(playerid), ReturnVehicleName(mid));
			}
			SendClientMessage(pid, COLOUR_PLAYER, msg);

			format(msg, sizeof(msg), "You have repaired %s's %s", pname, ReturnVehicleName(mid));
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has repaired %s's %s", ReturnPlayerName(playerid), pname, ReturnVehicleName(mid));
		}
	} else {
		new Float:current;
		GetVehicleHealth(GetPlayerVehicleID(pid), current);
		if(current == amount) {
			if(playerid == pid) {
				format(msg, sizeof(msg), "Your %s already has %i health", ReturnPlayerVehicleName(pid), amount);
			} else {
				format(msg, sizeof(msg), "%s's %s already has %i health", pname, ReturnPlayerVehicleName(pid), amount);
			}
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		SetVehicleHealth(GetPlayerVehicleID(pid), amount);
		if(playerid == pid) {
			format(msg, sizeof(msg), "You have set the health of your %s to %i", ReturnPlayerVehicleName(pid), amount);
			SendClientMessage(pid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set the health of their %s to %i", pname, ReturnPlayerVehicleName(pid), amount);
		} else {
			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				format(msg, sizeof(msg), "The health of your %s has been set to %i", ReturnPlayerVehicleName(pid), amount);
			} else {
				format(msg, sizeof(msg), "%s has set the health of your %s to %i", ReturnPlayerName(playerid), ReturnPlayerVehicleName(pid), amount);
			}
			SendClientMessage(pid, COLOUR_PLAYER, msg);

			format(msg, sizeof(msg), "You have set the health of %s's %s to %i", pname, ReturnPlayerVehicleName(pid), amount);
			SendClientMessage(playerid, COLOUR_ADMIN, msg);
			format(msg, sizeof(msg), "%s has set the health of %s's %s to %i", ReturnPlayerName(playerid), pname, ReturnPlayerVehicleName(pid), amount);
		}
	}

	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:arespawn(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_RESPAWN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arespawn [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Respawns a player");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /arespawn [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (pid != playerid)) {
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

acmd:asay(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SAY_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asay [player] [message]");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a message on a player's screen");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asay [player] [message]");
		return 1;
	}

	new pid, msg[MAX_INPUT];
	strscan(params, "ps", pid, msg, sizeof(msg));

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

acmd:aselect(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SELECT_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aselect [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Returns a player to spawn selection");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aselect [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && pid != playerid) {
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

acmd:aservername(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SERVERNAME_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aservername [name]");
		SendClientMessage(playerid, COLOUR_HELP, "Changes the name of the server in the sa-mp browser");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aservername [name]");
		return 1;
	}

	new string[MAX_INPUT];
	format(string, sizeof(string), "hostname %s", params);
	SendRconCommand(string);
	format(string, sizeof(string), "The server name has been changed to %s", params);
	SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);

	if(strlen(params) > 50) {
		SendClientMessage(playerid, COLOUR_WARNING, "Warning: Server name will truncate in browser");
	}

	format(string, sizeof(string), "%s changed the server name to %s", ReturnPlayerName(playerid), params);
	LogAction(string);
	AddLogString(string);
	return 1;
}

acmd:asetadmin(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SETADMIN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asetadmin [player] [level]");
		SendClientMessage(playerid, COLOUR_HELP, "Grants admin rights to a player");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asetadmin [player] [level]");
		return 1;
	}

	new pid, plvl;
	if(strscan(params, "pi", pid, plvl)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You must specify a level");
		return 1;
	}
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	new msg[MAX_INPUT];
	if(plvl < 0 || plvl > gServerData[E_SETADMIN_LEVEL]) {
		format(msg, sizeof(msg), "Please specify a level between 0 and %i", gServerData[E_SETADMIN_LEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot modify your own account");
		return 1;
	}
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot modify level %i admin accounts", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new pname[MAX_PLAYER_NAME];
	GetPlayerName(pid, pname, sizeof(pname));
	if(plvl == 0) {
		if(gPlayerData[pid][E_ADMINLEVEL] <= 0) {
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
				#if LOG_PAGES > 1
					TextDrawHideForPlayer(pid, gLogPage[gPlayerData[pid][E_LOG_PAGE]-1]);
				#endif
				for(new i, offset = (gPlayerData[pid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
					TextDrawHideForPlayer(pid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
				}
				gPlayerData[pid][E_LOG_PAGE] = 0;
			}
		#endif

		Admin_RemoveAdmin(gAlarDB, gPlayerData[pid][E_NAME]);
		format(msg, sizeof(msg), "%s has been removed as an admin", pname);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		LogAction(msg);
		AddLogString(msg);
		SendClientMessage(pid, COLOUR_WARNING, "You have been removed as an admin");

		if(gPlayerData[pid][E_RCONLEVEL] <= 0) {
			Bit_Set(g_bitAdmins, pid, 0);
		}
		gPlayerData[pid][E_ADMINLEVEL] = 0;
		gPlayerData[pid][E_NAME][0] = '\0';

		CallRemoteFunction("OnAdminLogout", "i", pid);
		return 1;
	}

	new logininfo[E_LOGINDATA];
	if(gPlayerData[pid][E_ADMINLEVEL] > 0) {
		Admin_GetData(gAlarDB, gPlayerData[pid][E_NAME], logininfo);

		#if LOG_LINES > 0 && LOG_PAGES > 0
			if(!cmdchk(pid, E_LOG_LEVEL)) {
				if(gPlayerData[pid][E_LOG_PAGE]) {
					#if LOG_PAGES > 1
						TextDrawHideForPlayer(pid, gLogPage[gPlayerData[pid][E_LOG_PAGE]-1]);
					#endif
					for(new i, offset = (gPlayerData[pid][E_LOG_PAGE] - 1) * LOG_LINES; i < LOG_LINES; i++) {
						TextDrawHideForPlayer(pid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
					}
					gPlayerData[pid][E_LOG_PAGE] = 0;
				}
			} else {
				logininfo[E_LOGIN_PAGE] = gPlayerData[pid][E_LOGKEYS] ? gPlayerData[pid][E_LOG_PAGE] : -gPlayerData[pid][E_LOG_PAGE] - 1;
			}
		#endif

		logininfo[E_LOGIN_HUD] = gPlayerData[pid][E_SHOWHUD];

		if(!cmdchk(pid, E_SPEC_LEVEL) && gPlayerData[pid][E_SPECTATING]) {
			SpawnUsingData(pid);
		}
	} else {
		Bit_Set(g_bitAdmins, pid, 1);
		strcpy(gPlayerData[pid][E_NAME], pname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
	}
	logininfo[E_LOGIN_LEVEL] = plvl;
	GetPlayerIp(pid, logininfo[E_LOGIN_IP], sizeof(SIZE_E_LOGINDATA[E_LOGIN_IP]));
	strcpy(logininfo[E_LOGIN_HASH], Hash_String(gServerData[E_DEFAULT_PW]), sizeof(SIZE_E_LOGINDATA[E_LOGIN_HASH]));
	Admin_SetAdmin(gAlarDB, gPlayerData[pid][E_NAME], logininfo);

	gPlayerData[pid][E_ADMINLEVEL] = plvl;

	AllowPlayerTeleport(pid, cmdchk(pid, E_TELE_LEVEL));

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

acmd:asetname(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SETNAME_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asetname [player] [name]");
		SendClientMessage(playerid, COLOUR_HELP, "Changes a player's name");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asetname [player] [name]");
		return 1;
	}

	new pid, newname[MAX_PLAYER_NAME];
	strscan(params, "ps", pid, newname, sizeof(newname));

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

	if(!IsPlayerNPC(pid)) {
		new string[MAX_INPUT * 2],
			BanData[E_ALAR_BAN];
		if(Bans_GetBanInfo(gAlarDB, newname, "", BanData)) {
			if(BanData[E_BAN_REASON][0]) {
				format(string, sizeof(string), "The name %s is banned [%s %s] (%s)", BanData[E_BAN_NAME], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN], BanData[E_BAN_REASON]);
			} else {
				format(string, sizeof(string), "The name %s is banned [%s %s]", BanData[E_BAN_NAME], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
			}
			SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, string);
			return 1;
		}

		new SuspendData[E_ALAR_SUSPENSION];
		if(Suspensions_GetSuspendInfo(gAlarDB, newname, "", SuspendData)) {
			if(SuspendData[E_SUSPEND_REASON][0]) {
				format(string, sizeof(string), "The name %s is suspended until %s [%s %s] (%s)", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN], SuspendData[E_SUSPEND_REASON]);
			} else {
				format(string, sizeof(string), "The name %s is suspended until %s [%s %s]", SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
			}
			SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, string);
			return 1;
		}
	}

	new string[MAX_INPUT];
	if(gPlayerData[pid][E_ADMINLEVEL] > 0) {
		if(strcmp(newname, gPlayerData[pid][E_NAME], true)) {
			new plvl = Admin_GetHighestLevel(gAlarDB, newname);
			if(plvl >= gPlayerData[pid][E_ADMINLEVEL]) {
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

	Alias_Update(gAlarDB, oldname, ReturnPlayerIP(playerid), gettime() - gPlayerData[playerid][E_JOIN_TIME]);
	gPlayerData[playerid][E_JOIN_TIME] =  gettime();
	Alias_Add(gAlarDB, newname, ReturnPlayerIP(playerid));

	CallRemoteFunction("OnAdminNameChange", "iss", pid, newname, oldname);

	if(IsSpawned(pid)) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
				SpecHUDUpdate(i);
			}
		}
	}

	if(gPlayerData[pid][E_ADMINLEVEL] <= 0) {
		new logininfo[E_LOGINDATA];
		if(Admin_GetData(gAlarDB, newname, logininfo)) {
			strcpy(gPlayerData[pid][E_NAME], newname, sizeof(SIZE_E_PLAYERDATA[E_NAME]));
			new msg[MAX_INPUT];
			if(!logininfo[E_LOGIN_MANUAL] && gServerData[E_AUTO_LOGIN] && IPcompare(logininfo[E_LOGIN_IP], ReturnPlayerIP(pid))) {
				Bit_Set(g_bitAdmins, pid, 1);
				gPlayerData[pid][E_ADMINLEVEL] = logininfo[E_LOGIN_LEVEL];
				if(logininfo[E_LOGIN_HIDDEN]) {
					gPlayerData[pid][E_STATE] |= ADMIN_STATE_HIDDEN;
				}
				gPlayerData[pid][E_SHOWHUD] = logininfo[E_LOGIN_HUD];

				format(msg, sizeof(msg), "You have successfully logged in (Level %i)", gPlayerData[pid][E_ADMINLEVEL]);
				SendClientMessage(pid, COLOUR_ADMIN, msg);
				format(msg, sizeof(msg), "%s has logged in as an admin (Level %i)", newname, gPlayerData[pid][E_ADMINLEVEL]);

				if(gServerData[E_LOG_LOGINS]) {
					AddLogString(msg);
				} else {
					LoopPlayers(i) {
						if((gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) && i != pid) {
							SendClientMessage(i, COLOUR_ADMIN, msg);
						}
					}
				}
				LogAction(msg);

				AllowPlayerTeleport(pid, cmdchk(pid, E_TELE_LEVEL));

				#if LOG_LINES > 0 && LOG_PAGES > 0
					if(logininfo[E_LOGIN_PAGE] < 0) {
						gPlayerData[pid][E_LOGKEYS] = false;
						gPlayerData[pid][E_LOG_PAGE] = -(logininfo[E_LOGIN_PAGE] + 1);
					} else {
						gPlayerData[pid][E_LOG_PAGE] = logininfo[E_LOGIN_PAGE];
						gPlayerData[pid][E_LOGKEYS] = true;
					}
					if(gPlayerData[pid][E_LOG_PAGE] > 0 && gPlayerData[pid][E_LOG_PAGE] <= LOG_PAGES && cmdchk(pid, E_LOG_LEVEL)) {
						new offset = (gPlayerData[pid][E_LOG_PAGE] - 1) * LOG_LINES;
						for(new i; i < LOG_LINES; i++) {
							TextDrawShowForPlayer(pid, gAdminLog[i + offset][E_TEXTBOX_TEXT]);
						}
						#if LOG_PAGES > 1
							TextDrawShowForPlayer(pid, gLogPage[gPlayerData[pid][E_LOG_PAGE]-1]);
						#endif
					} else {
						gPlayerData[pid][E_LOG_PAGE] = 0;
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

acmd:asetping(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SETPING_LEVEL)) return 1;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /asetping [amount]");
		SendClientMessage(playerid, COLOUR_HELP, "Sets the maximium average ping before a player is kicked, 0 or less to disable the ping kicker");
		return 1;
	}

	new newping = strval(params);
	if(!isNumeric(params)) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /asetping [amount]");
		return 1;
	}

	if(newping <= 0 && gServerData[E_MAX_PING] <= 0) {
		SendMessage(playerid, COLOUR_WARNING, "The ping kicker is already disabled");
		return 1;
	} else if(newping == gServerData[E_MAX_PING]) {
		new msg[50];
		format(msg, sizeof(msg), "The max ping is already set to %i", newping);
		SendMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	Setting_SetInt(gAlarDB, "MaxPing", newping);

	new msg[MAX_INPUT];
	if(newping <= 0) {
		if(playerid != INVALID_PLAYER_ID) {
			format(msg, sizeof(msg), "%s has disabled the ping kicker", ReturnPlayerName(playerid), newping);
		} else {
			msg = "The ping kicker has been disabled";
		}
	} else {
		if(playerid != INVALID_PLAYER_ID) {
			format(msg, sizeof(msg), "%s has set the max ping to %i", ReturnPlayerName(playerid), newping);
		} else {
			format(msg, sizeof(msg), "The max ping has been set to %i", newping);
		}
	}
	LogAction(msg);
	AddLogString(msg);

	if(playerid != INVALID_PLAYER_ID && gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(newping > 0) {
			format(msg, sizeof(msg), "The max ping has been set to %i", newping);
		} else {
			msg = "The ping kicker has been disabled";
		}
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);
	gServerData[E_MAX_PING] = newping;
	return 1;
}

acmd:ashout(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SHOUT_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /ashout [message]");
		SendClientMessage(playerid, COLOUR_HELP, "Displays a message on the screens of all players");
		return 1;
	}

	if(isnull(params)) {
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

acmd:asinfo(const playerid, const params[], const bool:help)
{
	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asinfo");
		SendClientMessage(playerid, COLOUR_HELP, "Displays information about the server");
		return 1;
	}

	new msg[MAX_INPUT],
		numplayers,
		numbots,
		numadmins,
		numdesynced,
		numfrozen,
		numjailed,
		nummuted;

	LoopPlayers(i) {
		if(IsPlayerNPC(i)) numbots++;
		else numplayers++;
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_MUTED) nummuted++;
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_FROZEN) numfrozen++;
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_JAILED) numjailed++;
		if(gPlayerData[i][E_STATE] & ADMIN_STATE_DESYNCED) numdesynced++;
		if(gPlayerData[i][E_ADMINLEVEL] > 0 && (~gPlayerData[i][E_STATE] & ADMIN_STATE_HIDDEN || playerid == INVALID_PLAYER_ID || gPlayerData[playerid][E_ADMINLEVEL] > 0)) numadmins++;
	}

	new message_colour = gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0 ? COLOUR_ADMIN : COLOUR_PLAYER;
	format(msg, sizeof(msg), "Server: %s  Website: %s  Gamemode: %s", ReturnServerVar("hostname"), ReturnServerVar("weburl"), ReturnServerVar("gamemodetext"));
	SendMessage(playerid, message_colour, msg);
	format(msg, sizeof(msg), "Players: %i/%i  Bots: %i  Admins: %i  Desynced: %i  Frozen: %i  Jailed: %i  Muted: %i", numplayers, gMaxPlayers, numbots, numadmins, numdesynced, numfrozen, numjailed, nummuted);
	SendMessage(playerid, message_colour, msg);

	if(playerid == INVALID_PLAYER_ID || gPlayerData[playerid][E_ADMINLEVEL] > 0 || gPlayerData[playerid][E_RCONLEVEL] > 0) {
		new numpaused,
			numimmune,
			numwhitelisted,
			numspectating,
			tick = GetTickCount();

		LoopPlayers(i) {
			if(IsSpawned(i) && tick - gPlayerData[i][E_LAST_UPDATE] > 1000) numpaused++;
			if(gPlayerData[i][E_SPECTATING]) numspectating++;
			if(gPlayerData[i][E_WHITELISTED]) numwhitelisted++;
			if(gPlayerData[i][E_IMMUNE]) numimmune++;
		}
		format(msg, sizeof(msg), "Alar Version: " #ALAR_VERSION "  Admin Vehicles: %i  Paused: %i  Immune: %i  Whitelisted: %i  Admins Spectating: %i", Bit_GetCount(gCreatedVehicles), numpaused, numimmune, numwhitelisted, numspectating);
		SendMessage(playerid, COLOUR_ADMIN, msg);
	}

	format(msg, sizeof(msg), "Time: %s  Gravity: %s  Weather: %i", ReturnServerVar("worldtime"), ReturnServerVar("gravity"), ReturnServerVar("weather"));
	if(gServerData[E_MAX_PING] > 0)  format(msg, sizeof(msg), "%s  Max Ping: %i", msg, gServerData[E_MAX_PING]);
	SendMessage(playerid, message_colour, msg);
	return 1;
}

acmd:aslap(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SLAP_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aslap [player] (amount)");
		SendClientMessage(playerid, COLOUR_HELP, "Removes health from a player");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aslap [player] (amount)");
		return 1;
	}

	new pid,
		amount = gServerData[E_SLAP_DECREMENT],
		msg[MAX_INPUT];

	strscan(params, "pi", pid, amount);

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (pid != playerid)) {
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
	if(amount < 0 || amount > 100)  amount = gServerData[E_SLAP_DECREMENT];

	SetPlayerDrunkLevel(pid, 0);
	#if SOUND_VOLUME > 0
		new Float:px, Float:py, Float:pz;
		GetPlayerPos(pid, px, py, pz);
		for(new i; i < SOUND_VOLUME; i++) {
			PlayerPlaySound(pid, 1190, px, py, pz);
		}
	#endif

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

acmd:aslay(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SLAY_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aslay [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Kills a player");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aslay [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (pid != playerid)) {
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

acmd:aspawn(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SPAWN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aspawn [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Spawns a player in class selection or spectating");
		return 1;
	}
	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aspawn [player]");
		return 1;
	}

	new pid = FindPlayer(params), msg[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}

	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (pid != playerid)) {
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

acmd:aspec(const playerid, const params[], const bool:help)
{
	if((gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) || IsPlayerNPC(playerid)) return 0;
	if(LevelCheck(playerid, E_SPEC_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aspec (player)");
		SendClientMessage(playerid, COLOUR_HELP, "Enter or exit spectate mode");
		return 1;
	}

	if(!IsSpawned(playerid) && !gPlayerData[playerid][E_SPECTATING]) {
		SendClientMessage(playerid, COLOUR_WARNING, "You need to be spawned to spectate");
		return 1;
	}

	new pid = INVALID_PLAYER_ID, msg[MAX_INPUT];
	if(isnull(params)) {
		if(gPlayerData[playerid][E_SPECTATING]) {	// already spectating and wants out
			SpawnUsingData(playerid);
			return 1;
		}
		format(msg, sizeof(msg), "%s has entered spectate mode", ReturnPlayerName(playerid));
		LogAction(msg);
		AddLogString(msg);

		if(gSpawnMethod <= SPAWN_DEFAULT) {
			StoreSpawnData(playerid);
		}
		CallRemoteFunction("OnAdminSpectate", "iii", playerid, FREE_SPECTATE_ID, INVALID_PLAYER_ID);

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

		if(gSpawnMethod <= SPAWN_DEFAULT) {
			StoreSpawnData(playerid);
		}
		CallRemoteFunction("OnAdminSpectate", "iii", playerid, pid, INVALID_PLAYER_ID);

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

acmd:aspectating(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && (gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;

	if(help) {
		if(playerid == INVALID_PLAYER_ID) {
			print("USAGE: /aspectating\nDisplay a list of all spectating players");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aspectating");
			SendClientMessage(playerid, COLOUR_HELP, "Display a list of all spectating players");
		}
		return 1;
	}

	new msg[512] = "Spectating admins:",
		admins,
		players,
		adminheads[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...},
		playerheads[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...},
		adminfreehead = INVALID_PLAYER_ID,
		playerfreehead = INVALID_PLAYER_ID,
		speclist[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...};

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING]) {
			if(gPlayerData[i][E_SPECID] != INVALID_PLAYER_ID) {
				if(adminheads[gPlayerData[i][E_SPECID]] == INVALID_PLAYER_ID) {
					adminheads[gPlayerData[i][E_SPECID]] = i;
				} else {
					new id = adminheads[gPlayerData[i][E_SPECID]];
					while(speclist[id] != INVALID_PLAYER_ID) id = speclist[id];
					speclist[id] = i;
				}
			} else {
				if(adminfreehead == INVALID_PLAYER_ID) {
					adminfreehead = i;
				} else {
					new id = adminfreehead;
					while(speclist[id] != INVALID_PLAYER_ID) id = speclist[id];
					speclist[id] = i;
				}
			}
			admins++;
		} else if(GetPlayerState(i) == PLAYER_STATE_SPECTATING) {
			if(gPlayerData[i][E_SPECID] != INVALID_PLAYER_ID) {
				if(playerheads[gPlayerData[i][E_SPECID]] == INVALID_PLAYER_ID) {
					playerheads[gPlayerData[i][E_SPECID]] = i;
				} else {
					new id = playerheads[gPlayerData[i][E_SPECID]];
					while(speclist[id] != INVALID_PLAYER_ID) id = speclist[id];
					speclist[id] = i;
				}
			} else {
				if(playerfreehead == INVALID_PLAYER_ID) {
					playerfreehead = i;
				} else {
					new id = playerfreehead;
					while(speclist[id] != INVALID_PLAYER_ID) id = speclist[id];
					speclist[id] = i;
				}
			}
			players++;
		}
	}

	if(admins) {
		for(new i; i < sizeof(adminheads); i++) {
			if(adminheads[i] != INVALID_PLAYER_ID) {
				if(speclist[adminheads[i]] == INVALID_PLAYER_ID) {
					format(msg, sizeof(msg), "%s %s(%s)", msg, ReturnPlayerName(adminheads[i]), ReturnPlayerName(i));
				} else {
					format(msg, sizeof(msg), "%s <%s", msg, ReturnPlayerName(adminheads[i]));
					for(new j = adminheads[i]; speclist[j] != INVALID_PLAYER_ID; j = speclist[j]) {
						format(msg, sizeof(msg), "%s, %s", msg, ReturnPlayerName(speclist[j]));
					}
					format(msg, sizeof(msg), "%s>(%s)", msg, ReturnPlayerName(i));
				}
			}
		}
		if(adminfreehead != INVALID_PLAYER_ID) {
			format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(adminfreehead));
			for(new j = adminfreehead; speclist[j] != INVALID_PLAYER_ID; j = speclist[j]) {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(speclist[j]));
			}
		}
		if(playerid == INVALID_PLAYER_ID) {
			print(msg);
		} else {
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		}
	}

	if(players) {
		msg = "Spectating players:";
		for(new i; i < sizeof(playerheads); i++) {
			if(playerheads[i] != INVALID_PLAYER_ID) {
				if(speclist[playerheads[i]] == INVALID_PLAYER_ID) {
					format(msg, sizeof(msg), "%s %s(%s)", msg, ReturnPlayerName(playerheads[i]), ReturnPlayerName(i));
				} else {
					format(msg, sizeof(msg), "%s <%s", msg, ReturnPlayerName(playerheads[i]));
					for(new j = playerheads[i]; speclist[j] != INVALID_PLAYER_ID; j = speclist[j]) {
						format(msg, sizeof(msg), "%s, %s", msg, ReturnPlayerName(speclist[j]));
					}
					format(msg, sizeof(msg), "%s>(%s)", msg, ReturnPlayerName(i));
				}
			}
		}
		if(playerfreehead != INVALID_PLAYER_ID) {
			format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(playerfreehead));
			for(new j = playerfreehead; speclist[j] != INVALID_PLAYER_ID; j = speclist[j]) {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(speclist[j]));
			}
		}
		if(playerid == INVALID_PLAYER_ID) {
			print(msg);
		} else {
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		}
	} else if(admins == 0) {
		SendMessage(playerid, COLOUR_ADMIN, "No players are currently spectating");
	}
	return 1;
}

acmd:asuspend(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SUSPEND_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspend [player] [hours] (reason)");
		SendClientMessage(playerid, COLOUR_HELP, "Temporarily bans a player from the server");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspend [player] [hours] (reason)");
		return 1;
	}

	new stime[20], pid, sreason[MAX_INPUT] = DEFAULT_REASON;
	strscan(params, "psz", pid, stime, sizeof(stime), sreason, sizeof(sreason));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot suspend yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot suspend NPCs");
		return 1;
	}

	new Float:suspendtime = floatstr(stime);
	if(!isFloat(stime) || suspendtime <= 0.0 || suspendtime > 10000000.0) {	// a thousand years should be plenty
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid suspend time");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL]) && (pid != playerid)) {
		format(msg, sizeof(msg), "You cannot suspend level %i admins", gPlayerData[pid][E_ADMINLEVEL]);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new sIP[MAX_IP],
		pname[MAX_PLAYER_NAME];
	GetPlayerName(pid, pname, sizeof(pname));
	GetPlayerIp(pid, sIP, sizeof(sIP));

	new bool:IPonly = gServerData[E_LOGGEDIN_FUNC][0] == '\0' || !CallRemoteFunction(gServerData[E_LOGGEDIN_FUNC], "i", pid),
		level;
	if(IPonly) {
		level = Admin_GetHighestLevel(gAlarDB, "", sIP);
	} else {
		level = Admin_GetHighestLevel(gAlarDB, pname, sIP);
	}
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot suspend level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	if(IPonly) {
		format(msg, sizeof(msg), "Name: \"%s\" successfully suspended", pname);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
	}
	format(msg, sizeof(msg), "IP: \"%s\" successfully suspended", sIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	new shortreason[MAX_INPUT];

	if(sreason[0]) {
		strtruncate(shortreason, sreason);
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
	} else {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours", suspendtime);
	}
	SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);

	new datetime[MAX_TIMESTAMP];
	datetime = ReturnTimeStamp();

	if(gServerData[E_SUSPEND_MSG][0] != '\0') {
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			SendBanMsg(pid, gServerData[E_SUSPEND_MSG], datetime, "");
		} else {
			SendBanMsg(pid, gServerData[E_SUSPEND_MSG], datetime, gPlayerData[playerid][E_NAME]);
		}
	}
	if(shortreason[0]) {
		format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s for %0.2f hours (%s)", pname, pid, ReturnPlayerName(playerid), suspendtime, shortreason);
	} else {
		format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s for %0.2f hours", pname, pid, ReturnPlayerName(playerid), suspendtime);
	}

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %0.2f hours (%s)", pname, pid, suspendtime, shortreason);
		} else {
			format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %0.2f hours", pname, pid, suspendtime);
		}
	}

	AddJoinString(pid, COLOUR_SUSPEND, msg);
	Kick(pid);

	new hits = 1;
	if(gServerData[E_KICK_ALL_IPS]) {
		LoopPlayers(i) {
			if(i != pid && !IsPlayerNPC(i) && IPcompare(sIP, ReturnPlayerIP(i))) {
				if(sreason[0]) {
					format(msg, sizeof(msg), "You are suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
				} else {
					format(msg, sizeof(msg), "You are suspended from the server for %0.2f hours", suspendtime);
				}
				SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
				if(gServerData[E_SUSPEND_MSG][0] != '\0') {
					if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
						SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, "");
					} else {
						SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, gPlayerData[playerid][E_NAME]);
					}
				}
				if(shortreason[0]) {
					format(msg, sizeof(msg), "%s(%i) is suspended from the server (%s)", ReturnPlayerName(i), i, shortreason);
				} else {
					format(msg, sizeof(msg), "%s(%i) is suspended from the server", ReturnPlayerName(i), i);
				}

				LogAction(msg);
				AddLogString(msg);
				AddJoinString(i, COLOUR_SUSPEND, msg);
				Kick(i);
				hits++;
			}
		}
	} else {
		msg = "Players with the same IP:";
		LoopPlayers(i) {
			if(i != pid && IPcompare(sIP, ReturnPlayerIP(i))) {
				format(msg, sizeof(msg), "%s %s(%i)", ReturnPlayerName(i), i);
			}
		}
		if(msg[25]) {
			SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);
		}
	}

	if(IPonly) {
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			Suspensions_SuspendIP(gAlarDB, sIP, suspendtime, sreason, "", ReturnPlayerIP(playerid), hits);
		} else {
			Suspensions_SuspendIP(gAlarDB, sIP, suspendtime, sreason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
		}
	} else {
		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			Suspensions_SuspendPlayer(gAlarDB, pname, sIP, suspendtime, sreason, "", ReturnPlayerIP(playerid), hits);
		} else {
			Suspensions_SuspendPlayer(gAlarDB, pname, sIP, suspendtime, sreason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
		}
	}
	return 1;
}

acmd:asuspendip(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_SUSPEND_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspendip [IP] or [player] [hours] (reason)");
		if(cmdchk(playerid, E_RANGESUSPEND_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "Temporarily bans an IP or a player by their IP, an IP range such as 127.0.*.* may also be used");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Temporarily bans an IP or a player by their IP");
		}
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspendip [IP] or [player] [hours] (reason)");
		return 1;
	}

	new sIP[MAX_IP], stime[20], sreason[MAX_INPUT] = DEFAULT_REASON;
	strscan(params, "ssz", sIP, sizeof(sIP), stime, sizeof(stime), sreason, sizeof(sreason));

	if(!IPisvalid(sIP, cmdchk(playerid, E_RANGESUSPEND_LEVEL))) {
		new pid = FindPlayer(sIP);
		if(pid == INVALID_PLAYER_ID) {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid IP");
			return 1;
		} else {
			GetPlayerIp(pid, sIP, sizeof(sIP));
		}
	}

	new Float:suspendtime = floatstr(stime);
	if(!isFloat(stime) || suspendtime <= 0.0 || suspendtime > 10000000.0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid suspend time");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(!Suspensions_IsIPNotSuspended(gAlarDB, sIP)) {
		format(msg, sizeof(msg), "IP: \"%s\" is already suspended", sIP);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new level = Admin_GetHighestLevel(gAlarDB, "", sIP);
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot suspend level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	format(msg, sizeof(msg), "IP: %s successfully suspended", sIP);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	new shortreason[MAX_REASON];
	if(sreason[0]) {
		strtruncate(shortreason, sreason);
		format(msg, sizeof(msg), "%s has suspended the ip %s for %0.2f hours (%s)", ReturnPlayerName(playerid), sIP, suspendtime, shortreason);
	} else {
		format(msg, sizeof(msg), "%s has suspended the ip %s for %0.2f hours", ReturnPlayerName(playerid), sIP, suspendtime);
	}

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "The ip %s has been suspended for %0.2f hours (%s)", sIP, suspendtime, shortreason);
		} else {
			format(msg, sizeof(msg), "The ip %s has been suspended for %0.2f hours", sIP, suspendtime);
		}
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new datetime[MAX_TIMESTAMP];
	datetime = ReturnTimeStamp();

	new hits;
	LoopPlayers(i) {
		if(!IsPlayerNPC(i) && IPcompare(sIP, ReturnPlayerIP(i))) {
			if(sreason[0]) {
				format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
			} else {
				format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours", suspendtime);
			}
			SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
			if(gServerData[E_RANGESUSPEND_MSG][0] != '\0' && strfind(sIP, "*") != -1) {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
					SendBanMsg(i, gServerData[E_RANGESUSPEND_MSG], datetime, "");
				} else {
					SendBanMsg(i, gServerData[E_RANGESUSPEND_MSG], datetime, gPlayerData[playerid][E_NAME]);
				}
			} else if(gServerData[E_SUSPEND_MSG][0] != '\0') {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
					SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, "");
				} else {
					SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, gPlayerData[playerid][E_NAME]);
				}
			}
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s", ReturnPlayerName(i), i, ReturnPlayerName(playerid));
			}

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				if(shortreason[0]) {
					format(msg, sizeof(msg), "%s(%i) has been suspended from the server (%s)", ReturnPlayerName(i), i, shortreason);
				} else {
					format(msg, sizeof(msg), "%s(%i) has been suspended from the server", ReturnPlayerName(i), i);
				}
			}

			AddJoinString(i, COLOUR_SUSPEND, msg);
			Kick(i);
			hits++;
		}
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
		Suspensions_SuspendIP(gAlarDB, sIP, suspendtime, sreason, "", ReturnPlayerIP(playerid), hits);
	} else {
		Suspensions_SuspendIP(gAlarDB, sIP, suspendtime, sreason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
	}
	return 1;
}

acmd:asuspendname(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_BAN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspendname [player name] [hours] (reason)");
		if(cmdchk(playerid, E_WILDSUSPEND_LEVEL)) {
			SendClientMessage(playerid, COLOUR_HELP, "Temporarily bans a name from the server, the wildcards * and ? may be used");
		} else {
			SendClientMessage(playerid, COLOUR_HELP, "Temporarily bans a name from the server");
		}
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /asuspendname [player name] [hours] (reason)");
		return 1;
	}

	new sreason[MAX_INPUT] = DEFAULT_REASON, stime[20], sname[MAX_PLAYER_NAME];
	strscan(params, "ssz", sname, sizeof(sname), stime, sizeof(stime), sreason, sizeof(sreason));

	if(sreason[0] == '"') {
		new len = strlen(sreason);
		if(len > 2 && sreason[len-1] == '"') {
			strmid(sreason, sreason, 1, len-1);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	}

	if(!isValidName(sname, cmdchk(playerid, E_WILDSUSPEND_LEVEL))) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}

	new Float:suspendtime = floatstr(stime);
	if(!isFloat(stime) || suspendtime <= 0.0 || suspendtime > 10000000.0) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid suspend time");
		return 1;
	}

	new msg[MAX_INPUT * 2];
	if(!Suspensions_IsNameNotSuspended(gAlarDB, sname)) {
		format(msg, sizeof(msg), "Name: \"%s\" is already suspended", sname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	new level = Admin_GetHighestLevel(gAlarDB, sname);
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(msg, sizeof(msg), "You cannot suspend level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	format(msg, sizeof(msg), "Name: \"%s\" successfully suspended", sname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	new shortreason[MAX_REASON];
	if(sreason[0]) {
		strtruncate(shortreason, sreason);
		format(msg, sizeof(msg), "%s has suspended the name %s for %0.2f hours (%s)", ReturnPlayerName(playerid), sname, suspendtime, shortreason);
	} else {
		format(msg, sizeof(msg), "%s has suspended the name %s for %0.2f hours", ReturnPlayerName(playerid), sname, suspendtime);
	}

	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		if(shortreason[0]) {
			format(msg, sizeof(msg), "The name %s has been suspended for %0.2f hours (%s)", sname, suspendtime, shortreason);
		} else {
			format(msg, sizeof(msg), "The name %s has been suspended for %0.2f hours", sname, suspendtime);
		}
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	new datetime[MAX_TIMESTAMP];
	datetime = ReturnTimeStamp();

	new hits;
	LoopPlayers(i) {
		if(!IsPlayerNPC(i) && strwild(sname, ReturnPlayerName(i), true)) {
			if(sreason[0]) {
				format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", suspendtime, sreason);
			} else {
				format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours", suspendtime);
			}
			SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
			if(gServerData[E_SUSPEND_MSG][0] != '\0') {
				if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
					SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, "");
				} else {
					SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, gPlayerData[playerid][E_NAME]);
				}
			}
			if(shortreason[0]) {
				format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s (%s)", ReturnPlayerName(i), i, ReturnPlayerName(playerid), shortreason);
			} else {
				format(msg, sizeof(msg), "%s(%i) has been suspended from the server by %s", ReturnPlayerName(i), i, ReturnPlayerName(playerid));
			}

			LogAction(msg);
			AddLogString(msg);

			if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
				if(shortreason[0]) {
					format(msg, sizeof(msg), "%s(%i) has been suspended from the server (%s)", ReturnPlayerName(i), i, shortreason);
				} else {
					format(msg, sizeof(msg), "%s(%i) has been suspended from the server", ReturnPlayerName(i), i);
				}
			}

			AddJoinString(i, COLOUR_SUSPEND, msg);
			Kick(i);
			hits++;
		}
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
		Suspensions_SuspendName(gAlarDB, sname, suspendtime, sreason, "", ReturnPlayerIP(playerid), hits);
	} else {
		Suspensions_SuspendName(gAlarDB, sname, suspendtime, sreason, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid), hits);
	}
	return 1;
}

acmd:atime(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_TIME_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /atime [hour]");
		SendClientMessage(playerid, COLOUR_HELP, "Changes the server time");
		return 1;
	}

	if(isnull(params) || !isNumeric(params)) {
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

acmd:aunban(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNBAN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunban [player name] or [IP]");
		SendClientMessage(playerid, COLOUR_HELP, "Unbans a player from either their name or IP");
		return 1;
	}

	new bool:isanip,
		check[MAX_IP + MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			new pname[MAX_PLAYER_NAME];
			strmid(pname, params, 1, len-1);
			if(isValidName(pname)) {
				strcpy(check, pname);
			} else {
				SendMessage(playerid, COLOUR_WARNING, "Invalid name");
				return 1;
			}
		} else {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aunban [player name] or [IP]");
			return 1;
		}
	} else {
		isanip = IPisvalid(params, false);
		if(isnull(params) || (!isanip && !isValidName(params))) {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aunban [player name] or [IP]");
			return 1;
		}
		strcpy(check, params);
	}

	new msg[MAX_INPUT],
		BanData[E_ALAR_BAN];

	if(isanip) {
		if(!Bans_UnbanIP(gAlarDB, check, BanData)) {
			format(msg, sizeof(msg), "%s is not banned", check);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "IP: %s successfully unbanned", check);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "IP: %s has been unbanned from the server by %s", BanData[E_BAN_IP], ReturnPlayerName(playerid));

		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The ip %s has been unbanned from the server", BanData[E_BAN_IP]);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	} else {
		if(!Bans_UnbanName(gAlarDB, check, BanData)) {
			format(msg, sizeof(msg), "%s is not banned", check);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}
		format(msg, sizeof(msg), "Name: %s successfully unbanned", check);
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

acmd:aundesync(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNDESYNC_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /audesync [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Undesyncs a player");
		return 1;
	}

	if(isnull(params)) {
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
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "i", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_DESYNCED);
	return 1;
}

acmd:aunfreeze(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNFREEZE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunfreeze [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Unfreezes a player");
		return 1;
	}

	if(isnull(params)) {
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

	if(!IsPlayerNPC(pid)) {
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_FROZEN);
	}
	format(msg, sizeof(msg), "%s has been unfrozen by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unfrozen", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "i", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_FROZEN);
	return 1;
}

acmd:aunhide(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunhide");
		SendClientMessage(playerid, COLOUR_HELP, "Shows your admin status to non-admin players");
		return 1;
	}

	if(~gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		SendClientMessage(playerid, COLOUR_WARNING, "You are not hidden from the admin list");
		return 1;
	}

	if(gPlayerData[playerid][E_ADMINLEVEL] > 0) {
		Admin_Hidden(gAlarDB, gPlayerData[playerid][E_NAME], false);
	}

	gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_HIDDEN;
	SendClientMessage(playerid, COLOUR_ADMIN, "You have been unhidden from the admin list");
	CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_HIDDEN);
	return 1;
}

acmd:aunjail(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNJAIL_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunjail [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Unjails a player");
		return 1;
	}

	if(isnull(params)) {
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
	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
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

	if(gPlayerData[pid][E_HEALTH]) {
		switch(gSpawnMethod) {
			case SPAWN_ALAR_SPAWN: {
				if(gSpawnSaves & INFOTYPE_POSITION) {
					SetSpawnInfo(pid, GetPlayerTeam(pid), GetPlayerSkin(pid), gPlayerData[pid][E_POSX], gPlayerData[pid][E_POSY], gPlayerData[pid][E_POSZ], gPlayerData[pid][E_ROT], 0, 0, 0, 0, 0, 0);
				}
				gPlayerData[pid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
				SpawnPlayer(pid);
			}
			case SPAWN_ALAR_TIMER: {
				SpawnPlayer(pid);
				SetTimerEx("alar_setspawndata", 500, 0, "i", pid);	// stops stupid gamemode spawn stuff
			}
			default: {
				gPlayerData[pid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_POSITION | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
				SpawnPlayer(pid);
			}
		}
	} else {
		SetPlayerVirtualWorld(pid, 0);
		alar_OnPlayerWorldChange(pid, 0);
		SetPlayerInterior(pid, 0);
		SpawnPlayer(pid);
	}
	if(!IsPlayerNPC(pid)) {
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_JAILED);
	}
	format(msg, sizeof(msg), "%s has been unjailed by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);

	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unjailed", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_JAILED);
	return 1;
}

acmd:aunmute(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNMUTE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunmute [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Unmutes a player");
		return 1;
	}

	if(isnull(params)) {
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

	if(!IsPlayerNPC(pid)) {
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED);
	}

	format(msg, sizeof(msg), "%s has been unmuted by %s", ReturnPlayerName(pid), ReturnPlayerName(playerid));
	LogAction(msg);
	AddLogString(msg);
	if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
		format(msg, sizeof(msg), "%s has been unmuted", ReturnPlayerName(pid));
	}
	SendClientMessageToAll(COLOUR_PLAYER, msg);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
		}
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], gPlayerData[pid][E_STATE] | ADMIN_STATE_MUTED);
	return 1;
}

acmd:aunrape(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNRAPE_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunrape [player]");
		SendClientMessage(playerid, COLOUR_HELP, "Unfreezes/unjails and unmutes a player");
		return 1;
	}

	if(isnull(params)) {
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

	if(max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]) >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
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

		if(gPlayerData[pid][E_HEALTH]) {
			switch(gSpawnMethod) {
				case SPAWN_ALAR_SPAWN: {
					if(gSpawnSaves & INFOTYPE_POSITION) {
						SetSpawnInfo(pid, GetPlayerTeam(pid), GetPlayerSkin(pid), gPlayerData[pid][E_POSX], gPlayerData[pid][E_POSY], gPlayerData[pid][E_POSZ], gPlayerData[pid][E_ROT], 0, 0, 0, 0, 0, 0);
					}
					gPlayerData[pid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
					SpawnPlayer(pid);
				}
				case SPAWN_ALAR_TIMER: {
					SpawnPlayer(pid);
					SetTimerEx("alar_setspawndata", 500, 0, "i", pid);	// stops stupid gamemode spawn stuff
				}
				default: {
					gPlayerData[pid][E_SETINFO] = (INFOTYPE_VEHICLE |INFOTYPE_POSITION | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
					SpawnPlayer(pid);
				}
			}
		} else {
			SetPlayerVirtualWorld(pid, 0);
			alar_OnPlayerWorldChange(pid, 0);
			SetPlayerInterior(pid, 0);
			SpawnPlayer(pid);
		}
	}

	if(!IsPlayerNPC(pid)) {
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(pid), ADMIN_STATE_MUTED | ADMIN_STATE_FROZEN | ADMIN_STATE_JAILED);
	}

	CallRemoteFunction("OnAdminStateChange", "iii", pid, gPlayerData[pid][E_STATE], oldstatus);

	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == pid) {
			SpecHUDUpdate(i);
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

acmd:aunsuspend(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNSUSPEND_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunsuspend [player name] or [IP]");
		SendClientMessage(playerid, COLOUR_HELP, "Unsuspends a player from either their name or IP");
		return 1;
	}

	new bool:isanip,
		check[MAX_IP + MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			new pname[MAX_PLAYER_NAME];
			strmid(pname, params, 1, len-1);
			if(isValidName(pname)) {
				strcpy(check, pname);
			} else {
				SendMessage(playerid, COLOUR_WARNING, "Invalid name");
				return 1;
			}
		} else {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aunsuspend [player name] or [IP]");
			return 1;
		}
	} else {
		isanip = IPisvalid(params, false);
		if(isnull(params) || (!isanip && !isValidName(params))) {
			SendMessage(playerid, COLOUR_HELP, "USAGE: /aunsuspend [player name] or [IP]");
			return 1;
		}
		strcpy(check, params);
	}

	new msg[MAX_INPUT],
		SuspendData[E_ALAR_SUSPENSION];

	if(isanip) {
		if(!Suspensions_UnsuspendIP(gAlarDB, check, SuspendData)) {
			format(msg, sizeof(msg), "%s is not suspended", check);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "IP: %s successfully unsuspended", check);
		SendClientMessage(playerid, COLOUR_ADMIN, msg);
		format(msg, sizeof(msg), "IP: %s has been unsuspended from the server by %s", SuspendData[E_SUSPEND_IP], ReturnPlayerName(playerid));

		LogAction(msg);
		AddLogString(msg);
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "The ip %s has been unsuspended from the server", SuspendData[E_SUSPEND_IP]);
		}
		SendClientMessageToAll(COLOUR_PLAYER, msg);
	} else {
		if(!Suspensions_UnsuspendName(gAlarDB, check, SuspendData)) {
			format(msg, sizeof(msg), "%s is not suspended", check);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}

		format(msg, sizeof(msg), "Name: %s successfully unsuspended", check);
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

acmd:aunwarn(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNWARN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunwarn [player] or [player name]");
		SendClientMessage(playerid, COLOUR_HELP, "Removes a player's warnings");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunwarn [player name]");
		return 1;
	}

	new pid = INVALID_PLAYER_ID,
		pname[MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			strmid(pname, params, 1, len-1);
		}
		if(!isValidName(pname)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	} else if((pid = FindPlayer(params)) != INVALID_PLAYER_ID) {
		if(IsPlayerNPC(pid)) {
			SendMessage(playerid, COLOUR_WARNING, "NPCs cannot be warned");
			return 1;
		}
		GetPlayerName(pid, pname, sizeof(pname));
	} else {
		if(!isValidName(params)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
		strcpy(pname, params);
	}

	new string[MAX_INPUT];
	if(pid == INVALID_PLAYER_ID) {
		new level = Admin_GetHighestLevel(gAlarDB, pname);
		if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
			format(string, sizeof(string), "You cannot unwarn level %i admins", level);
			SendClientMessage(playerid, COLOUR_WARNING, string);
			return 1;
		}
	} else if(playerid == pid || (gPlayerData[playerid][E_NAME][0] != '\0' && strcmp(gPlayerData[playerid][E_NAME], pname, true) == 0)) {
			SendClientMessage(playerid, COLOUR_WARNING, "You cannot unwarn yourself");
			return 1;
	} else {
		new level = max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]);
		if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
			format(string, sizeof(string), "You cannot unwarn level %i admins", level);
			SendClientMessage(playerid, COLOUR_WARNING, string);
			return 1;
		}
	}

	new warnings = Warnings_GetWarningCount(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]);
	if(warnings) {
		Warnings_SetInactive(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]);
		format(string, sizeof(string), "You have removed %i warnings from %s", warnings, pname);
		SendClientMessage(playerid, COLOUR_ADMIN, string);

		format(string, sizeof(string), "%s has removed %i warnings from %s", ReturnPlayerName(playerid), warnings, pname);
		LogAction(string);
		AddLogString(string);
	} else {
		format(string, sizeof(string), "%s has no warnings", pname);
		SendClientMessage(playerid, COLOUR_WARNING, string);
	}

	return 1;
}

acmd:aunwhitelist(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_UNWHITELIST_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunwhitelist [player name]");
		SendClientMessage(playerid, COLOUR_HELP, "Removes a player name's protection from range bans/suspensions");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunwhitelist [player name]");
		return 1;
	}

	new wname[MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			strmid(wname, params, 1, len-1);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	} else {
		strcpy(wname, params);
	}

	if(!isValidName(wname)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}

	new msg[MAX_INPUT];
	if(!Whitelist_IsNameWhitelisted(gAlarDB, wname)) {
		format(msg, sizeof(msg), "The name %s is not whitelisted", wname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	Whitelist_UnwhitelistName(gAlarDB, wname);

	format(msg, sizeof(msg), "The name %s has been unwhitelisted", wname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has unwhitelisted the name %s", ReturnPlayerName(playerid), wname);
	LogAction(msg);
	AddLogString(msg);

	new pname[MAX_PLAYER_NAME];
	LoopPlayers(i) {
		GetPlayerName(i, pname, sizeof(pname));
		if(strcmp(pname, wname, true) == 0) {
			gPlayerData[i][E_WHITELISTED] = false;

			new BanData[E_ALAR_BAN],
				pIP[MAX_IP];
			GetPlayerIp(i, pIP, sizeof(pIP));
			if(Bans_GetBanInfo(gAlarDB, pname, pIP, BanData, false, false, true)) {
				if(BanData[E_BAN_REASON][0]) {
					format(msg, sizeof(msg), "You are banned from this server (%s)", BanData[E_BAN_REASON]);
				} else {
					msg = "You are banned from this server";
				}
				SendClientMessage(i, COLOUR_WARNING, msg);
				if(gServerData[E_RANGEBAN_MSG][0] != '\0' && strfind(BanData[E_BAN_IP], "*") != -1) {
					SendBanMsg(i, gServerData[E_RANGEBAN_MSG], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
				} else if(gServerData[E_BAN_MSG][0] != '\0') {
					SendBanMsg(i, gServerData[E_BAN_MSG], BanData[E_BAN_DATETIME], BanData[E_BAN_ADMIN]);
				}
				if(BanData[E_BAN_REASON][0]) {
					format(msg, sizeof(msg), "%s(%i) is banned from this server (%s)", pname, i, BanData[E_BAN_REASON]);
				} else {
					format(msg, sizeof(msg), "%s(%i) is banned from this server", pname, i);
				}
				if(gServerData[E_HIDE_BANS]) {
					gPlayerData[i][E_HIDEEXIT] = 3;
				} else {
					gPlayerData[i][E_HIDEEXIT] = 1;
					AddJoinString(i, COLOUR_BAN, msg);
				}
				if(BanData[E_BAN_REASON][0]) {
					format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server (%s)", pname, i, BanData[E_BAN_NAME], BanData[E_BAN_IP], BanData[E_BAN_REASON]);
				} else {
					format(msg, sizeof(msg), "%s(%i) [%s:%s] is banned from this server", pname, i, BanData[E_BAN_NAME], BanData[E_BAN_IP]);
				}
				AddLogString(msg);
				LogAction(msg);
				Kick(i);
				return 1;
			}

			new SuspendData[E_ALAR_SUSPENSION],
				bool:unsuspended = false;
			while(Suspensions_GetSuspendInfo(gAlarDB, pname, pIP, SuspendData, gPlayerData[i][E_WHITELISTED], false, true)) {
				if(SuspendData[E_SUSPEND_EXPIRED]) {
					Suspensions_UnsuspendPlayer(gAlarDB, pname, pIP, SuspendData);
					if(SuspendData[E_SUSPEND_REASON][0]) {
						format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended (%s)", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s:%s] has been unsuspended", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
					}
					LogAction(msg);
					AddLogString(msg);
					unsuspended = true;
				} else {
					if(SuspendData[E_SUSPEND_REASON][0]) {
						format(msg, sizeof(msg), "You are suspended from this server until %s (%s)", SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "You are suspended from this server until %s", SuspendData[E_SUSPEND_EXPIRES]);
					}
					SendClientMessage(i, COLOUR_WARNING, msg);
					if(gServerData[E_RANGESUSPEND_MSG][0] != '\0' && strfind(SuspendData[E_SUSPEND_IP], "*") != -1) {
						SendBanMsg(i, gServerData[E_RANGESUSPEND_MSG], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
					} else if(gServerData[E_SUSPEND_MSG][0] != '\0') {
						SendBanMsg(i, gServerData[E_SUSPEND_MSG], SuspendData[E_SUSPEND_DATETIME], SuspendData[E_SUSPEND_ADMIN]);
					}
					if(SuspendData[E_SUSPEND_REASON][0]) {
						format(msg, sizeof(msg), "%s(%i) is suspended from this server until %s (%s)", pname, i, SuspendData[E_SUSPEND_EXPIRES], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "%s(%i) is suspended from this server until %s", pname, i, SuspendData[E_SUSPEND_EXPIRES]);
					}
					if(gServerData[E_HIDE_BANS]) {
						gPlayerData[i][E_HIDEEXIT] = 3;
					} else {
						gPlayerData[i][E_HIDEEXIT] = 1;
						AddJoinString(i, COLOUR_SUSPEND, msg);
					}
					if(SuspendData[E_SUSPEND_REASON][0]) {
						format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server (%s)", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP], SuspendData[E_SUSPEND_REASON]);
					} else {
						format(msg, sizeof(msg), "%s(%i) [%s:%s] is suspended from this server", pname, i, SuspendData[E_SUSPEND_NAME], SuspendData[E_SUSPEND_IP]);
					}
					AddLogString(msg);
					LogAction(msg);

					Kick(i);
					return 1;
				}
			}
			if(unsuspended) {
				SendClientMessage(i, COLOUR_PLAYER, "You have been unsuspended");
				format(msg, sizeof(msg), "%s(%i) has been unsuspended", pname, i);

				LoopPlayers(j) {
					if(gPlayerData[j][E_ADMINLEVEL] > 0 || gPlayerData[j][E_RCONLEVEL] > 0) {
						SendClientMessage(j, COLOUR_ADMIN, msg);
					}
				}
			}
			break;
		}
	}
	return 1;
}

acmd:awarn(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_WARN_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /awarn [player] [reason]");
		SendClientMessage(playerid, COLOUR_HELP, "Warns a player");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /awarn [player] [reason]");
		return 1;
	}

	new pid, string[MAX_INPUT];
	strscan(params, "ps", pid, string, sizeof(string));

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	if(pid == playerid) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot warn yourself");
		return 1;
	}
	if(IsPlayerNPC(pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You cannot warn NPCs");
		return 1;
	}

	if(string[0] == '\0') {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid reason");
		return 1;
	}

	if(gServerData[E_WARN_PROTECTION] > 0 && GetTickCount() - gPlayerData[pid][E_LAST_WARNING] < gServerData[E_WARN_PROTECTION] * 1000) {
		format(string, sizeof(string), "%s has already been warned", ReturnPlayerName(pid));
		SendClientMessage(playerid, COLOUR_WARNING, string);
		return 1;
	}

	if(gServerData[E_LOGGEDIN_FUNC][0] == '\0' || !CallRemoteFunction(gServerData[E_LOGGEDIN_FUNC], "i", pid)) {
		SendClientMessage(playerid, COLOUR_WARNING, "You can only warn players who are logged in");
		return 1;
	}

	new level = max(gPlayerData[pid][E_ADMINLEVEL], gPlayerData[pid][E_RCONLEVEL]);
	if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
		format(string, sizeof(string), "You cannot warn level %i admins", level);
		SendClientMessage(playerid, COLOUR_WARNING, string);
		return 1;
	}

	if(gAlarDB) {
		new pname[MAX_PLAYER_NAME];
		GetPlayerName(pid, pname, sizeof(pname));

		level = Admin_GetHighestLevel(gAlarDB, pname);
		if(level >= max(gPlayerData[playerid][E_ADMINLEVEL], gPlayerData[playerid][E_RCONLEVEL])) {
			format(string, sizeof(string), "You cannot warn level %i admins", level);
			SendClientMessage(playerid, COLOUR_WARNING, string);
			return 1;
		}

		#if SOUND_VOLUME > 0
			new Float:px, Float:py, Float:pz;
			GetPlayerPos(pid, px, py, pz);
			for(new i; i < SOUND_VOLUME; i++) {
				PlayerPlaySound(pid, 1132, px, py, pz);
			}
		#endif

		new msg[MAX_INPUT * 2];
		if(gPlayerData[playerid][E_STATE] & ADMIN_STATE_HIDDEN) {
			format(msg, sizeof(msg), "You have been warned (%s)", string);
		} else {
			format(msg, sizeof(msg), "You have been warned by %s (%s)", ReturnPlayerName(playerid), string);
		}
		SendWrappedMessageToPlayer(pid, COLOUR_WARNING, msg);

		format(msg, sizeof(msg), "%s has been warned (%s)", pname, string);
		SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);

		format(msg, sizeof(msg), "%s has been warned by %s (%s)", pname, ReturnPlayerName(playerid), string);
		LogAction(msg);

		strtruncate(msg, string, MAX_REASON);
		format(msg, sizeof(msg), "%s has been warned by %s (%s)", pname, ReturnPlayerName(playerid), msg);
		AddLogString(msg);

		db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));

		if(gPlayerData[playerid][E_ADMINLEVEL] <= 0) {
			Warnings_WarnPlayer(gAlarDB, pname, string, "", ReturnPlayerIP(playerid));
		} else {
			Warnings_WarnPlayer(gAlarDB, pname, string, gPlayerData[playerid][E_NAME], ReturnPlayerIP(playerid));
		}
		gPlayerData[pid][E_LAST_WARNING] = GetTickCount();

		if(gServerData[E_WARN_LIMIT] > 0 && Warnings_GetWarningCount(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]) >= gServerData[E_WARN_LIMIT]) {
			if(gServerData[E_WARN_SUSPEND_TIME] > 0) {
				format(msg, sizeof(msg), "You have been suspended from the server for %i hours (Too many warnings)", gServerData[E_WARN_SUSPEND_TIME]);
				SendClientMessage(pid, COLOUR_WARNING, msg);

				Suspensions_SuspendPlayer(gAlarDB, pname, ReturnPlayerIP(pid), gServerData[E_WARN_SUSPEND_TIME], "Too many warnings", "", "", 1);

				if(gServerData[E_SUSPEND_MSG][0] != '\0') {
					SendBanMsg(pid, gServerData[E_SUSPEND_MSG], ReturnTimeStamp(), "");
				}

				format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %i hours (Too many warnings)", pname, pid, gServerData[E_WARN_SUSPEND_TIME]);
				AddJoinString(pid, COLOUR_SUSPEND, msg);
			} else {
				SendClientMessage(pid, COLOUR_WARNING, "You have been kicked server (Too many warnings)");

				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Too many warnings)", pname, pid);
				AddJoinString(pid, COLOUR_KICK, msg);
			}
			LogAction(msg);
			AddLogString(msg);

			Warnings_SetInactive(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]);

			Kick(pid);
		}
		db_free_result(db_query(gAlarDB, "END TRANSACTION"));
	}
	return 1;
}

acmd:awarnings(const playerid, const params[], const bool:help)
{
	if(playerid != INVALID_PLAYER_ID && (gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0)) return 0;

	if(help) {
		SendMessage(playerid, COLOUR_HELP, "USAGE: /awarnings (player) or (player name)");
		SendMessage(playerid, COLOUR_HELP, "Displays a list of all currently warned player, or a player's warnings");
		return 1;
	}

	if(isnull(params)) {
		if(gAlarDB) {
			new string[512] = "Warned players:",
				warnings;
			db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));
			LoopPlayers(i) {
				if(!IsPlayerNPC(i)) {
					if((warnings = Warnings_GetWarningCount(gAlarDB, ReturnPlayerName(i), gServerData[E_WARN_TIMEOUT]))) {
						format(string, sizeof(string), "%s %s<%i>", string, ReturnPlayerName(i), warnings);
					}
				}
			}
			db_free_result(db_query(gAlarDB, "END TRANSACTION"));
			if(string[15]) {
				if(playerid == INVALID_PLAYER_ID) {
					print(string);
				} else {
					SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string);
				}
				return 1;
			}
		}
		SendMessage(playerid, COLOUR_ADMIN, "None of the connected players have any warnings");
		return 1;
	}

	new pid = INVALID_PLAYER_ID,
		pname[MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			strmid(pname, params, 1, len-1);
		}
		if(!isValidName(pname)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	} else if((pid = FindPlayer(params)) != INVALID_PLAYER_ID) {
		if(IsPlayerNPC(pid)) {
			SendMessage(playerid, COLOUR_WARNING, "NPCs cannot be warned");
			return 1;
		}
		GetPlayerName(pid, pname, sizeof(pname));
	} else {
		if(!isValidName(params)) {
			SendMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
		strcpy(pname, params);
	}

	if(gAlarDB) {
		db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));
		new warnings = Warnings_GetWarningCount(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]),
			string[MAX_INPUT * 2];

		if(warnings) {
			if(playerid == INVALID_PLAYER_ID) {
				if(pid != INVALID_PLAYER_ID) {
					printf("%s(%i) has %i warnings:", pname, pid, warnings);
				} else {
					printf("%s has %i warnings:", pname, warnings);
				}
			} else if(pid == playerid || (gPlayerData[playerid][E_NAME][0] != '\0' && strcmp(gPlayerData[playerid][E_NAME], pname, true) == 0)) {
				if(warnings == 1) {
					string = "You have 1 warning:";
				} else {
					format(string, sizeof(string), "You have %i warnings:", warnings);
				}
				SendClientMessage(playerid, COLOUR_ADMIN, string);
			} else if(pid != INVALID_PLAYER_ID) {
				if(warnings == 1) {
					format(string, sizeof(string), "%s(%i) has 1 warning:", pname, pid);
				} else {
					format(string, sizeof(string), "%s(%i) has %i warnings:", pname, pid, warnings);
				}
				SendClientMessage(playerid, COLOUR_ADMIN, string);
			} else {
				if(warnings == 1) {
					format(string, sizeof(string), "%s has 1 warning:", pname);
				} else {
					format(string, sizeof(string), "%s has %i warnings:", pname, warnings);
				}
				SendClientMessage(playerid, COLOUR_ADMIN, string);
			}

			new WarnInfo[E_ALAR_WARNING];
			for(new i; i < warnings; i++) {
				Warnings_GetWarningInfo(gAlarDB, pname, i, WarnInfo);
				if(isnull(WarnInfo[E_WARN_ADMIN])) {
					if(isnull(WarnInfo[E_WARN_REASON])) {
						format(string, sizeof(string), "%4i. Date: %s", i + 1, WarnInfo[E_WARN_DATETIME]);
					} else {
						format(string, sizeof(string), "%4i. Date: %s  Reason: %s", i + 1, WarnInfo[E_WARN_DATETIME], WarnInfo[E_WARN_REASON]);
					}
				} else {
					if(isnull(WarnInfo[E_WARN_REASON])) {
						format(string, sizeof(string), "%4i. Date: %s  Admin: %s", i + 1, WarnInfo[E_WARN_DATETIME], WarnInfo[E_WARN_ADMIN]);
					} else {
						format(string, sizeof(string), "%4i. Date: %s  Admin: %s  Reason: %s", i + 1, WarnInfo[E_WARN_DATETIME], WarnInfo[E_WARN_ADMIN], WarnInfo[E_WARN_REASON]);
					}

				}
				if(playerid == INVALID_PLAYER_ID) {
					print(string);
				} else {
					SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, string, .prefix="        ");
				}
			}
		} else {
			format(string, sizeof(string), "%s has no warnings", pname);
			SendMessage(playerid, COLOUR_ADMIN, string);
		}
		db_free_result(db_query(gAlarDB, "END TRANSACTION"));
	}
	return 1;
}

acmd:aweather(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_WEATHER_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aweather [weather ID]");
		SendClientMessage(playerid, COLOUR_HELP, "Changes the server weather");
		return 1;
	}

	if(!isInteger(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aweather [weather ID]");
		return 1;
	}

	new wid = strval(params);

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

acmd:awhitelist(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_WHITELIST_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aunwhitelist [player name]");
		SendClientMessage(playerid, COLOUR_HELP, "Protects a player name from range bans/suspensions");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /awhitelist [player name]");

		new msg[512] = "Whitelisted players:";
		LoopPlayers(i) {
			if(gPlayerData[i][E_WHITELISTED]) {
				format(msg, sizeof(msg), "%s %s", msg, ReturnPlayerName(i));
			}
		}
		if(msg[20]) {
			SendWrappedMessageToPlayer(playerid, COLOUR_ADMIN, msg);
		}
		return 1;
	}

	new wname[MAX_PLAYER_NAME];
	if(params[0] == '"') {
		new len = strlen(params);
		if(len > 2 && params[len-1] == '"') {
			strmid(wname, params, 1, len-1);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
			return 1;
		}
	} else {
		strcpy(wname, params);
	}

	if(!isValidName(wname)) {
		SendClientMessage(playerid, COLOUR_WARNING, "Invalid name");
		return 1;
	}

	new msg[MAX_INPUT];
	if(Whitelist_IsNameWhitelisted(gAlarDB, wname)) {
		format(msg, sizeof(msg), "The name %s is already whitelisted", wname);
		SendClientMessage(playerid, COLOUR_WARNING, msg);
		return 1;
	}

	Whitelist_WhitelistName(gAlarDB, wname);
	LoopPlayers(i) {
		if(strcmp(ReturnPlayerName(i), wname, true) == 0) {
			gPlayerData[i][E_WHITELISTED] = true;
			break;
		}
	}

	format(msg, sizeof(msg), "The name %s has been whitelisted", wname);
	SendClientMessage(playerid, COLOUR_ADMIN, msg);

	format(msg, sizeof(msg), "%s has whitelisted the name %s", ReturnPlayerName(playerid), wname);
	LogAction(msg);
	AddLogString(msg);
	return 1;
}

acmd:aworld(const playerid, const params[], const bool:help)
{
	if(gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_RCONLEVEL] <= 0) return 0;
	if(LevelCheck(playerid, E_WORLD_LEVEL)) return 1;

	if(help) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aworld [player] [world]");
		SendClientMessage(playerid, COLOUR_HELP, "Sets a player's virtual world");
		return 1;
	}

	if(isnull(params)) {
		SendClientMessage(playerid, COLOUR_HELP, "USAGE: /aworld [player] [world]");
		return 1;
	}

	new pid, world;
	strscan(params, "pi", pid, world);

	if(pid == INVALID_PLAYER_ID) {
		SendClientMessage(playerid, COLOUR_WARNING, "Player not found");
		return 1;
	}
	new msg[MAX_INPUT];
	if(!IsSpawned(pid) && !(gPlayerData[pid][E_SPECTATING] && gPlayerData[pid][E_SPECID] == INVALID_PLAYER_ID)) {
		if(playerid != pid) {
			format(msg, sizeof(msg), "%s is not spawned", ReturnPlayerName(pid));
			SendClientMessage(playerid, COLOUR_WARNING, msg);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You are not spawned");
		}
		return 1;
	}

	if(world < 0) {
		SendClientMessage(playerid, COLOUR_WARNING, "The world must be between positive");
		return 1;
	}

	SetPlayerVirtualWorld(pid, world);
	alar_OnPlayerWorldChange(pid, world);

	if(IsPlayerInAnyVehicle(pid)) {
		new vid = GetPlayerVehicleID(pid);
		SetVehicleVirtualWorld(vid, world);
		LoopPlayers(i) {
			if(IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == vid) {
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
	if(IsPlayerConnected(playerid) && gPlayerData[playerid][E_ADMINLEVEL] <= 0 && gPlayerData[playerid][E_KICK]) {
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

stock ShowVehicleTags(playerid)
{
	if(gPlayerData[playerid][E_TIMER_VEHICLETAGS]) {
		KillTimer(gPlayerData[playerid][E_TIMER_VEHICLETAGS]);
		gPlayerData[playerid][E_TIMER_VEHICLETAGS] = 0;
	}
	for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS]); i++) {
		if(gPlayerData[playerid][E_VEHICLETAGS][i] != INVALID_PLAYER3DTEXT_ID) {
			DeletePlayer3DTextLabel(playerid, gPlayerData[playerid][E_VEHICLETAGS][i]);
			gPlayerData[playerid][E_VEHICLETAGS][i] = INVALID_PLAYER3DTEXT_ID;
		}
	}

	new Float:px, Float:py, Float:pz,
		Float:vx, Float:vy, Float:vz,
		Float:dist,
		CloseVehicleID[sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS])] = {INVALID_VEHICLE_ID, ...},
		Float:CloseVehicleDistance[sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS])] = {FLOAT_INF, ...};

	if(IsPlayerInAnyVehicle(playerid)) {
		GetVehiclePos(GetPlayerVehicleID(playerid), px, py, pz);
	} else if(gPlayerData[playerid][E_SPECTATING]) {
		if(gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID) {
			px = gPlayerData[playerid][E_CAM_POS_X];
			py = gPlayerData[playerid][E_CAM_POS_Y];
			pz = gPlayerData[playerid][E_CAM_POS_Z];
		} else {
			if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID])) {
				GetVehiclePos(GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]), px, py, pz);
			} else {
				GetPlayerPos(gPlayerData[playerid][E_SPECID], px, py, pz);
			}
		}
	} else {
		GetPlayerPos(playerid, px, py, pz);
	}

	// Find the X few vehicles
	new vid, idx;
	for(; vid < MAX_VEHICLES && idx < sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS]); vid++) {
		if(Bit_Get(gCreatedVehicles, vid) && IsVehicleStreamedIn(vid, playerid)) {
			GetVehiclePos(vid, vx, vy, vz);
			CloseVehicleID[idx] = vid;
			CloseVehicleDistance[idx] = ((vx - px) * (vx - px)) + ((vy - py) * (vy - py)) + ((vz - pz) * (vz - pz));
			idx++;
		}
	}

	if(idx) {
		// Find the closest vehicles
		for(; vid < MAX_VEHICLES; vid++) {
			if(Bit_Get(gCreatedVehicles, vid) && IsVehicleStreamedIn(vid, playerid)) {
				GetVehiclePos(vid, vx, vy, vz);
				dist = ((vx - px) * (vx - px)) + ((vy - py) * (vy - py)) + ((vz - pz) * (vz - pz));
				for(new j; j < sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS]); j++) {
					if(dist < CloseVehicleDistance[j]) {
						CloseVehicleID[j] = vid;
						CloseVehicleDistance[j] = dist;
						break;
					}
				}
			}
		}

		// Show the tags
		new string[20];
		for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS]); i++) {
			if(CloseVehicleID[i] == INVALID_VEHICLE_ID) break;
			format(string, sizeof(string), "Vehicle ID: %i", CloseVehicleID[i]);
			gPlayerData[playerid][E_VEHICLETAGS][i] = CreatePlayer3DTextLabel(playerid, string, COLOUR_VEHICLE, 0.0, 0.0, 0.4, VEHICLE_TAGS_DISTANCE, INVALID_PLAYER_ID, CloseVehicleID[i], 1);
		}
		gPlayerData[playerid][E_TIMER_VEHICLETAGS] = SetTimerEx("alar_hidevehicletags", (VEHICLE_TAGS_TIME) * 1000, 0, "i", playerid);
	}
}

#if VEHICLE_TAGS_TIME > 0 && VEHICLE_TAGS_NUMBER > 0
	public alar_hidevehicletags(playerid)
	{
		if(gPlayerData[playerid][E_TIMER_VEHICLETAGS]) {
			KillTimer(gPlayerData[playerid][E_TIMER_VEHICLETAGS]);
			gPlayerData[playerid][E_TIMER_VEHICLETAGS] = 0;
		}
		for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_VEHICLETAGS]); i++) {
			if(gPlayerData[playerid][E_VEHICLETAGS][i] != INVALID_PLAYER3DTEXT_ID) {
				DeletePlayer3DTextLabel(playerid, gPlayerData[playerid][E_VEHICLETAGS][i]);
				gPlayerData[playerid][E_VEHICLETAGS][i] = INVALID_PLAYER3DTEXT_ID;
			}
		}
	}
#endif

#if SPEC_TXT_TIME > 0
	public alar_hidespectxt(playerid)
	{
		if(!IsPlayerConnected(playerid)) return;
		gPlayerData[playerid][E_SPECTIMER] = 0;
		TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECTXT]);
		gPlayerData[playerid][E_SPECTXT] = INVALID_TEXT_DRAW;
	}
#endif

public alar_fixkick(playerid)
{
	Kick(playerid);
}

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
		if(gServerData[E_MAX_PING] > 0) {
			if(((gPlayerData[i][E_ADMINLEVEL] > 0 || gPlayerData[i][E_RCONLEVEL] > 0) && gServerData[E_PING_IMMUNITY]) || gPlayerData[i][E_IMMUNE]) continue;
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
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(playerid), ADMIN_STATE_FROZEN);
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_FROZEN;
		gPlayerData[playerid][E_FREEZE_TIME] = 0;

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
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
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(playerid), ADMIN_STATE_JAILED);
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_JAILED;
		gPlayerData[playerid][E_JAIL_TIME] = 0;
		if(gPlayerData[playerid][E_HEALTH]) {
			switch(gSpawnMethod) {
				case SPAWN_ALAR_SPAWN: {
					if(gSpawnSaves & INFOTYPE_POSITION) {
						SetSpawnInfo(playerid, GetPlayerTeam(playerid), GetPlayerSkin(playerid), gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
					}
					gPlayerData[playerid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
					SpawnPlayer(playerid);
				}
				case SPAWN_ALAR_TIMER: {
					SpawnPlayer(playerid);
					SetTimerEx("alar_setspawndata", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
				}
				default: {
					gPlayerData[playerid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_POSITION | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
					SpawnPlayer(playerid);
				}
			}
		} else {
			SetPlayerVirtualWorld(playerid, 0);
			alar_OnPlayerWorldChange(playerid, 0);
			SetPlayerInterior(playerid, 0);
			SpawnPlayer(playerid);
		}
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
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
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(playerid), ADMIN_STATE_MUTED);
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_MUTED;
		gPlayerData[playerid][E_MUTE_TIME] = 0;
		gPlayerData[playerid][E_LASTMSG][0] = '\0';
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
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
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
			}
		}
		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], gPlayerData[playerid][E_STATE] | ADMIN_STATE_DESYNCED);
	}
	gPlayerData[playerid][E_UNDESYNC] = 0;
}

public alar_pausecheck()
{
	LoopPlayers(i) {
		if(IsSpawned(i)) {
			if(gPlayerData[i][E_PAUSED]) {
				if(GetTickCount() - gPlayerData[i][E_LAST_UPDATE] < 2200) {
					gPlayerData[i][E_PAUSED] = false;
					LoopPlayers(j) {
						if(gPlayerData[j][E_SPECTATING] && gPlayerData[j][E_SPECID] == i) {
							SpecHUDUpdate(j);
						}
					}
				}
			} else if(GetTickCount() - gPlayerData[i][E_LAST_UPDATE] > 2200) {
				gPlayerData[i][E_PAUSED] = true;
				LoopPlayers(j) {
					if(gPlayerData[j][E_SPECTATING] && gPlayerData[j][E_SPECID] == i) {
						SpecHUDUpdate(j);
					}
				}
			}
		} else if(gPlayerData[i][E_PAUSED]) {
			gPlayerData[i][E_PAUSED] = false;
		}
	}
}

public alar_rconupdate(Unsigned:IPCode)
{
	new IP[MAX_IP], string[MAX_INPUT];
	IP = Code2IP(IPCode);
	LoopPlayers(i) {
		if(strcmp(IP, ReturnPlayerIP(i)) == 0 && IsPlayerAdmin(i) && gServerData[E_RCON_LEVEL] != gPlayerData[i][E_RCONLEVEL]) {
			gPlayerData[i][E_RCONLEVEL] = gServerData[E_RCON_LEVEL];
			if(gServerData[E_RCON_LEVEL] > 0) {
				Bit_Set(g_bitAdmins, i, 1);
				AllowPlayerTeleport(i, cmdchk(i, E_TELE_LEVEL));
			}
			format(string, sizeof(string), "%s logged in as an RCON admin", ReturnPlayerName(i));
			AddLogString(string);
			return;
		}
	}
	format(string, sizeof(string), "The IP %s logged in as an RCON admin", IP);
	AddLogString(string);
}

stock ReturnNumPlateTxt(vehicleid)
{
	new string[9] = "        ";
	if(gServerData[E_DEFAULT_NUM_PLATE][0] == '\0') return string;
	strcpy(string, gServerData[E_DEFAULT_NUM_PLATE]);
	new value[12];
	valstr(value, vehicleid);
	strreplace(string, "!", value);
	for (new i; i < 8; i++) {
	    switch(string[i]){
	        case 'a'..'z': string[i] += 'A' - 'a';
			case 'A'..'Z', '0'..'9': continue;
			case '#': string[i] = random(10) + '0';
			case '$': string[i] = random(26) + 'A';
			case '\0': break;
			default: string[i] = ' ';
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

stock JoinFloodCheck(const playerid)
{
	new playerip[MAX_IP],
		Unsigned:ipcode,
		playertime = GetTickCount(),
		playerjoins = 1;

	GetPlayerIp(playerid, playerip, sizeof(playerip));
	ipcode = IP2Code(playerip);

	for(new i; i < sizeof(gJoinList); i++) {
		if(ipcode == gJoinList[i][E_LASTIP] && (playertime - gJoinList[i][E_LASTTIME]) <= (JOINTIME * 1000)) {
			playerjoins++;
		}
	}

	for(new i; i < sizeof(gJoinList)-1; i++) {
		gJoinList[i] = gJoinList[i+1];
	}
	gJoinList[sizeof(gJoinList)-1][E_LASTIP] = ipcode;
	gJoinList[sizeof(gJoinList)-1][E_LASTTIME] = playertime;

	if(playerjoins >= JOINCOUNT) {
		new pname[MAX_PLAYER_NAME];
		GetPlayerName(playerid, pname, sizeof(pname));
		new string[MAX_INPUT];
		if(gServerData[E_JOIN_BAN_TIME] > 0) {
			format(string, sizeof(string), "You have been kicked from the server (Join flood, try again in %i seconds)", gServerData[E_JOIN_BAN_TIME]);
			SetTimerEx("alar_floodunban", gServerData[E_JOIN_BAN_TIME] * 1000, 0, "i", _:ipcode);
			SendClientMessage(playerid, COLOUR_WARNING, string);
		} else {
			SendClientMessage(playerid, COLOUR_WARNING, "You have been banned from the server (Join flood");
			if(gServerData[E_BAN_MSG][0] != '\0') {
				SendBanMsg(playerid, gServerData[E_BAN_MSG], ReturnTimeStamp(), "");
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
		TempBan_Add(gAlarDB, playerip, "Join flood");
		BanEx(playerid, "Join flood");
		return 1;
	}
	return 0;
}

stock RconFloodCheck(const playerip[])
{
	new Unsigned:ipcode = IP2Code(playerip),
		playertime = GetTickCount(),
		playerattempts = 1;

	for(new i; i < sizeof(gRconList); i++) {
		if(ipcode == gRconList[i][E_LASTIP] && (playertime - gRconList[i][E_LASTTIME]) <= (RCONTIME * 1000)) {
			playerattempts++;
		}
	}

	for(new i; i < sizeof(gRconList)-1; i++) {
		gRconList[i] = gRconList[i+1];
	}
	gRconList[sizeof(gRconList)-1][E_LASTIP] = ipcode;
	gRconList[sizeof(gRconList)-1][E_LASTTIME] = playertime;

	if(playerattempts >= RCONCOUNT) {
		new string[MAX_INPUT];
		LoopPlayers(i) {
			if(strcmp(playerip, ReturnPlayerIP(i)) == 0 && !IsPlayerNPC(i)) {
				SendClientMessage(i, COLOUR_WARNING, "You have been banned from the server (Too many RCON attempts)");
				format(string, sizeof(string), "%s has been banned from the server (Too many RCON attempts)", ReturnPlayerName(i));
				AddJoinString(i, COLOUR_BAN, string);
				Kick(i);
			}
		}
		if(gServerData[E_RCON_BAN_TIME] > 0) {
			SetTimerEx("alar_floodunban", gServerData[E_RCON_BAN_TIME] * 1000, 0, "i", _:ipcode);
		}
		format(string, sizeof(string), "The IP %s has been banned from the server (Too many RCON attempts)", playerip);
		AddLogString(string);
		LogAction(string);
		TempBan_Add(gAlarDB, playerip, "Too many RCON attempts");
		format(string, sizeof(string), "banip %s", playerip);
		SendRconCommand(string);
		return 1;
	}
	return 0;
}

public alar_floodunban(Unsigned:IPcode)
{
	new string[MAX_IP+10];
	string = Code2IP(IPcode);
	TempBan_Remove(gAlarDB, string);
	format(string, sizeof(string), "unbanip %s", string);
	SendRconCommand(string);
}

stock SpamCheck(const playerid, const text[])
{
	new time = GetTickCount(),
		len = strlen(text);

	do { len--; } while(text[len] <= ' ' && len > 0);
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
			} else {
				format(msg, sizeof(msg), "%s has been muted for %i seconds (chat spam)", ReturnPlayerName(playerid), gServerData[E_AUTOMUTE_TIME]);
			}
			gPlayerData[playerid][E_MUTE_TIME] = gettime() + gServerData[E_AUTOMUTE_TIME];
		} else {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "%s has been muted (%s spam)", ReturnPlayerName(playerid), cmd);
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
			} else {
				format(msg, sizeof(msg), "You have been muted for %i seconds (chat spam)", gServerData[E_AUTOMUTE_TIME]);
			}
			SendClientMessage(playerid, COLOUR_WARNING, msg);

			if(!IsPlayerNPC(playerid)) {
				Player_SetStatus(gAlarDB, ReturnPlayerIP(playerid), ADMIN_STATE_MUTED, gServerData[E_AUTOMUTE_TIME]);
			}
			if(gPlayerData[playerid][E_UNMUTE]) KillTimer(gPlayerData[playerid][E_UNMUTE]);
			gPlayerData[playerid][E_UNMUTE] = SetTimerEx("alar_unmute", gServerData[E_AUTOMUTE_TIME] * 1000, 0, "i", playerid);
		} else {
			if(text[0] == '/') {
				format(msg, sizeof(msg), "You have been muted (%s spam)", cmd);
				SendClientMessage(playerid, COLOUR_WARNING, msg);
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You have been muted (chat spam)");
			}

			if(!IsPlayerNPC(playerid)) {
				Player_SetStatus(gAlarDB, ReturnPlayerIP(playerid), ADMIN_STATE_MUTED);
			}
		}


		for(new i; i < sizeof(SIZE_E_PLAYERDATA[E_MSGTIMES]); i++) gPlayerData[playerid][E_MSGTIMES][i] = 0;
		gPlayerData[playerid][E_LASTMSG][0] = '\0';
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;

		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
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
			print("This command has been disabled from RCON");
			return 1;
		}
	} else {
		if(gPlayerData[playerid][E_ADMINLEVEL] < gServerData[command] && gPlayerData[playerid][E_RCONLEVEL] < gServerData[command]) {
			new msg[MAX_INPUT];
			format(msg, sizeof(msg), "You need to be level %i to use this command", gServerData[command]);
			SendClientMessage(playerid, COLOUR_WARNING, msg);
			return 1;
		}
	}
	return 0;
}

LoadPlayerData(playerid)
{
	new SaveData[E_SAVEDATA];
	if(Player_GetData(gAlarDB, ReturnPlayerName(playerid), ReturnPlayerIP(playerid), SaveData)) {
		#if JOINMSG_LINES > 0
			if(SaveData[E_SAVE_JOINTEXT] < 0) {
				gPlayerData[playerid][E_JOINTEXT] = gServerData[E_JOIN_DEFAULT];
			} else {
				gPlayerData[playerid][E_JOINTEXT] = SaveData[E_SAVE_JOINTEXT] != 0;
			}
		#endif
		gPlayerData[playerid][E_IMMUNE] = SaveData[E_SAVE_IMMUNE];

		if(SaveData[E_SAVE_MUTED]) {
			gPlayerData[playerid][E_STATE] |= ADMIN_STATE_MUTED;
			if(SaveData[E_SAVE_MUTETIME] > 0) {
				if(SaveData[E_SAVE_MUTETIME] < MIN_ACTION_TIME) SaveData[E_SAVE_MUTETIME] = MIN_ACTION_TIME;
				gPlayerData[playerid][E_UNMUTE] = SetTimerEx("alar_unmute", SaveData[E_SAVE_MUTETIME] * 1000, 0, "i", playerid);
				gPlayerData[playerid][E_MUTE_TIME] = gettime() + SaveData[E_SAVE_MUTETIME];
			}
		}
		if(SaveData[E_SAVE_FROZEN]) {
			gPlayerData[playerid][E_STATE] |= ADMIN_STATE_FROZEN;
			if(SaveData[E_SAVE_FREEZETIME] > 0) {
				if(SaveData[E_SAVE_FREEZETIME] < MIN_ACTION_TIME) SaveData[E_SAVE_FREEZETIME] = MIN_ACTION_TIME;
				gPlayerData[playerid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", SaveData[E_SAVE_FREEZETIME] * 1000, 0, "i", playerid);
				gPlayerData[playerid][E_FREEZE_TIME] = gettime() + SaveData[E_SAVE_FREEZETIME];
			}
		}
		if(SaveData[E_SAVE_JAILED]) {
			gPlayerData[playerid][E_STATE] |= ADMIN_STATE_JAILED;
			if(SaveData[E_SAVE_JAILTIME] > 0) {
				if(SaveData[E_SAVE_JAILTIME] < MIN_ACTION_TIME) SaveData[E_SAVE_JAILTIME] = MIN_ACTION_TIME;
				gPlayerData[playerid][E_UNJAIL] = SetTimerEx("alar_unjail", SaveData[E_SAVE_JAILTIME] * 1000, 0, "i", playerid);
				gPlayerData[playerid][E_JAIL_TIME] = gettime() + SaveData[E_SAVE_JAILTIME];
			}
		}
	}
}


//----------------
// Data Functions
//----------------
LoadData()
{
	if(gAlarDB) {
		// Check database version
		new DBResult:result = db_query(gAlarDB, "PRAGMA user_version");
		if(db_num_rows(result)) {
			new string[30];
			db_get_field(result, 0, string, sizeof(string));
			new version = strval(string);
			if(version > 1) {
				LogAction("WARNING: Alar database may be incompatible");
			} else if(version == 0) {
				db_free_result(db_query(gAlarDB, "PRAGMA user_version = 1"));
			}
		}
		db_free_result(result);

		// Initialise database
		Admin_Init(gAlarDB);
		Alias_Init(gAlarDB);
		Bans_Init(gAlarDB);
		Gamemodes_Init(gAlarDB);
		Player_Init(gAlarDB);
		Setting_Init(gAlarDB);
		Suspensions_Init(gAlarDB);
		Warnings_Init(gAlarDB);
		Whitelist_Init(gAlarDB);
	}

	new string[128];
	Setting_LoadString(gAlarDB, "ChatPrefix", CHATPREFIX, string);
	for(new i, j, k;;) {
		switch(string[i]) {
			case '|': {
				gChatPrefix[j][E_CHAT_STRING][k] = '\0';
				if((gChatPrefix[j][E_CHAT_LEN] = k) > 0 && j++ >= sizeof(gChatPrefix) - 1) {
					break;
				}
				k = 0;
			}
			case '-': {
				if(string[i+1] != '\0') {
					i++;
					if(k < sizeof(SIZE_E_CHATPREFIX[E_CHAT_STRING]) - 1) {
						gChatPrefix[j][E_CHAT_STRING][k++] = string[i];
					}
				} else {
					LogAction("ERROR: Invalid admin prefix syntax (Trailing escape character)");
				}
			}
			case '\0': {
				gChatPrefix[j][E_CHAT_STRING][k] = '\0';
				gChatPrefix[j][E_CHAT_LEN] = k;
				while(++j < sizeof(gChatPrefix) - 1) {
					gChatPrefix[j][E_CHAT_STRING][0] = '\0';
					gChatPrefix[j][E_CHAT_LEN] = 0;
				}
				break;
			}
			default: {
				if(k < sizeof(SIZE_E_CHATPREFIX[E_CHAT_STRING]) - 1) {
					gChatPrefix[j][E_CHAT_STRING][k++] = string[i];
				}
			}
		}
		i++;
	}

	#if CHATHISTORY_SIZE > 0
		Setting_LoadString(gAlarDB, "ChatHistory", CHATHISTORY, string);
		if(string[0] == '\0') {
			gServerData[E_CHAT_HISTORY] = 0;
		} else if(strcmp(string, "Admins", true) == 0) {
			gServerData[E_CHAT_HISTORY] = 2;
		} else if(strcmp(string, "All", true) == 0) {
			gServerData[E_CHAT_HISTORY] = 1;
		} else {
			gServerData[E_CHAT_HISTORY] = 0;
		}
		Setting_LoadBool(gAlarDB, "ChatJoins", CHATJOINS, gServerData[E_CHAT_JOINS]);
	#endif

	Setting_LoadString(gAlarDB, "BanMsg", BANMSG, gServerData[E_BAN_MSG], sizeof(SIZE_E_SERVERDATA[E_BAN_MSG]));
	Setting_LoadString(gAlarDB, "DefaultNumPlate", DEFAULTNUMPLATE, gServerData[E_DEFAULT_NUM_PLATE], sizeof(SIZE_E_SERVERDATA[E_DEFAULT_NUM_PLATE]));
	Setting_LoadString(gAlarDB, "DefaultPW", DEFAULTPW, gServerData[E_DEFAULT_PW], sizeof(SIZE_E_SERVERDATA[E_DEFAULT_PW]));
	Setting_LoadString(gAlarDB, "RangeBanMsg", RANGEBANMSG, gServerData[E_RANGEBAN_MSG], sizeof(SIZE_E_SERVERDATA[E_RANGEBAN_MSG]));
	Setting_LoadString(gAlarDB, "RangeSuspendMsg", RANGESUSPENDMSG, gServerData[E_RANGESUSPEND_MSG], sizeof(SIZE_E_SERVERDATA[E_RANGESUSPEND_MSG]));
	Setting_LoadString(gAlarDB, "SuspendMsg", SUSPENDMSG, gServerData[E_SUSPEND_MSG], sizeof(SIZE_E_SERVERDATA[E_SUSPEND_MSG]));

	Setting_LoadBool(gAlarDB, "AdminPMs", ADMINPMS, gServerData[E_ADMIN_PMS]);
	Setting_LoadBool(gAlarDB, "AliasAdmins", ALIASADMINS, gServerData[E_ALIAS_ADMINS]);
	Setting_LoadBool(gAlarDB, "AutoLogin", AUTOLOGIN, gServerData[E_AUTO_LOGIN]);
	Setting_LoadBool(gAlarDB, "CheckMods", CHECKMODS, gServerData[E_CHECK_MODS]);
	Setting_LoadBool(gAlarDB, "ConsoleMsgs", CONSOLEMSGS, gServerData[E_CONSOLE_MSGS]);
	Setting_LoadBool(gAlarDB, "ExtraSpecViews", EXTRASPECVIEWS, gServerData[E_EXTRA_SPEC_VIEWS]);
	Setting_LoadBool(gAlarDB, "FixRunning", FIXRUNNING, gServerData[E_FIX_RUNNING]);
	Setting_LoadBool(gAlarDB, "HideBans", HIDEBANS, gServerData[E_HIDE_BANS]);
	Setting_LoadBool(gAlarDB, "JoinCountries", JOINCOUNTRIES, gServerData[E_JOIN_COUNTRIES]);
	Setting_LoadBool(gAlarDB, "JoinDefault", JOINDEFAULT, gServerData[E_JOIN_DEFAULT]);
	Setting_LoadBool(gAlarDB, "JoinMsgs", JOINMSGS, gServerData[E_JOIN_MSGS]);
	Setting_LoadBool(gAlarDB, "KickAllIPs", KICKALLIPS, gServerData[E_KICK_ALL_IPS]);
	Setting_LoadBool(gAlarDB, "LogActions", LOGACTIONS, gServerData[E_LOG_ACTIONS]);
	Setting_LoadBool(gAlarDB, "LogLogins", LOGLOGINS, gServerData[E_LOG_LOGINS]);
	Setting_LoadBool(gAlarDB, "PingImmunity", PINGIMMUNITY, gServerData[E_PING_IMMUNITY]);
	Setting_LoadBool(gAlarDB, "RespawnVehicles", RESPAWNVEHICLES, gServerData[E_RESPAWN_VEHICLES]);
	Setting_LoadBool(gAlarDB, "SpecHUD", SPECHUD, gServerData[E_SPEC_HUD]);
	Setting_LoadBool(gAlarDB, "StoreAliases", STOREALIASES, gServerData[E_STORE_ALIASES]);

	Setting_LoadInt(gAlarDB, "AutoMuteTime", AUTOMUTETIME, gServerData[E_AUTOMUTE_TIME]);
	Setting_LoadInt(gAlarDB, "DropHeight", DROPHEIGHT, gServerData[E_DROP_HEIGHT]);
	Setting_LoadInt(gAlarDB, "GiveWeaponAmmo", GIVEWEAPONAMMO, gServerData[E_GIVEWEAPON_AMMO]);
	Setting_LoadInt(gAlarDB, "JoinBanTime", JOINBANTIME, gServerData[E_JOIN_BAN_TIME]);
	Setting_LoadInt(gAlarDB, "MaxPing", MAXPING, gServerData[E_MAX_PING]);
	Setting_LoadInt(gAlarDB, "MinPWLength", MINPWLENGTH, gServerData[E_MIN_PW_LENGTH]);
	Setting_LoadInt(gAlarDB, "PunchDecrement", PUNCHDECREMENT, gServerData[E_PUNCH_DECREMENT]);
	Setting_LoadInt(gAlarDB, "RageTime", RAGETIME, gServerData[E_RAGE_TIME]);
	Setting_LoadInt(gAlarDB, "RCONBanTime", RCONBANTIME, gServerData[E_RCON_BAN_TIME]);

	Setting_LoadInt(gAlarDB, "RCONLevel", RCONLEVEL, gServerData[E_RCON_LEVEL]);
	if(gServerData[E_RCON_LEVEL] <= 0) gServerData[E_RCON_LEVEL] = -1;

	Setting_LoadInt(gAlarDB, "RCONLoginLevel", RCONLOGINLEVEL, gServerData[E_RCON_LOGIN_LEVEL]);
	Setting_LoadInt(gAlarDB, "SignInTime", SIGNINTIME, gServerData[E_SIGNIN_TIME]);
	Setting_LoadInt(gAlarDB, "SlapDecrement", SLAPDECREMENT, gServerData[E_SLAP_DECREMENT]);
	Setting_LoadInt(gAlarDB, "WarnLimit", WARNLIMIT, gServerData[E_WARN_LIMIT]);
	Setting_LoadInt(gAlarDB, "WarnProtection", WARNPROTECTION, gServerData[E_WARN_PROTECTION]);
	Setting_LoadInt(gAlarDB, "WarnSuspendTime", WARNSUSPENDTIME, gServerData[E_WARN_SUSPEND_TIME]);
	Setting_LoadInt(gAlarDB, "WarnTimeout", WARNTIMEOUT, gServerData[E_WARN_TIMEOUT]);

	Setting_LoadInt(gAlarDB, "Alias2Level", ALIAS2LEVEL, gServerData[E_ALIAS2_LEVEL]);
	Setting_LoadInt(gAlarDB, "Alias3Level", ALIAS3LEVEL, gServerData[E_ALIAS3_LEVEL]);
	Setting_LoadInt(gAlarDB, "AliasLevel", ALIASLEVEL, gServerData[E_ALIAS_LEVEL]);
	Setting_LoadInt(gAlarDB, "ArmourAllLevel", ARMOURALLLEVEL, gServerData[E_ARMOURALL_LEVEL]);
	Setting_LoadInt(gAlarDB, "ArmourLevel", ARMOURLEVEL, gServerData[E_ARMOUR_LEVEL]);
	Setting_LoadInt(gAlarDB, "BanCheckLevel", BANCHECKLEVEL, gServerData[E_BANCHECK_LEVEL]);
	Setting_LoadInt(gAlarDB, "BanLevel", BANLEVEL, gServerData[E_BAN_LEVEL]);
	Setting_LoadInt(gAlarDB, "BringLevel", BRINGLEVEL, gServerData[E_BRING_LEVEL]);
	Setting_LoadInt(gAlarDB, "CarColourLevel", CARCOLOURLEVEL, gServerData[E_CARCOLOUR_LEVEL]);
	Setting_LoadInt(gAlarDB, "ChangeModeLevel", CHANGEMODELEVEL, gServerData[E_CHANGEMODE_LEVEL]);
	Setting_LoadInt(gAlarDB, "ChangePWLevel", CHANGEPWLEVEL, gServerData[E_CHANGEPW_LEVEL]);
	Setting_LoadInt(gAlarDB, "ClearBansLevel", CLEARBANSLEVEL, gServerData[E_CLEARBANS_LEVEL]);
	Setting_LoadInt(gAlarDB, "ClearStatusLevel", CLEARSTATUSLEVEL, gServerData[E_CLEARSTATUS_LEVEL]);
	Setting_LoadInt(gAlarDB, "ClrLevel", CLRLEVEL, gServerData[E_CLR_LEVEL]);
	Setting_LoadInt(gAlarDB, "CreateLevel", CREATELEVEL, gServerData[E_CREATE_LEVEL]);
	Setting_LoadInt(gAlarDB, "DestroyLevel", DESTROYLEVEL, gServerData[E_DESTROY_LEVEL]);
	Setting_LoadInt(gAlarDB, "DesyncLevel", DESYNCLEVEL, gServerData[E_DESYNC_LEVEL]);
	Setting_LoadInt(gAlarDB, "DropLevel", DROPLEVEL, gServerData[E_DROP_LEVEL]);
	Setting_LoadInt(gAlarDB, "EjectAllLevel", EJECTALLLEVEL, gServerData[E_EJECTALL_LEVEL]);
	Setting_LoadInt(gAlarDB, "EjectLevel", EJECTLEVEL, gServerData[E_EJECT_LEVEL]);
	Setting_LoadInt(gAlarDB, "ExplodeLevel", EXPLODELEVEL, gServerData[E_EXPLODE_LEVEL]);
	Setting_LoadInt(gAlarDB, "FlipLevel", FLIPLEVEL, gServerData[E_FLIP_LEVEL]);
	Setting_LoadInt(gAlarDB, "FreezeLevel", FREEZELEVEL, gServerData[E_FREEZE_LEVEL]);
	Setting_LoadInt(gAlarDB, "GiveAllCashLevel", GIVEALLCASHLEVEL, gServerData[E_GIVEALLCASH_LEVEL]);
	Setting_LoadInt(gAlarDB, "GiveAllWeaponLevel", GIVEALLWEAPONLEVEL, gServerData[E_GIVEALLWEAPON_LEVEL]);
	Setting_LoadInt(gAlarDB, "GiveCashLevel", GIVECASHLEVEL, gServerData[E_GIVECASH_LEVEL]);
	Setting_LoadInt(gAlarDB, "GiveWeaponLevel", GIVEWEAPONLEVEL, gServerData[E_GIVEWEAPON_LEVEL]);
	Setting_LoadInt(gAlarDB, "GotoLevel", GOTOLEVEL, gServerData[E_GOTO_LEVEL]);
	Setting_LoadInt(gAlarDB, "GravityLevel", GRAVITYLEVEL, gServerData[E_GRAVITY_LEVEL]);
	Setting_LoadInt(gAlarDB, "HealAllLevel", HEALALLLEVEL, gServerData[E_HEALALL_LEVEL]);
	Setting_LoadInt(gAlarDB, "HealLevel", HEALLEVEL, gServerData[E_HEAL_LEVEL]);
	Setting_LoadInt(gAlarDB, "ImitateLevel", IMITATELEVEL, gServerData[E_IMITATE_LEVEL]);
	Setting_LoadInt(gAlarDB, "ImmuneLevel", IMMUNELEVEL, gServerData[E_IMMUNE_LEVEL]);
	Setting_LoadInt(gAlarDB, "InfoLevel", INFOLEVEL, gServerData[E_INFO_LEVEL]);
	Setting_LoadInt(gAlarDB, "InteriorLevel", INTERIORLEVEL, gServerData[E_INTERIOR_LEVEL]);
	Setting_LoadInt(gAlarDB, "IPLevel", IPLEVEL, gServerData[E_IP_LEVEL]);
	Setting_LoadInt(gAlarDB, "IPUpdateLevel", IPUPDATELEVEL, gServerData[E_IPUPDATE_LEVEL]);
	Setting_LoadInt(gAlarDB, "JailLevel", JAILLEVEL, gServerData[E_JAIL_LEVEL]);
	Setting_LoadInt(gAlarDB, "KickLevel", KICKLEVEL, gServerData[E_KICK_LEVEL]);
	#if LOG_LINES > 0 && LOG_PAGES > 0
		Setting_LoadInt(gAlarDB, "LogLevel", LOGLEVEL, gServerData[E_LOG_LEVEL]);
	#endif
	Setting_LoadInt(gAlarDB, "MsgLevel", MSGLEVEL, gServerData[E_MSG_LEVEL]);
	Setting_LoadInt(gAlarDB, "MuteLevel", MUTELEVEL, gServerData[E_MUTE_LEVEL]);
	Setting_LoadInt(gAlarDB, "PunchLevel", PUNCHLEVEL, gServerData[E_PUNCH_LEVEL]);
	Setting_LoadInt(gAlarDB, "RangeBanLevel", RANGEBANLEVEL, gServerData[E_RANGEBAN_LEVEL]);
	Setting_LoadInt(gAlarDB, "RangeKickLevel", RANGEKICKLEVEL, gServerData[E_RANGEKICK_LEVEL]);
	Setting_LoadInt(gAlarDB, "RangeSuspendLevel", RANGESUSPENDLEVEL, gServerData[E_RANGESUSPEND_LEVEL]);
	Setting_LoadInt(gAlarDB, "RapeLevel", RAPELEVEL, gServerData[E_RAPE_LEVEL]);
	Setting_LoadInt(gAlarDB, "ReloadDataLevel", RELOADDATALEVEL, gServerData[E_RELOADDATA_LEVEL]);
	Setting_LoadInt(gAlarDB, "RemAllCashLevel", REMALLCASHLEVEL, gServerData[E_REMALLCASH_LEVEL]);
	Setting_LoadInt(gAlarDB, "RemAllWeaponsLevel", REMALLWEAPONSLEVEL, gServerData[E_REMALLWEAPONS_LEVEL]);
	Setting_LoadInt(gAlarDB, "RemCashLevel", REMCASHLEVEL, gServerData[E_REMCASH_LEVEL]);
	Setting_LoadInt(gAlarDB, "RemWeaponsLevel", REMWEAPONSLEVEL, gServerData[E_REMWEAPONS_LEVEL]);
	Setting_LoadInt(gAlarDB, "RepairLevel", REPAIRLEVEL, gServerData[E_REPAIR_LEVEL]);
	Setting_LoadInt(gAlarDB, "RespawnLevel", RESPAWNLEVEL, gServerData[E_RESPAWN_LEVEL]);
	Setting_LoadInt(gAlarDB, "SayLevel", SAYLEVEL, gServerData[E_SAY_LEVEL]);
	Setting_LoadInt(gAlarDB, "SelectLevel", SELECTLEVEL, gServerData[E_SELECT_LEVEL]);
	Setting_LoadInt(gAlarDB, "ServerNameLevel", SERVERNAMELEVEL, gServerData[E_SERVERNAME_LEVEL]);
	Setting_LoadInt(gAlarDB, "SetAdminLevel", SETADMINLEVEL, gServerData[E_SETADMIN_LEVEL]);
	Setting_LoadInt(gAlarDB, "SetNameLevel", SETNAMELEVEL, gServerData[E_SETNAME_LEVEL]);
	Setting_LoadInt(gAlarDB, "SetPingLevel", SETPINGLEVEL, gServerData[E_SETPING_LEVEL]);
	Setting_LoadInt(gAlarDB, "ShoutLevel", SHOUTLEVEL, gServerData[E_SHOUT_LEVEL]);
	Setting_LoadInt(gAlarDB, "SlapLevel", SLAPLEVEL, gServerData[E_SLAP_LEVEL]);
	Setting_LoadInt(gAlarDB, "SlayLevel", SLAYLEVEL, gServerData[E_SLAY_LEVEL]);
	Setting_LoadInt(gAlarDB, "SpawnLevel", SPAWNLEVEL, gServerData[E_SPAWN_LEVEL]);
	Setting_LoadInt(gAlarDB, "SpecLevel", SPECLEVEL, gServerData[E_SPEC_LEVEL]);
	Setting_LoadInt(gAlarDB, "SuspendLevel", SUSPENDLEVEL, gServerData[E_SUSPEND_LEVEL]);
	Setting_LoadInt(gAlarDB, "TeleLevel", TELELEVEL, gServerData[E_TELE_LEVEL]);
	Setting_LoadInt(gAlarDB, "TimeLevel", TIMELEVEL, gServerData[E_TIME_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnbanLevel", UNBANLEVEL, gServerData[E_UNBAN_LEVEL]);
	Setting_LoadInt(gAlarDB, "UndesyncLevel", UNDESYNCLEVEL, gServerData[E_UNDESYNC_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnfreezeLevel", UNFREEZELEVEL, gServerData[E_UNFREEZE_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnjailLevel", UNJAILLEVEL, gServerData[E_UNJAIL_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnmuteLevel", UNMUTELEVEL, gServerData[E_UNMUTE_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnrapeLevel", UNRAPELEVEL, gServerData[E_UNRAPE_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnsuspendLevel", UNSUSPENDLEVEL, gServerData[E_UNSUSPEND_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnwarnLevel", WARNLEVEL, gServerData[E_UNWARN_LEVEL]);
	Setting_LoadInt(gAlarDB, "UnwhitelistLevel", UNWHITELISTLEVEL, gServerData[E_UNWHITELIST_LEVEL]);
	Setting_LoadInt(gAlarDB, "WarnLevel", WARNLEVEL, gServerData[E_WARN_LEVEL]);
	Setting_LoadInt(gAlarDB, "WeatherLevel", WEATHERLEVEL, gServerData[E_WEATHER_LEVEL]);
	Setting_LoadInt(gAlarDB, "WhitelistLevel", WHITELISTLEVEL, gServerData[E_WHITELIST_LEVEL]);
	Setting_LoadInt(gAlarDB, "WildBanLevel", WILDBANLEVEL, gServerData[E_WILDBAN_LEVEL]);
	Setting_LoadInt(gAlarDB, "WildKickLevel", WILDKICKLEVEL, gServerData[E_WILDKICK_LEVEL]);
	Setting_LoadInt(gAlarDB, "WildSuspendLevel", WILDSUSPENDLEVEL, gServerData[E_WILDSUSPEND_LEVEL]);
	Setting_LoadInt(gAlarDB, "WorldLevel", WORLDLEVEL, gServerData[E_WORLD_LEVEL]);
}

stock SendBanMsg(playerid, const message[], const datetime[], const adminname[])
{
	if(isnull(message)) return;

	new msg[512];
	strcpy(msg, message);

	strreplace(msg, "$(WEBSITE)", ReturnServerVar("weburl"));
	strreplace(msg, "$(NAME)", ReturnPlayerName(playerid));
	strreplace(msg, "$(IP)", ReturnPlayerIP(playerid));
	if(isnull(datetime)) {
		strreplace(msg, "$(DATE)", "??-??-??");
		strreplace(msg, "$(TIME)", "??:??:??");
		strreplace(msg, "$(DATETIME)", "??-??-?? ??:??:??");
	} else {
		new time[MAX_TIMESTAMP],
			date[MAX_TIMESTAMP];
		strscan(message, "ss ", date, sizeof(date), time, sizeof(time));
		strreplace(msg, "$(DATE)", date);
		strreplace(msg, "$(TIME)", time);
		strreplace(msg, "$(DATETIME)", datetime);
	}
	if(isnull(adminname)) {
		strreplace(msg, "$(ADMIN)", DEFAULT_NAME);
	} else {
		strreplace(msg, "$(ADMIN)", adminname);
	}

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
	if(gSpawnSaves & INFOTYPE_VEHICLE) {
		if(IsPlayerInAnyVehicle(playerid)) {
			gPlayerData[playerid][E_VEHICLEID] = GetPlayerVehicleID(playerid);
			gPlayerData[playerid][E_SEATID] = GetPlayerVehicleSeat(playerid);
		} else {
			gPlayerData[playerid][E_VEHICLEID] = INVALID_VEHICLE_ID;
			gPlayerData[playerid][E_SEATID] = INVALID_SEAT_ID;
		}
	}
	if(gSpawnSaves & INFOTYPE_POSITION) {
		GetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
		GetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
	}
	if(gSpawnSaves & INFOTYPE_WORLD) {
		gPlayerData[playerid][E_INTERIOR] = GetPlayerInterior(playerid);
		gPlayerData[playerid][E_WORLD] = GetPlayerVirtualWorld(playerid);
	}
	if(gSpawnSaves & INFOTYPE_CASH) {
		gPlayerData[playerid][E_CASH] = GetPlayerMoney(playerid);
		ResetPlayerMoney(playerid);
	}
	if(gSpawnSaves & INFOTYPE_HEALTH) {
		GetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
		if(gPlayerData[playerid][E_HEALTH] > 100.0) gPlayerData[playerid][E_HEALTH] = 100.0;
	} else {
		gPlayerData[playerid][E_HEALTH] = 100.0;
	}
	if(gSpawnSaves & INFOTYPE_ARMOUR) {
		GetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
		if(gPlayerData[playerid][E_ARMOUR] > 100.0) gPlayerData[playerid][E_ARMOUR] = 100.0;
	}
	if(gSpawnSaves & INFOTYPE_WEAPONS) {
		for(new i; i < 13; i++) {
			GetPlayerWeaponData(playerid, i, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
		}
		gPlayerData[playerid][E_ARMED] = GetPlayerWeapon(playerid);
	}
}

public alar_setspawnposition(playerid)
{
	if(!IsPlayerConnected(playerid)) return;
	new bool:isinvehicle = false;
	if(GetVehicleModel(gPlayerData[playerid][E_VEHICLEID]) != INVALID_MODEL_ID) {
		if(IsVehicleSeatFree(gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID])) {
			if((gPlayerData[playerid][E_WORLD] = GetVehicleVirtualWorld(gPlayerData[playerid][E_VEHICLEID])) != GetPlayerVirtualWorld(playerid)) {
				SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
				alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
			}
			isinvehicle = true;
			PutPlayerInVehicle(playerid, gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID]);
		}
	}
	if(!isinvehicle) {
		SetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
		SetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
	}
	SetCameraBehindPlayer(playerid);
	SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
	if(!isinvehicle && GetPlayerVirtualWorld(playerid) != gPlayerData[playerid][E_WORLD]) {
		SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
		alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
	}
	ClearSpawnData(playerid);
}

public alar_setspawndata(playerid)
{
	if(!IsPlayerConnected(playerid)) return;

	new bool:isinvehicle = false;
	if(gSpawnSaves & INFOTYPE_VEHICLE) {
		if(GetVehicleModel(gPlayerData[playerid][E_VEHICLEID]) != INVALID_MODEL_ID) {
			if(IsVehicleSeatFree(gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID])) {
				if((gPlayerData[playerid][E_WORLD] = GetVehicleVirtualWorld(gPlayerData[playerid][E_VEHICLEID])) != GetPlayerVirtualWorld(playerid)) {
					SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
					alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
				}
				isinvehicle = true;
				PutPlayerInVehicle(playerid, gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID]);
				SetCameraBehindPlayer(playerid);
			}
		}
	}

	if(!isinvehicle && gSpawnSaves & INFOTYPE_POSITION) {
		SetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
		SetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
		SetCameraBehindPlayer(playerid);
	}

	if(gSpawnSaves & INFOTYPE_WORLD) {
		SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
		if(!isinvehicle && GetPlayerVirtualWorld(playerid) != gPlayerData[playerid][E_WORLD]) {
			SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
			alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
		}
	}

	if(gSpawnSaves & INFOTYPE_WEAPONS) {
		ResetPlayerWeapons(playerid);
		for(new i; i < 13; i++) {
			if(gPlayerData[playerid][E_WEAPON][i] != 0) {
				GivePlayerWeapon(playerid, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
			}
		}
		SetPlayerArmedWeapon(playerid, gPlayerData[playerid][E_ARMED]);
	}

	if(gSpawnSaves & INFOTYPE_HEALTH) {
		SetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
	}

	if(gSpawnSaves & INFOTYPE_ARMOUR) {
		SetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
	}

	if(gSpawnSaves & INFOTYPE_CASH) {
		ResetPlayerMoney(playerid);
		GivePlayerMoney(playerid, gPlayerData[playerid][E_CASH]);
	}

	ClearSpawnData(playerid);
}

public alar_setspawnpositiondata(playerid)
{
	if(!IsPlayerConnected(playerid)) return;

	new bool:isinvehicle = false;
	if(gSpawnSaves & INFOTYPE_VEHICLE) {
		if(GetVehicleModel(gPlayerData[playerid][E_VEHICLEID]) != INVALID_MODEL_ID) {
			if(IsVehicleSeatFree(gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID])) {
				if((gPlayerData[playerid][E_WORLD] = GetVehicleVirtualWorld(gPlayerData[playerid][E_VEHICLEID])) != GetPlayerVirtualWorld(playerid)) {
					SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
					alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
				}
				isinvehicle = true;
				PutPlayerInVehicle(playerid, gPlayerData[playerid][E_VEHICLEID], gPlayerData[playerid][E_SEATID]);
			}
		}
	}

	if(!isinvehicle) {
		SetPlayerPos(playerid, gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ]);
		SetPlayerFacingAngle(playerid, gPlayerData[playerid][E_ROT]);
	}

	SetCameraBehindPlayer(playerid);
	if(gSpawnSaves & INFOTYPE_WORLD) {
		SetPlayerInterior(playerid, gPlayerData[playerid][E_INTERIOR]);
		if(!isinvehicle && GetPlayerVirtualWorld(playerid) != gPlayerData[playerid][E_WORLD]) {
			SetPlayerVirtualWorld(playerid, gPlayerData[playerid][E_WORLD]);
			alar_OnPlayerWorldChange(playerid, gPlayerData[playerid][E_WORLD]);
		}
	}

	if(gSpawnSaves & INFOTYPE_WEAPONS) {
		ResetPlayerWeapons(playerid);
		for(new i; i < 13; i++) {
			if(gPlayerData[playerid][E_WEAPON][i] != 0) {
				GivePlayerWeapon(playerid, gPlayerData[playerid][E_WEAPON][i], gPlayerData[playerid][E_AMMO][i]);
			}
		}
		SetPlayerArmedWeapon(playerid, gPlayerData[playerid][E_ARMED]);
	}

	if(gSpawnSaves & INFOTYPE_HEALTH) {
		SetPlayerHealth(playerid, gPlayerData[playerid][E_HEALTH]);
	}

	if(gSpawnSaves & INFOTYPE_ARMOUR) {
		SetPlayerArmour(playerid, gPlayerData[playerid][E_ARMOUR]);
	}

	if(gSpawnSaves & INFOTYPE_CASH) {
		ResetPlayerMoney(playerid);
		GivePlayerMoney(playerid, gPlayerData[playerid][E_CASH]);
	}

	ClearSpawnData(playerid);
}

ClearSpawnData(playerid)
{
	gPlayerData[playerid][E_SETINFO] = E_INFOTYPE:0;
	gPlayerData[playerid][E_POSX] = 0.0;
	gPlayerData[playerid][E_POSY] = 0.0;
	gPlayerData[playerid][E_POSZ] = 0.0;
	gPlayerData[playerid][E_ROT] = 0.0;
	gPlayerData[playerid][E_INTERIOR] = 0;
	gPlayerData[playerid][E_WORLD] = 0;
	gPlayerData[playerid][E_CASH] = 0;
	gPlayerData[playerid][E_HEALTH] = 0.0;
	gPlayerData[playerid][E_ARMOUR] = 0.0;
	for(new i; i < 13; i++) {
		gPlayerData[playerid][E_WEAPON][i] = 0;
		gPlayerData[playerid][E_AMMO][i] = 0;
	}
	gPlayerData[playerid][E_ARMED] = 0;
	gPlayerData[playerid][E_VEHICLEID] = INVALID_VEHICLE_ID;
	gPlayerData[playerid][E_SEATID] = INVALID_SEAT_ID;
}

SpawnUsingData(playerid)
{
	if(!gPlayerData[playerid][E_SPECTATING] || GetPlayerState(playerid) != PLAYER_STATE_SPECTATING) return;

	if(gPlayerData[playerid][E_HEALTH]) {
		gPlayerData[playerid][E_CASH] += GetPlayerMoney(playerid);
		switch(gSpawnMethod) {
			case SPAWN_ALAR_SPAWN: {
				if(gSpawnSaves & INFOTYPE_POSITION) {
					SetSpawnInfo(playerid, GetPlayerTeam(playerid), GetPlayerSkin(playerid), gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
				}
				gPlayerData[playerid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
				TogglePlayerSpectating(playerid, false);
			}
			case SPAWN_ALAR_TIMER: {
				TogglePlayerSpectating(playerid, false);
				SetTimerEx("alar_setspawndata", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
			}
			default: {
				gPlayerData[playerid][E_SETINFO] = (INFOTYPE_VEHICLE |INFOTYPE_POSITION | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
				TogglePlayerSpectating(playerid, false);
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
		switch(gSpawnMethod) {
			case SPAWN_ALAR_SPAWN: {
				SetSpawnInfo(playerid, GetPlayerTeam(playerid), GetPlayerSkin(playerid), gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
				gPlayerData[playerid][E_SETINFO] = INFOTYPE_VEHICLE | INFOTYPE_WORLD | ((INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves);
				TogglePlayerSpectating(playerid, false);
			}
			case SPAWN_ALAR_TIMER: {
				TogglePlayerSpectating(playerid, false);
				SetTimerEx("alar_setspawnpositiondata", 500, 0, "i", playerid);
			}
			default: {
				gPlayerData[playerid][E_SETINFO] = INFOTYPE_POSITION | INFOTYPE_VEHICLE | INFOTYPE_WORLD | ((INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves);
				TogglePlayerSpectating(playerid, false);
			}
		}
	} else {
		switch(gSpawnMethod) {
			case SPAWN_GAMEMODE_SPAWN: {
				SetSpawnInfo(playerid, GetPlayerTeam(playerid), GetPlayerSkin(playerid), gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
				gPlayerData[playerid][E_SETINFO] = INFOTYPE_VEHICLE | INFOTYPE_WORLD;
				TogglePlayerSpectating(playerid, false);
			}
			case SPAWN_GAMEMODE_TIMER: {
				SetTimerEx("alar_setspawnposition", 500, 0, "i", playerid);
				TogglePlayerSpectating(playerid, false);
			}
			default: {
				gPlayerData[playerid][E_SETINFO] = INFOTYPE_POSITION | INFOTYPE_VEHICLE | INFOTYPE_WORLD;
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
	SetPlayerInterior(playerid, GetPlayerInterior(targetid));
	SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(targetid));

	if(IsPlayerInAnyVehicle(targetid) && gPlayerData[playerid][E_SPECMODE] != 1) PlayerSpectateVehicle(playerid, GetPlayerVehicleID(targetid), gPlayerData[playerid][E_SPECMODE] == 0 ? SPECTATE_MODE_NORMAL : SPECTATE_MODE_SIDE);
	else PlayerSpectatePlayer(playerid, targetid);

	if(gPlayerData[playerid][E_SHOWHUD] && gServerData[E_SPEC_HUD]) {
		SpecHUDShow(playerid);
	}
}

SpecHUDShow(playerid)
{
	if(!gPlayerData[playerid][E_SPECTATING] || gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID || gPlayerData[playerid][E_SPECHUD] != INVALID_TEXT_DRAW) return;

	gPlayerData[playerid][E_SPECHUD] = TextDrawCreate(400.0, 10.0, " ");

	if(gPlayerData[playerid][E_SPECHUD] != INVALID_TEXT_DRAW) {
		TextDrawUseBox(gPlayerData[playerid][E_SPECHUD], 0);
		TextDrawSetOutline(gPlayerData[playerid][E_SPECHUD], 0);
		TextDrawAlignment(gPlayerData[playerid][E_SPECHUD], 2);
		TextDrawSetShadow(gPlayerData[playerid][E_SPECHUD], 1);
		TextDrawFont(gPlayerData[playerid][E_SPECHUD], 2);
		SpecHUDUpdate(playerid);
		TextDrawShowForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
	}
}

SpecHUDHide(playerid)
{
	if(gPlayerData[playerid][E_SPECHUD] == INVALID_TEXT_DRAW) return;

	TextDrawHideForPlayer(playerid, gPlayerData[playerid][E_SPECHUD]);
	TextDrawDestroy(gPlayerData[playerid][E_SPECHUD]);
	gPlayerData[playerid][E_SPECHUD] = INVALID_TEXT_DRAW;
}

SpecHUDUpdate(playerid)
{
	if(!gPlayerData[playerid][E_SPECTATING] || gPlayerData[playerid][E_SPECID] == INVALID_PLAYER_ID || gPlayerData[playerid][E_SPECHUD] == INVALID_TEXT_DRAW) return;

	new string[MAX_STRING];
	if(IsPlayerNPC(gPlayerData[playerid][E_SPECID])) {
		format(string, sizeof(string), "~p~~h~ID: ~b~%i   ~p~~h~Name: ~b~%s ~r~(NPC)", gPlayerData[playerid][E_SPECID], ReturnPlayerName(gPlayerData[playerid][E_SPECID]));
	} else {
		if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_COUNTRY][0] == '\0') {
			format(string, sizeof(string), "~p~~h~ID: ~b~%i   ~p~~h~Name: ~b~%s~n~~p~~h~IP: ~b~%s", gPlayerData[playerid][E_SPECID], ReturnPlayerName(gPlayerData[playerid][E_SPECID]), ReturnPlayerIP(gPlayerData[playerid][E_SPECID]));
		} else {
			format(string, sizeof(string), "~p~~h~ID: ~b~%i   ~p~~h~Name: ~b~%s~n~~p~~h~Location: ~b~%s   ~p~~h~IP: ~b~%s", gPlayerData[playerid][E_SPECID], ReturnPlayerName(gPlayerData[playerid][E_SPECID]), gPlayerData[gPlayerData[playerid][E_SPECID]][E_COUNTRY], ReturnPlayerIP(gPlayerData[playerid][E_SPECID]));
		}
	}

	new status = gPlayerData[gPlayerData[playerid][E_SPECID]][E_STATE];
	if(status & ADMIN_STATE_JAILED) {
		strcat(string, "~n~~p~~h~Status: ~b~jailed");
		if(status & ADMIN_STATE_MUTED) strcat(string, " & muted");
		if(status & ADMIN_STATE_FROZEN) strcat(string, " & frozen");
		if(status & ADMIN_STATE_DESYNCED) strcat(string, " & desynced");
		if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_PAUSED]) strcat(string, " & paused");
	} else if(status & ADMIN_STATE_MUTED) {
		strcat(string, "~n~~p~~h~Status: ~b~muted");
		if(status & ADMIN_STATE_FROZEN) strcat(string, " & frozen");
		if(status & ADMIN_STATE_DESYNCED) strcat(string, " & desynced");
		if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_PAUSED]) strcat(string, " & paused");
	} else if(status & ADMIN_STATE_FROZEN) {
		strcat(string, "~n~~p~~h~Status: ~b~frozen");
		if(status & ADMIN_STATE_DESYNCED) strcat(string, " & desynced");
		if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_PAUSED]) strcat(string, " & paused");
	} else if(status & ADMIN_STATE_DESYNCED) {
		strcat(string, "~n~~p~~h~Status: ~b~desynced");
		if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_PAUSED]) strcat(string, " & paused");
	} else if(gPlayerData[gPlayerData[playerid][E_SPECID]][E_PAUSED]) {
		strcat(string, "~n~~p~~h~Status: ~b~paused");
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
				SpecHUDUpdate(playerid);
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
		SpecHUDHide(playerid);
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
	} else if(pstate == PLAYER_STATE_DRIVER || pstate == PLAYER_STATE_PASSENGER) {
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


stock AddHistoryLine(colour, const message[], playerid=INVALID_PLAYER_ID, flags=0)
{
	if(isnull(message)) return 0;

	for(new i; i < sizeof(gChatHistory) - 1; i++) {
		gChatHistory[i] = gChatHistory[i + 1];
	}

	gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_NAME][0] = '\0';
	strcpy(gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_MESSAGE], message, sizeof(SIZE_E_HISTORY[E_HISTORY_MESSAGE]));
	gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_COLOUR] = colour;
	gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_FLAGS] = flags;
	gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_ID] = playerid;
	return 1;
}

stock AddJoinChatLine(playerid, colour, const string[])
{
	LoopPlayers(i) {
		#if JOINMSG_LINES > 0
			if(!IsPlayerNPC(i) && (gPlayerData[playerid][E_HIDEEXIT] == 1 || gPlayerData[i][E_JOINTEXT]) && i != playerid) {
				SendClientMessage(i, colour, string);
			}
		#else
			if(!IsPlayerNPC(i) && i != playerid) {
				SendClientMessage(i, colour, string);
			}
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
				if(!IsPlayerNPC(i) && !gPlayerData[j][E_JOINTEXT]) {
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
			if(!IsPlayerNPC(i) && !gPlayerData[i][E_JOINTEXT]) {
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
	if(isnull(string)) return;

	if(gServerData[E_CONSOLE_MSGS]) printf("[ADMIN] %s", string);

	if(gServerData[E_LOG_ACTIONS]) {
		new File:handle = fopen(ALAR_LOG, io_append);
		if(handle) {
			new data[MAX_STRING];
			format(data, sizeof(data), "[%s] %s\r\n", ReturnTimeStamp(), string);
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
	if(isnull(string) || playerid < 0 || playerid >= gMaxPlayers || gPlayerData[playerid][E_HIDEEXIT] > 2) return 0;

	if(!gServerData[E_JOIN_MSGS]) {
		new msg[MAX_INPUT] = "*** ";
		strcat(msg, string);
		LoopPlayers(i) {
			if(!IsPlayerNPC(i) && i != playerid) {
				SendClientMessage(i, colour, msg);
			}
		}
		#if CHATHISTORY_SIZE > 0
			if(gServerData[E_CHAT_JOINS]) AddHistoryLine(colour, msg, playerid);
		#endif
		return 1;
	}

	if(gPlayerData[playerid][E_HIDEEXIT] < 2) {
		new msg[MAX_INPUT] = "*** ";
		strcat(msg, string);
		AddJoinChatLine(playerid, colour, msg);
		#if CHATHISTORY_SIZE > 0
			if(gServerData[E_CHAT_JOINS]) AddHistoryLine(colour, msg, playerid);
		#endif
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
		if(isnull(string)) return 0;

		if(!colour) colour = COLOUR_LOG;

		// Move old entries
		for(new i = sizeof(gAdminLog) - 1; i > 0; i--) {
			strcpy(gAdminLog[i][E_TEXTBOX_STRING], gAdminLog[i - 1][E_TEXTBOX_STRING], sizeof(SIZE_E_TEXTBOX[E_TEXTBOX_STRING]));
			TextDrawSetString(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_STRING]);

			// Update colour
			if(gAdminLog[i][E_TEXTBOX_COLOUR] != gAdminLog[i - 1][E_TEXTBOX_COLOUR]) {
				gAdminLog[i][E_TEXTBOX_COLOUR] = gAdminLog[i - 1][E_TEXTBOX_COLOUR];
				TextDrawColor(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_COLOUR]);
				TextDrawBackgroundColor(gAdminLog[i][E_TEXTBOX_TEXT], gAdminLog[i][E_TEXTBOX_COLOUR] & 0x000000FF);
				new page = (i / LOG_LINES) + 1;
				LoopPlayers(j) {
					if(gPlayerData[j][E_LOG_PAGE] == page) {
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
			TextDrawBackgroundColor(gAdminLog[0][E_TEXTBOX_TEXT], colour & 0x000000FF);
			LoopPlayers(i) {
				if(gPlayerData[i][E_LOG_PAGE] == 1) {
					TextDrawShowForPlayer(i, gAdminLog[0][E_TEXTBOX_TEXT]);
				}
			}
		}
		return 1;
	}
#endif

#if CHATHISTORY_SIZE > 0
	public alar_AddMessageToHistory(const playername[], colour, const message[], flags)
	{
		if(!isValidName(playername) || isnull(message)) return 0;

		for(new i; i < sizeof(gChatHistory) - 1; i++) {
			gChatHistory[i] = gChatHistory[i + 1];
		}
		strcpy(gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_NAME], playername, sizeof(SIZE_E_HISTORY[E_HISTORY_NAME]));
		strcpy(gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_MESSAGE], message, sizeof(SIZE_E_HISTORY[E_HISTORY_MESSAGE]));
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_COLOUR] = colour;
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_FLAGS] = flags;
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_ID] = INVALID_PLAYER_ID;
		return 1;
	}

	public alar_AddLineToHistory(colour, const message[], flags)
	{
		if(isnull(message)) return 0;

		for(new i; i < sizeof(gChatHistory) - 1; i++) {
			gChatHistory[i] = gChatHistory[i + 1];
		}
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_NAME][0] = '\0';
		strcpy(gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_MESSAGE], message, sizeof(SIZE_E_HISTORY[E_HISTORY_MESSAGE]));
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_COLOUR] = colour;
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_FLAGS] = flags;
		gChatHistory[sizeof(gChatHistory)-1][E_HISTORY_ID] = INVALID_PLAYER_ID;
		return 1;
	}

	public alar_ClearHistory()
	{
		for(new i; i < sizeof(gChatHistory); i++) {
			gChatHistory[i][E_HISTORY_MESSAGE][0] = '\0';
			gChatHistory[i][E_HISTORY_NAME][0] = '\0';
			gChatHistory[i][E_HISTORY_COLOUR] = 0;
			gChatHistory[i][E_HISTORY_FLAGS] = 0;
			gChatHistory[i][E_HISTORY_ID] = INVALID_PLAYER_ID;
		}
		return 1;
	}
#endif

public alar_DestroyVehicle(vehicleid)
{
	if(vehicleid == INVALID_VEHICLE_ID) {
		new count;
		Bit_Loop(gCreatedVehicles, i) {
			DestroyVehicle(i);
			count++;
		}
		Bit_SetAll(gCreatedVehicles, 0, sizeof(gCreatedVehicles));
		return count;
	} else if(0 < vehicleid < MAX_VEHICLES && Bit_Get(gCreatedVehicles, vehicleid)) {
		DestroyVehicle(vehicleid);
		Bit_Vet(gCreatedVehicles, vehicleid);
		return 1;
	}
	return 0;
}

public alar_GetPlayerCountryCode(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	new string[3 char];
	strpack(string, gPlayerData[playerid][E_COUNTRY]);
	return string[0];
}

public alar_GetCountryCode(const IP[])
{
	if(isnull(IP)) return 0;
	new string[3 char];
	strpack(string, ReturnCuntCode(gAlarDB, IP));
	return string[0];
}

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
	return INVALID_PLAYER_ID;
}

public alar_SetAdminSpectating(playerid, targetid, bool:saveplayer)
{
	if(!IsPlayerConnected(playerid) || IsPlayerNPC(playerid) || !IsPlayerConnected(targetid) || targetid == playerid || !cmdchk(playerid, E_SPEC_LEVEL)) {
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

		if(gSpawnMethod <= SPAWN_DEFAULT) {
			StoreSpawnData(playerid);
		}
		CallRemoteFunction("OnAdminSpectate", "iii", playerid, targetid, INVALID_PLAYER_ID);

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

public alar_LoginFunc(const func[])
{
	if(isnull(func)) {
		gServerData[E_LOGGEDIN_FUNC][0] = '\0';
	} else {
		strcpy(gServerData[E_LOGGEDIN_FUNC], func, sizeof(SIZE_E_SERVERDATA[E_LOGGEDIN_FUNC]));
	}
	return 1;
}

public alar_SetSpawnType(E_SPAWNTYPE:spawntype, E_INFOTYPE:spawnsaves)
{
	if(spawntype == SPAWN_DEFAULT) {
		gSpawnMethod = DEFAULT_SPAWNTYPE;
	} else {
		gSpawnMethod = spawntype;
	}
	gSpawnSaves = spawnsaves;
	return 1;
}

public alar_OnPlayerSpectatePlayer(playerid, specid)
{
	if(!IsPlayerConnected(playerid) || !(IsPlayerConnected(specid) || specid == INVALID_PLAYER_ID)) return 0;
	gPlayerData[playerid][E_SPECID] = specid;
	return 1;
}

public alar_OnPlayerSpectateVehicle(playerid, vehicleid)
{
	if(!IsPlayerConnected(playerid) || GetVehicleModel(vehicleid) == INVALID_MODEL_ID) return 0;
	if(IsPlayerInAnyVehicle(gPlayerData[playerid][E_SPECID]) && GetPlayerVehicleID(gPlayerData[playerid][E_SPECID]) == vehicleid) return 1;

	new passengerid = INVALID_PLAYER_ID,
		pstate;
	LoopPlayers(i) {
		if(IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == vehicleid) {
			pstate = GetPlayerState(i);
			if(pstate == PLAYER_STATE_DRIVER) {
				gPlayerData[playerid][E_SPECID] = i;
				return 1;
			} else if(pstate == PLAYER_STATE_PASSENGER) {
				passengerid = i;
			}
		}
	}
	gPlayerData[playerid][E_SPECID] = passengerid;
	return 1;
}

public alar_OnPlayerVehicleChange(playerid, newvehicleid)
{
	LoopPlayers(i) {
		if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid && gPlayerData[i][E_SPECMODE] != 1) {
			PlayerSpectateVehicle(i, newvehicleid, gPlayerData[i][E_SPECMODE] == 0 ? SPECTATE_MODE_NORMAL : SPECTATE_MODE_SIDE);
		}
	}
	return 1;
}

public alar_OnPlayerWorldChange(playerid, newworldid)
{
	if(IsSpawned(playerid)) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SetPlayerVirtualWorld(i, newworldid);
			}
		}
	}
	return 1;
}

public alar_SetAdminState(playerid, newstate, seconds)
{
	if(!IsPlayerConnected(playerid) || IsPlayerNPC(playerid)) return 0;

	new oldstate = gPlayerData[playerid][E_STATE];
	if(0 < seconds < MIN_ACTION_TIME) {
		seconds = MIN_ACTION_TIME;
	}

	if(!IsPlayerNPC(playerid)) {
		Player_SetStatus(gAlarDB, ReturnPlayerIP(playerid), newstate, seconds);
	}

	if(newstate & ADMIN_STATE_MUTED) {
		if(gPlayerData[playerid][E_UNMUTE]) KillTimer(gPlayerData[playerid][E_UNMUTE]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNMUTE] = SetTimerEx("alar_unmute", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_MUTE_TIME] = gettime() + seconds;
		} else {
			gPlayerData[playerid][E_UNMUTE] = 0;
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_MUTED;
	}

	if(newstate & ADMIN_STATE_JAILED) {
		if(gPlayerData[playerid][E_UNJAIL]) KillTimer(gPlayerData[playerid][E_UNJAIL]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNJAIL] = SetTimerEx("alar_unjail", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_JAIL_TIME] = gettime() + seconds;
		} else {
			gPlayerData[playerid][E_UNJAIL] = 0;
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_JAILED;
	}

	if(newstate & ADMIN_STATE_FROZEN) {
		if(gPlayerData[playerid][E_UNFREEZE]) KillTimer(gPlayerData[playerid][E_UNFREEZE]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNFREEZE] = SetTimerEx("alar_unfreeze", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_FREEZE_TIME] = gettime() + seconds;
		} else {
			gPlayerData[playerid][E_UNFREEZE] = 0;
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_FROZEN;
	}

	if(newstate & ADMIN_STATE_DESYNCED) {
		if(gPlayerData[playerid][E_UNDESYNC]) KillTimer(gPlayerData[playerid][E_UNDESYNC]);
		if(seconds > 0) {
			gPlayerData[playerid][E_UNDESYNC] = SetTimerEx("alar_undesync", seconds * 1000, 0, "i", playerid);
			gPlayerData[playerid][E_DESYNC_TIME] = gettime() + seconds;
		} else {
			gPlayerData[playerid][E_UNDESYNC] = 0;
		}
		gPlayerData[playerid][E_STATE] |= ADMIN_STATE_DESYNCED;
	}

	if(oldstate != gPlayerData[playerid][E_STATE]) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
			}
		}
		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], oldstate);
	}
	return 1;
}

public alar_ClearAdminState(playerid, newstate)
{
	if(!IsPlayerConnected(playerid) || IsPlayerNPC(playerid)) return 0;

	new oldstate = gPlayerData[playerid][E_STATE];

	if(!IsPlayerNPC(playerid)) {
		Player_ClearStatus(gAlarDB, ReturnPlayerIP(playerid), newstate);
	}

	if(newstate & ADMIN_STATE_MUTED & oldstate) {
		if(gPlayerData[playerid][E_UNMUTE]) {
			KillTimer(gPlayerData[playerid][E_UNMUTE]);
			gPlayerData[playerid][E_UNMUTE] = 0;
		}
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_MUTED;
		gPlayerData[playerid][E_MUTE_TIME] = 0;
		gPlayerData[playerid][E_LASTMSG][0] = '\0';
		gPlayerData[playerid][E_REPEATEDMSGS] = 0;
	}

	if(newstate & ADMIN_STATE_JAILED & oldstate) {
		if(gPlayerData[playerid][E_UNJAIL]) {
			KillTimer(gPlayerData[playerid][E_UNJAIL]);
			gPlayerData[playerid][E_UNJAIL] = 0;
		}
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_JAILED;
		gPlayerData[playerid][E_JAIL_TIME] = 0;

		if(gPlayerData[playerid][E_HEALTH]) {
			switch(gSpawnMethod) {
				case SPAWN_ALAR_SPAWN: {
					SetSpawnInfo(playerid, GetPlayerTeam(playerid), GetPlayerSkin(playerid), gPlayerData[playerid][E_POSX], gPlayerData[playerid][E_POSY], gPlayerData[playerid][E_POSZ], gPlayerData[playerid][E_ROT], 0, 0, 0, 0, 0, 0);
					gPlayerData[playerid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
					SpawnPlayer(playerid);
				}
				case SPAWN_ALAR_TIMER: {
					SpawnPlayer(playerid);
					SetTimerEx("alar_setspawndata", 500, 0, "i", playerid);	// stops stupid gamemode spawn stuff
				}
				default: {
					gPlayerData[playerid][E_SETINFO] = (INFOTYPE_VEHICLE | INFOTYPE_POSITION | INFOTYPE_WORLD | INFOTYPE_WEAPONS | INFOTYPE_CASH | INFOTYPE_HEALTH | INFOTYPE_ARMOUR) & gSpawnSaves;
					SpawnPlayer(playerid);
				}
			}
		} else {
			SetPlayerVirtualWorld(playerid, 0);
			alar_OnPlayerWorldChange(playerid, 0);
			SetPlayerInterior(playerid, 0);
			SpawnPlayer(playerid);
		}
	}

	if(newstate & ADMIN_STATE_FROZEN & oldstate) {
		if(gPlayerData[playerid][E_UNFREEZE]) {
			KillTimer(gPlayerData[playerid][E_UNFREEZE]);
			gPlayerData[playerid][E_UNFREEZE] = 0;
		}
		gPlayerData[playerid][E_STATE] &= ~ADMIN_STATE_FROZEN;
		gPlayerData[playerid][E_FREEZE_TIME] = 0;

		TogglePlayerControllable(playerid, true);
	}

	if(oldstate != gPlayerData[playerid][E_STATE]) {
		LoopPlayers(i) {
			if(gPlayerData[i][E_SPECTATING] && gPlayerData[i][E_SPECID] == playerid) {
				SpecHUDUpdate(i);
			}
		}
		CallRemoteFunction("OnAdminStateChange", "iii", playerid, gPlayerData[playerid][E_STATE], oldstate);
	}
	return 1;
}

public alar_Ban(const playername[], const playerip[], const reason[], const adminname[], const adminip[], bool:hidename)
{
	if(isnull(playername)) {
		if(!IPisvalid(playerip, true)) return 0;
	} else if(isnull(playerip)) {
		if(!isValidName(playername, true)) return 0;
	} else {
		if(!IPisvalid(playerip, true) || !isValidName(playername, true)) return 0;
	}

	new msg[50 + MAX_INPUT];

	if(isnull(reason)) {
		msg = "You have been banned from the server";
	} else {
		format(msg, sizeof(msg), "You have been banned from the server (%s)", reason);
	}

	new datetime[MAX_TIMESTAMP],
		shortreason[MAX_REASON];
	datetime = ReturnTimeStamp();

	if(!isnull(reason)) {
		strtruncate(shortreason, reason);
	}

	new hits,
		string[MAX_INPUT];
	LoopPlayers(i) {
		if(!IsPlayerNPC(i) && ((!isnull(playerip) && IPcompare(playerip, ReturnPlayerIP(i))) || (!isnull(playername) && strwild(playername, ReturnPlayerName(i))))) {
			SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
			if(gServerData[E_RANGEBAN_MSG][0] != '\0' && strfind(playerip, "*") != -1) {
				SendBanMsg(i, gServerData[E_RANGEBAN_MSG], datetime, adminname);
			} else if(gServerData[E_BAN_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_BAN_MSG], datetime, adminname);
			}
			if(isnull(adminname)) {
				if(isnull(shortreason)) {
					format(string, sizeof(string), "%s(%i) has been banned from the server", ReturnPlayerName(i), i);
				} else {
					format(string, sizeof(string), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
				}
				LogAction(string);
				AddLogString(string);
				AddJoinString(i, COLOUR_BAN, string);
			} else {
				if(isnull(shortreason)) {
					format(string, sizeof(string), "%s(%i) has been banned from the server by %s", ReturnPlayerName(i), i, adminname);
				} else {
					format(string, sizeof(string), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(i), i, adminname, shortreason);
				}
				LogAction(string);
				AddLogString(string);
				if(hidename) {
					if(isnull(shortreason)) {
						format(string, sizeof(string), "%s(%i) has been banned from the server", ReturnPlayerName(i), i);
					} else {
						format(string, sizeof(string), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
					}
				}
				AddJoinString(i, COLOUR_BAN, string);
			}
			Kick(i);
			hits++;
		}
	}

	Bans_BanPlayer(gAlarDB, playername, playerip, reason, adminname, adminip, hits);
	return 1;
}

public alar_BanPlayer(playerid, const reason[], const adminname[], const adminip[], bool:hidename)
{
	if(!IsPlayerConnected(playerid) || IsPlayerNPC(playerid)) return 0;

	new shortreason[MAX_REASON],
		msg[MAX_INPUT + 50],
		string[MAX_INPUT],
		datetime[MAX_TIMESTAMP],
		bIP[MAX_IP];

	if(!isnull(reason)) {
		strtruncate(shortreason, reason);
	}
	if(isnull(reason)) {
		msg = "You have been banned from the server";
	} else {
		format(msg, sizeof(msg), "You have been banned from the server (%s)", reason);
	}

	SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);

	datetime = ReturnTimeStamp();
	GetPlayerIp(playerid, bIP, sizeof(bIP));

	if(gServerData[E_BAN_MSG][0] != '\0') {
		SendBanMsg(playerid, gServerData[E_BAN_MSG], datetime, adminname);
	}

	if(isnull(adminname)) {
		if(isnull(shortreason)) {
			format(string, sizeof(string), "%s(%i) has been banned from the server", ReturnPlayerName(playerid), playerid);
		} else {
			format(string, sizeof(string), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(playerid), playerid, shortreason);
		}
		LogAction(string);
		AddLogString(string);
		AddJoinString(playerid, COLOUR_BAN, string);
	} else {
		if(isnull(shortreason)) {
			format(string, sizeof(string), "%s(%i) has been banned from the server by %s", ReturnPlayerName(playerid), playerid, adminname);
		} else {
			format(string, sizeof(string), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(playerid), playerid, adminname, shortreason);
		}
		LogAction(string);
		AddLogString(string);
		if(hidename) {
			if(isnull(shortreason)) {
				format(string, sizeof(string), "%s(%i) has been banned from the server", ReturnPlayerName(playerid), playerid);
			} else {
				format(string, sizeof(string), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(playerid), playerid, shortreason);
			}
		}
		AddJoinString(playerid, COLOUR_BAN, string);
	}
	Kick(playerid);

	new hits = 1;
	if(gServerData[E_KICK_ALL_IPS]) {
		LoopPlayers(i) {
			if(i != playerid && !IsPlayerNPC(i) && IPcompare(bIP, ReturnPlayerIP(i))) {
				SendClientMessage(i, COLOUR_WARNING, msg);
				if(gServerData[E_BAN_MSG][0] != '\0') {
					SendBanMsg(i, gServerData[E_BAN_MSG], datetime, adminname);
				}
				if(isnull(adminname)) {
					if(isnull(shortreason)) {
						format(string, sizeof(string), "%s(%i) has been banned from the server", ReturnPlayerName(i), i);
					} else {
						format(string, sizeof(string), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
					}
					LogAction(string);
					AddLogString(string);
					AddJoinString(i, COLOUR_BAN, string);
				} else {
					if(isnull(shortreason)) {
						format(string, sizeof(string), "%s(%i) has been banned from the server by %s", ReturnPlayerName(i), i, adminname);
					} else {
						format(string, sizeof(string), "%s(%i) has been banned from the server by %s (%s)", ReturnPlayerName(i), i, adminname, shortreason);
					}
					LogAction(string);
					AddLogString(string);
					if(hidename) {
						if(isnull(shortreason)) {
							format(string, sizeof(string), "%s(%i) has been banned from the server", ReturnPlayerName(i), i);
						} else {
							format(string, sizeof(string), "%s(%i) has been banned from the server (%s)", ReturnPlayerName(i), i, shortreason);
						}
					}
					AddJoinString(i, COLOUR_BAN, string);
				}
				Kick(i);
				hits++;
			}
		}
	}

	if(gAlarDB) {
		if(gServerData[E_LOGGEDIN_FUNC][0] == '\0' || !CallRemoteFunction(gServerData[E_LOGGEDIN_FUNC], "i", playerid)) {
			Bans_BanIP(gAlarDB, bIP, reason, adminname, adminip, hits);
		} else {
			Bans_BanPlayer(gAlarDB, ReturnPlayerName(playerid), bIP, reason, adminname, adminip, hits);
		}
	}
	return 1;
}

public alar_Suspend(const playername[], const playerip[], Float:hours, const reason[], const adminname[], const adminip[], bool:hidename)
{
	if(isnull(playername)) {
		if(!IPisvalid(playerip, true)) return 0;
	} else if(isnull(playerip)) {
		if(!isValidName(playername, true)) return 0;
	} else {
		if(!IPisvalid(playerip, true) || !isValidName(playername, true)) return 0;
	}

	new shortreason[MAX_REASON],
		msg[MAX_INPUT + 60],
		datetime[MAX_TIMESTAMP];

	if(!isnull(reason)) {
		strtruncate(shortreason, reason);
	}
	if(isnull(reason)) {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours", hours);
	} else {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", hours, reason);
	}

	new hits,
		string[MAX_INPUT];
	datetime = ReturnTimeStamp();
	LoopPlayers(i) {
		if(!IsPlayerNPC(i) &&((!isnull(playerip) && IPcompare(playerip, ReturnPlayerIP(i))) || (!isnull(adminname) && strwild(playername, ReturnPlayerName(i))))) {
			SendWrappedMessageToPlayer(i, COLOUR_WARNING, msg);
			if(gServerData[E_RANGESUSPEND_MSG][0] != '\0' && strfind(playerip, "*") != -1) {
				SendBanMsg(i, gServerData[E_RANGESUSPEND_MSG], datetime, adminname);
			} else if(gServerData[E_SUSPEND_MSG][0] != '\0') {
				SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, adminname);
			}
			if(isnull(adminname)) {
				if(isnull(shortreason)) {
					format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours", ReturnPlayerName(i), i, hours);
				} else {
					format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(i), i, hours, shortreason);
				}
				LogAction(string);
				AddLogString(string);
				AddJoinString(i, COLOUR_SUSPEND, string);
			} else {
				if(isnull(shortreason)) {
					format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours by %s", ReturnPlayerName(i), i, hours, adminname);
				} else {
					format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours by %s (%s)", ReturnPlayerName(i), i, hours, adminname, shortreason);
				}
				LogAction(string);
				AddLogString(string);
				if(hidename) {
					if(isnull(shortreason)) {
						format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours", ReturnPlayerName(i), i, hours);
					} else {
						format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(i), i, hours, shortreason);
					}
				}
				AddJoinString(i, COLOUR_SUSPEND, string);
			}
			Kick(i);
			hits++;
		}
	}

	Suspensions_SuspendPlayer(gAlarDB, playername, playerip, hours, reason, adminname, adminip, hits);
	return 1;
}

public alar_SuspendPlayer(playerid, Float:hours, const reason[], const adminname[], const adminip[], bool:hidename)
{
	if(!IsPlayerConnected(playerid) || IsPlayerNPC(playerid)) return 0;

	new shortreason[MAX_REASON],
		msg[MAX_INPUT + 60],
		string[MAX_INPUT],
		datetime[MAX_TIMESTAMP],
		sIP[MAX_IP];

	if(!isnull(reason)) {
		strtruncate(shortreason, reason);
	}

	if(isnull(reason)) {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours", hours);
	} else {
		format(msg, sizeof(msg), "You have been suspended from the server for %0.2f hours (%s)", hours, reason);
	}

	SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);

	datetime = ReturnTimeStamp();
	GetPlayerIp(playerid, sIP, sizeof(sIP));

	if(gServerData[E_SUSPEND_MSG][0] != '\0') {
		SendBanMsg(playerid, gServerData[E_SUSPEND_MSG], datetime, adminname);
	}

	if(isnull(adminname)) {
		if(isnull(shortreason)) {
			format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours", ReturnPlayerName(playerid), playerid, hours);
		} else {
			format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(playerid), playerid, hours, shortreason);
		}
		LogAction(string);
		AddLogString(string);
		AddJoinString(playerid, COLOUR_SUSPEND, string);
	} else {
		if(isnull(shortreason)) {
			format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours by %s", ReturnPlayerName(playerid), playerid, hours, adminname);
		} else {
			format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours by %s (%s)", ReturnPlayerName(playerid), playerid, hours, adminname, shortreason);
		}
		LogAction(string);
		AddLogString(string);
		if(hidename) {
			if(isnull(shortreason)) {
				format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours", ReturnPlayerName(playerid), playerid, hours);
			} else {
				format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(playerid), playerid, hours, shortreason);
			}
		}
		AddJoinString(playerid, COLOUR_SUSPEND, string);
	}
	Kick(playerid);

	new hits = 1;
	if(gServerData[E_KICK_ALL_IPS]) {
		LoopPlayers(i) {
			if(i != playerid && !IsPlayerNPC(i) && IPcompare(sIP, ReturnPlayerIP(i))) {
				SendClientMessage(i, COLOUR_WARNING, msg);
				if(gServerData[E_SUSPEND_MSG][0] != '\0') {
					SendBanMsg(i, gServerData[E_SUSPEND_MSG], datetime, adminname);
				}
				if(isnull(adminname)) {
					if(isnull(shortreason)) {
						format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours by %s", ReturnPlayerName(i), i, hours, adminname);
					} else {
						format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours by %s (%s)", ReturnPlayerName(i), i, hours, adminname, shortreason);
					}
					LogAction(string);
					AddLogString(string);
					if(hidename) {
						if(isnull(shortreason)) {
							format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours", ReturnPlayerName(i), i, hours);
						} else {
							format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(i), i, hours, shortreason);
						}
					}
					AddJoinString(i, COLOUR_SUSPEND, string);
				} else {
					if(isnull(shortreason)) {
						format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours", ReturnPlayerName(i), i, hours);
					} else {
						format(string, sizeof(string), "%s(%i) has been suspended from the server for %0.2f hours (%s)", ReturnPlayerName(i), i, hours, shortreason);
					}
					LogAction(string);
					AddLogString(string);
					AddJoinString(i, COLOUR_SUSPEND, string);
				}
				Kick(i);
				hits++;
			}
		}
	}

	if(gAlarDB) {
		if(gServerData[E_LOGGEDIN_FUNC][0] == '\0' || !CallRemoteFunction(gServerData[E_LOGGEDIN_FUNC], "i", playerid)) {
			Suspensions_SuspendIP(gAlarDB, sIP, hours, reason, adminname, adminip, hits);
		} else {
			Suspensions_SuspendPlayer(gAlarDB, ReturnPlayerName(playerid), sIP, hours, reason, adminname, adminip, hits);
		}
	}
	return 1;
}

public alar_Warn(const playername[], const reason[], const adminname[], const adminip[], bool:hidename)
{
	if(!isValidName(playername, false)) return 0;

	LoopPlayers(i) {
		if(!IsPlayerNPC(i) && strcmp(ReturnPlayerName(i), playername, true) == 0) {
			return alar_WarnPlayer(i, reason, adminname, adminip, hidename);
		}
	}

	if(gAlarDB) {
		new msg[MAX_INPUT * 2];

		if(isnull(adminname)) {
			if(isnull(reason)) {
				format(msg, sizeof(msg), "%s has been warned", playername);
			} else {
				strtruncate(msg, reason, MAX_REASON);
				format(msg, sizeof(msg), "%s has been warned (%s)", playername, msg);
			}
		} else {
			if(isnull(reason)) {
				format(msg, sizeof(msg), "%s has been warned by %s", playername, adminname);
			} else {
				strtruncate(msg, reason, MAX_REASON);
				format(msg, sizeof(msg), "%s has been warned by %s (%s)", playername, adminname, msg);
			}
		}
		LogAction(msg);
		AddLogString(msg);

		if(!isnull(reason)) {
			strcpy(msg, reason);
			strreplace(msg, "'", "''");
		} else {
			msg[0] = '\0';
		}
		db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));
		Warnings_WarnPlayer(gAlarDB, playername, msg, adminname, adminip);
		if(gServerData[E_WARN_LIMIT] > 0 && Warnings_GetWarningCount(gAlarDB, playername, gServerData[E_WARN_TIMEOUT]) >= gServerData[E_WARN_LIMIT]) {
			if(gServerData[E_WARN_SUSPEND_TIME] > 0) {
				Suspensions_SuspendName(gAlarDB, playername, gServerData[E_WARN_SUSPEND_TIME], "Too many warnings", "", "", 1);

				format(msg, sizeof(msg), "%s has been suspended from the server for %i hours (Too many warnings)", playername, gServerData[E_WARN_SUSPEND_TIME]);
				LogAction(msg);
				AddLogString(msg);

				Warnings_SetInactive(gAlarDB, playername, gServerData[E_WARN_TIMEOUT]);
			}
		}
		db_free_result(db_query(gAlarDB, "END TRANSACTION"));
	}
	return 1;
}


public alar_WarnPlayer(playerid, const reason[], const adminname[], const adminip[], bool:hidename)
{
	if(!IsPlayerConnected(playerid) || IsPlayerNPC(playerid) || (gServerData[E_LOGGEDIN_FUNC][0] == '\0' || !CallRemoteFunction(gServerData[E_LOGGEDIN_FUNC], "i", playerid))) return 0;

	if(gAlarDB) {
		new pname[MAX_PLAYER_NAME];
		GetPlayerName(playerid, pname, sizeof(pname));

		#if SOUND_VOLUME > 0
			new Float:px, Float:py, Float:pz;
			GetPlayerPos(playerid, px, py, pz);
			for(new i; i < SOUND_VOLUME; i++) {
				PlayerPlaySound(playerid, 1132, px, py, pz);
			}
		#endif

		new msg[MAX_INPUT * 2];
		if(hidename || isnull(adminname)) {
			if(isnull(reason)) {
				msg = "You have been warned";
			} else {
				format(msg, sizeof(msg), "You have been warned (%s)", reason);
			}
		} else {
			if(isnull(reason)) {
				format(msg, sizeof(msg), "You have been warned by %s", adminname);
			} else {
				format(msg, sizeof(msg), "You have been warned by %s (%s)", adminname, reason);
			}
		}
		SendWrappedMessageToPlayer(playerid, COLOUR_WARNING, msg);

		strtruncate(msg, reason, MAX_REASON);
		format(msg, sizeof(msg), "%s has been warned by %s (%s)", pname, adminname, msg);
		LogAction(msg);
		AddLogString(msg);

		db_free_result(db_query(gAlarDB, "BEGIN TRANSACTION"));

		if(isnull(reason)) {
			strcpy(msg, reason);
			strreplace(msg, "'", "''");
		} else {
			msg[0] = '\0';
		}
		Warnings_WarnPlayer(gAlarDB, pname, msg, adminname, adminip);
		gPlayerData[playerid][E_LAST_WARNING] = GetTickCount();

		if(gServerData[E_WARN_LIMIT] > 0 && Warnings_GetWarningCount(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]) >= gServerData[E_WARN_LIMIT]) {
			if(gServerData[E_WARN_SUSPEND_TIME] > 0) {
				format(msg, sizeof(msg), "You have been suspended from the server for %i hours (Too many warnings)", gServerData[E_WARN_SUSPEND_TIME]);
				SendClientMessage(playerid, COLOUR_WARNING, msg);

				Suspensions_SuspendPlayer(gAlarDB, pname, ReturnPlayerIP(playerid), gServerData[E_WARN_SUSPEND_TIME], "Too many warnings", "", "", 1);

				if(gServerData[E_SUSPEND_MSG][0] != '\0') {
					SendBanMsg(playerid, gServerData[E_SUSPEND_MSG], ReturnTimeStamp(), "");
				}

				format(msg, sizeof(msg), "%s(%i) has been suspended from the server for %i hours (Too many warnings)", pname, playerid, gServerData[E_WARN_SUSPEND_TIME]);
				AddJoinString(playerid, COLOUR_SUSPEND, msg);
			} else {
				SendClientMessage(playerid, COLOUR_WARNING, "You have been kicked server (Too many warnings)");

				format(msg, sizeof(msg), "%s(%i) has been kicked from the server (Too many warnings)", pname, playerid);
				AddJoinString(playerid, COLOUR_KICK, msg);
			}
			LogAction(msg);
			AddLogString(msg);

			Warnings_SetInactive(gAlarDB, pname, gServerData[E_WARN_TIMEOUT]);

			Kick(playerid);
		}
		db_free_result(db_query(gAlarDB, "END TRANSACTION"));
	}
	return 1;
}
