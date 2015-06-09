/*
 *	Any Last Administrative Requests - Unsigned.inc
 *		Unsigned integer datatype
 *
 *	Divide/Modulus algorithm from http://www.bearcave.com/software/divide.htm
 *		"Use of this program, for any purpose, is granted the author,
 *		Ian Kaplan, as long as this copyright notice is included in
 *		the source code or any source code derived from this program.
 *		The user assumes all responsibility for using this code.
 *		Ian Kaplan, October 1996"
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

#if defined _alar_unsigned_included
  #endinput
#endif

#define _alar_unsigned_included


/*
	native Unsigned:umul(Unsigned:oper1, Unsigned:oper2);
	native Unsigned:udiv(Unsigned:dividend, Unsigned:divisor);
	native Unsigned:umod(Unsigned:oper1, Unsigned:oper2);
	native Unsigned:uadd(Unsigned:oper1, Unsigned:oper2);
	native Unsigned:usub(Unsigned:oper1, Unsigned:oper2);
	native Float:ufloat(Unsigned:number);
	native ustr(Unsigned:number);
	native Unsigned:stru(const string[]);
*/

#include <a_samp>


forward Unsigned:umul(Unsigned:oper1, Unsigned:oper2);
forward Unsigned:udiv(Unsigned:dividend, Unsigned:divisor);
forward Unsigned:umod(Unsigned:oper1, Unsigned:oper2);
forward umoddiv(Unsigned:dividend, Unsigned:divisor, &Unsigned:quotient, &Unsigned:remainder);
forward Unsigned:uadd(Unsigned:oper1, Unsigned:oper2);
forward Unsigned:usub(Unsigned:oper1, Unsigned:oper2);



stock Unsigned:operator=(oper)
	return Unsigned:oper;

stock bool:operator!(Unsigned:oper)
    return _:oper == 0;

stock bool:operator>(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper1 < 0) {
		if(_:oper2 < 0) return (_:oper1 & cellmax) > (_:oper2 & cellmax);
		return true;
	}
	if(_:oper2 < 0) return false;
	return _:oper1 > _:oper2;
}

stock bool:operator>(Unsigned:oper1, oper2)
{
	if(_:oper1 < 0) return true;
	return _:oper1 > oper2;
}

stock bool:operator>(oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) return false;
	return oper1 > _:oper2;
}


stock bool:operator<(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) {
		if(_:oper1 < 0) return (_:oper1 & cellmax) < (_:oper2 & cellmax);
		return true;
	}
	if(_:oper1 < 0) return false;
	return _:oper1 < _:oper2;
}

stock bool:operator<(Unsigned:oper1, oper2)
{
	if(_:oper1 < 0) return false;
	return _:oper1 < oper2;
}

stock bool:operator<(oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) return true;
	return oper1 < _:oper2;
}


stock bool:operator>=(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper1 < 0) {
		if(_:oper2 < 0) return (_:oper1 & cellmax) >= (_:oper2 & cellmax);
		return true;
	}
	if(_:oper2 < 0) return false;
	return _:oper1 >= _:oper2;
}

stock bool:operator>=(Unsigned:oper1, oper2)
{
	if(_:oper1 < 0) return true;
	return _:oper1 >= oper2;
}

stock bool:operator>=(oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) return false;
	return oper1 >= _:oper2;
}


stock bool:operator<=(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) {
		if(_:oper1 < 0) return (_:oper1 & cellmax) <= (_:oper2 & cellmax);
		return true;
	}
	if(_:oper1 < 0) return false;
	return _:oper1 <= _:oper2;
}

stock bool:operator<=(Unsigned:oper1, oper2)
{
	if(_:oper1 < 0) return false;
	return _:oper1 <= oper2;
}

stock bool:operator<=(oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) return true;
	return oper1 <= _:oper2;
}


stock bool:operator==(Unsigned:oper1, oper2)
{
	if(_:oper1 < 0) return false;
	return _:oper1 == oper2;
}

