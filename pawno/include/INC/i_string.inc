/*
 *	Any Last Administrative Requests - i_string.inc
 *		String functions
 *
 *	strscan based off sscanf by Y_Less
 *	strstripnewline originally by Y_Less and DracoBlue
 *
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_string_included
	#endinput
#endif
#define _inc_string_included

#include <a_samp>

/*
	native hexstr({Float,Unsigned,_}:number);

	native bool:isFloat(const string[]);
	native bool:isInteger(const string[]);
	native bool:isNumeric(const string[]);

	native strcpy(dest[], const source[], maxlength = sizeof(dest), end = cellmax, bool:pack = false);
	native strdelword(string[], const word[], bool:ignorecase = false);
	native strfindchar(const string[], const character, bool:ignorecase = false, position = 0);
	native strfindword(const string[], const word[], bool:ignorecase = false, position = 0);
	native strmakeroom(string[], space, maxlength = sizeof(string));
	native strreplacechar(string[], const oldchar, const newchar);
	native strreplaceword(string[], const find[], const replace[], bool:ignorecase = false, maxlength = sizeof(string), count = cellmax);
	native strscan(const string[], const format[], {Float,Unsigned,_}:...);
	native bool:strsplit(dest[][], const string[], delim, height = sizeof(dest), width = sizeof(dest[]), bool:pack = false);
	native strstripnewline(string[]);
	native strstripwhitespace(string[]);
	native strtok(const string[], &index, seperator = ' ', bool:pack = false);
	native strtruncate(dest[], const string[], length = sizeof(dest), const ellipsis[] = "...", wordlength = 15, bool:pack = false, maxlength = sizeof(dest));
	native strcommaval(value);
	native bool:strwild(const wild[], const string[], bool:ignorecase = false);

	native straddword(dest[], const source[], maxlength = sizeof(dest));
+	native strtruncate(string[], length, const ellipsis[] = "...", wordlength = 15, maxlength = sizeof(string));
*/

#include "i_utils"

/*
 *  Convert a number to a hexadecimal string
 *  @param	number	The number to convert
 *  @return	A string containing the hexadecimal value of the number, padded to 8 chars with a leading "0x"
 *
 *  hexstr(-3243050);	// output: "0xFFCE83D6"
 */
stock hexstr(_:number)
{
	new string[11];
	if(_:number & 0xF0000000) {
		format(string, sizeof(string), "0x%x%07x", _:number >>> 28, _:number & 0x0FFFFFFF);
	}
	else {
		format(string, sizeof(string), "0x0%07x", _:number);
	}
	return string;
}

/*
 *  Check if a string contains a floating point number
 *  @param	string	The string to check
 *  @return	true if the string contains a floating point number, otherwise false
 *
 *  isFloat("01.25");	// output: "true"
 *  isFloat("+1.25");	// output: "true"
 *  isFloat("-1.25");	// output: "true"
 */
stock bool:isFloat(const string[])
{
	if(isnull(string)) {
		return false;
	}
	if(ispacked(string)) {
		new unary = string{0} == '-' || string{0} == '+',
			i = unary ? 1 : 0;
		for(new bool:decimal; string{i} != '\0'; i++) {
			if(string{i} == '.') {
				if(decimal) {
					return false;
				}
				decimal = true;
			}
			else if(string{i} > '9' || string{i} < '0') {
				return false;
			}
		}
		if(i == 1 && (unary || string{0} == '.')) {
			return false;
		}
		if(i == 2 && unary && string{1} == '.') {
			return false;
		}
	}
	else {
		new unary = string[0] == '-' || string[0] == '+',
			i = unary ? 1 : 0;
		for(new bool:decimal; string[i] != '\0'; i++) {
			if(string[i] == '.') {
				if(decimal) {
					return false;
				}
				decimal = true;
			}
			else if(string[i] > '9' || string[i] < '0') {
				return false;
			}
		}
		if(i == 1 && (unary || string[0] == '.')) {
			return false;
		}
		if(i == 2 && unary && string[1] == '.') {
			return false;
		}
	}
	return true;
}

/*
 *  Check if a string contains an integer
 *  @param	string	The string to check
 *  @return	true if the string contains an integer, otherwise false
 *
 *  isInteger("0125");	// output: "true"
 *  isInteger("+125");	// output: "true"
 *  isInteger("-125");	// output: "true"
 */
stock bool:isInteger(const string[])
{
	if(isnull(string)) {
		return false;
	}
	if(ispacked(string)) {
		for(new i = ((string{0} == '-' || string{0} == '+') && string{1} != '\0') ? 1 : 0; string{i} != '\0'; i++) {
			if(string{i} > '9' || string{i} < '0') {
				return false;
			}
		}
	}
	else {
		for(new i = ((string[0] == '-' || string[0] == '+') && string[1] != '\0') ? 1 : 0; string[i] != '\0'; i++) {
			if(string[i] > '9' || string[i] < '0') {
				return false;
			}
		}
	}
	return true;
}

