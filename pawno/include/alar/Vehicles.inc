/*
 *	Any Last Administrative Requests - Vehicles.inc
 *		Vehicle name functions
 *
 *	VehicleNames originally by Betamaster
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

#if defined _alar_vehicles_included
  #endinput
#endif

#define _alar_vehicles_included

#define MAX_VEHICLE_MODELS 128

new VehicleNames[212][] = {
	{"Landstalker"},
	{"Bravura"},
	{"Buffalo"},
	{"Linerunner"},
	{"Perennial"},
	{"Sentinel"},
	{"Dumper"},
	{"Firetruck"},
	{"Trashmaster"},
	{"Stretch"},
	{"Manana"},
	{"Infernus"},
	{"Voodoo"},
	{"Pony"},
	{"Mule"},
	{"Cheetah"},
	{"Ambulance"},
	{"Leviathan"},
	{"Moonbeam"},
	{"Esperanto"},
	{"Taxi"},
	{"Washington"},
	{"Bobcat"},
	{"Mr Whoopee"},
	{"BF Injection"},
	{"Hunter"},
	{"Premier"},
	{"Enforcer"},
	{"Securicar"},
	{"Banshee"},
	{"Predator"},
	{"Bus"},
	{"Rhino"},
	{"Barracks"},
	{"Hotknife"},
	{"Article Trailer"},
	{"Previon"},
	{"Coach"},
	{"Cabbie"},
	{"Stallion"},
	{"Rumpo"},
	{"RC Bandit"},
	{"Romero"},
	{"Packer"},
	{"Monster"},
	{"Admiral"},
	{"Squalo"},
	{"Seasparrow"},
	{"Pizzaboy"},
	{"Tram"},
	{"Article Trailer 2"},
	{"Turismo"},
	{"Speeder"},
	{"Reefer"},
	{"Tropic"},
	{"Flatbed"},
	{"Yankee"},
	{"Caddy"},
	{"Solair"},
	{"Berkley's RC Van"},
	{"Skimmer"},
	{"PCJ-600"},
	{"Faggio"},
	{"Freeway"},
	{"RC Baron"},
	{"RC Raider"},
	{"Glendale"},
	{"Oceanic"},
	{"Sanchez"},
	{"Sparrow"},
	{"Patriot"},
	{"Quad"},
	{"Coastguard"},
	{"Dinghy"},
	{"Hermes"},
	{"Sabre"},
	{"Rustler"},
	{"ZR-350"},
	{"Walton"},
	{"Regina"},
	{"Comet"},
	{"BMX"},
	{"Burrito"},
	{"Camper"},
	{"Marquis"},
	{"Baggage"},
	{"Dozer"},
	{"Maverick"},
	{"News Chopper"},
	{"Rancher"},
	{"FBI Rancher"},
	{"Virgo"},
	{"Greenwood"},
	{"Jetmax"},
	{"Hotring"},
	{"Sandking"},
	{"Blista Compact"},
	{"Police Maverick"},
	{"Boxville"},
	{"Benson"},
	{"Mesa"},
	{"RC Goblin"},
	{"Hotring Racer A"},
	{"Hotring Racer B"},
	{"Bloodring Banger"},
	{"Rancher"},
	{"Super GT"},
	{"Elegant"},
	{"Journey"},
	{"Bike"},
	{"Mountain Bike"},
	{"Beagle"},
	{"Cropduster"},
	{"Stuntplane"},
	{"Petrol Tanker"},
	{"Roadtrain"},
	{"Nebula"},
	{"Majestic"},
	{"Buccaneer"},
	{"Shamal"},
	{"Hydra"},
	{"FCR-900"},
	{"NRG-500"},
	{"HPV1000"},
	{"Cement Truck"},
	{"Towtruck"},
	{"Fortune"},
	{"Cadrona"},
	{"FBI Truck"},
	{"Willard"},
	{"Forklift"},
	{"Tractor"},
	{"Combine Harvester"},
	{"Feltzer"},
	{"Remington"},
	{"Slamvan"},
	{"Blade"},
	{"Freight"},
	{"Brown Streak"},
	{"Vortex"},
	{"Vincent"},
	{"Bullet"},
	{"Clover"},
	{"Sadler"},
	{"Firetruck LA"},
	{"Hustler"},
	{"Intruder"},
	{"Primo"},
	{"Cargobob"},
	{"Tampa"},
	{"Sunrise"},
	{"Merit"},
	{"Utility Van"},
	{"Nevada"},
	{"Yosemite"},
	{"Windsor"},
	{"Monster A"},
	{"Monster B"},
	{"Uranus"},
	{"Jester"},
	{"Sultan"},
	{"Stratum"},
	{"Elegy"},
	{"Raindance"},
	{"RC Tiger"},
	{"Flash"},
	{"Tahoma"},
	{"Savanna"},
	{"Bandito"},
	{"Freight Flat Carriage"},
	{"Streak Carriage"},
	{"Kart"},
	{"Mower"},
	{"Dune"},
	{"Sweeper"},
	{"Broadway"},
	{"Tornado"},
	{"AT-400"},
	{"DFT-30"},
	{"Huntley"},
	{"Stafford"},
	{"BF-400"},
	{"Newsvan"},
	{"Tug"},
	{"Petrol Trailer"},
	{"Emperor"},
	{"Wayfarer"},
	{"Euros"},
	{"Hotdog"},
	{"Club"},
	{"Freight Box Carriage"},
	{"Article Trailer 3"},
	{"Andromada"},
	{"Dodo"},
	{"RC Cam"},
	{"Launch"},
	{"Police Car (LSPD)"},
	{"Police Car (SFPD)"},
	{"Police Car (LVPD)"},
	{"Police Ranger"},
	{"Picador"},
	{"S.W.A.T. Van"},
	{"Alpha"},
	{"Phoenix"},
	{"Shitty Glendale"},
	{"Shitty Sadler"},
	{"Baggage Box A"},
	{"Baggage Box B"},
	{"Tug Stair Trailer"},
	{"Boxville"},
	{"Farm Trailer"},
	{"Utility Trailer"}
};


stock ReturnVehicleName(modelid) {
	new vname[25] = "Unknown";
	if((modelid < 400) || (modelid > 611)) return vname;
	memcpy(vname, VehicleNames[modelid - 400], 0, 100);
	return vname;
}

stock ReturnPlayerVehicleName(playerid) {
	new vname[25] = "None";
	if(!IsPlayerInAnyVehicle(playerid)) return vname;
	memcpy(vname, VehicleNames[GetVehicleModel(GetPlayerVehicleID(playerid)) - 400], 0, 100);
	return vname;
}

stock ReturnVehicleID(const vname[]) {
	if(vname[0] == '\0') return INVALID_VEHICLE_ID;
	new vid = INVALID_VEHICLE_ID, length = strlen(vname);
	for(new i; i < sizeof(VehicleNames); i++) {
		new pos = strfind(VehicleNames[i], vname, true);
		if(pos == 0 && length == strlen(VehicleNames[i])) return i+400;
		else if(pos != -1) vid = i+400;
	}
	return vid;
}

stock GetServerVehicleInfo(&numvehicles, &numtypes)
{
	numvehicles = 0;
	numtypes = 0;
	new bool:types[212];
	for(new i = 1; i < MAX_VEHICLES; i++) {
		new model = GetVehicleModel(i);
		if(model != 0) {
			numvehicles++;
			if(types[model - 400] == false) {
				types[model - 400] = true;
				numtypes++;
			}
		}
	}
	// Firetruck, Predator, Rhino, Sea Sparrow, hydra, Rustler, RC Barron, S.W.A.T Van  take 2 slots...i think
	numtypes += (types[7]?1:0) + (types[30]?1:0) + (types[32]?1:0) + (types[47]?1:0) + (types[64]?1:0) + (types[76]?1:0) + (types[120]?1:0) + (types[144]?1:0) + (types[201]?1:0);
}

stock ExistsVehicleModel(model) {
	if(model < 400 || model > 611) return false;
	for(new i = 1; i < MAX_VEHICLES; i++) {
		if(GetVehicleModel(i) == model) return true;
	}
	return false;
}