stock bool:operator!=(Unsigned:oper1, oper2)
{
	if(_:oper1 < 0) return true;
	return _:oper1 != oper2;
}

stock Unsigned:operator++(Unsigned:oper)
{
	return uadd(oper, Unsigned:1);
}

stock Unsigned:operator--(Unsigned:oper)
{
	return usub(oper, Unsigned:1);
}

// A negative unsigned value? naughty naughty
forward Unsigned:operator-(Unsigned:oper);

stock Unsigned:operator+(Unsigned:oper1, Unsigned:oper2)
{
	return uadd(oper1, oper2);
}

stock Unsigned:operator+(Unsigned:oper1, oper2)
{
	if(oper2 < 0) return usub(oper1, Unsigned:(-oper2));
	return uadd(oper1, Unsigned:oper2);
}

stock Unsigned:operator-(Unsigned:oper1, Unsigned:oper2)
{
	return usub(oper1, oper2);
}

stock Unsigned:operator-(Unsigned:oper1, oper2)
{
	if(oper2 < 0) return uadd(oper1, Unsigned:(-oper2));
	return usub(oper1, Unsigned:oper2);
}

stock Unsigned:operator*(Unsigned:oper1, Unsigned:oper2)
{
	return umul(oper1, oper2);
}

stock Unsigned:operator*(Unsigned:oper1, oper2)
{
	if(oper2 < 0) return Unsigned:(_:oper1 * oper2);
	return umul(oper1, Unsigned:oper2);
}

stock Unsigned:operator/(Unsigned:oper1, Unsigned:oper2)
{
	return udiv(oper1, oper2);
}

stock Unsigned:operator/(Unsigned:oper1, oper2)
{
	if(oper2 < 0) return Unsigned:(_:oper1 / oper2);
	return udiv(oper1, Unsigned:oper2);
}

stock Unsigned:operator/(oper1, Unsigned:oper2)
{
	if(_:oper2 < 0) return Unsigned:0;
	return Unsigned:(_:oper1 / oper2);
}

// Crashes compiler
forward Unsigned:operator%(Unsigned:oper1, Unsigned:oper2);
forward Unsigned:operator%(Unsigned:oper1, oper2);
forward Unsigned:operator%(oper1, Unsigned:oper2);
/*
stock Unsigned:operator%(Unsigned:oper1, Unsigned:oper2)
{
	return umod(oper1, oper2);
}

stock Unsigned:operator%(Unsigned:oper1, oper2)
{
	if(oper2 < 0) return umod(oper1, Unsigned:(-oper2);
	return umod(oper1, Unsigned:oper2);
}

stock Unsigned:operator%(oper1, Unsigned:oper2)
{
	return umod(Unsigned:(oper1 & cellmax), oper2);
}
*/


/**
 *	Compare two unsigned integers
 *	@param	oper1	The first unsigned integer
 *	@param	oper2	The second unsigned integer
 *	@return -1 - if the first integers is less than the second
 *			 0 - if the two integers are equal
 *			 1 - if the first integer is greater than the second
 */
stock ucmp(Unsigned:oper1, Unsigned:oper2)
{
	if(oper1 == oper2) return 0;
	if(_:oper1 < 0) {
		if(_:oper2 < 0) {
			return (_:oper1 & cellmax) > (_:oper2 & cellmax) ? 1 : -1;
		}
		return 1;
	}
	if(_:oper2 < 0) {
		return -1;
	}
	return _:oper1 > _:oper2 ? 1 : -1;
}

/**
 *	Multiply two unsigned integers
 *	@param	oper1	The first unsigned integer
 *	@param	oper2	The second unsigned integer
 *	@return The result of the multiplication
 */
stock Unsigned:umul(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper1 >= 0 && _:oper2 >= 0) return Unsigned:(_:oper1 * _:oper2);
    new Unsigned:value = 0;
    for (new i = 31; i > 0; i--) {
        if (_:oper1 & (1 << i)) {
           value = _:uadd(value, oper2);
        }
        value = _:value << 1;
    }
	if(_:oper1 & 1) return uadd(value, oper2);
    return value;
}

