/*
 *	Any Last Administrative Requests - Bans.inc
 *		Ban Functions
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
	native bool:IsNameWhitelisted(const playername[]);
	native bool:WhitelistName(const playername[]);
	native bool:UnwhitelistName(const playername[]);

	native bool:IsNameNotBanned(const playername[]);
	native bool:IsIPNotBanned(const playerip[]);
	native bool:GetBanInfo(const playername[], const playerip[], BanData[E_ALAR_BAN], bool:noranges=false, bool:nowilds=false);
	native bool:BanPlayer(const playername[], const playerip[], const reason[], const adminname[]);
	native bool:BanName(const playername[], const reason[], const adminname[]);
	native bool:BanIP(const playerip[], const reason[], const adminname[]);
	native bool:UnbanPlayer(const playername[], const playerip[], BanData[E_ALAR_BAN]);
	native bool:UnbanName(const playername[], BanData[E_ALAR_BAN]);
	native bool:UnbanIP(const playerip[], BanData[E_ALAR_BAN]);

	native bool:IsNameNotSuspended(const playername[]);
	native bool:IsIPNotSuspended(const playerip[]);
	native bool:GetSuspendInfo(const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION], bool:noranges=false, bool:nowilds=false);
	native bool:SuspendPlayer(const playername[], const playerip[], Float:suspendedhours, const suspendreason[], const adminname[]);
	native bool:SuspendName(const playername[], Float:suspendedhours, const suspendreason[], const adminname[]);
	native bool:SuspendIP(const playerip[], Float:suspendedhours, const suspendreason[], const adminname[]);
	native bool:UnsuspendPlayer(const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION]);
	native bool:UnsuspendName(const playername[], SuspendData[E_ALAR_SUSPENSION]);
	native bool:UnsuspendIP(const playerip[], SuspendData[E_ALAR_SUSPENSION]);
*/

#include <alar/Functions>
#include <alar/IP2c>

enum E_ALAR_BAN {
	E_BAN_NAME[MAX_PLAYER_NAME],
	E_BAN_IP[MAX_IP],
	E_BAN_DATE[11],
	E_BAN_TIME[15],
	E_BAN_ADMIN[MAX_PLAYER_NAME],
	E_BAN_REASON[MAX_INPUT],
}; stock SIZE_E_ALAR_BAN[E_ALAR_BAN];

enum E_ALAR_SUSPENSION {
	E_SUSPEND_NAME[MAX_PLAYER_NAME],
	E_SUSPEND_IP[MAX_IP],
	E_SUSPEND_DATE[11],
	E_SUSPEND_TIME[15],
	E_SUSPEND_ADMIN[MAX_PLAYER_NAME],
	E_SUSPEND_REASON[MAX_INPUT],
	E_SUSPEND_YEAR,
	E_SUSPEND_MONTH,
	E_SUSPEND_DAY,
	Float:E_SUSPEND_HOUR,
}; stock SIZE_E_ALAR_SUSPENSION[E_ALAR_SUSPENSION];


/**
 *  Check if a name is whitelisted
 *  @param	playername	The name to check
 *  @return	true if the name is whitelisted, otherwise false
 */
stock bool:IsNameWhitelisted(const playername[])
{
	if(playername[0] == '\0' || !fexist(WHITELISTFILE)) return false;

	new File:handle = fopen(WHITELISTFILE, io_read);
	if(!handle) return false;

	new line[MAX_PLAYER_NAME];
	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strstripnewline(line);
		if(strcmp(line, playername, true) == 0) {
			fclose(handle);
			return true;
		}
	}

	fclose(handle);
	return false;
}

/**
 *  Whitelist a name
 *  @param	playername	The name to whitelist
 *  @return	true if the name was whitelisted, otherwise false
 */
stock bool:WhitelistName(const playername[])
{
	if(playername[0] == '\0') return false;

	new File:handle = fopen(WHITELISTFILE, io_append);
	if(!handle) return false;

	new line[MAX_STRING];
	format(line, sizeof(line), "%s\r\n", playername);
	fwrite(handle, line);
	fclose(handle);
	return true;
}

/**
 *  Remove a name from the whitelist
 *  @param	playername	The name to remove from the whitelist
 *  @return	true if the name was removed from the whitelist, otherwise false
 */
