/*
 *	Any Last Administrative Requests - i_ip2c.inc
 *		IP functions
 *	
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_ip2c_included
	#endinput
#endif
#define _inc_ip2c_included

#include <a_samp>

/*
	native bool:IPisvalid(const string[], bool:allowranges=true);
	native IPcompare(const ip1[], const ip2[]);
	native Unsigned:IP2Code(const IP[]);
	native Code2IP(Unsigned:IPCode);
	native IPsubnet(const IP[]);
	native ReturnCuntCode(DB:db, const IP[]);
	native ReturnCuntName(const cuntcode[]);
	native GetCuntName(const cuntcode[], dest[], maxlength=sizeof(dest));
	native CreateCuntDefinitions(DB:db);
*/

#include "i_functions"
#include "i_unsigned"

/*
 *
 */
#define MAX_IP				(16)
#define MAX_COUNTRY_NAME	(64)

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

/*
 *  Checks if a string contains a valid IPv4 IP address, buffering 0s not accepted
 *  @param	string		The string to check
 *  @param	allowranges	Whether IP ranges are allowed (eg 192.168.*.*)
 *  @return	true if the string contains a valid IPv4 address, otherwise false
 */
stock bool:IPisvalid(const string[], bool:allowranges=true)
{
	if(ispacked(string)) {
		for(new pos, num, octet = 1; ; pos++) {
			switch(string{pos}) {
				case '0': {
					if(num == 0 && string{pos+1} != '.' && string{pos+1} != '\0') return false;
					num *= 10;
				}
				case '1'..'9': {
					num = (num * 10) + (string{pos} - '0');
				}
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
	}
	else {
		for(new pos, num, octet = 1; ; pos++) {
			switch(string[pos]) {
				case '0': {
					if(num == 0 && string[pos+1] != '.' && string[pos+1] != '\0') return false;
					num *= 10;
				}
				case '1'..'9': {
					num = (num * 10) + (string[pos] - '0');
				}
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

/*
 *  Compares two IPv4 addresses to find a match
 *  @param	ip1	The first IP
 *  @param	ip2	The second IP
 *  @return	0 - no match
 *  		1 - perfect match
 *  		2 - first IP contains second IP
 *  		3 - second IP contains first IP
 *  		4 - neither IP contains the other
 */
stock IPcompare(const ip1[], const ip2[])
{
	if(ispacked(ip1)) {
		if(ispacked(ip2)) {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1{idx1} == '*') {
					for( ; ip2{idx2} != '\0' && ip2{idx2} != '.'; idx2++) if(ip2{idx2} >= '0' && ip2{idx2} <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1{++idx1}) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(!ip2{idx2}) return 0;
				}
				else if(ip2{idx2} == '*') {
					for(;ip1{idx1} != '\0' && ip1{idx1} != '.'; idx1++) if(ip1{idx1} >= '0' && ip1{idx1} <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2{++idx2}) return octet == 4 && !ip1{idx1} ? rvalue : 0;
					if(!ip1{idx2}) return 0;
				}
				else {
					for( ; ip1{idx1} > '.' && ip2{idx2} > '.'; idx1++, idx2++) if(ip1{idx1} != ip2{idx2}) return 0;
					if(!ip1{idx1}) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(ip2{idx2} > '.') return 0;
				}
			}
		}
		else {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1{idx1} == '*') {
					for( ; ip2[idx2] != '\0' && ip2[idx2] != '.'; idx2++) if(ip2[idx2] >= '0' && ip2[idx2] <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1{++idx1}) return octet == 4 && !ip2[idx2] ? rvalue : 0;
					if(!ip2[idx2]) return 0;
				}
				else if(ip2[idx2] == '*') {
					for( ;ip1{idx1} != '\0' && ip1{idx1} != '.'; idx1++) if(ip1{idx1} >= '0' && ip1{idx1} <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2[++idx2]) return octet == 4 && !ip1{idx1} ? rvalue : 0;
					if(!ip1{idx2}) return 0;
				}
				else {
					for( ; ip1{idx1} > '.' && ip2[idx2] > '.'; idx1++, idx2++) if(ip1{idx1} != ip2[idx2]) return 0;
					if(!ip1{idx1}) return octet == 4 && !ip2[idx2] ? rvalue : 0;
					if(ip2[idx2] > '.') return 0;
				}
			}
		}
	}
	else {
		if(ispacked(ip2)) {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1[idx1] == '*') {
					for( ; ip2{idx2} != '\0' && ip2{idx2} != '.'; idx2++) if(ip2{idx2} >= '0' && ip2{idx2} <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1[++idx1]) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(!ip2{idx2}) return 0;
				}
				else if(ip2{idx2} == '*') {
					for( ;ip1[idx1] != '\0' && ip1[idx1] != '.'; idx1++) if(ip1[idx1] >= '0' && ip1[idx1] <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2[++idx2]) return octet == 4 && !ip1[idx1] ? rvalue : 0;
					if(!ip1[idx2]) return 0;
				}
				else {
					for( ; ip1[idx1] > '.' && ip2{idx2} > '.'; idx1++, idx2++) if(ip1[idx1] != ip2{idx2}) return 0;
					if(!ip1[idx1]) return octet == 4 && !ip2{idx2} ? rvalue : 0;
					if(ip2{idx2} > '.') return 0;
				}
			}
		}
		else {
			for(new idx1, idx2, octet = 1, rvalue = 1; octet <= 4; octet++, idx1++, idx2++) {
				if(ip1[idx1] == '*') {
					for( ; ip2[idx2] != '\0' && ip2[idx2] != '.'; idx2++) if(ip2[idx2] >= '0' && ip2[idx2] <= '9' && (rvalue == 1 || rvalue == 3)) rvalue += 1;
					if(!ip1[++idx1]) return octet == 4 && !ip2[idx2] ? rvalue : 0;
					if(!ip2[idx2]) return 0;
				}
				else if(ip2[idx2] == '*') {
					for( ;ip1[idx1] != '\0' && ip1[idx1] != '.'; idx1++) if(ip1[idx1] >= '0' && ip1[idx1] <= '9' && (rvalue == 1 || rvalue == 2)) rvalue += 2;
					if(!ip2[++idx2]) return octet == 4 && !ip1[idx1] ? rvalue : 0;
					if(!ip1[idx2]) return 0;
				}
				else {
					for( ; ip1[idx1] > '.' && ip2[idx2] > '.'; idx1++, idx2++) if(ip1[idx1] != ip2[idx2]) return 0;
					if(!ip1[idx1]) return octet == 4 && !ip2[idx2] ? rvalue : 0;
					if(ip2[idx2] > '.') return 0;
				}
			}
		}
	}
	return 0;
}