/**
 *	Divide two unsigned integers
 *	@param	dividend	The unsigned integer to be divided
 *	@param	divisor		The unsigned integer to divide by
 *	@return The result of the division
 */
stock Unsigned:udiv(Unsigned:dividend, Unsigned:divisor)
{
	if(divisor == 0) return Unsigned:0xFFFFFFFF;	// OH SHI-
	if(divisor > dividend) return Unsigned:0;
	if(divisor == dividend) return Unsigned:1;
	if(dividend == 0) return Unsigned:0;
	if(_:dividend >= 0 && _:divisor >= 0) return Unsigned:(_:dividend / _:divisor);

	new num_bits = 32,
		d,
		Unsigned:remainder,
		Unsigned:quotient;

	while(remainder < divisor) {
		remainder = Unsigned:((_:remainder << 1) | ((_:dividend & 0x80000000) >>> 31));
		d = _:dividend;
		dividend = Unsigned:(_:dividend << 1);
		num_bits--;
	}

	dividend = d;
	remainder = Unsigned:(_:remainder >>> 1);
	num_bits++;

	for(new i = 0, q, Unsigned:t; i < num_bits; i++) {
		remainder = Unsigned:((_:remainder << 1) | ((_:dividend & 0x80000000) >>> 31));
		t = usub(remainder, divisor);
		q = !((_:t & 0x80000000) >>> 31);
		dividend = Unsigned:(_:dividend << 1);
		quotient = Unsigned:((_:quotient << 1) | q);
		if(q) {
			remainder = t;
		}
	}
	return quotient;
}

/**
 *	Find the remainder of the division of two unsigned integers
 *	@param	oper1	The unsigned integer to be divided
 *	@param	oper2	The unsigned integer to divide by
 *	@return The remainder of the division
 */
stock Unsigned:umod(Unsigned:oper1, Unsigned:oper2)
{
	if(oper2 == 0) return Unsigned:0;
	if(oper2 > oper1) return oper1;
	if(oper2 == oper1 || oper1 == 0) return Unsigned:0;
	if(_:oper1 >= 0 && _:oper2 >= 0) return Unsigned:(_:oper1 % _:oper2);

	new num_bits = 32,
		d,
		Unsigned:remainder,
		Unsigned:quotient;

	while(remainder < oper2) {
		remainder = Unsigned:((_:remainder << 1) | ((_:oper1 & 0x80000000) >>> 31));
		d = _:oper1;
		oper1 = Unsigned:(_:oper1 << 1);
		num_bits--;
	}

	oper1 = d;
	remainder = Unsigned:(_:remainder >>> 1);
	num_bits++;

	for(new i = 0, q, Unsigned:t; i < num_bits; i++) {
		remainder = Unsigned:((_:remainder << 1) | ((_:oper1 & 0x80000000) >>> 31));
		t = usub(remainder, oper2);
		q = !((_:t & 0x80000000) >>> 31);
		oper1 = Unsigned:(_:oper1 << 1);
		quotient = Unsigned:((_:quotient << 1) | q);
		if(q) {
			remainder = t;
		}
	}

	return remainder;
}

/**
 *	Get the result and remainder of the division of two unsigned integers
 *	@param	dividend	The unsigned integer to be divided
 *	@param	divisor		The unsigned integer to divide by
 *	@param	quotient	The result of the division
 *	@param	remainder	The remainder of the division
 */