stock bool:UnwhitelistName(const playername[])
{
	if(playername[0] == '\0') return false;

	new File:ohnd = fopen(WHITELISTFILE, io_read);
	if(!ohnd) return false;
	new File:whnd = fopen(WHITELISTFILE ".part", io_write);
	if(!whnd) {
		fclose(ohnd);
		return false;
	}

	new line[MAX_STRING],
		bool:unwhitelisted = false;

	while(fread(ohnd, line)) {
		if(unwhitelisted == false && line[0] != '#') {
			strstripnewline(line);
			if(strcmp(line, playername, true) == 0) {
				unwhitelisted = true;
				continue;
			}
		}
		fwrite(whnd, line);
	}

	fclose(ohnd);
	fclose(whnd);
	if(unwhitelisted == false || fcopytextfile(WHITELISTFILE ".part", WHITELISTFILE)) fremove(WHITELISTFILE ".part");

	return unwhitelisted;
}

/**
 *  Check if a name is not currently banned
 *  @param	playername	The name to check
 *  @return	true if the name is banned, otherwise false
 */
stock bool:IsNameNotBanned(const playername[])
{
	if(playername[0] == '\0' || !fexist(BANFILE)) return false;

	new File:handle = fopen(BANFILE, io_read);
	if(!handle) return false;

	new name[MAX_PLAYER_NAME],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strscan(line, "s ", name, sizeof(name));
		if(strcmp(name, playername, true) == 0) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

/**
 *  Check if an IP is not currently banned
 *  @param	playerip	The IP to check
 *  @return	true if the IP is banned, otherwise false
 */
stock bool:IsIPNotBanned(const playerip[])
{
	if(playerip[0] == '\0' || !fexist(BANFILE)) return false;

	new File:handle = fopen(BANFILE, io_read);
	if(!handle) return false;

	new ip[MAX_IP],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strscan(line, "_s ", ip, sizeof(ip));
		new matchtype = IPcompare(playerip, ip);
		if(matchtype == 1 || matchtype == 3) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

/**
 *  Get the details of a ban from the first matching name or IP
 *  @param	playername	The name to check
 *  @param	playerip	The IP to check
 *  @param	BanData		The array to store the details in
 *  @param	noranges	Ignore range bans
 *  @param	nowilds		Ignore wildcards
 *  @return	true if the name or IP is banned, otherwise false
 */
stock bool:GetBanInfo(const playername[], const playerip[], BanData[E_ALAR_BAN], bool:noranges=false, bool:nowilds=false)
{
	if((playername[0] == '\0' && playerip[0] == '\0') || !fexist(BANFILE)) return false;

	new File:handle = fopen(BANFILE, io_read);
	if(!handle) return false;

	new name[MAX_PLAYER_NAME],
		ip[MAX_IP],
		data[MAX_STRING],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strscan(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
		if((playername[0] != '\0' && (nowilds ? strcmp(name, playername, true) == 0 : strwild(name, playername, true)))
		|| (playerip[0] != '\0' && (noranges ? IPcompare(playerip, ip) == 1 : IPcompare(playerip, ip) > 0))) {
			strstripnewline(data);
			strcpy(BanData[E_BAN_NAME], name, sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
			strcpy(BanData[E_BAN_IP], ip, sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
			strscan(data, "ssss", BanData[E_BAN_DATE], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATE]), BanData[E_BAN_TIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_TIME]), BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]), BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
			fclose(handle);
			return true;
		}
	}

	fclose(handle);
	return false;
}

/**
 *  Ban a player by name and IP
 *  @param	playername	The name to ban
 *  @param	playerip	The IP to ban
 *  @param	reason		The reason for the ban
 *  @param	adminname	The name of the admin performing the ban
 *  @return	true if the ban was successful, otherwise false
 */
stock bool:BanPlayer(const playername[], const playerip[], const reason[], const adminname[])
{
	if(playername[0] == '\0' || playerip[0] == '\0' || adminname[0] == '\0') return false;

	new File:handle = fopen(BANFILE, io_append);
	if(!handle) return false;

	new string[MAX_STRING], year, month, day, hour, minutes;
	getdate(year, month, day);
	gettime(hour, minutes);
	format(string, sizeof(string), "%s %s\t%02i/%02i/%i %02i:%02i\t%s\t%s\r\n", playername, playerip, day, month, year, hour, minutes, adminname, reason);
	fwrite(handle, string);
	fclose(handle);
	return true;
}

