/*
 *	Any Last Administrative Requests - Hash.inc
 *		Password hashing
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


#if defined _alar_hash_included
	#endinput
#endif
#define _alar_hash_included

native WP_Hash(buffer[], len, const str[]);

/*
	native Hash_String(const string[]);
	native Hash_Compare(const string[], const hash[]);
*/

#include <a_samp>


#define MAX_HASH 145

/**
 *  Hash a string
 *  @param	string	The string to hash
 *  @return The hash of the string
 */
stock Hash_String(const string[])
{
	new hash[MAX_HASH];
	WP_Hash(hash, sizeof(hash), string);
	return hash;
}

/**
 *  Check if a string has a specified hash
 *  @param	string	The string
 *  @param	hash	The hash
 *  @return true if the hash is that of the string
 */
stock Hash_Compare(const string[], const hash[])
{
	if(string[0] == '\0' || hash[0] == '\0') return false;
	new strhash[MAX_HASH];
	WP_Hash(strhash, sizeof(strhash), string);
	return strcmp(strhash, hash, true) == 0;
}
