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

/*
	native bool:IPisvalid(const string[], bool:allowranges=true);
	native IPcompare(const ip1[], const ip2[]);

	native Unsigned:IP2Code(const IP[]);
	native Code2IP(Unsigned:IPCode);

	native ReturnCuntCode(const IP[]);
	native ReturnCuntName(const cuntcode[]);
	native CreateCuntDefinitions(const destfolder[]=IP_DEFINITIONS);
*/

#include <a_samp>
#include <alar/Functions>
#include <alar/Unsigned>

#if !defined IP_DEFINITIONS
	#error IP_DEFINITIONS has not been defined
#endif

#if !defined MAX_IP
	#define MAX_IP 16
#endif

#if !defined MAX_COUNTRY_NAME
	#define MAX_COUNTRY_NAME 64
#endif

enum E_CUNTCODE {
	E_CUNT_CODE[3 char],
	E_CUNT_NAME[MAX_COUNTRY_NAME char]
}; stock SIZE_E_CUNTCODE[E_CUNTCODE];

stock static const scCuntCodes[][E_CUNTCODE] = {
	{!"A1", !"Anonymous Proxy"},
	{!"A2", !"Satellite Provider"},
	{!"AC", !"Ascension Island"},
	{!"AD", !"Andorra"},
	{!"AE", !"United Arab Emirates"},
	{!"AF", !"Afghanistan"},
	{!"AG", !"Antigua and Barbuda"},
	{!"AI", !"Anguilla"},
	{!"AL", !"Albania"},
	{!"AM", !"Armenia"},
	{!"AN", !"Netherlands Antilles"},
	{!"AO", !"Angola"},
	{!"AQ", !"Antarctica"},
	{!"AR", !"Argentina"},
	{!"AS", !"American Samoa"},
	{!"AT", !"Austria"},
	{!"AU", !"Australia"},
	{!"AW", !"Aruba"},
	{!"AX", !"Aland Islands"},
	{!"AZ", !"Azerbaijan"},
	{!"BA", !"Bosnia and Herzegovina"},
	{!"BB", !"Barbados"},
	{!"BD", !"Bangladesh"},
	{!"BE", !"Belgium"},
	{!"BF", !"Burkina Faso"},
	{!"BG", !"Bulgaria"},
	{!"BH", !"Bahrain"},
	{!"BI", !"Burundi"},
	{!"BJ", !"Benin"},
	{!"BL", !"Saint Barthélemy"},
	{!"BM", !"Bermuda"},
	{!"BN", !"Brunei Darussalam"},
	{!"BO", !"Bolivia, Plurinational State of"},
	{!"BR", !"Brazil"},
	{!"BS", !"Bahamas"},
	{!"BT", !"Bhutan"},
	{!"BV", !"Bouvet Island"},
	{!"BW", !"Botswana"},
	{!"BY", !"Belarus"},
	{!"BZ", !"Belize"},
	{!"CA", !"Canada"},
	{!"CC", !"Cocos (Keeling) Islands"},
	{!"CD", !"Congo, the Democratic Republic of the"},
	{!"CF", !"Central African Republic"},
	{!"CG", !"Congo"},
	{!"CH", !"Switzerland"},
	{!"CI", !"Cote d'Ivoire"},
	{!"CK", !"Cook Islands"},
	{!"CL", !"Chile"},
	{!"CM", !"Cameroon"},
	{!"CN", !"China"},
	{!"CO", !"Colombia"},
	{!"CP", !"Clipperton Island"},
	{!"CR", !"Costa Rica"},
	{!"CU", !"Cuba"},
	{!"CV", !"Cape Verde"},
	{!"CX", !"Christmas Island"},
	{!"CY", !"Cyprus"},
	{!"CZ", !"Czech Republic"},
	{!"DE", !"Germany"},
	{!"DG", !"Diego Garcia"},
	{!"DJ", !"Djibouti"},
	{!"DK", !"Denmark"},
	{!"DM", !"Dominica"},
	{!"DO", !"Dominican Republic"},
	{!"DZ", !"Algeria"},
	{!"EC", !"Ecuador"},
	{!"EE", !"Estonia"},
	{!"EG", !"Egypt"},
	{!"EH", !"Western Sahara"},
	{!"ER", !"Eritrea"},
	{!"ES", !"Spain"},
	{!"ET", !"Ethiopia"},
	{!"EU", !"European Union"},
	{!"FI", !"Finland"},
	{!"FJ", !"Fiji"},
	{!"FK", !"Falkland Islands (Malvinas)"},
	{!"FM", !"Micronesia, Federated States of"},
	{!"FO", !"Faroe Islands"},
	{!"FR", !"France"},
	{!"FX", !"France, Metropolitan"},
	{!"GA", !"Gabon"},
	{!"GB", !"United Kingdom"},
	{!"GD", !"Grenada"},
	{!"GE", !"Georgia"},
	{!"GF", !"French Guiana"},
	{!"GG", !"Guernsey"},
	{!"GH", !"Ghana"},
	{!"GI", !"Gibraltar"},
	{!"GL", !"Greenland"},
	{!"GM", !"Gambia"},
	{!"GN", !"Guinea"},
	{!"GP", !"Guadeloupe"},
	{!"GQ", !"Equatorial Guinea"},
	{!"GR", !"Greece"},
	{!"GS", !"South Georgia and the South Sandwich Islands"},
	{!"GT", !"Guatemala"},
	{!"GU", !"Guam"},
	{!"GW", !"Guinea-Bissau"},
	{!"GY", !"Guyana"},
	{!"HK", !"Hong Kong"},
	{!"HM", !"Heard Island and McDonald Islands"},
	{!"HN", !"Honduras"},
	{!"HR", !"Croatia"},
	{!"HT", !"Haiti"},
	{!"HU", !"Hungary"},
	{!"IC", !"Canary Islands"},
	{!"ID", !"Indonesia"},
	{!"IE", !"Ireland"},
	{!"IL", !"Israel"},
	{!"IM", !"Isle of Man"},
	{!"IN", !"India"},
	{!"IO", !"British Indian Ocean Territory"},
	{!"IQ", !"Iraq"},
	{!"IR", !"Iran, Islamic Republic of"},
	{!"IS", !"Iceland"},
	{!"IT", !"Italy"},
	{!"JE", !"Jersey"},
	{!"JM", !"Jamaica"},
	{!"JO", !"Jordan"},
	{!"JP", !"Japan"},
	{!"KE", !"Kenya"},
	{!"KG", !"Kyrgyzstan"},
	{!"KH", !"Cambodia"},
	{!"KI", !"Kiribati"},
	{!"KM", !"Comoros"},
	{!"KN", !"Saint Kitts and Nevis"},
	{!"KP", !"Korea, Democratic People's Republic of"},
	{!"KR", !"Korea, Republic of"},
	{!"KW", !"Kuwait"},
	{!"KY", !"Cayman Islands"},
	{!"KZ", !"Kazakhstan"},
	{!"LA", !"Lao People's Democratic Republic"},
	{!"LB", !"Lebanon"},
	{!"LC", !"Saint Lucia"},
	{!"LI", !"Liechtenstein"},
	{!"LK", !"Sri Lanka"},
	{!"LR", !"Liberia"},
	{!"LS", !"Lesotho"},
	{!"LT", !"Lithuania"},
	{!"LU", !"Luxembourg"},
	{!"LV", !"Latvia"},
	{!"LY", !"Libyan Arab Jamahiriya"},
	{!"MA", !"Morocco"},
	{!"MC", !"Monaco"},
	{!"MD", !"Moldova, Republic of"},
	{!"ME", !"Montenegro"},
	{!"MF", !"Saint Martin (French part)"},
	{!"MG", !"Madagascar"},
	{!"MH", !"Marshall Islands"},
	{!"MK", !"Macedonia, the former Yugoslav Republic of"},
	{!"ML", !"Mali"},
	{!"MM", !"Myanmar"},
	{!"MN", !"Mongolia"},
	{!"MO", !"Macao"},
	{!"MP", !"Northern Mariana Islands"},
	{!"MQ", !"Martinique"},
	{!"MR", !"Mauritania"},
	{!"MS", !"Montserrat"},
	{!"MT", !"Malta"},
	{!"MU", !"Mauritius"},
	{!"MV", !"Maldives"},
	{!"MW", !"Malawi"},
	{!"MX", !"Mexico"},
	{!"MY", !"Malaysia"},
	{!"MZ", !"Mozambique"},
	{!"NA", !"Namibia"},
	{!"NC", !"New Caledonia"},
	{!"NE", !"Niger"},
	{!"NF", !"Norfolk Island"},
	{!"NG", !"Nigeria"},
	{!"NI", !"Nicaragua"},
	{!"NL", !"Netherlands"},
	{!"NO", !"Norway"},
	{!"NP", !"Nepal"},
	{!"NR", !"Nauru"},
	{!"NU", !"Niue"},
	{!"NZ", !"New Zealand"},
	{!"O1", !"Other"},
	{!"OM", !"Oman"},
	{!"PA", !"Panama"},
	{!"PE", !"Peru"},
	{!"PF", !"French Polynesia"},
	{!"PG", !"Papua New Guinea"},
	{!"PH", !"Philippines"},
	{!"PK", !"Pakistan"},
	{!"PL", !"Poland"},
	{!"PM", !"Saint Pierre and Miquelon"},
	{!"PN", !"Pitcairn"},
	{!"PR", !"Puerto Rico"},
	{!"PS", !"Palestinian Territory, Occupied"},
	{!"PT", !"Portugal"},
	{!"PW", !"Palau"},
	{!"PY", !"Paraguay"},
	{!"QA", !"Qatar"},
	{!"RE", !"Reunion"},
	{!"RO", !"Romania"},
	{!"RS", !"Serbia"},
	{!"RU", !"Russian Federation"},
	{!"RW", !"Rwanda"},
	{!"SA", !"Saudi Arabia"},
	{!"SB", !"Solomon Islands"},
	{!"SC", !"Seychelles"},
	{!"SD", !"Sudan"},
	{!"SE", !"Sweden"},
	{!"SG", !"Singapore"},
	{!"SH", !"Saint Helena"},
	{!"SI", !"Slovenia"},
	{!"SJ", !"Svalbard and Jan Mayen"},
	{!"SK", !"Slovakia"},
	{!"SL", !"Sierra Leone"},
	{!"SM", !"San Marino"},
	{!"SN", !"Senegal"},
	{!"SO", !"Somalia"},
	{!"SR", !"Suriname"},
	{!"ST", !"Sao Tome and Principe"},
	{!"SU", !"USSR"},
	{!"SV", !"El Salvador"},
	{!"SY", !"Syrian Arab Republic"},
	{!"SZ", !"Swaziland"},
	{!"TA", !"Tristan da Cunha"},
	{!"TC", !"Turks and Caicos Islands"},
	{!"TD", !"Chad"},
	{!"TF", !"French Southern Territories"},
	{!"TG", !"Togo"},
	{!"TH", !"Thailand"},
	{!"TJ", !"Tajikistan"},
	{!"TK", !"Tokelau"},
	{!"TL", !"Timor-Leste"},
	{!"TM", !"Turkmenistan"},
	{!"TN", !"Tunisia"},
	{!"TO", !"Tonga"},
	{!"TR", !"Turkey"},
	{!"TT", !"Trinidad and Tobago"},
	{!"TV", !"Tuvalu"},
	{!"TW", !"Taiwan"},
	{!"TZ", !"Tanzania, United Republic of"},
	{!"UA", !"Ukraine"},
	{!"UG", !"Uganda"},
	{!"UK", !"United Kingdom"},
	{!"UM", !"United States Minor Outlying Islands"},
	{!"US", !"United States"},
	{!"UY", !"Uruguay"},
	{!"UZ", !"Uzbekistan"},
	{!"VA", !"Holy See (Vatican City State)"},
	{!"VC", !"Saint Vincent and the Grenadines"},
	{!"VE", !"Venezuela"},
	{!"VG", !"Virgin Islands, British"},
	{!"VI", !"Virgin Islands, U.S."},
	{!"VN", !"Vietnam"},
	{!"VU", !"Vanuatu"},
	{!"WF", !"Wallis and Futuna"},
	{!"WS", !"Samoa"},
	{!"XL", !"Localhost"},
	{!"XN", !"LAN"},
	{!"YE", !"Yemen"},
	{!"YT", !"Mayotte"},
	{!"ZA", !"South Africa"},
	{!"ZM", !"Zambia"},
	{!"ZW", !"Zimbabwe"}
 };

