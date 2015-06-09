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



stock bool:IsNameNotBanned(const playername[])
{
	if(playername[0] == '\0' || !fexist(BANFILE)) return false;

	new File:handle = fopen(BANFILE, io_read),
		name[MAX_PLAYER_NAME],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		sscanf(line, "s ", name, sizeof(name));
		if(strcmp(name, playername, true) == 0) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

stock bool:IsIPNotBanned(const playerip[])
{
	if(playerip[0] == '\0' || !fexist(BANFILE)) return false;

	new File:handle = fopen(BANFILE, io_read),
		ip[MAX_IP],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		sscanf(line, "_s ", ip, sizeof(ip));
		new matchtype = IPcompare(playerip, ip);
		if(matchtype == 1 || matchtype == 3) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

stock bool:GetBanInfo(const playername[], const playerip[], BanData[E_ALAR_BAN])
{
	if((playername[0] == '\0' && playerip[0] == '\0') || !fexist(BANFILE)) return false;

	new File:handle = fopen(BANFILE, io_read),
		name[MAX_PLAYER_NAME],
		ip[MAX_IP],
		data[MAX_STRING],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		sscanf(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
		if((playername[0] != '\0' && wildcmp(name, playername, true)) || (playerip[0] != '\0' && IPcompare(playerip, ip))) {
			StripNewLine(data);
			strcpy(BanData[E_BAN_NAME], name, sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
			strcpy(BanData[E_BAN_IP], ip, sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
			sscanf(data, "ssss", BanData[E_BAN_DATE], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATE]), BanData[E_BAN_TIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_TIME]), BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]), BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
			fclose(handle);
			return true;
		}
	}

	fclose(handle);
	return false;
}


stock bool:BanPlayer(const playername[], const playerip[], const reason[], const adminname[])
{
	if(playername[0] == '\0' || playerip[0] == '\0') return false;

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
			sscanf(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
			if((playername[0] != '\0' && wildcmp(name, playername, true)) || (playerip[0] != '\0' && IPcompare(ip, playerip))) {
				StripNewLine(data);
				strcpy(BanData[E_BAN_NAME], name, sizeof(SIZE_E_ALAR_BAN[E_BAN_NAME]));
				strcpy(BanData[E_BAN_IP], ip, sizeof(SIZE_E_ALAR_BAN[E_BAN_IP]));
				sscanf(data, "ssss", BanData[E_BAN_DATE], sizeof(SIZE_E_ALAR_BAN[E_BAN_DATE]), BanData[E_BAN_TIME], sizeof(SIZE_E_ALAR_BAN[E_BAN_TIME]), BanData[E_BAN_ADMIN], sizeof(SIZE_E_ALAR_BAN[E_BAN_ADMIN]), BanData[E_BAN_REASON], sizeof(SIZE_E_ALAR_BAN[E_BAN_REASON]));
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

#define UnbanIP(%1,%2)				UnbanPlayer("",%1,%2)
#define UnbanName(%1,%2)			UnbanPlayer(%1,"",%2)


stock bool:IsNameNotSuspended(const playername[])
{
	if(playername[0] == '\0' || !fexist(SUSPENDFILE)) return false;

	new File:handle = fopen(SUSPENDFILE, io_read),
		name[MAX_PLAYER_NAME],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		sscanf(line, "s ", name, sizeof(name));
		if(strcmp(name, playername, true) == 0) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

stock bool:IsIPNotSuspended(const playerip[])
{
	if(playerip[0] == '\0' || !fexist(SUSPENDFILE)) return false;

	new File:handle = fopen(SUSPENDFILE, io_read),
		ip[MAX_IP],
		line[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		sscanf(line, "_s ", ip, sizeof(ip));
		new matchtype = IPcompare(playerip, ip);
		if(matchtype == 1 || matchtype == 3) {
			fclose(handle);
			return false;
		}
	}

	fclose(handle);
	return true;
}

stock bool:GetSuspendInfo(const playername[], const playerip[], SuspendData[E_ALAR_SUSPENSION])
{
	if((playername[0] == '\0' && playerip[0] == '\0') || !fexist(SUSPENDFILE)) return false;

	new File:handle = fopen(SUSPENDFILE, io_read),
		line[MAX_STRING],
		name[MAX_PLAYER_NAME],
		ip[MAX_IP],
		data[MAX_STRING];

	while(fread(handle, line)) {
		if(line[0] == '#') continue;
		sscanf(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
		if((playername[0] != '\0' && wildcmp(name, playername, true)) || (playerip[0] != '\0' && IPcompare(playerip, ip))) {
			StripNewLine(data);
			strcpy(SuspendData[E_SUSPEND_NAME], name, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
			strcpy(SuspendData[E_SUSPEND_IP], ip, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
			sscanf(data, "iiifssss", SuspendData[E_SUSPEND_YEAR], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_HOUR], SuspendData[E_SUSPEND_DATE], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATE]), SuspendData[E_SUSPEND_TIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_TIME]), SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]), SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
			fclose(handle);
			return true;
		}
	}

	fclose(handle);
	return false;
}


stock bool:SuspendPlayer(const playername[], const playerip[], Float:suspendedhours, const suspendreason[], const adminname[])
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
	DatePlusHours(suspendedhours, expyear, expmonth, expday, exphour);

	format(string, sizeof(string), "%s %s %i %i %i %f\t%02i/%02i/%i %02i:%02i\t%s\t%s\r\n", playername, playerip, expyear, expmonth, expday, exphour, day, month, year, hour, minutes, adminname, suspendreason);
	fwrite(handle, string);
	fclose(handle);
	return true;
}

#define SuspendName(%1,%2,%3,%4)	SuspendPlayer((%1), "-", (%2), (%3), (%4))
#define SuspendIP(%1,%2,%3,%4)		SuspendPlayer("-", (%1), (%2), (%3), (%4))


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
			sscanf(line, "sss", name, sizeof(name), ip, sizeof(ip), data, sizeof(data));
			if((playername[0] != '\0' && wildcmp(name, playername, true)) || (playerip[0] != '\0' && IPcompare(ip, playerip))) {
				StripNewLine(data);
				strcpy(SuspendData[E_SUSPEND_NAME], name, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_NAME]));
				strcpy(SuspendData[E_SUSPEND_IP], ip, sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_IP]));
				sscanf(data, "iiifssss", SuspendData[E_SUSPEND_YEAR], SuspendData[E_SUSPEND_MONTH], SuspendData[E_SUSPEND_DAY], SuspendData[E_SUSPEND_HOUR], SuspendData[E_SUSPEND_DATE], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_DATE]), SuspendData[E_SUSPEND_TIME], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_TIME]), SuspendData[E_SUSPEND_ADMIN], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_ADMIN]), SuspendData[E_SUSPEND_REASON], sizeof(SIZE_E_ALAR_SUSPENSION[E_SUSPEND_REASON]));
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

#define UnsuspendIP(%1,%2)				UnsuspendPlayer("",%1,%2)
#define UnsuspendName(%1,%2)			UnsuspendPlayer(%1,"",%2)