stock umoddiv(Unsigned:dividend, Unsigned:divisor, &Unsigned:quotient, &Unsigned:remainder)
{
	if(divisor == 0) {
		quotient = Unsigned:0xFFFFFFFF;
		remainder = Unsigned:0;
		return ;
	}
	if(divisor > dividend) {
		quotient = Unsigned:0;
		remainder = dividend;
		return;
	}
	if(divisor == dividend) {
		quotient = Unsigned:1;
		remainder = Unsigned:0;
		return;
	}
	if(dividend == 0) {
		quotient = Unsigned:0;
		remainder = Unsigned:0;
		return;
	}
	if(_:dividend > 0 && _:divisor > 0) {
		quotient = Unsigned:(_:dividend / _:divisor);
		remainder = Unsigned:(_:dividend % _:divisor);
		return;
	}

	new num_bits = 32,
		d;

	remainder = Unsigned:0;
	quotient = Unsigned:0;

	while(remainder < divisor) {
		remainder = Unsigned:((_:remainder << 1) | ((_:dividend & 0x80000000) >>> 31));
		d = _:dividend;
		dividend = Unsigned:(_:dividend << 1);
		num_bits--;
	}

	dividend = d;
	remainder = Unsigned:(_:remainder >>> 1);
	num_bits++;

	for(new i = 0, q, Unsigned:t; i < num_bits; i++) {
		remainder = Unsigned:((_:remainder << 1) | ((_:dividend & 0x80000000) >>> 31));
		t = usub(remainder, divisor);
		q = !((_:t & 0x80000000) >>> 31);
		dividend = Unsigned:(_:dividend << 1);
		quotient = Unsigned:((_:quotient << 1) | q);
		if(q) {
			remainder = t;
		}
	}
	return;
}

/**
 *	Add two unsigned integers
 *	@param	oper1	The first unsigned integer
 *	@param	oper2	The second unsigned integer
 *	@return The result of the addition
 */
stock Unsigned:uadd(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper1 >= 0 && _:oper2 >= 0) return Unsigned:(_:oper1 + _:oper2);
	new value, carry;
	for(new i; i < 32; i++) {
		value |= (_:oper1 ^ _:oper2 ^ carry) & (1 << i);
		carry = (((_:oper1 & _:oper2) | ((_:oper1 ^ _:oper2) & carry)) & (1 << i)) ? 0xFFFFFFFF : 0x00000000;
	}
	return Unsigned:value;
}

/**
 *	Perform subtraction on an unsigned integer
 *	@param	oper1	The unsigned integer to be subtracted from
 *	@param	oper2	The unsigned integer to subtract by
 *	@return The result of the subtraction
 */
stock Unsigned:usub(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper1 >= 0 && _:oper2 >= 0) return Unsigned:(_:oper1 - _:oper2);
	new value, borrow;
	for(new i; i < 32; i++) {
		value |= (_:oper1 ^ _:oper2 ^ borrow) & (1 << i);
		borrow = ((_:oper2 & ~_:oper1) | (~(_:oper1 ^ _:oper2) & borrow)) & (1 << i) ? 0xFFFFFFFF : 0x00000000;
	}
	return Unsigned:value;
}

/**
 *	Convert an unsigned integer into a floating point value
 *	@param	number	The unsigned integer
 *	@return The integer as a floating point number
 */
stock Float:ufloat(Unsigned:number)
{
	if(_:number < 0) {
		if(_:number & 0x00000001) return float(_:number >>> 1) * 2.0 + 1.0;
		return float(_:number >>> 1) * 2.0;
	}
	return float(_:number);
}

/**
 *	Convert an unsigned integer into a string
 *	@param	number	The unsigned integer
 *	@return The integer as a string
 */
stock ustr(Unsigned:number)
{
	new string[12];
	if(_:number < 0) {
		new values[10], power;
		for(; number != 0; power++) {
			umoddiv(number, 10, number, Unsigned:values[power]);
		}
		if(power) {
			for(new i; i < power; i++) {
				string[i] = values[power - i - 1] + '0';
			}
		} else {
			string[0] = '0';
		}
	} else {
		//valstr(string, _:number);	//buggy
		format(string, sizeof(string), "%i", _:number);
	}
	return string;
}

/**
 *	Convert a string into an unsigned integer
 *	@param	string	The string to get the unsigned integer from
 *	@return The unsigned integer
 */
stock Unsigned:stru(const string[])
{
	if(ispacked(string) ? string{0} == '-' : string[0] == '-') return Unsigned:0;
	return Unsigned:strval(string);
}
