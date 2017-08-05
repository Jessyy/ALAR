/*
					===========================
					Y Sever Includes - Bit Core
					===========================
Description:
	Provides functions for bit manipulation and bit arrays greater than 32bits.
	The arrays are usually bigger than required due to cell boundaries but this
	shouldn't cause a major problem (bit tests on the 101st bit of a 100 bit
	array won't return 0 for out of bounds, but the 129th will).
Legal:
	Copyright (C) 2007 Alex "Y_Less" Cole

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
	MA 02110-1301, USA.
Version:
	0.1
Changelog:
	24/06/07:
		Added Bit_GetBit
	18/06/07:
		Added Bit_GetCount
	30/04/07:
		Added Bit_SetAll
	15/04/07:
		First version.
Functions:
	Public:
		-
	Core:
		-
	Stock:
		Bit_Set - Sets a slot to the given value.
		Bit_Get - Gets a slot state.
		Bit_SetAll - Sets all the slots in an array to the same thing.
		Bit_GetAll - Gets the number of 1s in a bit array.
	Static:
		-
	Inline:
		ceildiv - Rounded up integer division.
		Bit_Bits - Gets the number of cells required for a bit array.
		Bit_Let - Sets a slot to 1.
		Bit_Vet - Sets a slot to 0.
		Bit_GetBits - Gets the bit at a slot unsafely.
	API:
		-
Callbacks:
	-
Definitions:
	-
Enums:
	-
Macros:
	-
Tags:
	Bit - Bit array type.
Variables:
	Global:
		-
	Static:
		-
Commands:
	-
Compile options:
	-
*/

#if defined _YSI_bit_included
  #endinput
#endif

#define _YSI_bit_included

#include <a_samp>

/*
Function:
	ceildiv
Params:
	num - Numerator.
	div - Denominator.
Return:
	num / div rounded up.
Notes:
	-
*/

#define ceildiv(%1,%2) \
	(((%1) + (%2) - 1) / (%2))

/*
Function:
	Bit_Bits
Params:
	size - Number of bits required.
Return:
	Number of cells required for the bit array.
Notes:
	-
*/

#define Bit_Bits(%1) \
	ceildiv((%1), cellbits)

/*
Function:
	Bit_GetBit
Params:
	Bit:array[] - Array of bits.
	slot - Bit slot.
Return:
	State of the provided slot, 0 on fail.
Notes:
	Unsafe but faster for when you're sure you're within range.
*/

#define Bit_GetBit(%1,%2) \
	((%1[(%2) / cellbits]) & Bit:(1 << ((%2) % cellbits)))

/*
Function:
	Bit_Get
Params:
	Bit:array[] - Array of bits.
	slot - Bit slot.
	size - Size of array.
Return:
	State of the provided slot, 0 on fail.
Notes:
	-
*/

#define Bit_Get(%1,%2) _:Bit_GetBit(Bit:%1, _:%2)
/*stock Bit_Get(Bit:array[], slot, size = sizeof (array))
{
	if (slot / cellbits >= size) return 0;
	return (Bit_GetBit(array, slot) ? (1) : (0));
}*/

/*
Function:
	Bit_Let
Params:
	Bit:array[] - Array of bits.
	slot - Bit slot.
Return:
	-
Notes:
	Sets the slot to 1.
*/

#define Bit_Let(%1,%2) \
	%1[(%2) / cellbits] |= Bit:(1 << ((%2) % cellbits))

/*
Function:
	Bit_Vet
Params:
	Bit:array[] - Array of bits.
	slot - Bit slot.
Return:
	-
Notes:
	Sets the slot to 0.
*/

#define Bit_Vet(%1,%2) \
	%1[(%2) / cellbits] &= Bit:~(1 << ((%2) % cellbits))

/*
Function:
	Bit_Loop
Params:
	Bit:array[] - Array of bits.
	as - Variable to set value to.
Return:
	-
Notes:
	Loops through the positive values of an array of bits.
*/

#define Bit_Loop(%1,%2) \
	for(new %2, %1i; %1i < sizeof(%1); %1i++) for(new %1j = 1; %1j; %1j <<= 1, (%2)++) if(%1[%1i] & Bit:%1j)

/*
Function:
	Bit_Set
Params:
	Bit:array[] - Array of bits.
	slot - Bit slot.
	set - State to set the slot to.
	size - Size of array.
Return:
	-
Notes:
	-
*/

stock Bit_Set(Bit:array[], slot, set, size = sizeof (array))
{
	if (slot / cellbits >= size) return;
	if (set) Bit_Let(array, slot);
	else Bit_Vet(array, slot);
}

/*
Function:
	Bit_SetAll
Params:
	Bit:array[] - Array to set all values of.
	set - Wether to set them all 0 or 1.
	size - Size of array.
Return:
	-
Notes:
	-
*/

stock Bit_SetAll(Bit:array[], set, size)
{
	new
		Bit:val = (set) ? (Bit:0xFFFFFFFF) : (Bit:0);
	for (new i = 0; i < size; i++) array[i] = val;
}