#define BanName(%1,%2,%3)	BanPlayer((%1), "-", (%2), (%3))
#define BanIP(%1,%2,%3)		BanPlayer("-", (%1), (%2), (%3))

/**
 *  Unban a player by name or IP
 *  @param	playername	The name to unban
 *  @param	playerip	The IP to unban
 *  @param	BanData		The details of the ban
 *  @return	true if the unban was successful, otherwise false
 */
stock bool:UnbanPlayer(const playername[], const playerip[], BanData[E_ALAR_BAN])
{
	if((playername[0] == '\0' && playerip[0] == '\0') || !fexist(BANFILE)) return false;

	new File:ohnd = fopen(BANFILE, io_read);
	if(!ohnd) return false;
	new File:whnd = fopen(BANFILE ".part", io_write);
	if(!whnd) {
		fclose(ohnd);
		return false;
	}

	new line[MAX_STRING],
		name[MAX_PLAYER_NAME],
		ip[MAX_IP],
		data[MAX_STRING],
		bool:unbanned = false;

	while(fread(ohnd, line)) {
		if(unbanned == false && line[0] != '#') {
			strscan(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
			if((playername[0] != '\0' && strwild(name, playername, true)) || (playerip[0] != '\0' && IPcompare(ip, playerip))) {
				strstripnewline(data);
				strcpy(BanData[E_BAN_NAME], name, sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
				strcpy(BanData[E_BAN_IP], ip, sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
				strscan(data, "ssss", BanData[E_BAN_DATE], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATE]), BanData[E_BAN_TIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_TIME]), BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]), BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
				unbanned = true;
				continue;
			}
		}
		fwrite(whnd, line);
	}

	fclose(ohnd);
	fclose(whnd);
	if(unbanned == false || fcopytextfile(BANFILE ".part", BANFILE)) fremove(BANFILE ".part");

	return unbanned;
}

#define UnbanName(%1,%2)			UnbanPlayer(%1,"",%2)
#define UnbanIP(%1,%2)				UnbanPlayer("",%1,%2)

/**
 *  Check if a name is not currently suspended
 *  @param	playername	The name to check
 *  @return	true if the name is suspended, otherwise false
 */
stock bool:IsNameNotSuspended(const playername[])
{
	if(playername[0] == '\0' || !fexist(SUSPENDFILE)) return false;

	new File:handle = fopen(SUSPENDFILE, io_read);
	if(!handle) return false;

	new name[MAX_PLAYER_NAME],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strscan(line, "s ", name, sizeof(name));
		if(strcmp(name, playername, true) == 0) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

/**
 *  Check if an IP is not currently suspended
 *  @param	playerip	The IP to check
 *  @return	true if the IP is suspended, otherwise false
 */
stock bool:IsIPNotSuspended(const playerip[])
{
	if(playerip[0] == '\0' || !fexist(SUSPENDFILE)) return false;

	new File:handle = fopen(SUSPENDFILE, io_read);
	if(!handle) return false;

	new ip[MAX_IP],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strscan(line, "_s ", ip, sizeof(ip));
		new matchtype = IPcompare(playerip, ip);
		if(matchtype == 1 || matchtype == 3) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

/**
 *  Get the details of a suspension from the first matching name or IP
 *  @param	playername	The name to check
 *  @param	playerip	The IP to check
 *  @param	SuspendData	The array to store the details in
 *  @return	true if the name or IP is suspended, otherwise false
 */
stock bool:GetSuspendInfo(const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION], bool:noranges=false, bool:nowilds=false)
{
	if((playername[0] == '\0' && playerip[0] == '\0') || !fexist(SUSPENDFILE)) return false;

	new File:handle = fopen(SUSPENDFILE, io_read);
	if(!handle) return false;

	new line[MAX_STRING],
		name[MAX_PLAYER_NAME],
		ip[MAX_IP],
		data[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		strscan(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
		if((playername[0] != '\0' && (nowilds ? strcmp(name, playername, true) == 0 : strwild(name, playername, true))) || (playerip[0] != '\0' && (noranges ? IPcompare(playerip, ip) == 1 : IPcompare(playerip, ip) > 0))) {
			strstripnewline(data);
			strcpy(SuspendData[E_SUSPEND_NAME], name, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
			strcpy(SuspendData[E_SUSPEND_IP], ip, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
			strscan(data, "iiifssss", SuspendData[E_SUSPEND_YEAR], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_HOUR], SuspendData[E_SUSPEND_DATE], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATE]), SuspendData[E_SUSPEND_TIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_TIME]), SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]), SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
			fclose(handle);
			return true;
		}
	}

	fclose(handle);
	return false;
}