/*
 *  Check if a string consists only of numeric characters
 *  @param	string	The string to check
 *  @return	true if the string consists only of numeric characters, otherwise false
 *
 *  isNumeric("0125");	// output: "true"
 *  isNumeric("+125");	// output: "false"
 *  isNumeric("-125");	// output: "false"
 *  isInteger("1.25");	// output: "false"
 */
stock bool:isNumeric(const string[])
{
	if(isnull(string)) {
		return false;
	}
	if(ispacked(string)) {
		for(new i; string{i} != '\0'; i++) {
			if(string{i} > '9' || string{i} < '0') {
				return false;
			}
		}
	}
	else {
		for(new i; string[i] != '\0'; i++) {
			if(string[i] > '9' || string[i] < '0') {
				return false;
			}
		}
	}
	return true;
}

/*
 *  Copy a string
 *  @param	dest		The destination string
 *  @param	source		The source string
 *  @param	maxlength	The length of the destination string
 *  @param	end			The maximium number of characters to copy
 *  @param	pack		If the destination string should be packed
 */
//stock strcpy(dest[], const source[], bool:pack = false, maxlength = sizeof(dest), end = cellmax)
stock strcpy(dest[], const source[], maxlength = sizeof(dest), end = cellmax, bool:pack = false)
{
	new pos;
	if(pack) {
		end = (maxlength * cellchars > end) ? (end) : (maxlength * cellchars - 1);
		if(ispacked(source)) {
			for( ; source{pos} != '\0' && pos < end; pos++) {
				dest{pos} = source{pos};
			}
		}
		else {
			for( ; source[pos] != '\0' && pos < end; pos++) {
				dest{pos} = source[pos];
			}
		}
		for(new i = (cellchars - 1) - (pos % cellchars); i >= 0; i--) {
			dest{pos + i} = '\0';
		}
	}
	else {
		end = (maxlength > end) ? (end) : (maxlength - 1);
		if(ispacked(source)) {
			dest[end] = '\0';
			for(pos = end - 1; pos >= 0; pos--) {
				dest[pos] = source{pos};
			}
		}
		else {
			for( ; source[pos] != '\0' && pos < end; pos++) {
				dest[pos] = source[pos];
			}
			dest[pos] = '\0';
		}
	}
}

/*
 *  Deletes a word from a string
 *  @param	string		The string to search
 *  @param	word		The word to search for
 *  @param	ignorecase	If the search is case insensitive
 *  @return	The number of words deleted
 *
 *  new string[64] = "We will delete everything apart from this.";
 *  strdelword(string, "everything");	// output: "We will delete apart from this."
 */
stock strdelword(string[], const word[], bool:ignorecase = false)
{
	new count;
	for(new wlen = strlen(word), pos = strfindword(string, word, ignorecase); pos != -1; pos = strfindword(string, word, ignorecase, pos)) {
		strdel(string, pos, pos + wlen + 1);
		count++;
	}
	return count;
}

/*
 *  Finds a character in a string
 *  @param	string		The string to search
 *  @param	character	The character to search for
 *  @param	ignorecase	If the search is case insensitive
 *  @param	position	The starting position for the search
 *  @return	The position in the string of the character, or -1 if not found
 *
 *  new string[64] = "We will find everything apart from this.";
 *  strfindchar(string, 'f');	// output: "8"
 */
stock strfindchar(const string[], const character, bool:ignorecase = false, position = 0)
{
	if(character == '\0') {
		return -1;
	}
	if(ispacked(string)) {
		for(new i = position; string{i} != '\0'; i++) {
			if(string{i} == character || (ignorecase && tolower(string{i}) == tolower(character))) {
				return i;
			}
		}
	}
	else {
		for(new i = position; string[i] != '\0'; i++) {
			if(string[i] == character || (ignorecase && tolower(string[i]) == tolower(character))) {
				return i;
			}
		}
	}
	return -1;
}

/*
 *  Finds a word in a string
 *  @param	string		The string to search
 *  @param	word		The word to search for
 *  @param	ignorecase	If the search is case insensitive
 *  @param	position			The starting position for the search
 *  @return	The position in the string of the begining of the word, or -1 if not found
 *
 *  new string[64] = "We will find everything apart from this.";
 *  strfindword(string, "everything");	// output: "13"
 */
stock strfindword(const string[], const word[], bool:ignorecase = false, position = 0)
{
	if(isnull(word)) {
		return -1;
	}
	new wlen = strlen(word);
	if(ispacked(string)) {
		for(new i = strfind(string, word, ignorecase, position); i != -1; i = strfind(string, word, ignorecase, ++i)) {
			if((i == 0 || string{i - 1} <= ' ') && string{i + wlen} <= ' ') {
				return i;
			}
		}
	}
	else {
		for(new i = strfind(string, word, ignorecase, position); i != -1; i = strfind(string, word, ignorecase, ++i)) {
			if((i == 0 || string[i - 1] <= ' ') && string[i + wlen] <= ' ') {
				return i;
			}
		}
	}
	return -1;
}

