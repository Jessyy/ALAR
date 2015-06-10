/**
 *	Any Last Administrative Requests - i_interiors.inc
 *		Interiors functions
 *	
 *	Based on sinterior v2.0 by Sacky from http://forum.sa-mp.com/showthread.php?t=232
 *  	@released: 23/11/2006
 *	
 *	Copyright (c) 2015 [SNIP][zL]Jessyy
 */

#if defined _inc_interiors_included
	#endinput
#endif
#define _inc_interiors_included

#include <a_samp>

/**
	native ReturnInteriorName(interiorid);
	native ReturnPlayerInteriorName(playerid);
	native ReturnPlayerInteriorID(playerid);
	native IsPlayerInInterior(playerid, interiorid);
	
	FormatSpecifier<'I'>(output[], interiorid);
*/

#include "i_string"

/**
 *  Definitions
 */
#define INVALID_INTERIOR_ID				(-1)
#define MAX_INTERIOR_NAME				(32)
#define INTERIOR_BETWEEN<%0>(%1,%2)		(scInteriors[%1][E_INTERIOR_MIN%0] <= %2 <= scInteriors[%1][E_INTERIOR_MAX%0])

/**
 *  Basic interior info
 */
enum E_INTERIORINFO {
	E_INTERIOR_NAME[MAX_INTERIOR_NAME char],
	E_INTERIOR_ID,
	Float:E_INTERIOR_MINX,
	Float:E_INTERIOR_MINY,
	Float:E_INTERIOR_MINZ,
	Float:E_INTERIOR_MAXX,
	Float:E_INTERIOR_MAXY,
	Float:E_INTERIOR_MAXZ
}

/**
 *  Data for all the interiors
 */
