/*
 *	Any Last Administrative Requests - i_hash.inc
 *		Password hashing
 *	
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_hash_included
	#endinput
#endif
#define _inc_hash_included

#include <a_samp>

/*
	native ReturnHashString(const string[]);
	native Hash_Compare(const string[], const hash[]);
*/

/*
 *
 */
#define MAX_HASH_LENGTH		(145)

native WP_Hash(buffer[], len, const str[]);

/*
 *  Hash a string
 *  @param	string	The string to hash
 *  @return	The hash of the string
 */
stock ReturnHashString(const string[])
{
	new hash[MAX_HASH_LENGTH];
	WP_Hash(hash, sizeof(hash), string);
	return hash;
}

/*
 *  Check if a string has a specified hash
 *  @param	string	The string
 *  @param	hash	The hash
 *  @return	true if the hash is that of the string
 */
stock Hash_Compare(const string[], const hash[])
{
	if(string[0] == '\0' || hash[0] == '\0') {
		return false;
	}
	
	new strhash[MAX_HASH_LENGTH];
	WP_Hash(strhash, sizeof(strhash), string);
	
	return (strcmp(strhash, hash, true) == 0);
}