/*
 *  Removes words from the begining of a string
 *  @param	string		The string to be shortened
 *  @param	space		The number of characters needed
 *  @param	maxlength	The maxlength of the string
 *
 *  new string[64] = "We will remove everything apart from this.";
 *  strmakeroom(string, 8);	// output: "remove everything apart from this."
 */
stock strmakeroom(string[], space, maxlength = sizeof(string))
{
	if(space <= 0) {
		return;
	}
	if(ispacked(string)) {
		maxlength *= cellchars;
		if(space >= maxlength) {
			string[0] = '\0';
			return;
		}
		if(strlen(string) + space < maxlength) {
			return;
		}
		while(string{space} != '\0' && string{space - 1} != ' ') {
			space++;
		}
		strdel(string, 0, space);
	}
	else {
		if(space >= maxlength) {
			string[0] = '\0';
			return;
		}
		if(strlen(string) + space < maxlength) {
			return;
		}
		while(string[space] != '\0' && string[space - 1] != ' ') {
			space++;
		}
		strdel(string, 0, space);
	}
}

/*
 *  Replace a character in a string
 *  @param	string		The source string
 *  @param	oldchar		The character to be replaced
 *  @param	newchar		The character to replace with
 *  @return	The number of characters replaced
 *
 *  new string[64] = "We will replace everything apart from this.";
 *  strreplacechar(string, 'l', 'H');	// output: "We wiHH repHace everything apart from this."
 */
stock strreplacechar(string[], const oldchar, const newchar)
{
	new matches;
	if(ispacked(string)) {
		if(newchar == '\0') {
			for(new i; string{i} != '\0'; i++) {
				if(string{i} == oldchar) {
					strdel(string, i, i + 1);
					matches++;
				}
			}
		}
		else {
			for(new i; string{i} != '\0'; i++) {
				if(string{i} == oldchar) {
					string{i} = newchar;
					matches++;
				}
			}
		}
	}
	else {
		if(newchar == '\0') {
			for(new i; string[i] != '\0'; i++) {
				if(string[i] == oldchar) {
					strdel(string, i, i + 1);
					matches++;
				}
			}
		}
		else {
			for(new i; string[i] != '\0'; i++) {
				if(string[i] == oldchar) {
					string[i] = newchar;
					matches++;
				}
			}
		}
	}
	return matches;
}

/*
 *  Replace a substring in a string
 *  @param	string		The source string
 *  @param	find		The substring to be replaced
 *  @param	replace		The substring to replace with
 *  @param	ignorecase	If the search is case insensitive
 *  @param	maxlength	The length of the source string
 *  @param	count		The number of substrings to be replaced
 *  @return	The number of substrings replaced
 *
 *  new string[64] = "We will replace everything apart from this.";
 *  strreplaceword(string, "everything", "ALL");	// output: "We will replace ALL apart from this."
 */
stock strreplaceword(string[], const find[], const replace[], bool:ignorecase = false, maxlength = sizeof(string), count = cellmax)
{
	if(isnull(string) || isnull(find) || isnull(replace)) {
		return 0;
	}
	new matches;
	for(new idx, flen = strlen(find), rlen = strlen(replace), pos = strfind(string, find, ignorecase); pos != -1 && idx < maxlength && matches < count; pos = strfind(string, find, ignorecase, idx)) {
		strdel(string, pos, pos + flen);
		if(rlen) {
			strins(string, replace, pos, maxlength);	// Crashy
		}
		idx = pos + rlen;
		matches++;
	}
	return matches;
}

/*
 *  Scans a string and extracts data
 *
 *  	A fail is either insufficient variables to store the data or insufficient
 *  	data for the format string - excess data is disgarded
 *
 *  	A string in the middle of the input data is extracted as a single word, a
 *  	string at the end of the data collects all remaining text. The length of
 *  	a string must be passed after the string
 *
 *  The format codes are:
 *
 *  	c - A character
 *  	d, i - An integer
 *  	f - A float
 *  	h, x - A hex number (e.g. a colour)
 *  	s - A string
 *  	> - Pack strings
 *  	< - Don't pack strings
 *  	p - A playerid
 *  	u - An unsigned integer
 *  	z - An optional string
 *  	_ - Skip a parameter
 *  	-X - An additional delimiter where X is another character
 *
 *  @param	string					String to extract parameters from
 *  @param	format					Parameter types to get
 *  @param	{Float,Unsigned,_}:...	Data return variables
 *  @return	0 - Successful, not 0 - fail
 */