/**
 *  Checks if a string contains a valid IPv4 IP address, buffering 0s not accepted
 *  @param	string		The string to check
 *  @param	allowranges	Whether IP ranges are allowed (eg 192.168.*.*)
 *  @return	true if the string contains a valid IPv4 address, otherwise false
 */
stock bool:IPisvalid(const string[], bool:allowranges=true)
{
	if(ispacked(string)) {
		for(new pos, num, octet = 1;; pos++) {
			switch(string{pos}) {
				case '0': {
					if(num == 0 && string{pos+1} != '.' && string{pos+1} != '\0') return false;
					num *= 10;
				}
				case '1'..'9': num = (num * 10) + (string{pos} - '0');
				case '.': {
					if(pos == 0 || num > 255 || ++octet > 4 || string{pos+1} == '.' || string{pos+1} == '\0') return false;
					num = 0;
				}
				case '*': {
					if(!allowranges || (pos != 0 && string{pos-1} != '.') || (string{pos+1} != '.' && string{pos+1} != '\0')) return false;
				}
				case '\0': {
					if(num > 255 || octet != 4) return false;
					break;
				}
				default: return false;
			}
		}
	} else {
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
	}
	return true;
}

/**
	Compares two IPv4 addresses to find a match
	@param	ip1	The first IP
	@param	ip2	The second IP
	@return	0 - no match
			1 - perfect match
			2 - first IP contains second IP
			3 - second IP contains first IP
			4 - neither IP contains the other
*/
stock IPcompare(const ip1[], const ip2[])
{
	if(ispacked(ip1)) {
		if(ispacked(ip2)) {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1{idx1} == '*') {
					for(; ip2{idx2} != '\0' && ip2{idx2} != '.'; idx2++) if(ip2{idx2} >= '0' && ip2{idx2} <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1{++idx1}) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(!ip2{idx2}) return 0;
				}
				else if(ip2{idx2} == '*') {
					for(;ip1{idx1} != '\0' && ip1{idx1} != '.'; idx1++) if(ip1{idx1} >= '0' && ip1{idx1} <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2{++idx2}) return octet == 4 && !ip1{idx1} ? rvalue : 0;
					if(!ip1{idx2}) return 0;
				} else {
					for(; ip1{idx1} > '.' && ip2{idx2} > '.'; idx1++, idx2++) if(ip1{idx1} != ip2{idx2}) return 0;
					if(!ip1{idx1}) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(ip2{idx2} > '.') return 0;
				}
			}
		} else {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1{idx1} == '*') {
					for(; ip2[idx2] != '\0' && ip2[idx2] != '.'; idx2++) if(ip2[idx2] >= '0' && ip2[idx2] <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1{++idx1}) return octet == 4 && !ip2[idx2] ? rvalue : 0;
					if(!ip2[idx2]) return 0;
				}
				else if(ip2[idx2] == '*') {
					for(;ip1{idx1} != '\0' && ip1{idx1} != '.'; idx1++) if(ip1{idx1} >= '0' && ip1{idx1} <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2[++idx2]) return octet == 4 && !ip1{idx1} ? rvalue : 0;
					if(!ip1{idx2}) return 0;
				} else {
					for(; ip1{idx1} > '.' && ip2[idx2] > '.'; idx1++, idx2++) if(ip1{idx1} != ip2[idx2]) return 0;
					if(!ip1{idx1}) return octet == 4 && !ip2[idx2] ? rvalue : 0;
					if(ip2[idx2] > '.') return 0;
				}
			}
		}
	} else {
		if(ispacked(ip2)) {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1[idx1] == '*') {
					for(; ip2{idx2} != '\0' && ip2{idx2} != '.'; idx2++) if(ip2{idx2} >= '0' && ip2{idx2} <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1[++idx1]) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(!ip2{idx2}) return 0;
				}
				else if(ip2{idx2} == '*') {
					for(;ip1[idx1] != '\0' && ip1[idx1] != '.'; idx1++) if(ip1[idx1] >= '0' && ip1[idx1] <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2[++idx2]) return octet == 4 && !ip1[idx1] ? rvalue : 0;
					if(!ip1[idx2]) return 0;
				} else {
					for(; ip1[idx1] > '.' && ip2{idx2} > '.'; idx1++, idx2++) if(ip1[idx1] != ip2{idx2}) return 0;
					if(!ip1[idx1]) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(ip2{idx2} > '.') return 0;
				}
			}
		} else {
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
		}
	}
	return 0;
}

