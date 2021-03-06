Any Last Administrative Requests
================================

v1.4.4 (2010-05-16)
-----

- Fixed: Work around a bug in PVars

v1.4.3 (2010-05-08)
-----
- Fixed: Incorrectly putting admins in a vehicle when exiting spectate

v1.4.2 (2010-05-06)
-----

- Added: GetPlayerCountryName() function
- Changed: /aalias, /aalias2 and /aalias3 don't need parameters when spectating a player
- Changed: /arepair will fix vehicle damage on vehicles with full health
- Changed: Increased /acarcolour limits to include all possible colour ids
- Changed: Removed /acreate model limits for rc vehicles and the tram
- Changed: Use commas for money
- Changed: Use native sa-mp camera functions where possible instead of trying to guess where the camera is
- Changed: Use PVars for cross script player variables (CountryCode, CountryName, AlarLevel, AlarSpectating, AlarStatus)
- Fixed: alar_update filterscript not importing bans/suspensions correctly
- Fixed: Better checking for putting players in the right vehicle when leaving spectate/jail
- Fixed: Blank lines in the admin log when the string ends with a space
- Fixed: OnAdminStateChange having the wrong values for newstate and oldstate when unfreezing or undesyncing a player
- Fixed: RC Goblin seat number

v1.4.1 (2010-03-15)
-----

- Fixed: /ainfo displaying "Weapons:" even if the player has none
- Fixed: /awarnings not displaying correctly when no admin is stored
- Fixed: Some incorrect vehicle seat numbers

v1.4 (2010-01-11)
---

- Added: 3D texts showing the vehicle IDs of alar created vehicles when the /adestroy command is used
- Added: Check for invalid paintjobs
- Added: Check for too many RCON login attempts
- Added: Functions to get a player's/IP's country code/name
- Added: Idle players to /apaused
- Added: Option to hide admin names when banning/suspending from a filterscript/gamemode
- Added: Parameter (command) to /ahelp, to show help about a command
- Added: Parameters "visible" and "current" to the /adestroy command, as well as the ability to delete multiple vehicles at a time "/adestroy 2,3,20-25,8"
- Added: RCON admins are effectively alar admins (of level RCONLevel)
- Added: Sounds to aslap and apunch
- Added: StoreAliases setting
- Added: Support for NPCs (aliases are not saved, cannot be muted/jailed/frozen/desynced/banned/suspended/ejected/brought/dropped/cause a join flood)
- Added: Warnings system (Commands: /awarn, /aunwarn, /awarnings Settings: WarnLimit, WarnProtection, WarnSuspendTime, WarnTimeout, WarnLevel, UnwarnLevel Functions: WarnPlayer, WarnPlayerid)
- Added: When spectating, double click a player from the list to spectate them
- Added: Wildcard support to /akick (WildKickLevel setting)
- Changed: /aban and /asuspend only ban/suspend the player's IP unless a public function (set with SetAlarLoginCheck) returns true
- Changed: /aip and /ainfo default the the player being spectated if no player is entered
- Changed: Accounts created by RCON admins are made to be level RCONLoginLevel
- Changed: All information now stored in a SQL database
- Changed: Commands are processed using a modified zcmd rather than a hardcoded binary tree
- Changed: Exiting spectate mode will put you back in your vehicle and restore your last weapon
- Changed: For commands that take [player name] as a parameter, the name can be enclosed in quotes
- Changed: Going to and bring players will put them/you in their vehicle/trailer
- Changed: Includes for compiling alar are now in the alar.pwn directory rather than the compiler includes folder
- Changed: Log keys now enabled by default
- Changed: Repairing a vehicle to full health fixes model damage
- Changed: Temporary mutes/jails/freezes are saved
- Changed: The options $(DATE) and $(TIME) for ban messages have been replaced with $(DATETIME), which is in the format 'YYYY-MM-DD HH:MM:SS'
- Changed: Use Whirlpool instead of MD5 for hashes (requires Whirlpool plugin, version 1.0 included)
- Removed: Length limit for reasons (ban/mute etc)
- Removed: Option to show personal messages to admins
- Removed: Vehicle model limit check

v1.3.1 (2009-10-09)
-----

- Fixed: Adminchat prefixes not showing correctly in /ahelp
- Fixed: Banshee missing from allowed mod list
- Fixed: Displaying the wrong name for failed /aloginas attempts
- Fixed: Level check for /abancheck
- Fixed: PlayerSpectateVehicle bug in alar.inc
- Fixed: Some timers were not being reset properly when using alar.inc functions
- Fixed: Suspending a name with a wildcard only kicked the first player

v1.3 (2009-08-08)
---

- Added: /acarcolour command
- Added: /aipupdate command
- Added: /aspectating command
- Added: Additonal RCON commands
- Added: Chat history for joining players (/ahistory)
- Added: Enabled going to a player from spec using the look behind key (requires agoto privlages)
- Added: OnAlarInit() and OnAlarExit() callbacks, and GetAlarVersion() function
- Added: Option to check for invalid vehicle mods (CHECKMODS compile setting)
- Added: Option to enable extra spectate views (ExtraSpecViews setting)
- Added: Parameter (amount) to /arepair, requires player parameter to be entered
- Added: Players in the server who are immune to the ping kicker can be viewed with the /aimmune command
- Added: Spectate HUD setting is saved
- Added: SuspendPlayer() and BanPlayer() functions
- Added: Whitelist from range bans (/awhitelist /aunwhitelist)
- Changed: /asetname and /aloginas so banned or suspended names cannot be used
- Changed: How admins spawn from spec (added SetSpawnType() function) and how jailed players spawn
- Changed: Locahost and LAN IP address no longer show as Unknown
- Changed: Players with the same IP as a player banned or suspended with /aban or /asuspend are kicked from the server (KickAllIPs setting)
- Changed: Ranges bans/suspensions can have a different message (RangeBanMsg/RangeSuspensionMsg settings)
- Changed: Spectating admins will view the closest player in their virtual world if their current player dies (with no killer) or leaves
- Changed: The ping kicker can now be disabled by setting the max ping to 0 or less
- Fixed: Added password length check to RCON account creation
- Fixed: Join textdraws not appearing for joining players
- Fixed: Restricted spawning where you look in free spec to only admins who can right click teleport
- Fixed: Set virtual world and interior of passengers when using /agoto and /abring
- Fixed: Various minor bugs

v1.2 (2009-05-14)
---

- Added: "Admins Spectating" to /asinfo
- Added: "paused" to spec hud
- Added: /alog command to toggle whether admin log keys enabled, and to change the log page
- Added: Log message when a permanently muted/jailed/frozen player joins
- Added: Multiple adminchat prefixes now possible using | as a seperator eg) "@|#|//"
- Changed: Using /aflip now puts out the fires on vehicles
- Fixed: Background alpha in admin logs, also changed so using 0 as the colour uses the default colour
- Fixed: Newline in reason when unsuspending/unbanning
- Fixed: Random bug where ban/suspend messages didn't show with some gamemodes using YSF
- Fixed: The spectate HUD so it updates when /asetname is used

v1.1 (2009-05-04)
---

- Added: Parameter [player] to /asuspendip
- Added: Warning when /aservername will truncate in the sa-mp browser
- Changed: More rigorous file opening checks for /alistmodes
- Changed: Some vehicle names to match those in the gxt file and remove duplicates
- Fixed: /ainterior and /aworld work on admins in free spec
- Fixed: Textdraws being destroyed when /achangemode is used with an incorrect mode name

v1.0 (2009-04-17)
---

- Initial version