stock static const scInteriors[][E_INTERIORINFO] = {
	{!"24/7",                                     17,     -35.09,    -188.74,    1002.54,      -3.39,    -167.90,    1008.76},
	{!"24/7",                                     10,     -13.17,     -32.57,    1002.54,      10.89,     -73.76,    1008.89},
	{!"24/7",                                     18,     -39.22,     -92.69,    1002.54,     -12.95,     -73.76,    1008.94},
	{!"24/7",                                     16,     -39.19,    -142.24,    1002.54,     -14.04,    -122.45,    1008.33},
	{!"24/7",                                      4,     -36.92,     -32.18,    1002.55,     -25.81,      -1.81,    1009.08},
	{!"24/7",                                      6,     -37.43,     -58.99,    1002.54,     -16.26,     -48.49,    1008.70},
	{!"Francis International Airport",            14,   -2002.21,     -65.74,    1055.14,   -1718.32,     114.25,    1066.14},
	{!"A Shamal",                                  1,      -1.42,      21.59,    1198.59,       4.02,      35.77,    1204.09},
	{!"A Andromeda",                               9,     310.47,     971.18,    1942.88,     321.01,    1039.41,    1966.10},
	{!"Ammunation",                                1,     283.00,     -42.64,    1000.51,     301.21,      -1.43,    1006.51},
	{!"Ammunation",                                4,     282.83,     -91.25,    1000.51,     332.17,     -55.42,    1006.99},
	{!"Ammunation",                                6,     283.04,    -116.26,    1000.51,     299.42,    -101.64,    1006.50},
	{!"Ammunation",                                7,     267.74,    -145.68,     998.60,     318.37,    -124.85,    1008.89},
	{!"Ammunation",                                6,     269.95,    -171.25,     998.59,     320.36,    -157.42,    1005.06},
	{!"A House",                                   3,     218.44,    1185.76,    1079.25,     246.81,    1213.83,    1089.78},
	{!"A House",                                   2,     216.55,    1237.08,    1081.14,     235.71,    1255.20,    1086.64},
	{!"A House",                                   1,     215.34,    1282.20,    1081.14,     234.88,    1294.97,    1086.14},
	{!"A House",                                   7,     222.88,    1016.50,    1082.81,     255.96,    1052.10,    1092.30},
	{!"A House",                                  15,     282.92,    1470.07,    1079.25,     307.50,    1491.22,    1084.80},
	{!"A House",                                  15,     318.46,    1469.87,    1083.43,     337.66,    1492.80,    1088.43},
	{!"A House",                                  15,     369.89,    1450.67,    1079.18,     391.15,    1473.98,    1084.39},
	{!"A House",                                  15,     354.50,    1407.17,    1080.32,     381.18,    1433.95,    1085.27},
	{!"A House",                                   2,     474.39,    1397.50,    1079.26,     502.88,    1424.83,    1089.78},
	{!"A House",                                   2,     434.34,    1393.10,    1083.31,     460.38,    1421.11,    1089.29},
	{!"A House",                                   5,     224.20,    1104.40,    1079.99,     250.76,    1122.68,    1089.00},
	{!"A House",                                   4,     248.24,    1280.39,    1079.25,     269.42,    1297.10,    1084.25},
	{!"A House",                                   4,     216.52,    1139.07,    1081.60,     230.36,    1161.15,    1086.57},
	{!"A House",                                  10,      17.07,    1334.68,    1083.37,      37.30,    1354.12,    1093.87},
	{!"A House",                                   4,    -281.32,    1445.65,    1083.36,    -255.00,    1464.04,    1091.87},
	{!"A House",                                   5,      13.94,    1395.53,    1083.42,      34.61,    1420.32,    1089.42},
	{!"A House",                                   5,     133.38,    1364.83,    1082.86,     155.18,    1388.48,    1093.36},
	{!"A House",                                   6,     218.22,    1062.50,    1083.21,     249.83,    1088.64,    1091.60},
	{!"A House",                                   6,     -73.53,    1345.41,    1079.21,     -55.00,    1368.82,    1085.21},
	{!"A House",                                  15,    -302.56,    1468.17,    1083.37,    -277.79,    1482.13,    1093.87},
	{!"A House",                                   8,     -53.82,    1389.91,    1083.42,     -33.41,    1414.07,    1089.42},
	{!"A House",                                   9,      73.91,    1314.46,    1082.85,      97.48,    1347.39,    1093.36},
	{!"A House",                                   9,     250.87,    1233.79,    1083.25,     266.81,    1257.90,    1088.27},
	{!"Blastin' Fools Records",                    3,    1037.30,       1.03,    1000.28,    1041.83,      11.21,    1006.28},
	{!"The Budget Inn Motel",                     12,     442.49,     505.64,    1000.41,     458.40,     517.04,    1006.41},
	{!"The Jefferson Motel",                      15,    2178.76,   -1202.90,    1024.79,    2255.65,   -1136.20,    1038.61},
	{!"The Off track Betting",                     3,     818.02,      -1.54,    1003.18,     834.98,      13.35,    1010.48},
	{!"The Sex Shop",                              3,    -117.92,     -29.82,     999.71,     -97.88,      -6.37,    1005.71},
	{!"The Sindacco Meat Processing Plant",        1,     931.32,    2094.75,    1010.03,     966.74,    2179.08,    1020.02},
	{!"Zero's RC Shop",                            6,   -2242.09,     126.56,    1034.41,   -2217.32,     139.02,    1040.32},
	{!"Transfenders",                              1,     602.35,     -28.55,     994.86,     637.28,      10.23,    1014.77},
	{!"Loco Low Co.",                              2,     608.16,     -83.66,     993.57,     625.82,     -68.81,    1002.99},
	{!"Wheel's Arch Angels",                       3,     608.01,    -132.70,     993.34,     625.33,    -117.68,    1002.99},
	{!"CJ's Garage",                               1,   -2057.71,     150.09,      27.83,   -2038.86,     182.03,      33.83},
	{!"The Four Dragons",                         10,    1924.15,     967.23,     991.46,    2020.07,    1068.42,     997.87},
	{!"Calligula's",                               1,    2134.82,    1556.56,    1005.18,    2292.79,    1714.91,    1013.24},
	{!"The Janitors Office",                      10,    1886.09,    1010.78,      30.88,    1900.85,    1027.19,      36.88},
	{!"Woozie's Office",                           1,   -2173.02,     633.68,    1051.38,   -2156.46,     648.62,    1062.63},
	{!"Redsands West Casino",                     12,    1116.36,     -17.01,     999.67,    1144.55,      14.30,    1007.48},
	{!"Binco",                                    15,     198.42,    -115.12,    1004.13,     219.95,     -93.42,    1010.06},
	{!"Didier Sachs",                             14,     194.92,    -172.88,     999.52,     218.68,    -149.97,    1005.95},
	{!"ProLaps",                                   3,     194.57,    -144.95,    1001.86,     217.74,    -117.34,    1008.90},
	{!"SubUrban",                                  1,     194.77,     -54.07,    1000.80,     217.35,     -30.74,    1009.14},
	{!"Victim",                                    5,     198.45,     -14.15,    1000.21,     243.08,       5.41,    1010.20},
	{!"Zip",                                      18,     138.42,    -101.63,    1000.80,     184.34,     -68.28,    1006.80},
	{!"The Dance Club",                           17,     472.59,     -30.78,     999.67,     508.71,       1.01,    1008.47},
	{!"Shithole Bar",                             11,     481.75,     -90.47,     997.75,     513.34,     -63.56,    1004.03},
	{!"Lil' Probe Inn",                           18,    -234.15,    1392.49,      26.76,    -215.69,    1413.44,      31.76},
	{!"Jay's Diner",                               4,     432.54,     -93.25,     998.55,     461.39,     -77.95,    1001.30},
	{!"World of Coq",                              1,     421.29,     -24.07,     998.55,     462.40,      -2.88,    1005.73},
	{!"The Pump Truck Stop Diner",                 1,     648.53,    -479.46,     -26.61,     696.20,    -447.58,     -20.50},
	{!"Burger Shot",                              10,     360.06,     -79.37,    1000.50,     384.31,     -54.74,    1006.50},
	{!"Cluckin' Bell",                             9,     357.44,     -16.03,    1000.85,     382.68,      -1.11,    1006.71},
	{!"Well Stacked Pizza",                        5,     361.26,    -139.14,    1000.49,     382.01,    -110.85,    1006.37},
	{!"Rusty Brown's Donuts",                     17,     371.09,    -197.26,     999.63,     383.75,    -176.72,    1005.90},
	{!"Denise Robinson's Bedroom",                 1,     242.60,     299.13,     998.14,     250.94,     308.56,    1004.14},
	{!"Katie Zhan's Bedroom",                      2,     260.71,     301.24,     998.14,     275.16,     314.64,    1004.14},
	{!"Helena Wankstein's Bedroom",                3,     273.48,     303.19,     998.14,     294.92,     311.93,    1008.17},
	{!"Michelle Cannes's Bedroom",                 4,     290.50,     299.33,     998.14,     312.34,     315.71,    1010.30},
	{!"Barbara Schternvart Bedroom",               5,     315.30,     300.65,     998.14,     329.56,     319.14,    1004.14},
	{!"Millie Perkins's Bedroom",                  6,     337.37,     293.56,     998.15,     350.82,     312.01,    1004.64},
	{!"The Sherman Dam",                          17,    -963.08,    1845.04,       4.00,    -937.10,    1955.32,      11.12},
	{!"The Planning Department",                   3,     317.44,     143.07,    1007.38,     393.26,     218.93,    1030.78},
	{!"The Ganton Gym",                            5,     754.44,     -10.50,     999.71,     775.79,      17.28,    1006.18},
	{!"The Cobra Gym",                             6,     752.47,     -51.44,     999.68,     778.83,     -15.62,    1005.68},
	{!"Below The Belt Gym",                        7,     755.94,     -84.06,     999.65,     777.99,     -56.74,    1006.60},
	{!"Madd Dogg's Mansion",                       5,    1223.25,    -840.53,    1083.01,    1307.42,    -751.18,    1098.97},
	{!"B-Dups Apartment",                          3,    1520.18,     -22.58,    1001.09,    1533.75,       0.96,    1007.09},
	{!"B-Dups Crack Pad",                          2,    1514.26,     -57.13,    1001.13,    1529.25,     -39.97,    1007.13},
	{!"Carl's Mums House",                         3,    2484.04,   -1723.05,    1013.74,    2507.70,   -1681.08,    1023.04},
	{!"OG Loc's",                                  3,     509.05,     -21.64,    1000.56,     522.83,      -1.40,    1006.56},
	{!"Ryder's House",                             2,    2445.97,   -1707.85,    1012.50,    2499.09,   -1683.59,    1018.07},
	{!"Sweet's House",                             1,    2523.00,   -1700.50,    1014.49,    2544.52,   -1665.80,    1020.21},
	{!"Big Smokes Crack Palace",                   2,    2512.02,   -1309.09,    1024.07,    2584.85,   -1252.90,    1072.48},
	{!"The Big Spread Ranch",                      3,    1198.28,     -52.83,     999.95,    1218.59,     -20.52,    1004.87},
	{!"Fanny Batter's Whore House",                6,     723.24,    1432.54,    1101.70,     768.17,    1445.02,    1108.95},
	{!"The World Class Topless Girls Stripclub",   2,    1194.81,     -18.09,     999.92,    1226.14,      30.69,    1005.65},
	{!"The Unnamed Brothel",                       3,     929.96,     -19.99,    1000.14,     976.17,       9.31,    1006.14},
	{!"The Tiger Skin Rug Brothel",                3,     940.30,     -64.50,    1000.12,     973.80,     -41.25,    1005.61},
	{!"Jizzy's Pleasure Dome",                     3,   -2697.59,    1387.20,     905.27,   -2629.88,    1440.47,     929.29},
	{!"Liberty City",                              1,    -950.17,     407.10,    1345.87,    -687.39,     570.30,    1382.61},
	{!"Los Vagos Gang House",                      5,    2317.35,   -1190.57,    1026.97,    2363.43,   -1166.11,    1036.54},
	{!"Colonel Furburgher's House",                8,    2802.57,   -1178.50,    1024.57,    2830.67,   -1155.15,    1033.84},
	{!"The Crack Den",                             5,     296.96,    1110.09,    1082.88,     340.95,    1138.46,    1088.13},
	{!"A Warehouse",                               1,    1357.71,     -49.71,     999.90,    1420.53,       8.51,    1008.89},
	{!"A Warehouse",                              18,    1247.74,     -69.82,    1000.01,    1310.91,       8.32,    1009.39},
	{!"A Safehouse",                              12,    2306.64,   -1153.72,    1049.71,    2342.13,   -1133.43,    1058.30},
	{!"The RC Battlefield",                       10,   -1138.39,    1017.85,    1342.05,    -966.81,    1101.47,    1359.91},
	{!"Old Reece's Hair and Facial Studio",        2,     405.89,     -32.32,    1000.80,     421.67,      -7.96,    1007.07},
	{!"Gay Gordo's Barber Shop",                   3,     415.04,     -92.81,    1000.80,     425.63,     -72.36,    1007.57},
	{!"Mascila's Unisex Hair Salon",              12,     402.08,     -58.22,    1000.89,     417.44,     -46.47,    1007.05},
	{!"A Tattoo Parlour",                         16,    -211.53,     -38.53,    1001.27,    -198.43,     -13.27,    1006.49},
	{!"Hemlock's Tattoo Parlour",                 17,    -210.72,     -30.76,    1001.27,    -194.04,      -2.52,    1006.49},
	{!"A Tattoo Parlour",                          3,    -211.36,     -53.11,    1001.27,    -193.41,     -37.84,    1006.49},
	{!"The Los Santos Police Department",          6,     207.50,      61.70,    1000.03,     277.74,      93.18,    1009.71},
	{!"The San Fierro Police Department",         10,     212.27,      97.04,     998.01,     284.09,     130.46,    1015.21},
	{!"The Los Vagos Police Department",           3,     186.47,     132.33,    1002.02,     308.36,     204.99,    1013.18},
	{!"Cycle School",                              3,    1487.02,    1279.10,    1092.28,    1503.67,    1315.69,    1098.28},
	{!"Automobile School",                         3,   -2037.12,    -139.50,    1034.17,   -2020.48,     -98.20,    1039.79},
	{!"Plane School",                             10,     400.91,    2533.28,       9.00,     460.91,    2547.96,      14.90}
};