stock strscan(const string[], const format[], {Float,Unsigned,_}:...)
{
	if(isnull(string)) {
		return format[0];
	}
	new formatPos = 0,
		stringPos = 0,
		paramPos = 2,
		paramCount = numargs(),
		delim = ' ',
		pack = false;
	if(ispacked(string)) {
		while('\0' < string{stringPos} <= ' ') {
			stringPos++;
		}
		while(paramPos < paramCount && string{stringPos}) {
			switch(format[formatPos++]) {
				case '\0': {
					return 0;
				}
				case 'i', 'd': {
					new neg = 1,
						num = 0,
						ch = string{stringPos};
					if(ch == '-') {
						neg = -1;
						ch = string{++stringPos};
					}
					do {
						stringPos++;
						if('0' <= ch <= '9') {
							num = (num * 10) + (ch - '0');
						}
						else {
							return -1;
						}
					}
					while((ch = string{stringPos}) > ' ' && ch != delim);
					setarg(paramPos, 0, num * neg);
				}
				case 'u': {
					new num = 0,
						ch = string{stringPos};
					do {
						stringPos++;
						if(ch >= '0' && ch <= '9') {
							num = (num * 10) + (ch - '0');
						}
						else {
							return -1;
						}
					}
					while((ch = string{stringPos}) > ' ' && ch != delim);
					setarg(paramPos, 0, num);
				}
				case 'h', 'x': {
					new num = 0,
						ch = string{stringPos};
					do {
						stringPos++;
						switch(ch) {
							case 'x', 'X': {
								num = 0;
								continue;
							}
							case '0' .. '9': {
								num = (num << 4) | (ch - '0');
							}
							case 'a' .. 'f': {
								num = (num << 4) | (ch - ('a' - 10));
							}
							case 'A' .. 'F': {
								num = (num << 4) | (ch - ('A' - 10));
							}
							default: {
								return -1;
							}
						}
					}
					while((ch = string{stringPos}) > ' ' && ch != delim);
					setarg(paramPos, 0, num);
				}
				case 'c': {
					setarg(paramPos, 0, string{stringPos++});
				}
				case 'f': {
					new buff[20 char];
					strmid(buff, string, stringPos, stringPos + 19);
					setarg(paramPos, 0, _:floatstr(buff));
				}
				case '-': {
					delim = format[formatPos++];
					continue;
				}
				case '<': {
					pack = false;
					continue;
				}
				case '>': {
					pack = true;
					continue;
				}
				case 's', 'z': {
					new i = 0,
						len = getarg(paramPos + 1, 0);
					if(pack) {
						new ch[1] = 0;
						len *= cellchars;
						if(format[formatPos]) {
							while(i < len - 1 && (ch{i % cellchars} = string{stringPos}) > ' ' && ch{i % cellchars} != delim) {
								if(i % cellchars == cellchars - 1) {
									setarg(paramPos, i / cellchars, ch[0]);
									ch[0] = 0;
								}
								i++;
								stringPos++;
							}
							if(!i && len > 1) {
								return -1;
							}
						}
						else {
							while(i < len - 1 && (ch{i % cellchars} = string{stringPos})) {
								if(i % cellchars == cellchars - 1) {
									setarg(paramPos, i / cellchars, ch[0]);
									ch[0] = 0;
								}
								i++;
								stringPos++;
							}
						}
						setarg(paramPos++, i, ch[0]);
					}
					else {
						new ch;
						if(format[formatPos]) {
							while(i < len - 1 && (ch = string{stringPos}) > ' ' && ch != delim) {
								setarg(paramPos, i++, ch);
								stringPos++;
							}
							if(!i && len > 1) {
								return -1;
							}
						}
						else {
							while(i < len - 1 && (ch = string{stringPos})) {
								setarg(paramPos, i++, ch);
								stringPos++;
							}
						}
						setarg(paramPos++, i, '\0');
					}
				}
				case 'p': {
					new end = stringPos - 1,
						id,
						ch,
						bool:num = true;
					while((ch = string{++end}) && ch != delim) {
						if(num) {
							if('0' <= ch <= '9') {
								id = (id * 10) + (ch - '0');
							}
							else {
								num = false;
							}
						}
					}
					if(num && IsPlayerConnected(id)) {
						setarg(paramPos, 0, id);
					}
					else {
						new strname[MAX_PLAYER_NAME char],
							pname[MAX_PLAYER_NAME];
						num = false;
						ch = end - stringPos;
						id = INVALID_PLAYER_ID;
						strmid(strname, string, stringPos, end); //memcpy(strname, string, stringPos, ch);
						for(new i, j = GetMaxPlayers(); i < j; i++) {
							if(IsPlayerConnected(i)) {
								GetPlayerName(i, pname, sizeof(pname));
								stringPos = strfind(pname, strname, true);
								if((stringPos == 0) && (strlen(pname) == ch)) {
									id = i;
									break;
								}
								if(!num) {
									if(stringPos == 0) {
										id = i;
										num = true;
									}
									else if(stringPos != -1 && id == INVALID_PLAYER_ID) {
										id = i;
									}
								}
							}
						}
						setarg(paramPos, 0, id);
					}
					stringPos = end;
				}
				case '_': {
					goto Dengo;	// Eh, screw good practice. How bad can it be?
				}
				default: {
					continue;
				}
			}
			paramPos++;
			Dengo:
			while(string{stringPos} && string{stringPos} != delim && string{stringPos} > ' ') {
				stringPos++;
			}
			while(string{stringPos} && (string{stringPos} == delim || string{stringPos} <= ' ')) {
				stringPos++;
			}
		}
		while(format[formatPos] == 'z') {
			formatPos++;
		}
		if(format[formatPos] > ' ') {
			return format[formatPos];
		}
	}
	else {
		while('\0' < string[stringPos] <= ' ') {
			stringPos++;
		}
		while(paramPos < paramCount && string[stringPos]) {
			switch(format[formatPos++]) {
				case '\0': {
					return 0;
				}
				case 'i', 'd': {
					new neg = 1,
						num = 0,
						ch = string[stringPos];
					if(ch == '-') {
						neg = -1;
						ch = string[++stringPos];
					}
					do {
						stringPos++;
						if('0' <= ch <= '9') {
							num = (num * 10) + (ch - '0');
						}
						else {
							return -1;
						}
					}
					while((ch = string[stringPos]) > ' ' && ch != delim);
					setarg(paramPos, 0, num * neg);
				}
				case 'u': {
					new num = 0,
						ch = string[stringPos];
					do {
						stringPos++;
						if(ch >= '0' && ch <= '9') {
							num = (num * 10) + (ch - '0');
						}
						else {
							return -1;
						}
					}
					while((ch = string[stringPos]) > ' ' && ch != delim);
					setarg(paramPos, 0, num);
				}
				case 'h', 'x': {
					new num = 0,
						ch = string[stringPos];
					do {
						stringPos++;
						switch(ch) {
							case 'x', 'X': {
								num = 0;
								continue;
							}
							case '0' .. '9': {
								num = (num << 4) | (ch - '0');
							}
							case 'a' .. 'f': {
								num = (num << 4) | (ch - ('a' - 10));
							}
							case 'A' .. 'F': {
								num = (num << 4) | (ch - ('A' - 10));
							}
							default: {
								return -1;
							}
						}
					}
					while((ch = string[stringPos]) > ' ' && ch != delim);
					setarg(paramPos, 0, num);
				}
				case 'c': {
					setarg(paramPos, 0, string[stringPos++]);
				}
				case 'f': {
					setarg(paramPos, 0, _:floatstr(string[stringPos]));
				}
				case '-': {
					delim = format[formatPos++];
					continue;
				}
				case '<': {
					pack = false;
					continue;
				}
				case '>': {
					pack = true;
					continue;
				}
				case 's', 'z': {
					new i = 0,
						len = getarg(paramPos + 1, 0);
					if(pack) {
						new ch[1] = 0;
						len *= cellchars;
						if(format[formatPos]) {
							while(i < len - 1 && (ch{i % cellchars} = string[stringPos]) > ' ' && ch{i % cellchars} != delim) {
								if(i % cellchars == cellchars - 1) {
									setarg(paramPos, i / cellchars, ch[0]);
									ch[0] = 0;
								}
								i++;
								stringPos++;
							}
							if(!i && len > 1) {
								return -1;
							}
						}
						else {
							while(i < len - 1 && (ch{i % cellchars} = string[stringPos])) {
								if(i % cellchars == cellchars - 1) {
									setarg(paramPos, i / cellchars, ch[0]);
									ch[0] = 0;
								}
								i++;
								stringPos++;
							}
						}
						setarg(paramPos++, i, ch[0]);
					}
					else {
						new ch;
						if(format[formatPos]) {
							while(i < len - 1 && (ch = string[stringPos]) > ' ' && ch != delim) {
								setarg(paramPos, i++, ch);
								stringPos++;
							}
							if(!i && len > 1) {
								return -1;
							}
						}
						else {
							while(i < len - 1 && (ch = string[stringPos])) {
								setarg(paramPos, i++, ch);
								stringPos++;
							}
						}
						setarg(paramPos++, i, '\0');
					}
				}
				case 'p': {
					new end = stringPos - 1,
						id,
						ch,
						bool:num = true;
					while((ch = string[++end]) && ch != delim) {
						if(num) {
							if('0' <= ch <= '9') {
								id = (id * 10) + (ch - '0');
							}
							else {
								num = false;
							}
						}
					}
					if(num && IsPlayerConnected(id)) {
						setarg(paramPos, 0, id);
					}
					else {
						new strname[MAX_PLAYER_NAME],
							pname[MAX_PLAYER_NAME];
						num = false;
						ch = end - stringPos;
						id = INVALID_PLAYER_ID;
						strmid(strname, string, stringPos, end); //memcpy(strname, string, stringPos, ch * 4);
						for(new i, j = GetMaxPlayers(); i < j; i++) {
							if(IsPlayerConnected(i)) {
								GetPlayerName(i, pname, sizeof(pname));
								stringPos = strfind(pname, strname, true);
								if((stringPos == 0) && (strlen(pname) == ch)) {
									id = i;
									break;
								}
								if(!num) {
									if(stringPos == 0) {
										id = i;
										num = true;
									}
									else if(stringPos != -1 && id == INVALID_PLAYER_ID) {
										id = i;
									}
								}
							}
						}
						setarg(paramPos, 0, id);
					}
					stringPos = end;
				}
				case '_': {
					goto Dengo;	// Eh, screw good practice. How bad can it be?
				}
				default: {
					continue;
				}
			}
			paramPos++;
			Dengo:
			while(string[stringPos] && string[stringPos] != delim && string[stringPos] > ' ') {
				stringPos++;
			}
			while(string[stringPos] && (string[stringPos] == delim || string[stringPos] <= ' ')) {
				stringPos++;
			}
		}
		while(format[formatPos] == 'z') {
			formatPos++;
		}
		if(format[formatPos] > ' ') {
			return format[formatPos];
		}
	}
	return 0;
}

