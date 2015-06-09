/*
 *	Any Last Administrative Requests - IP2c.inc
 *		IP functions
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

#if defined _alar_ip2c_included
  #endinput
#endif
#define _alar_ip2c_included

#include <alar/Functions>
#include <alar/Unsigned>

#if !defined IP_DEFINITIONS
	#error IP_DEFINITIONS has not been defined
#endif

#if !defined MAX_IP
	#define MAX_IP 16
#endif

stock bool:IPisvalid(const string[], bool:allowranges=true)
{
	for(new pos, num, octet = 1;; pos++) {
		switch(string[pos]) {
			case '0': {
				if(num == 0 && string[pos+1] != '.' && string[pos+1] != '\0') return false;
				num *= 10;
			}
			case '1'..'9': num = (num * 10) + (string[pos] - '0');
			case '.': {
				if(pos == 0 || num > 255 || ++octet > 4 || string[pos+1] == '.' || string[pos+1] == '\0') return false;
				num = 0;
			}
			case '*': {
				if(!allowranges || (pos != 0 && string[pos-1] != '.') || (string[pos+1] != '.' && string[pos+1] != '\0')) return false;
			}
			case '\0': {
				if(num > 255 || octet != 4) return false;
				break;
			}
			default: return false;
		}
	}
	return true;
}

/*
	Return values
		0	no match
		1	perfect match
		2	first ip contains second ip
		3	second ip contains first ip
		4	neither ip contains the other
*/
stock IPcompare(const ip1[], const ip2[])
{
	for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
		if(ip1[idx1] == '*') {
			for(; ip2[idx2] != '\0' && ip2[idx2] != '.'; idx2++) if(ip2[idx2] >= '0' && ip2[idx2] <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
			if(!ip1[++idx1]) return octet == 4 && !ip2[idx2] ? rvalue : 0;
			if(!ip2[idx2]) return 0;
		}
		else if(ip2[idx2] == '*') {
			for(;ip1[idx1] != '\0' && ip1[idx1] != '.'; idx1++) if(ip1[idx1] >= '0' && ip1[idx1] <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
			if(!ip2[++idx2]) return octet == 4 && !ip1[idx1] ? rvalue : 0;
			if(!ip1[idx2]) return 0;
		} else {
			for(; ip1[idx1] > '.' && ip2[idx2] > '.'; idx1++, idx2++) if(ip1[idx1] != ip2[idx2]) return 0;
			if(!ip1[idx1]) return octet == 4 && !ip2[idx2] ? rvalue : 0;
			if(ip2[idx2] > '.') return 0;
		}
	}
	return 0;
}

stock Unsigned:IP2Code(const IP[])
{
	new IPCode;
	for(new pos, num;; pos++) {
		switch(IP[pos]) {
			case '0'..'9': num = (num * 10) + (IP[pos] - '0');
			case '.': {
				IPCode = (IPCode << 8) | num;
				num = 0;
			}
			case '\0': {
				IPCode = (IPCode << 8) | num;
				break;
			}
			default: return Unsigned:0;
		}
	}
	return Unsigned:IPCode;
}

stock Code2IP(Unsigned:IPCode)
{
	new IP[MAX_IP];
	format(IP, sizeof(IP), "%i.%i.%i.%i", (_:IPCode & 0xFF000000) >>> 24, (_:IPCode & 0x00FF0000) >> 16, (_:IPCode & 0x0000FF00) >> 8, (_:IPCode & 0x000000FF) >> 0);
	return IP;
}

stock ReturnCuntCode(const IP[])
{
	new filename[MAX_STRING];
	format(filename, sizeof(filename), IP_DEFINITIONS "%i.dat", strval(IP));

	new File:handle = fopen(filename, io_read);
	if(handle) {
		new Unsigned:IPcode = IP2Code(IP),
			line[MAX_STRING];

		while(fread(handle, line)) {
			new Unsigned:start, Unsigned:end, cuntcode[3];
			if(!sscanf(line, "uus", start, end, cuntcode, sizeof(cuntcode))) {
				if(start <= IPcode) {
					if(IPcode <= end) {
						fclose(handle);
						return cuntcode;
					}
				}
				else break;
			}
		}
		fclose(handle);
	}
	else printf("Warning: Missing IP definitions (%s)", filename);

	new cuntcode[3];
	return cuntcode;
}

stock ReturnCuntName(const cuntcode[])
{
	new cuntname[100] = "Unknown";
	if(cuntcode[0] != '\0') {
		new File:handle = fopen(IP_DEFINITIONS "Countries.dat", io_read);
		if(handle){
			new line[MAX_STRING];

			while(fread(handle, line)) {
				if(strcmp(line, cuntcode, true, 2) == 0) {
					StripNewLine(line);
					strcpy(cuntname, line[3]);
					break;
				}
			}
			fclose(handle);
		}
		else print("Warning: Missing IP definitions (" IP_DEFINITIONS "Countries.dat)");
	}
	return cuntname;
}
