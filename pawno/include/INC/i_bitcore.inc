/*
					===========================
					Y Sever Includes - Bit Core
					===========================
Description:
	Provides functions for bit manipulation and bit arrays greater than 32bits.
	The arrays are usually bigger than required due to cell boundaries but this
	shouldn't cause a major problem (bit tests on the 101st bit of a 100 bit
	array won't return 0 for out of bounds, but the 129th will).

	Note that y_commands has a few optimisations which bypass the code in here
	so any modifications to bit array layouts will need to be reflected there.
Legal:
	Version: MPL 1.1

	The contents of this file are subject to the Mozilla Public License Version
	1.1 (the "License"); you may not use this file except in compliance with
	the License. You may obtain a copy of the License at
	http://www.mozilla.org/MPL/

	Software distributed under the License is distributed on an "AS IS" basis,
	WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
	for the specific language governing rights and limitations under the
	License.

	The Original Code is the YSI bit include.

	The Initial Developer of the Original Code is Alex "Y_Less" Cole.
	Portions created by the Initial Developer are Copyright (C) 2011
	the Initial Developer. All Rights Reserved.

Version:
	0.2
Changelog: @released: 02/03/2013
	21/10/12:
		Changed "Bit_Display" to print in the correct order.
	22/02/12:
		Added the "BITS" iterator.
	01/12/08:
		Rewrote most of the code to use shifts and ands not divs and mods.
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
		Bit_Bits - Gets the number of cells required for a bit array.
		Bit_Let - Sets a slot to 1.
		Bit_Vet - Sets a slot to 0.
		Bit_GetBits - Gets the bit at a slot unsafely.
	API:
		-
Callbacks:
	-
Definitions:
	CELLSHIFT - Number of bits that can hold "cellbits"
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
</remarks>
*/

#if defined _inc_bitcore_included || defined _inc_y_bit
	#endinput
#endif
#define _inc_bitcore_included

#include "i_debug"

#if !defined YSI_MAX_STRING_LENGTH
	#define YSI_MAX_STRING_LENGTH		(130)
#endif

#if !defined GLOBAL_TAG_TYPES
	#define GLOBAL_TAG_TYPES	{_,Bit,File,Float,Menu,PlayerText,Text,Text3D}
#endif

stock Cell_ReverseBits(GLOBAL_TAG_TYPES:data)
{
	// Swap adjacent bits.
	data = ((data & 0b10101010101010101010101010101010) >>> 1) | ((data & 0b01010101010101010101010101010101) << 1);
	// Swap adjacent pairs.
	data = ((data & 0b11001100110011001100110011001100) >>> 2) | ((data & 0b00110011001100110011001100110011) << 2);
	// Swap adjacent nibbles.
	data = ((data & 0b11110000111100001111000011110000) >>> 4) | ((data & 0b00001111000011110000111100001111) << 4);
	// Swap all bytes.
	return (data >>> 24) | ((data & 0x00FF0000) >> 8) | ((data & 0x0000FF00) << 8) | (data << 24);
}

// This is redefined below, don't worry.  It's like this so the function
// prototypes can use a familiar syntax.
#define BitArray:%1<%2> Bit:%1[%2]

#if cellbits == 32
	#define CELLSHIFT (5)
#else
	#if cellbits == 64
		#define CELLSHIFT (6)
	#else
		#if cellbits == 16
			#define CELLSHIFT (4)
		#else
			#error Unkown cell size
		#endif
	#endif
#endif

/*
<summary>Bit_Bits</summary>
<param name="size">Number of bits required.</param>
<returns>
	Number of cells required for the bit array.
</returns>
<remarks>
	-
</remarks>
*/

// If this ever changes, update the size reference in y_users.
#define Bit_Bits(%1) (((%1)+cellbits-1)/cellbits)

/*
<summary>Bit_Slot</summary>
<param name="value">Value to get the slot for.</param>
<returns>
	The true array slot for this value.
</returns>
<remarks>
	-
</remarks>
*/

#define Bit_Slot(%1) ((_:%1)>>>CELLSHIFT)

/*
<summary>Bit_Mask</summary>
<param name="value">Value to get the mask for</param>
<returns>
	The bit in the array slot to use.
</returns>
<remarks>
	-
</remarks>
*/

#define Bit_Mask(%1) (Bit:(1<<((_:%1)&cellbits-1)))

/*
<summary>Bit_GetBit</summary>
<param name="Bit:array[]">Array of bits.</param>
<param name="slot">Bit slot.</param>
<returns>
	State of the provided slot, 0 on fail.
</returns>
<remarks>
	Unsafe but faster for when you're sure you're within range.
</remarks>
*/

#define Bit_GetBit(%1,%2) (%1[(%2)>>>CELLSHIFT]&Bit:(1<<((%2)&cellbits-1)))

/*
<summary>Bit_Get</summary>
<param name="Bit:array[]">Array of bits.</param>
<param name="slot">Bit slot.</param>
<param name="size">Size of array.</param>
<returns>
	State of the provided slot, 0 on fail.
</returns>
<remarks>
	-

native Bit_Get(BitArray:array<>, slot);

</remarks>
*/

#define Bit_Get(%1,%2) bool:Bit_GetBit(Bit:%1,_:%2)

/*
<summary>Bit_Let</summary>
<param name="Bit:array[]">Array of bits.</param>
<param name="slot">Bit slot.</param>
<returns>
	-
</returns>
<remarks>
	Sets the slot to 1.
</remarks>
*/

#define Bit_Let(%1,%2) %1[(%2)>>>CELLSHIFT]|=Bit:(1<<((%2)&cellbits-1))