/*
 *  Splits a string into a number of strings based on a delimiter
 *  @param	dest	The array of strings to store the results
 *  @param	string	The string to strip the newline from
 *  @param	delim	-
 *  @param	height	The number of strings in the destination array
 *  @param	width	The length of strings in the destination array
 *  @param	pack	If the destination string should be packed
 *  @return	true if there were enough destination arrays to store the strings, false otherwise
 */
stock bool:strsplit(dest[][], const string[], delim, height = sizeof(dest), width = sizeof(dest[]), bool:pack = false)
{
	if(isnull(string)) {
		return true;
	}
	new i, j, k;
	if(pack) {
		width *= cellchars;
		if(ispacked(string)) {
			for( ; string{i} != '\0'; i++) {
				if(string{i} == delim) {
					if(k < width) {
						dest[j]{k} = '\0';
					}
					if(++j == height) {
						break;
					}
					k = 0;
				}
				else {
					if(k < (width-1)) {
						dest[j]{k++} = string{i};
					}
					else if(k < width) {
						dest[j]{k++} = '\0';
					}
				}
			}
			if(j < height && k < width) {
				dest[j]{k} = '\0';
			}
			for(j++; j < height; j++) {
				dest[j]{0} = '\0';
			}
			return string{i} == '\0';
		}
		else {
			for( ; string[i] != '\0'; i++) {
				if(string[i] == delim) {
					if(k < width) {
						dest[j]{k} = '\0';
					}
					if(++j == height) {
						break;
					}
					k = 0;
				}
				else {
					if(k < (width-1)) {
						dest[j]{k++} = string[i];
					}
					else if(k < width) {
						dest[j]{k++} = '\0';
					}
				}
			}
			if(j < height && k < width) {
				dest[j]{k} = '\0';
			}
			for(j++; j < height; j++) {
				dest[j]{0} = '\0';
			}
			return string[i] == '\0';
		}
	}
	else {
		if(ispacked(string)) {
			for( ; string{i} != '\0'; i++) {
				if(string{i} == delim) {
					if(k < width) {
						dest[j][k] = '\0';
					}
					if(++j == height) {
						break;
					}
					k = 0;
				}
				else {
					if(k < (width-1)) {
						dest[j][k++] = string{i};
					}
					else if(k < width) {
						dest[j][k++] = '\0';
					}
				}
			}
			if(j < height && k < width) {
				dest[j][k] = '\0';
			}
			for(j++; j < height; j++) {
				dest[j][0] = '\0';
			}
			return string{i} == '\0';
		}
		else {
			for( ; string[i] != '\0'; i++) {
				if(string[i] == delim) {
					if(k < width) {
						dest[j][k] = '\0';
					}
					if(++j == height) {
						break;
					}
					k = 0;
				}
				else {
					if(k < (width-1)) {
						dest[j][k++] = string[i];
					}
					else if(k < width) {
						dest[j][k++] = '\0';
					}
				}
			}
			if(j < height && k < width) {
				dest[j][k] = '\0';
			}
			for(j++; j < height; j++) {
				dest[j][0] = '\0';
			}
			return string[i] == '\0';
		}
	}
}