/**
 *  Gets the name of a interior
 *  @param	interiorid	The id of the interior
 *  @return	A string containing the name of the interior
 */
stock ReturnInteriorName(interiorid)
{
	new string[MAX_INTERIOR_NAME] = "Unknown";
	if(interiorid < 0 || interiorid >= sizeof(scInteriors)) {
		return string;
	}
	strunpack(string, scInteriors[interiorid][E_INTERIORINFO]);
	return string;
}

/**
 *  Returns the name of the interior a player is in
 *  @param	playerid	The player to check
 *  @return	A string containing the interior name, or "Unknown" if the player is not in a interior
 */
stock ReturnPlayerInteriorName(playerid)
{
	new playerinterior[MAX_INTERIOR_NAME] = "Unknown";
	for(new i, j = sizeof(scInteriors); i < j; i++) {
		if(INTERIOR_BETWEEN<X>(i, x) && INTERIOR_BETWEEN<Y>(i, y) && INTERIOR_BETWEEN<Z>(i, z)) {
			strunpack(playerinterior, scInteriors[i][E_INTERIORINFO]);
			break;
		}
	}
	return playerinterior;
}

/**
 *  Gets the interiorid of a player
 *  @param	playerid	The player to check
 *  @return	The interiorid of the player, or INVALID_INTERIOR_ID if they are not in a interior
 */
stock ReturnPlayerInteriorID(playerid)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	for(new i, j = sizeof(scInteriors); i < j; i++) {
		if(INTERIOR_BETWEEN<X>(i, x) && INTERIOR_BETWEEN<Y>(i, y) && INTERIOR_BETWEEN<Z>(i, z)) {
			return i;
		}
	}
	return INVALID_INTERIOR_ID;
}

/**
 *  Checks if a player is in a interior
 *  @param	playerid		The player to check
 *  @param	interiorid		The interior to check
 *  @return	true if the player is in the interior, false otherwise
 */
stock IsPlayerInInterior(playerid, interiorid)
{
	if(interiorid < 0 || interiorid >= sizeof(scInteriors)) {
		return false;
	}
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	if(INTERIOR_BETWEEN<X>(interiorid, x) && INTERIOR_BETWEEN<Y>(interiorid, y) && INTERIOR_BETWEEN<Z>(interiorid, z)) {
		return true;
	}
	return false;
}

#if defined _inc_formatex_included
	/**
	 *  
	 */
	FormatSpecifier<'Z'>(output[], interiorid)
	{
		strcat(output, ReturnInteriorName(interiorid));
	}
#endif
