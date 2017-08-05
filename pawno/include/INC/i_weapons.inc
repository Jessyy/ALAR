/*
 *	Any Last Administrative Requests - i_weapons.inc
 *		Weapon functions
 *	
 *	Copyright (c) 2009 [DRuG]Dabombber
 */

#if defined _inc_weapons_included
	#endinput
#endif
#define _inc_weapons_included

#include <a_samp>

/*
	native ReturnWeaponName(weaponid);
	native ReturnWeaponID(const wname[]);
	native ReturnWeaponSlot(weaponid);
	
	FormatSpecifier<'W'>(output[], weaponid);
*/

#include "i_string"

/*
 *
 */
#define INVALID_WEAPON_ID		(-1)
#define INVALID_WEAPON_SLOT		(-1)
#define MAX_WEAPON_NAME			(32)

#define WEAPON_NVGOGGLES		(44)
#define WEAPON_IRGOGGLES		(45)

static const scWeaponNames[55][] = {
	{!"Fists"                },	//  0
	{!"Brass Knuckles"       },	//  1
	{!"Golf Club"            },	//  2
	{!"Nightstick"           },	//  3
	{!"Knife"                },	//  4
	{!"Baseball Bat"         },	//  5
	{!"Shovel"               },	//  6
	{!"Pool Cue"             },	//  7
	{!"Katana"               },	//  8
	{!"Chainsaw"             },	//  9
	{!"Purple Dildo"         },	// 10
	{!"Short Vibrator"       },	// 11
	{!"Long Vibrator"        },	// 12
	{!"White Vibrator"       },	// 13
	{!"Flowers"              },	// 14
	{!"Cane"                 },	// 15
	{!"Grenade"              },	// 16
	{!"Teargas"              },	// 17
	{!"Molotov cocktail"     },	// 18
	{!"Unknown"              },	// 19
	{!"Unknown"              },	// 20
	{!"Unknown"              },	// 21
	{!"Colt 45"              },	// 22
	{!"Silenced Pistol"      },	// 23
	{!"Desert Eagle"         },	// 24
	{!"Shotgun"              },	// 25
	{!"Sawn-off Shotgun"     },	// 26
	{!"Combat Shotgun"       },	// 27
	{!"Micro UZI (Mac-10)"   },	// 28
	{!"MP5"                  },	// 29
	{!"AK-47"                },	// 30
	{!"M4"                   },	// 31
	{!"TEC-9"                },	// 32
	{!"Country Rifle"        },	// 33
	{!"Sniper Rifle"         },	// 34
	{!"Missile Launcher"     },	// 35
	{!"Rocket Launcher"      },	// 36
	{!"Flamethrower"         },	// 37
	{!"Minigun"              },	// 38
	{!"Satchel Explosives"   },	// 39
	{!"Satchel Detonator"    },	// 40
	{!"Spraycan"             },	// 41
	{!"Fire Extinguisher"    },	// 42
	{!"Camera"               },	// 43
	{!"Nightvision Goggles"  },	// 44
	{!"Infrared Goggles"     },	// 45
	{!"Parachute"            },	// 46
	{!"Fake Pistol"          },	// 47
	{!"Unknown"              },	// 48
	{!"Vehicle"              },	// 49
	{!"Helicopter blades"    },	// 50
	{!"Explosion"            },	// 51
	{!"Unknown"              },	// 52
	{!"Drowned"              },	// 53
	{!"Collision"            }	// 54
};

/*
 *  Return a weapon's name
 *  @param	weaponid	The id of the weapon
 *  @return	A string containing the weapon's name
 */
stock ReturnWeaponName(weaponid)
{
	new wname[MAX_WEAPON_NAME] = "Unknown";
	if(weaponid < 0 || weaponid > 54) {
		return wname;
	}
	strunpack(wname, scWeaponNames[weaponid]);
	return wname;
}

/*
 *  Return a weapon's id
 *  @param	wname	The full or partial name of the weapon
 *  @return	The weapon's id, or INVALID_WEAPON_ID if no match was found
 */
stock ReturnWeaponID(const wname[])
{
	if(wname[0] == '\0') {
		return INVALID_WEAPON_ID;
	}
	new weaponid = INVALID_WEAPON_ID;
	for(new i, j = sizeof(scWeaponNames); i < j; i++) {
		if(strcmp(scWeaponNames[i], wname, true) == 0) {
			return i;
		}
		if(strfind(scWeaponNames[i], wname, true) != -1) {
			weaponid = i;
		}
	}
	return weaponid;
}

/*
 *  Return a weapons's slot
 *  @param	weaponid	The id of the weapon
 *  @return	The slot of the weapon, INVALID_WEAPON_SLOT if the weaponid is invalid
 */
stock ReturnWeaponSlot(weaponid)
{
	switch(weaponid) {
		case WEAPON_BRASSKNUCKLE:
			return 0;
		case WEAPON_GOLFCLUB .. WEAPON_CHAINSAW:
			return 1;
		case WEAPON_COLT45 .. WEAPON_DEAGLE:
			return 2;
		case WEAPON_SHOTGUN .. WEAPON_SHOTGSPA:
			return 3;
		case WEAPON_UZI, WEAPON_MP5, WEAPON_TEC9:
			return 4;
		case WEAPON_AK47, WEAPON_M4:
			return 5;
		case WEAPON_RIFLE, WEAPON_SNIPER:
			return 6;
		case WEAPON_ROCKETLAUNCHER .. WEAPON_MINIGUN:
			return 7;
		case WEAPON_GRENADE .. WEAPON_MOLTOV, WEAPON_SATCHEL:
			return 8;
		case WEAPON_SPRAYCAN .. WEAPON_CAMERA:
			return 9;
		case WEAPON_DILDO .. WEAPON_FLOWER:
			return 10;
		case WEAPON_NVGOGGLES, WEAPON_IRGOGGLES, WEAPON_PARACHUTE:
			return 11;
		case WEAPON_BOMB:
			return 12;
	}
	return INVALID_WEAPON_SLOT;
}

#if defined _inc_formatex_included
	/*
	 *  
	 */
	FormatSpecifier<'W'>(output[], weaponid)
	{
		strcat(output, ReturnWeaponName(weaponid));
	}
#endif