/*
 *  Strips Newline from the end of a string
 *  @param	string	The string to remove the newline from
 */
stock strstripnewline(string[])
{
	if(isnull(string)) {
		return;
	}
	new len = strlen(string);
	if(ispacked(string)) {
		if((string{len - 1} == '\n') || (string{len - 1} == '\r')) {
			string{len - 1} = '\0';
			if(string{0} == '\0') {
				return;
			}
			if((string{len - 2} == '\n') || (string{len - 2} == '\r')) {
				string{len - 2} = '\0';
			}
		}
	}
	else {
		if((string[len - 1] == '\n') || (string[len - 1] == '\r')) {
			string[len - 1] = '\0';
			if(string[0] == '\0') {
				return;
			}
			if((string[len - 2] == '\n') || (string[len - 2] == '\r')) {
				string[len - 2] = '\0';
			}
		}
	}
}

/*
 *  Strips leading, trailing and unnecessary whitespace from a string
 *  @param	string	The string to remove whitespace from
 */
stock strstripwhitespace(string[])
{
	if(isnull(string)) {
		return;
	}
	if(ispacked(string)) {
		for(new i; string{i}; i++) {
			if(string{i} <= ' ') {
				new end = i;
				while('\0' < string{end + 1} <= ' ') {
					end++;
				}
				if(i == 0) {
					strdel(string, i, end + 1);
				}
				else if(string{end + 1} == '\0') {
					strdel(string, i, end + 1);
					return;
				}
				else if(i != end) {
					strdel(string, i, end);
				}
			}
		}
	}
	else {
		for(new i; string[i]; i++) {
			if(string[i] <= ' ') {
				new end = i;
				while('\0' < string[end + 1] <= ' ') {
					end++;
				}
				if(i == 0) {
					strdel(string, i, end + 1);
				}
				else if(string[end + 1] == '\0') {
					strdel(string, i, end + 1);
					return;
				}
				else if(i != end) {
					strdel(string, i, end);
				}
			}
		}
	}
}