/*
 *  Return an IPv4 address code from an IPv4 address string
 *  @param	IP	The IPv4 address string
 *  @return	An IPv4 address code for the IPv4 address string
 */
stock Unsigned:IP2Code(const IP[])
{
	new IPCode;
	if(ispacked(IP)) {
		for(new pos, num; ; pos++) {
			switch(IP{pos}) {
				case '0'..'9': {
					num = (num * 10) + (IP{pos} - '0');
				}
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
	else {
		for(new pos, num; ; pos++) {
			switch(IP[pos]) {
				case '0'..'9': {
					num = (num * 10) + (IP[pos] - '0');
				}
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

/*
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

/*
 *  Returns the subnet of an IPv4 address
 *  @param	IP	The IPv4 address string
 *  @return	An IPv4 address code for the IPv4 address string
 */
stock IPsubnet(const IP[])
{
	new Unsigned:IPCode = IP2Code(IP),
		IPSubnet[MAX_IP];
	if(IPCode) {
		format(IPSubnet, sizeof(IPSubnet), "%i.%i.*.*", (_:IPCode & 0xFF000000) >>> 24, (_:IPCode & 0x00FF0000) >> 16);
	}
	return IPSubnet;
}

/*
 *  Return an ISO 3166-1 alpha-2 country code from an IPv4 address string
 *  @param	db	The database where the definitions are stored
 *  @param	IP	The IPv4 address string
 *  @return	A string containing the a 3166-1 alpha-2 country code, or a blank string if the ip is unknown
 */
stock ReturnCuntCode(DB:db, const IP[])
{
	new Unsigned:IPcode = IP2Code(IP),
		cuntcode[3];
	
	// LOCALHOST
	if(IPcode == Unsigned:0x7F000001) {	// 127.0.0.1
		cuntcode = "XL";
		return cuntcode;
	}
	
	// LAN
	if( Unsigned:0x0A000000 <= IPcode <= Unsigned:0x0AFFFFFF ||	// 10.0.0.0    - 10.255.255.255
		Unsigned:0xAC100000 <= IPcode <= Unsigned:0xAC1FFFFF ||	// 172.16.0.0  - 172.31.255.255
		Unsigned:0xC0A80000 <= IPcode <= Unsigned:0xC0A8FFFF	// 192.168.0.0 - 192.168.255.255
	) {
		cuntcode = "XN";
		return cuntcode;
	}
	
	if(db) {
		new string[110];
		format(string, sizeof(string), "SELECT * FROM `Countries` WHERE ( %s BETWEEN `start` AND `end` ) LIMIT 1", ustr(IPcode));
		new DBResult:result = db_query(db, string);
		if(db_num_rows(result)) {
			db_get_field_assoc(result, "code", cuntcode, sizeof(cuntcode));
			db_free_result(result);
			return cuntcode;
		}
		db_free_result(result);
	}
	return cuntcode;
}

/*
 *  Return a country name from an ISO 3166-1 alpha-2 country code
 *  @param	cuntcode	The ISO 3166-1 alpha-2 country code
 *  @return	A string containing the country name or "Unknown" if the name could not be found
 */
stock ReturnCuntName(const cuntcode[])
{
	new cuntname[MAX_COUNTRY_NAME] = "Unknown";
	if(cuntcode[0] != '\0') {
		for(new i, j = sizeof(scCuntCodes); i < j; i++) {
			if(strcmp(cuntcode, scCuntCodes[i][E_CUNT_CODE], true) == 0) {
				strunpack(cuntname, scCuntCodes[i][E_CUNT_NAME]);
				break;
			}
		}
	}
	return cuntname;
}

/*
 *  Get a country name from an ISO 3166-1 alpha-2 country code
 *  @param	cuntcode	The ISO 3166-1 alpha-2 country code
 *  @param	dest		The destination string
 *  @param	maxlength	The size of the destination string
 *  @return	true if the country name was found, otherwise false
 */
stock GetCuntName(const cuntcode[], dest[], maxlength=sizeof(dest))
{
	if(cuntcode[0] != '\0') {
		for(new i, j = sizeof(scCuntCodes); i < j; i++) {
			if(strcmp(cuntcode, scCuntCodes[i][E_CUNT_CODE], true) == 0) {
				strunpack(dest, scCuntCodes[i][E_CUNT_NAME], maxlength);
				return true;
			}
		}
	}
	return false;
}

/*
 *  Create the IP definition files from a comma seperated cvs file
 *  Supports cvs files from the following sources:
 *  	http://www.maxmind.com/app/geoip_country (recommended)
 *  	http://ip-to-country.webhosting.info
 *  	http://software77.net/geo-ip
 *  @param	db	The database to store the definitions
 *  @return	The number of entries written
 */
stock CreateCuntDefinitions(DB:db)
{
	if(!db) return 0;
	
	static const inputfiles[][][] = {
		{"GeoIPCountryWhois.csv", "-, _ _ s s s "},
		{"IpToCountry.csv", "-, s s _ _ s "},
		{"ip-to-country.csv", "-, s s s "}
	};
	
	// I don't think this does anything since the sqlite version samp uses is over 2 and a half years old...
	db_free_result(db_query(db, "SAVEPOINT CreateCuntDefinitions"));
	
	db_free_result(db_query(db, "CREATE TABLE IF NOT EXISTS `Countries` ( `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `code` TEXT NOT NULL , PRIMARY KEY ( `start` , `end` ) ); DELETE FROM `Countries`"));
	
	new counter;
	for(new inputidx, length, File:rhandle, string[MAX_STRING]; inputidx < sizeof(inputfiles); inputidx++) {
		if((rhandle = fopen(inputfiles[inputidx][0], io_read))) {
			while(fread(rhandle, string)) {
				if(string[0] == '#') continue;
				
				new quotedstart[13], quotedend[13], quotedcode[5];
				strscan(string, inputfiles[inputidx][1], quotedstart, sizeof(quotedstart), quotedend, sizeof(quotedend), quotedcode, sizeof(quotedcode));
				
				length = strlen(quotedstart);
				if(length < 2 || quotedstart[length-1] != '"') continue;	// " stupid notepad++ function list
				quotedstart[length-1] = '\0';
				
				length = strlen(quotedend);
				if(length < 2 || quotedend[length-1] != '"') continue;		// " stupid notepad++ function list
				quotedend[length-1] = '\0';
				
				length = strlen(quotedcode);
				if(length < 2 || quotedcode[length-1] != '"') continue;		// " stupid notepad++ function list
				quotedcode[length-1] = '\0';
				
				format(string, sizeof(string), "INSERT INTO `Countries` ( `start` , `end` , `code` ) VALUES ( %s , %s , upper( '%s' ) )", quotedstart[1], quotedend[1], quotedcode[1]);
				db_free_result(db_query(db, string));
				
				counter++;
			}
			fclose(rhandle);
			break;
		}
	}
	
	db_free_result(db_query(db, "RELEASE SAVEPOINT CreateCuntDefinitions"));
	
	return counter;
}