/**
 *  Return an IPv4 address code from an IPv4 address string
 *  @param	IP	The IPv4 address string
 *  @return	An IPv4 address code for the IPv4 address string
 */
stock Unsigned:IP2Code(const IP[])
{
	new IPCode;
	if(ispacked(IP)) {
		for(new pos, num;; pos++) {
			switch(IP{pos}) {
				case '0'..'9': num = (num * 10) + (IP{pos} - '0');
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

	} else {
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
	}
	return Unsigned:IPCode;
}

/**
 *  Return an IPv4 address string from an IPv4 address code
 *  @param	IP	The IPv4 address code
 *  @return	An IPv4 address string for the IPv4 address code
 */
stock Code2IP(Unsigned:IPCode)
{
	new IP[MAX_IP];
	format(IP, sizeof(IP), "%i.%i.%i.%i", (_:IPCode & 0xFF000000) >>> 24, (_:IPCode & 0x00FF0000) >> 16, (_:IPCode & 0x0000FF00) >> 8, (_:IPCode & 0x000000FF) >> 0);
	return IP;
}

/**
 *  Return a ISO 3166-1 alpha-2 country code from an IPv4 address string
 *  @param	IP	The IPv4 address string
 *  @return	A string containing the a 3166-1 alpha-2 country code, or a blank string if the ip is unknown
 */
stock ReturnCuntCode(const IP[])
{
	new Unsigned:IPcode = IP2Code(IP),
		cuntcode[3];

	// localhost
	if(IPcode == Unsigned:0x7F000001) {	// 127.0.0.1
		cuntcode = "XL";
		return cuntcode;
	}

	// LAN
	if( Unsigned:0x0A000000 <= IPcode <= Unsigned:0x0AFFFFFF ||	// 10.0.0.0    - 10.255.255.255
		Unsigned:0xAC100000 <= IPcode <= Unsigned:0xAC1FFFFF ||	// 172.16.0.0  – 172.31.255.255
		Unsigned:0xC0A80000 <= IPcode <= Unsigned:0xC0A8FFFF	// 192.168.0.0 - 192.168.255.255
	) {
		cuntcode = "XN";
		return cuntcode;
	}

	new filename[MAX_STRING];
	format(filename, sizeof(filename), IP_DEFINITIONS "%i.dat", strval(IP));

	new File:handle = fopen(filename, io_read);
	if(handle) {
		new line[MAX_STRING];
		while(fread(handle, line)) {
			new Unsigned:start, Unsigned:end;
			if(!strscan(line, "uus", start, end, cuntcode, sizeof(cuntcode))) {
				if(start <= IPcode) {
					if(IPcode <= end) {
						fclose(handle);
						return cuntcode;
					}
				} else {
					break;
				}
			}
		}
		fclose(handle);
	} else {
		printf("Warning: Missing IP definitions (%s)", filename);
	}
	cuntcode[0] = '\0';
	return cuntcode;
}

/**
 *  Return a country name from a ISO 3166-1 alpha-2 country code
 *  @param	cuntcode	The ISO 3166-1 alpha-2 country code
 *  @return	A string containing the country name or "Unknown" if the name could not be found
 */
stock ReturnCuntName(const cuntcode[])
{
	new cuntname[MAX_COUNTRY_NAME] = "Unknown";
	if(cuntcode[0] != '\0') {
		for(new i; i < sizeof(scCuntCodes); i++) {
			if(strcmp(cuntcode, scCuntCodes[i][E_CUNT_CODE], true) == 0) {
				strunpack(cuntname, scCuntCodes[i][E_CUNT_NAME]);
				break;
			}
		}
	}
	return cuntname;
}

/**
 *	Create the IP definition files from a comma seperated cvs file
 *	@param destfolder	The folder to put the definition files in

 */
stock CreateCuntDefinitions(const destfolder[]=IP_DEFINITIONS)
{
	static const inputfiles[][][] = {
		{"GeoIPCountryWhois.csv", "-, _ _ s s s "},
		{"ip-to-country.csv", "-, s s s "}
	};

	new File:rhandle,
		inputidx,
		counter,
		string[MAX_STRING];

	for(; inputidx < sizeof(inputfiles); inputidx++) {
		format(string, sizeof(string), "%s%s", destfolder, inputfiles[inputidx][0]);

		// look for an input file
		while(!(rhandle = fopen(string, io_read))) {
			new bool:found;
			for(new idx = strlen(string) - 1; idx > 0; idx--) {
				if(string[idx] == '\\' || string[idx] == '/') {
					if(found) {
						string[idx+1] = '\0';
						strcat(string, inputfiles[inputidx][0]);
						continue;
					} else {
						found = true;
					}
				}
			}
			if(found) {
				strcpy(string, inputfiles[inputidx][0]);
			} else {
				break;
			}
		}

		// process file
		if(rhandle) {
			format(string, sizeof(string), "%s0.dat", destfolder);
			new octet,
				File:whandle = fopen(string, io_write);

			while(fread(rhandle, string)) {
				new quotedstart[13], quotedend[13], quotedcode[5];
				strscan(string, inputfiles[inputidx][1], quotedstart, sizeof(quotedstart), quotedend, sizeof(quotedend), quotedcode, sizeof(quotedcode));

				new value = strlen(quotedstart);
				if(value < 2 || quotedstart[value-1] != '"') continue;		// " stupid notepad++ function list
				quotedstart[value-1] = '\0';

				value = strlen(quotedend);
				if(value < 2 || quotedend[value-1] != '"') continue;		// " stupid notepad++ function list
				quotedend[value-1] = '\0';

				value = strlen(quotedcode);
				if(value < 2 || quotedcode[value-1] != '"') continue;		// " stupid notepad++ function list
				quotedcode[value-1] = '\0';

				new Unsigned:startcode = strval(quotedstart[1]),
					Unsigned:endcode = strval(quotedend[1]);

				// empty files
				while(octet < _:startcode >>> 24) {
					if(whandle) fclose(whandle);
					octet++;
					format(string, sizeof(string), "%s%i.dat", destfolder, octet);
					whandle = fopen(string, io_write);
				}

				// range covers more than one file
				for(; _:endcode >>> 24 > octet;) {
					octet++;
					if(whandle) {
						format(string, sizeof(string), "%s %s %s\r\n", ustr(startcode), ustr(usub(Unsigned:(octet << 24), Unsigned:1)), quotedcode[1]);
						fwrite(whandle, string);
						fclose(whandle);
						counter++;
					}
					startcode = Unsigned:(octet << 24);
					format(string, sizeof(string), "%s%i.dat", destfolder, octet);
					whandle = fopen(string, io_write);
				}

				if(whandle) {
					format(string, sizeof(string), "%s %s %s\r\n", ustr(startcode), ustr(endcode), quotedcode[1]);
					fwrite(whandle, string);
					counter++;
				}
			}
			while(octet < 255) {
				octet++;
				if(whandle) fclose(whandle);
				format(string, sizeof(string), "%s%i.dat", destfolder, octet);
				whandle = fopen(string, io_write);
			}
			if(whandle) {
				fclose(whandle);
			}
			fclose(rhandle);
			return counter;
		}
	}
	return counter;
}