/*
 *  Returns an element of a string splitted by ' ', default index is 0
 *  @param	string		The string to be split
 *  @param	index		The starting position
 *  @param	seperator	The character to use as a seperator
 *  @param	pack		If the destination string should be packed
 *  @return	The substring which was seperated
 */
stock strtok(const string[], &index, seperator=' ', bool:pack=false)
{
	new result[MAX_STRING_LENGTH], offset = index;
	if(ispacked(string)) {
		if(pack) {
			while(string{index} != '\0' && string{index} <= ' ') {
				index++;
			}
			while((string{index} != '\0') && (string{index} != seperator) && ((index - offset) < ((sizeof(result) * cellchars) - 1))) {
				result{index - offset} = string{index++};
			}
			result{index - offset} = '\0';
			if(string{index} == seperator) {
				index++;
			}
			return result;
		}
		else {
			while(string{index} != '\0' && string{index} <= ' ') {
				index++;
			}
			while((string{index} != '\0') && (string{index} != seperator) && ((index - offset) < (sizeof(result) - 1))) {
				result[index - offset] = string{index++};
			}
			result[index - offset] = '\0';
			if(string{index} == seperator) {
				index++;
			}
			return result;
		}
	}
	else {
		if(pack) {
			while(string[index] != '\0' && string[index] <= ' ') {
				index++;
			}
			while((string[index] != '\0') && (string[index] != seperator) && ((index - offset) < ((sizeof(result) * cellchars) - 1))) {
				result{index - offset} = string[index++];
			}
			result{index - offset} = '\0';
			if(string[index] == seperator) {
				index++;
			}
			return result;
		}
		else {
			while(string[index] != '\0' && string[index] <= ' ') {
				index++;
			}
			while((string[index] != '\0') && (string[index] != seperator) && ((index - offset) < (sizeof(result) - 1))) {
				result[index - offset] = string[index++];
			}
			result[index - offset] = '\0';
			if(string[index] == seperator) {
				index++;
			}
			return result;
		}
	}
}

/*
 *  Truncate a string and append an ellipsis
 *  @param	string		The string to truncate
 *  @param	length		The maximium length of the final string
 *  @param	ellipsis	The string to append
 *  @param	wordlength	The maximium length of a word
 *  @param	pack		If the destination string should be packed
 *  @param	maxlength	The size of the string
 */
stock strtruncate(dest[], const string[], length=sizeof(dest), const ellipsis[]="...", wordlength = 15, bool:pack = false, maxlength = sizeof(dest))
{
	length--;
	if(strlen(string) <= length) {
		strcpy(dest, string, maxlength, .pack=pack);
		return;
	}
	if(ispacked(string)) {
		new cutoff = length - strlen(ellipsis);
		if(cutoff <= 0) {
			strcpy(dest, ellipsis, maxlength, .pack=pack);
			return;
		}
		if(string{cutoff} > ' ') {
			new pos = cutoff;
			for(new i; i < wordlength; i++) {
				if(--pos == 0 || string{pos} <= ' ') break;
			}
			if(string{pos} > ' ') {
				strcpy(dest, string, maxlength, cutoff, .pack=pack);
				strcat(dest, ellipsis, maxlength);
				return;
			}
			cutoff = pos;
		}
		while(string{cutoff-1} <= ' ') {
			if(--cutoff == 0) {
				strcpy(dest, ellipsis, maxlength, .pack=pack);
				return;
			}
		}
		strcpy(dest, string, maxlength, cutoff, .pack=pack);
		strcat(dest, ellipsis, maxlength);
	}
	else {
		new cutoff = length - strlen(ellipsis);
		if(cutoff < 0) {
			strcpy(dest, ellipsis, maxlength, .pack=pack);
			return;
		}
		if(string[cutoff] > ' ') {
			new pos = cutoff;
			for(new i; i < wordlength; i++) {
				if(--pos == 0 || string[pos] <= ' ') break;
			}
			if(string[pos] > ' ') {
				strcpy(dest, string, maxlength, cutoff, .pack=pack);
				strcat(dest, ellipsis, maxlength);
				return;
			}
			cutoff = pos;
		}
		while(cutoff > 0 && string[cutoff-1] <= ' ') {
			cutoff--;
		}
		strcpy(dest, string, maxlength, cutoff, .pack=pack);
		strcat(dest, ellipsis, maxlength);
	}
}

/*
 *  Convert a number to a string with commas for easy readability
 *  @param	value	The number to convert to a string
 *  @return	A string containing a number formatted with commas
 */
