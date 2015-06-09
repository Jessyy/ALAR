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
#pragma library dutils

#include <alar/Functions>

stock dini_Exists(const filename[]) {
	if (fexist(filename)) return true;
	return false;
}

stock dini_Remove(const filename[]) {
	if (!fexist(filename)) return false;
	fremove(filename);
	return true;
}

stock dini_Create(const filename[]) {
	if (fexist(filename)) return false;
	new File:fhnd = fopen(filename, io_write);
	fclose(fhnd);
	return true;
}

stock dini_ExtractKey(const line[]) {
	new tmp[MAX_STRING], pos = strfind(line, "=", true);
	if (pos == -1) return tmp;
	strcpy(tmp, line, sizeof(tmp), pos);
	return tmp;
}

stock dini_ExtractValue(const line[]) {
    new tmp[MAX_STRING], pos = strfind(line, "=", true);
    if (pos == -1) return tmp;
	strcpy(tmp, line[pos + 1]);
    return tmp;
}

stock dini_Set(const filename[], const key[], value[]) {
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
			StripNewLine(tmpres);
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


stock dini_IntSet(const filename[], const key[], value) {
	new valuestring[50];
	format(valuestring, sizeof(valuestring), "%d", value);
	return dini_Set(filename, key, valuestring);
}

stock dini_Int(const filename[], const key[]) {
	return strval(dini_Return(filename, key));
}

stock dini_FloatSet(const filename[], const key[], Float:value) {
	new valuestring[50];
	format(valuestring, sizeof(valuestring), "%f", value);
	return dini_Set(filename, key, valuestring);
}

stock Float:dini_Float(const filename[], const key[]) {
	return floatstr(dini_Return(filename, key));
}

stock bool:dini_Bool(const filename[], const key[]) {
	new tmpres[10];
	if(!dini_Get(filename, key, tmpres)) return false;
	if(strcmp(tmpres, "true", true) == 0 || strcmp(tmpres, "t", true) == 0) return true;
	if(strcmp(tmpres, "false", true) == 0 || strcmp(tmpres, "f", true) == 0) return false;
	return strval(tmpres) ? true : false;
}

stock dini_BoolSet(const filename[], const key[], bool:value) {
	return dini_Set(filename, key, value ? ("true") : ("false"));
}

stock dini_Unset(const filename[], const key[]) {
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
			StripNewLine(tmpres);
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

stock dini_Return(const filename[], const key[]) {
	new File:fohnd = fopen(filename, io_read), tmpres[MAX_STRING];
	if (!fohnd) return tmpres;

	new tmpres2[MAX_STRING];
	while (fread(fohnd, tmpres)) {
		if(tmpres[0] == '#') continue;
		new pos = strfind(tmpres, "=", false);
		if (pos != -1 && strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0') {
			/* We've got what we need */
			StripNewLine(tmpres);
			strcpy(tmpres2, tmpres[pos + 1]);
			fclose(fohnd);
			return tmpres2;
		}
	}
	fclose(fohnd);
	return tmpres2;
}

stock dini_Get(const filename[], const key[], dest[], maxlength=sizeof(dest)) {
	new File:fohnd = fopen(filename, io_read);
	if (!fohnd) return false;

	new tmpres[MAX_STRING];
	while (fread(fohnd, tmpres)) {
		if(tmpres[0] == '#') continue;
		new pos = strfind(tmpres, "=", false);
		if (pos != -1 && strcmp(tmpres, key, true, pos) == 0 && key[pos] == '\0') {
			/* We've got what we need */
			StripNewLine(tmpres);
			strcpy(dest, tmpres[pos + 1], maxlength);
			fclose(fohnd);
			return true;
		}
	}
	fclose(fohnd);
	return false;
}

stock dini_Isset(const filename[], const key[]) {
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
 *	Copies a textfile (Source file won't be deleted!)
 *	@param	oldname
 *			newname
 */
stock fcopytextfile(const oldname[], const newname[]) {
	if (!fexist(oldname)) return false;
	new File:ohnd = fopen(oldname, io_read);
	if(!ohnd) return false;
	new File:nhnd = fopen(newname, io_write);
	if(!ohnd) return false;

	new tmpres[MAX_STRING];
	while (fread(ohnd, tmpres)) {
		StripNewLine(tmpres);
		fwrite(nhnd, tmpres);
		fwrite(nhnd, "\r\n");
	}
	fclose(ohnd);
	fclose(nhnd);
	return true;
}

stock fcopy(const oldname[], const newname[]) {
	if (!fexist(oldname)) return false;
	new File:ohnd = fopen(oldname, io_read);
	if(!ohnd) return false;
	new File:nhnd = fopen(newname, io_write);
	if(!ohnd) return false;

	for (new value, i = flength(ohnd); i > 0; i--) {
		fputchar(nhnd, fgetchar(ohnd, value, false), false);
	}
	fclose(ohnd);
	fclose(nhnd);
	return true;
}