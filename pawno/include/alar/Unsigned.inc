/*
 *	Any Last Administrative Requests - Unsigned.inc
 *		Unsigned integer datatype
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

#if defined _unsigned_included
  #endinput
#endif

#define _unsigned_included


stock Unsigned:operator=(oper)
	return Unsigned:oper;


stock bool:operator>(Unsigned:oper1, Unsigned:oper2)
{
	if(_:oper1 < 0) {
		if(_:oper2 < 0) return _:oper1 & cellmax > _:oper2 & cellmax;
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
		if(_:oper1 < 0) return _:oper1 & cellmax < _:oper2 & cellmax;
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
		if(_:oper2 < 0) return _:oper1 & cellmax >= _:oper2 & cellmax;
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
		if(_:oper1 < 0) return _:oper1 & cellmax <= _:oper2 & cellmax;
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

// A negative unsigned value? naughty naughty
forward operator-(Unsigned:oper);


// I only need the comparison operators for alar, if anyone wants to complete the type however, feel free :)
forward operator+(Unsigned:oper1, Unsigned:oper2);
forward operator+(Unsigned:oper1, oper2);
forward operator+(oper1, Unsigned:oper2);

forward operator-(Unsigned:oper1, Unsigned:oper2);
forward operator-(Unsigned:oper1, oper2);
forward operator-(oper1, Unsigned:oper2);

forward operator*(Unsigned:oper1, Unsigned:oper2);
forward operator*(Unsigned:oper1, oper2);
forward operator*(oper1, Unsigned:oper2);

forward operator/(Unsigned:oper1, Unsigned:oper2);
forward operator/(Unsigned:oper1, oper2);
forward operator/(oper1, Unsigned:oper2);

forward operator%(Unsigned:oper1, Unsigned:oper2);
forward operator%(Unsigned:oper1, oper2);
forward operator%(oper1, Unsigned:oper2);

forward operator++(Unsigned:oper);
forward operator--(Unsigned:oper);