/*
<summary>Bit_Vet</summary>
<param name="Bit:array[]">Array of bits.</param>
<param name="slot">Bit slot.</param>
<returns>
	-
</returns>
<remarks>
	Sets the slot to 0.
</remarks>
*/

#define Bit_Vet(%1,%2) %1[(%2)>>>CELLSHIFT]&=Bit:~(1<<((%2)&cellbits-1))

/*
<summary>Bit_Set</summary>
<param name="Bit:array[]">Array of bits.</param>
<param name="slot">Bit slot.</param>
<param name="bool:set">State to set the slot to.</param>
<param name="size">Size of array.</param>
<returns>
	-
</returns>
<remarks>
	-

native Bit_Set(BitArray:array<>, slot, bool:set, size = sizeof (array));

</remarks>
*/

stock Bit_Set(BitArray:array<>, slot, bool:set)//, size = sizeof (array))
{
	//if (slot >>> CELLSHIFT >= size) return;
	if (set) Bit_Let(array, slot);
	else Bit_Vet(array, slot);
}

//#define Bit_Set(%0,%1,%2) ((%2)?Bit_Let(%0,(%1)):Bit_Vet(%0,(%1)))

/*
<summary>Bit_SetAll</summary>
<param name="Bit:array[]">Array to set all values of.</param>
<param name="bool:set">Wether to set them all 0 or 1.</param>
<param name="size">Size of array.</param>
<returns>
	-
</returns>
<remarks>
	-

native Bit_SetAll(BitArray:array<>, bool:set, size = sizeof (array));

</remarks>
*/

stock Bit_SetAll(BitArray:array<>, bool:set, size = sizeof (array))
{
	new
		Bit:val = (set) ? (Bit:0xFFFFFFFF) : (Bit:0);
	for (new i = 0; i != size; ++i) array[i] = val;
}

/*
<summary>Bit_GetCount</summary>
<param name="Bit:array[]">Array to count.</param>
<param name="size">Size of array.</param>
<returns>
	Number of 1s in the array.
</returns>
<remarks>
	Code from:
	http://graphics.stanford.edu/~seander/bithacks.html#CountBitsSetParallel

native Bit_Count(BitArray:array<>, size = sizeof (array));

</remarks>
*/

#define Bit_Count Bit_GetCount
stock Bit_GetCount(BitArray:array<>, size = sizeof (array))
{
	new
		count,
		v;
	for (new i = 0; i != size; ++i)
	{
		v = _:array[i];
		v = v - ((v >>> 1) & 0x55555555);
		v = (v & 0x33333333) + ((v >>> 2) & 0x33333333);
		count += ((v + (v >>> 4) & 0xF0F0F0F) * 0x1010101) >>> 24;
	}
	return count;
}

stock Bit_Display(BitArray:array<>, size = sizeof (array))
{
	new
		ret[YSI_MAX_STRING_LENGTH],
		val;
	while (size--)
	{
		val = Cell_ReverseBits(array[size]);
		format(ret, sizeof (ret), "%016b%016b%s", val >>> 16, val & 0xFFFF, ret);
	}
	//P:Y("Bit_Display called: %s, %i", ret, size);
	return ret;
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

#define bitsof(%0) (sizeof(%0)*cellbits)

stock Bits@YSII_Ag(BitArray:data<>, start, size = sizeof (data))
{
	P:Y("YSI_gABITSFunc called: %s, %i", Bit_Display(data, size), start);
	static const
		scDeBruijn[] =
			{
				0,  1,  28, 2,  29, 14, 24, 3,  30, 22, 20, 15, 25, 17, 4,  8,
				31, 27, 13, 23, 21, 19, 16, 7,  26, 12, 18, 6,  11, 5,  10, 9
			};
	++start;
	new
		cur,
		i = Bit_Slot(start);
	if (i == size)
	{
		return -1;
	}
	// Blank out the lowest bits to get the lowest bit not yet used.
	if ((cur = (_:data[i] & ~((1 << (start & (cellbits - 1))) - 1))))
	{
		//printf("%d %d %d %d", cur, data[i], start, ~((1 << (start & (cellbits - 1))) - 1));
		// Bits left in the current cell.
		return (i * cellbits) + scDeBruijn[((cur & -cur) * 0x077CB531) >>> 27];
	}
	++i;
	while (i != size)
	{
		if ((cur = _:data[i]))
		{
			return (i * cellbits) + scDeBruijn[((cur & -cur) * 0x077CB531) >>> 27];
		}
		++i;
	}
	return -1;
}

stock Blanks@YSII_Ag(BitArray:data<>, start, size = sizeof (data))
{
	P:Y("YSI_gABlanksFunc called: %s, %i", Bit_Display(data), start);
	static const
		scDeBruijn[] =
			{
				0,  1,  28, 2,  29, 14, 24, 3,  30, 22, 20, 15, 25, 17, 4,  8,
				31, 27, 13, 23, 21, 19, 16, 7,  26, 12, 18, 6,  11, 5,  10, 9
			};
	//++start;
	new
		cur,
		i = Bit_Slot(start);
	if (i == size)
	{
		return -1;
	}
	if ((cur = ~(_:(data[i] & ~((1 << (start & (cellbits - 1))) - 1)))))
	{
		// Bits left in the current cell.
		return (i * cellbits) + scDeBruijn[((cur & -cur) * 0x077CB531) >>> 27];
	}
	++i;
	while (i != size)
	{
		if ((cur = ~_:data[i]))
		{
			return (i * cellbits) + scDeBruijn[((cur & -cur) * 0x077CB531) >>> 27];
		}
		++i;
	}
	return -1;
}

#define bits<%1> Bit_Bits(%1)

#undef BitArray
#define BitArray:%1<%2> Bit:%1[bits<%2>]
