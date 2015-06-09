/*
 *	Any Last Administrative Requests - Dini.inc
 *		INI functions
 *
 *	Based on Dini 1.5.1 & DUtils functions 1.9 by DracoBlue
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


#if defined _alar_dini_included
  #endinput
#endif

#define _alar_dini_included

/*
	native bool:dini_Exists(const filename[]);
	native bool:dini_Remove(const filename[]);
	native bool:dini_Create(const filename[]);
	native dini_ExtractKey(const line[]);
	native dini_ExtractValue(const line[]);
	native bool:dini_Set(const filename[], const key[], value[]);
	native bool:dini_IntSet(const filename[], const key[], value);
	native dini_Int(const filename[], const key[]);
	native bool:dini_FloatSet(const filename[], const key[], Float:value);
	native Float:dini_Float(const filename[], const key[]);
	native bool:dini_BoolSet(const filename[], const key[], bool:value);
	native bool:dini_Bool(const filename[], const key[]);
	native bool:dini_Unset(const filename[], const key[]);
	native dini_Return(const filename[], const key[]);
	native bool:dini_Get(const filename[], const key[], dest[], maxlength=sizeof(dest));
	native bool:dini_Isset(const filename[], const key[]);
	native bool:fcopytextfile(const oldname[], const newname[]);
	native bool:fcopy(const oldname[], const newname[]);
*/

#include <alar/Functions>

// avoid forced reparse
forward bool:dini_Get(const filename[], const key[], dest[], maxlength=sizeof(dest));
forward bool:fcopytextfile(const oldname[], const newname[]);

/**
 *	Checks if a file exists
 *	@param	filename	The path and name of the file to check
 *	@return true if the file exists, false otherwise
 */
stock bool:dini_Exists(const filename[])
{
	if(fexist(filename)) return true;
	return false;
}

/**
 *	Deletes a file
 *	@param	filename	The path and name of the file to delete
 *	@return true if the file was deleted, false if it did not exist or couldn't be deleted
 */
stock bool:dini_Remove(const filename[])
{
	if(!fexist(filename)) return false;
	return fremove(filename);
}

/**
 *	Creates a file
 *	@param	filename	The path and name of the file to create
 *	@return true if the file was created, false if it already existed or couldn't be created
 */
stock bool:dini_Create(const filename[])
{
	if(fexist(filename)) return false;
	new File:fhnd = fopen(filename, io_write);
	if(fhnd) {
		fclose(fhnd);
		return true;
	}
	return false;
}

/**
 *	Returns the key of a string in the form "key=value"
 *	@param	line	The string to get the key from
 *	@return A string containing the key
 */
stock dini_ExtractKey(const line[])
{
	new tmp[MAX_STRING], pos = strfind(line, "=", true);
	if (pos == -1) return tmp;
	strcpy(tmp, line, sizeof(tmp), pos);
	return tmp;
}

/**
 *	Returns the value of a string in the form "key=value"
 *	@param	line	The string to get the value from
 *	@return A string containing the value
 */
stock dini_ExtractValue(const line[])
{
    new tmp[MAX_STRING], pos = strfind(line, "=", true);
    if (pos == -1) return tmp;
	strcpy(tmp, line[pos + 1]);
    return tmp;
}

/**
 *	Sets the value of a key
 *	@param	filename	The ini file
 *	@param	key			The key to set the value of
 *	@param	value		The value to set
 *	@return true if the key was set, false otherwise
 */
