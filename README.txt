     _   _
    /_\ | | __ _ _ __
   //_\\| |/ _` | '__|
  /  _  \ | (_| | |
  \_/ \_/_|\__,_|_|


Features
	* Customizable command levels
	* Join messages (in chat or textdraws)
	* Temporary/permenant muting/jailing/freezing
	* In-game admin log
	* Bans/suspensions for IPs/IP ranges and names (including wildcards)
	* Warnings system
	* Ping kicker (using averaged values)
	* Flood checking for chat/commands/joins and RCON attempts
	* Spectate system with free spectate mode and HUD for player information (works despite 0.3's efforts to break spectating)
	* Alias system for checking player's previous names/IPs
	* Chat history for joining players
	* Finds players countries from their IP


Installing
	* Put the whirlpool plugin (http://forum.sa-mp.com/index.php?topic=89418.0) in your plugins folder
	* Put alar.amx in your filterscripts folder
	* Open your server.cfg and put alar first on the filterscripts line, and Whirlpool on the plugins line


Configuring
	* Adding admins
		- Login to RCON, then use the /alogin command to make yourself an admin
		- Use the alar_database filterscript
		- Use the /asetadmin command
	* Setting up countries
		- Download a csv file from one of the sources:
				http://www.maxmind.com/app/geoip_country
				http://ip-to-country.webhosting.info
				http://software77.net/geo-ip
		- Put the csv file in your scriptfiles folder
		- Use the "/aipupdate" command in-game (may freeze the server for a few seconds)
		- Delete the csv file
	* Changing settings
		- Use the /adatabase filterscript to set the server settings


Information for admins
	* The "/acommands" command will show a list of available commands
	* The "/ahelp" command will show useful information, "/ahelp (command)" will show information about a specific command
	* The analoue left and right keys can be used to change the log page
	* If you're using an analogue controller, the "/alog" command will disable the log keys and "/alog (page)" can be used to change page
	* Multiple vehicles can be destroyed at once with the "/adestroy" command, e.g. "/adestroy 2,5,8-20,25"
	* If you're sharing an IP with other players, the "/aautologin" function will toggle automatic logins by IP
	* The command "/aspec" will enter/exit spectate mode, "/aspec (player)" can be used to spectate a player
	* In spectate mode, double clicking a player on the tab list will spectate that person
	* Spectate keys
		- Normal spectate
			Crouch		- toggle HUD
			Jump		- spectate the last player you chose to spectate
			Fire		- spectate previous player
			Aim			- spectate next player
			Look behind	- goto the player you're spectating (requires /agoto privileges)
			Walk		- change to free spectate mode
			Enter		- exit spectate mode
		- Free spectate
			Up/Down		- move the camera forward/back
			Left/Right	- rotate the camera left/right
			Jump/Crouch	- rotate the camera up/down
			Fire/Aim	- strafe left/right
			Fire + Aim	- reset the camera's vertical rotation
			Look behind	- goto the where the camera is looking at (requires teleport privileges)
			Walk		- change to normal spectate mode
			Enter+Exit	- exit spectate mode


Additional filterscripts
	* alar_database	- Allows Alar to be configured ingame
	* alar_merge	- Merge two alar databases
	* alar_update	- Update an old alar version (using INI files) to a SQL database