/**
 *  Suspend a player by name and IP
 *  @param	playername	The name to suspend
 *  @param	playerip	The IP to suspend
 *  @param	hours		The number of hours to suspend for
 *  @param	reason		The reason for the suspension
 *  @param	adminname	The name of the admin performing the suspension
 *  @return	true if the suspension was successful, otherwise false
 */
stock bool:SuspendPlayer(const playername[], const playerip[], Float:hours, const reason[], const adminname[])
{
	if(playername[0] == '\0' || playerip[0] == '\0') return false;

	new File:handle = fopen(SUSPENDFILE, io_append);
	if(!handle) return false;

	new string[MAX_STRING],
		expyear,
		expmonth,
		expday,
		Float:exphour,
		year,
		month,
		day,
		hour,
		minutes;

	getdate(year, month, day);
	gettime(hour, minutes);
	DatePlusHours(hours, expyear, expmonth, expday, exphour);

	format(string, sizeof(string), "%s %s %i %i %i %f\t%02i/%02i/%i %02i:%02i\t%s\t%s\r\n", playername, playerip, expyear, expmonth, expday, exphour, day, month, year, hour, minutes, adminname, reason);
	fwrite(handle, string);
	fclose(handle);
	return true;
}

#define SuspendName(%1,%2,%3,%4)	SuspendPlayer((%1), "-", (%2), (%3), (%4))
#define SuspendIP(%1,%2,%3,%4)		SuspendPlayer("-", (%1), (%2), (%3), (%4))

/**
 *  Unsuspend a player by name or IP
 *  @param	playername	The name to unsuspend
 *  @param	playerip	The IP to unsuspend
 *  @param	SuspendData	The details of the suspension
 *  @return	true if the unsuspension was successful, otherwise false
 */
stock bool:UnsuspendPlayer(const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION])
{
	if((playername[0] == '\0' && playerip[0] == '\0') || !fexist(SUSPENDFILE)) return false;

	new File:ohnd = fopen(SUSPENDFILE, io_read);
	if(!ohnd) return false;
	new File:whnd = fopen(SUSPENDFILE ".part", io_write);
	if(!whnd) {
		fclose(ohnd);
		return false;
	}

	new line[MAX_STRING],
		name[MAX_PLAYER_NAME],
		ip[MAX_IP],
		data[MAX_STRING],
		bool:unsuspended = false;

	while(fread(ohnd, line)) {
		if(unsuspended == false && line[0] != '#') {
			strscan(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
			if((playername[0] != '\0' && strwild(name, playername, true)) || (playerip[0] != '\0' && IPcompare(ip, playerip))) {
				strstripnewline(data);
				strcpy(SuspendData[E_SUSPEND_NAME], name, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
				strcpy(SuspendData[E_SUSPEND_IP], ip, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
				strscan(data, "iiifssss", SuspendData[E_SUSPEND_YEAR], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_HOUR], SuspendData[E_SUSPEND_DATE], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATE]), SuspendData[E_SUSPEND_TIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_TIME]), SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]), SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
				unsuspended = true;
				continue;
			}
		}
		fwrite(whnd, line);
	}

	fclose(ohnd);
	fclose(whnd);
	if(unsuspended == false || fcopytextfile(SUSPENDFILE ".part", SUSPENDFILE)) fremove(SUSPENDFILE ".part");
	return unsuspended;
}

#define UnsuspendName(%1,%2)			UnsuspendPlayer(%1,"",%2)
#define UnsuspendIP(%1,%2)				UnsuspendPlayer("",%1,%2)