stock bool:dini_Set(const filename[], const key[], value[])
{
	if (key[0] == '\0') return false; /* If we have no sign in key, it can't be set*/
	new File:fohnd = fopen(filename, io_read);
	if (!fohnd) return false;

	new tmpres[MAX_STRING];
	format(tmpres, sizeof(tmpres), "%s.part", filename);
	fremove(tmpres);
	new File:fwhnd = fopen(tmpres, io_write);
	if(!fwhnd) return false;

	new bool:wasset = false;
	while (fread(fohnd, tmpres)) {
		new pos = strfind(tmpres, "=", false);
		if ((pos != -1) && (tmpres[0] != '#') && (!wasset) && (strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0')) {
			/* We've got what needs to be replaced! */
			format(tmpres, sizeof(tmpres), "%s=%s", key, value);
			wasset = true;
		}
		else {
			strstripnewline(tmpres);
		}
		if(tmpres[0] != '\0') {
			// ignore blank lines
			fwrite(fwhnd, tmpres);
			fwrite(fwhnd, "\r\n");
		}
	}

	if (!wasset) {
		format(tmpres, sizeof(tmpres), "%s=%s\r\n", key, value);
		fwrite(fwhnd, tmpres);
	}

	fclose(fohnd);
	fclose(fwhnd);

	format(tmpres, sizeof(tmpres), "%s.part", filename);
	if (fcopytextfile(tmpres, filename)) {
		return fremove(tmpres);
	}
	return false;
}

/**
 *	Sets the value of a key to an integer
 *	@param	filename	The ini file
 *	@param	key			The key to set the value of
 *	@param	value		The value to set
 *	@return true if the key was set, false otherwise
 */
stock bool:dini_IntSet(const filename[], const key[], value)
{
	new valuestring[50];
	format(valuestring, sizeof(valuestring), "%i", value);
	return dini_Set(filename, key, valuestring);
}

/**
 *	Gets the value of a key as an integer
 *	@param	filename	The ini file
 *	@param	key			The key to get the value of
 *	@return true value was an integer, 0 otherwise
 */
stock dini_Int(const filename[], const key[])
{
	return strval(dini_Return(filename, key));
}

/**
 *	Sets the value of a key to a float
 *	@param	filename	The ini file
 *	@param	key			The key to set the value of
 *	@param	value		The value to set
 *	@return true if the key was set, false otherwise
 */
stock bool:dini_FloatSet(const filename[], const key[], Float:value)
{
	new valuestring[50];
	format(valuestring, sizeof(valuestring), "%f", value);
	return dini_Set(filename, key, valuestring);
}

/**
 *	Gets the value of a key as a floating point number
 *	@param	filename	The ini file
 *	@param	key			The key to get the value of
 *	@return true value was a floating point number, 0.0 otherwise
 */
stock Float:dini_Float(const filename[], const key[])
{
	return floatstr(dini_Return(filename, key));
}

/**
 *	Sets the value of a key to a boolean
 *	@param	filename	The ini file
 *	@param	key			The key to set the value of
 *	@param	value		The value to set
 *	@return true if the key was set, false otherwise
 */
stock bool:dini_BoolSet(const filename[], const key[], bool:value)
{
	return dini_Set(filename, key, value ? ("true") : ("false"));
}

/**
 *	Gets the value of a key as a boolean
 *	@param	filename	The ini file
 *	@param	key			The key to get the value of
 *	@return true value was "true", "t", or non-zero, false otherwise
 */
stock bool:dini_Bool(const filename[], const key[])
{
	new tmpres[6];
	if(!dini_Get(filename, key, tmpres)) return false;
	if(strcmp(tmpres, "true", true) == 0 || strcmp(tmpres, "t", true) == 0) return true;
	if(strcmp(tmpres, "false", true) == 0 || strcmp(tmpres, "f", true) == 0) return false;
	return strval(tmpres) ? true : false;
}

/**
 *	Removes an ini key
 *	@param	filename	The ini file
 *	@param	key			The key to remove
 *	@return true if the key was removed, false otherwise
 */
stock bool:dini_Unset(const filename[], const key[])
{
	new File:fohnd = fopen(filename, io_read);
	if (!fohnd) return false;

	new tmpres[MAX_STRING];
	format(tmpres, sizeof(tmpres), "%s.part", filename);
	fremove(tmpres);
	new File:fwhnd = fopen(tmpres, io_write);
	if(!fwhnd) return false;

	while (fread(fohnd, tmpres)) {
		new pos = strfind(tmpres, "=", false);
		if (pos != -1 && tmpres[0] != '#' && strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0') {
			/* We've got what needs to be removed! */
		} else {
			strstripnewline(tmpres);
			if(tmpres[0] != '\0') {
				// ignore blank lines
				fwrite(fwhnd, tmpres);
				fwrite(fwhnd, "\r\n");
			}
		}
	}

	fclose(fohnd);
	fclose(fwhnd);

	format(tmpres, sizeof(tmpres), "%s.part", filename);
	if (fcopytextfile(tmpres, filename)) {
		return fremove(tmpres);
	}
	return false;
}

/**
 *	Returns the value of an ini setting
 *	@param	filename	The ini file
 *	@param	key			The key to get the value of
 *	@return The value of the ini setting
 */
stock dini_Return(const filename[], const key[])
{
	new File:fohnd = fopen(filename, io_read), tmpres[MAX_STRING];
	if (!fohnd) return tmpres;

	new tmpres2[MAX_STRING];
	while (fread(fohnd, tmpres)) {
		if(tmpres[0] == '#') continue;
		new pos = strfind(tmpres, "=", false);
		if (pos != -1 && strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0') {
			/* We've got what we need */
			strstripnewline(tmpres);
			strcpy(tmpres2, tmpres[pos + 1]);
			fclose(fohnd);
			return tmpres2;
		}
	}
	fclose(fohnd);
	return tmpres2;
}

/**
 *	Gets the value of an ini setting
 *	@param	filename	The ini file
 *	@param	key			The key to get the value of
 *	@param	dest		The string to store the value in
 *	@param	maxlength	The length of the destination string
 *	@return true if the key is set, false otherwise
 */
stock bool:dini_Get(const filename[], const key[], dest[], maxlength=sizeof(dest))
{
	new File:fohnd = fopen(filename, io_read);
	if (!fohnd) return false;

	new tmpres[MAX_STRING];
	while (fread(fohnd, tmpres)) {
		if(tmpres[0] == '#') continue;
		new pos = strfind(tmpres, "=", false);
		if (pos != -1 && strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0') {
			/* We've got what we need */
			strstripnewline(tmpres);
			strcpy(dest, tmpres[pos + 1], maxlength);
			fclose(fohnd);
			return true;
		}
	}
	fclose(fohnd);
	return false;
}

/**
 *	Checks if a key is set
 *	@param	filename	The ini file
 *	@param	key			The key to check
 *	@return true if the key is set, false otherwise
 */
stock bool:dini_Isset(const filename[], const key[])
{
	new File:fohnd = fopen(filename, io_read);
	if (!fohnd) return false;

	new tmpres[MAX_STRING];
	while (fread(fohnd, tmpres)) {
		if(tmpres[0] == '#') continue;
		new pos = strfind(tmpres, "=", false);
		if (pos != -1 && strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0') {
			fclose(fohnd);
			return true;
		}
	}
	fclose(fohnd);
	return false;
}

/**
 *	Copies a textfile
 *	@param	oldname		The path and name of the file to be copied
 *	@param	newname		The path and name of the file to created
 *	@return true if the file was copied successfully
 */
stock bool:fcopytextfile(const oldname[], const newname[])
{
	if (!fexist(oldname)) return false;
	new File:ohnd = fopen(oldname, io_read);
	if(!ohnd) return false;
	new File:nhnd = fopen(newname, io_write);
	if(!ohnd) return false;

	new tmpres[MAX_STRING];
	while (fread(ohnd, tmpres)) {
		strstripnewline(tmpres);
		fwrite(nhnd, tmpres);
		fwrite(nhnd, "\r\n");
	}
	fclose(ohnd);
	fclose(nhnd);
	return true;
}

/**
 *	Copies a file
 *	@param	oldname		The path and name of the file to be copied
 *	@param	newname		The path and name of the file to created
 *	@return true if the file was copied successfully
 */
stock bool:fcopy(const oldname[], const newname[])
{
	if (!fexist(oldname)) return false;
	new File:ohnd = fopen(oldname, io_read);
	if(!ohnd) return false;
	new File:nhnd = fopen(newname, io_write);
	if(!nhnd) {
		fclose(ohnd);
		return false;
	}

	for (new value, i = flength(ohnd); i > 0; i--) {
		fputchar(nhnd, fgetchar(ohnd, value, false), false);
	}
	fclose(ohnd);
	fclose(nhnd);
	return true;
}