/*
Function:
	Bit_GetCount
Params:
	Bit:array[] - Array to count.
	size - Size of array.
Return:
	Number of 1s in the array.
Notes:
	-
*/

stock Bit_GetCount(const Bit:array[], size = sizeof (array))
{
	new
		count;
	for (new i = 0; i < size; i++) for (new j = 1; j; j <<= 1) if (array[i] & Bit:j) count++;
	return count;
}

/*
Function:
	Bit_GetStringFromArray
Params:
	Bit:array[] - Array to get a string of set bits.
	string - The string to store the set bits in.
	seperator - The string to place between numbers.
	range - The string to place between ranges.
	size - Size of array.
	maxlength - Size of string.
Return:
	If the array had bits set.
Notes:
	-
*/

stock Bit_GetStringFromArray(const Bit:array[], string[], const seperator[]=",", const range[]="-", size=sizeof(array), maxlength=sizeof(string))
{
	new start = cellmin,
		lastid = cellmin,
		empty = true;
	for(new i, arrayi; arrayi < size; arrayi++) {
		for(new arrayj = 1; arrayj; arrayj <<= 1, i++) {
			if(array[arrayi] & Bit:arrayj) {
				if(start == cellmin) {
					start = i;
				} else if(lastid != i - 1) {
					if(start == lastid) {
						if(empty) {
							format(string, maxlength, "%i", start);
						} else {
							format(string, maxlength, "%s%s%i", string, seperator, start);
						}
						empty = false;
					} else if(start == lastid - 1) {
						if(empty) {
							format(string, maxlength, "%i%s%i", start, seperator, lastid);
						} else {
							format(string, maxlength, "%s%s%i%s%i", string, seperator, start, seperator, lastid);
						}
						empty = false;
					} else {
						if(empty) {
							format(string, maxlength, "%i%s%i", start, range, lastid);
						} else {
							format(string, maxlength, "%s%s%i%s%i", string, seperator, start, range, lastid);
						}
						empty = false;
					}
					start = i;
				}
				lastid = i;
			}
		}
	}
	if(lastid != cellmin) {
		if(start != cellmin) {
			if(start == lastid) {
				if(empty) {
					format(string, maxlength, "%i", lastid);
				} else {
					format(string, maxlength, "%s%s%i", string, seperator, lastid);
				}
				empty = false;
			} else if(start == lastid - 1) {
				if(empty) {
					format(string, maxlength, "%i%s%i", start, seperator, lastid);
				} else {
					format(string, maxlength, "%s%s%i%s%i", string, seperator, start, seperator, lastid);
				}
				empty = false;
			} else {
				if(empty) {
					format(string, maxlength, "%i%s%i", start, range, lastid);
				} else {
					format(string, maxlength, "%s%s%i%s%i", string, seperator, start, range, lastid);
				}
				empty = false;
			}
		}
	}
	return !empty;
}

/*
Function:
	Bit_GetArrayFromString
Params:
	Bit:array[] - Array to set.
	string - The string to get bits from.
	seperator - The string to placed between numbers.
	range - The string to placed between ranges.
	size - Size of array.
Return:
	If the string was a valid list.
Notes:
	-
*/

stock Bit_GetArrayFromString(Bit:array[], const string[], const seperator[]=",", const range[]="-", size=sizeof(array))
{
	if(!('0' <= string[0] <= '9')) return false;
	size *= cellbits;
	new start = -1, end = 0x80000000;
	for(new pos, slen = strlen(seperator), rlen=strlen(range); string[pos] != '\0';) {
		if('\0' < string[pos] <= ' ') {
			pos++;
		} else if('0' <= string[pos] <= '9') {
			end = (end * 10) + (string[pos] - '0');
			pos++;
		} else if(strcmp(string[pos], seperator, true, slen) == 0) {
			pos += slen;
			while('\0' < string[pos] <= ' ') pos++;
			if(!('0' <= string[pos] <= '9') || !(0 <= end < size)) return false;
			if(start == -1) {
				Bit_Let(array, end);
				end = 0x80000000;
			} else {
				if(end == start) return false;
				if(end > start) {
					for(new i = start; i <= end; i++) {
						Bit_Let(array, i);
					}
				} else {
					for(new i = start; i >= end; i--) {
						Bit_Let(array, i);
					}
				}
				start = -1;
				end = 0x80000000;
			}
		} else if(strcmp(string[pos], range, true, rlen) == 0) {
			pos += rlen;
			while('\0' < string[pos] <= ' ') pos++;
			if( !('0' <= string[pos] <= '9') || start != -1 || !(0 <= end < size)) return false;
			start = end;
			end = 0x80000000;
		} else {
			return false;
		}
	}
	if(end == 0x80000000 || !(0 <= end < size)) return false;
	if(start == -1) {
		Bit_Let(array, end);
	} else {
		if(end == start) return false;
		if(end > start) {
			for(new i = start; i <= end; i++) {
				Bit_Let(array, i);
			}
		} else {
			for(new i = start; i >= end; i--) {
				Bit_Let(array, i);
			}
		}
	}
	return true;
}