stock strcommaval(value)
{
	new string[16];
	format(string, sizeof(string), "%i", value);
	if(-1000 < value < 1000) {
		return string;
	}
	for(new pos = strlen(string), count, start = (value < 0) ? (1) : (0); pos > start; pos--, count++) {
		if(count == 3) {
			strins(string, ",", pos);
			count = 0;
		}
	}
	return string;
}

/*
 *  Compare a string using wildcards [* - any number of characters] AND [? - any single character]
 *  @param	wild		The string containing wildcards
 *  @param	source		The string to compare
 *  @param	ignorecase	If the search is case insensitive
 *  @return	true if it matches, otherwise false
 *
 *  if(strwild("bl?h.*", "blah.jpg")) {
 *  	// we have a match
 *  } else {
 *  	// no match
 *  }
 */
stock bool:strwild(const wild[], const string[], bool:ignorecase = false)
{
	new idx, idx2, cp, mp;
	if(ispacked(wild)) {
		if(ispacked(string)) {
			while((string{idx}) && (wild{idx2} != '*')) {
				if(wild{idx2} != string{idx} && (!ignorecase || (toupper(wild{idx2}) != toupper(string{idx}))) && (wild{idx2} != '?')) {
					return false;
				}
				idx2++;
				idx++;
			}
			while(string{idx}) {
				if(wild{idx2} == '*') {
					if(!wild{++idx2}) {
						return true;
					}
					mp = idx2;
					cp = idx+1;
				}
				else if((wild{idx2} == string{idx} || (ignorecase && (toupper(wild{idx2}) == toupper(string{idx})))) || wild{idx2} == '?') {
					idx2++;
					idx++;
				}
				else {
					idx2 = mp;
					idx = cp++;
				}
			}
			while(wild{idx2} == '*') {
				idx2++;
			}
			return !wild{idx2};
		}
		else {
			while((string[idx]) && (wild{idx2} != '*')) {
				if(wild{idx2} != string[idx] && (!ignorecase || (toupper(wild{idx2}) != toupper(string[idx]))) && (wild{idx2} != '?')) {
					return false;
				}
				idx2++;
				idx++;
			}
			while(string[idx]) {
				if(wild{idx2} == '*') {
					if(!wild{++idx2}) {
						return true;
					}
					mp = idx2;
					cp = idx+1;
				}
				else if((wild{idx2} == string[idx] || (ignorecase && (toupper(wild{idx2}) == toupper(string[idx])))) || wild{idx2} == '?') {
					idx2++;
					idx++;
				}
				else {
					idx2 = mp;
					idx = cp++;
				}
			}
			while(wild{idx2} == '*') {
				idx2++;
			}
			return !wild{idx2};
		}
	}
	else {
		if(ispacked(string)) {
			while((string{idx}) && (wild[idx2] != '*')) {
				if(wild[idx2] != string{idx} && (!ignorecase || (toupper(wild[idx2]) != toupper(string{idx}))) && (wild[idx2] != '?')) {
					return false;
				}
				idx2++;
				idx++;
			}
			while(string{idx}) {
				if(wild[idx2] == '*') {
					if(!wild[++idx2]) {
						return true;
					}
					mp = idx2;
					cp = idx+1;
				}
				else if((wild[idx2] == string{idx} || (ignorecase && (toupper(wild[idx2]) == toupper(string{idx})))) || wild[idx2] == '?') {
					idx2++;
					idx++;
				}
				else {
					idx2 = mp;
					idx = cp++;
				}
			}
			while(wild[idx2] == '*') {
				idx2++;
			}
			return !wild[idx2];
		}
		else {
			while((string[idx]) && (wild[idx2] != '*')) {
				if(wild[idx2] != string[idx] && (!ignorecase || (toupper(wild[idx2]) != toupper(string[idx]))) && (wild[idx2] != '?')) {
					return false;
				}
				idx2++;
				idx++;
			}
			while(string[idx]) {
				if(wild[idx2] == '*') {
					if(!wild[++idx2]) {
						return true;
					}
					mp = idx2;
					cp = idx+1;
				}
				else if((wild[idx2] == string[idx] || (ignorecase && (toupper(wild[idx2]) == toupper(string[idx])))) || wild[idx2] == '?') {
					idx2++;
					idx++;
				}
				else {
					idx2 = mp;
					idx = cp++;
				}
			}
			while(wild[idx2] == '*') {
				idx2++;
			}
			return !wild[idx2];
		}
	}
}

/*
 *  Adds words to a string if they are not already present
 *  @param	dest		The string to add words to
 *  @param	source		The string with space seperated words to add
 *  @param	maxlength	The length of the destination string
 */
stock straddword(dest[], const source[], maxlength = sizeof(dest))
{
	new idx, tmp[MAX_STRING_LENGTH];
	for(tmp = strtok(source, idx); tmp[0] != '\0'; tmp = strtok(source, idx)) {
		if(strfindword(dest, tmp) == -1) {
			strcat(dest, " ", maxlength);
			strcat(dest, tmp, maxlength);
		}
	}
}
