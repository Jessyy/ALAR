--[[
	Binary tree command list generator

	Copyright © 2009 [DRuG]Dabombber

	This file is part of Alar.

 	Alar is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

 	Alar is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Alar.  If not, see <http://www.gnu.org/licenses/>.
--]]

OUTPUT = "output.pwn"

COMMANDS = {
--	{"command"},	-- Command without parameters
--	"command", 	-- Command with parameters

	{"aautologin"},
	{"aclearbans"},
	{"aclearstatus"},
	{"aclr"},
	{"aejectall"},
	{"ahelp"},
	{"ahide"},
	{"alistmodes"},
	{"alogout"},
	{"apaused"},
	{"areloaddata"},
	{"aremallcash"},
	{"aremallweapons"},
	{"aunhide"},
	"aalias",
	"aalias2",
	"aalias3",
	"aarmour",
	"aarmourall",
	"aban",
	"abancheck",
	"abanip",
	"abanname",
	"abring",
	"achangemode",
	"achangepw",
	"acreate",
	"adestroy",
	"adesync",
	"adrop",
	"aeject",
	"aexplode",
	"aflip",
	"afreeze",
	"agiveallcash",
	"agiveallweapon",
	"agivecash",
	"agiveweapon",
	"agoto",
	"agravity",
	"aheal",
	"ahealall",
	"aimitate",
	"aimmune",
	"ainfo",
	"ainterior",
	"aip",
	"ajail",
	"akick",
	"amsg",
	"amute",
	"apunch",
	"ar",
	"arape",
	"aremcash",
	"aremweapons",
	"arepair",
	"arespawn",
	"asay",
	"aselect",
	"aservername",
	"asetadmin",
	"asetname",
	"asetping",
	"ashout",
	"aslap",
	"aslay",
	"aspawn",
	"aspec",
	"asuspend",
	"asuspendip",
	"asuspendname",
	"atime",
	"aunban",
	"aundesync",
	"aunfreeze",
	"aunjail",
	"aunmute",
	"aunrape",
	"aunsuspend",
	"aweather",
	"aworld"
}

TEXTSTRING = "cmdtext"

KandR = true


------------------------------------------------------------------------------------------------------------------------
Paramless = {}

function TreeMethod ( array , first , last , prefix )
	if ( last < first or first > last ) then return nil end
	local mid = math.floor ( ( last + first ) / 2 )

	if ( not array[ mid ] ) then return nil end
	local part1 = TreeMethod ( array , first , mid - 1 , prefix )
	local part2 = TreeMethod ( array , mid + 1 , last , prefix )

	local cmd , cmdstr , str , cmdname
	if ( type ( array[ mid ]  ) == "string" ) then
		cmdname = array[ mid ]
		cmdstr = prefix and cmdname : sub ( #prefix + 1 ) or cmdname
		if ( Paramless[ cmdname ] ) then
			cmd = "return cmd_" .. cmdname .. "(playerid);"
			str = "switch(strcmp(" .. TEXTSTRING .. "[" .. ( prefix and #prefix + 1 or 1 ) .. "], \"" .. cmdstr .. "\" , true))"  .. ( KandR and " " or "\n") .. "{\n"
		else
			cmd = "if(" .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 1 .. "] == '\\0') return dcmd_" .. cmdname .. "(playerid, \"\");\nif(" .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 1 .. "] == ' ') return dcmd_" .. cmdname .. "(playerid, " .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 2 .. "]);"
			str = "switch(strcmp(" .. TEXTSTRING .. "[" .. ( prefix and #prefix + 1 or 1 ) .. "], \"" .. cmdstr .. "\" , true, " .. string.len ( cmdstr ) .. "))"  .. ( KandR and " " or "\n") .. "{\n"
		end
	else
		cmdname = array[ mid ][ 1 ]
		cmdstr = prefix and cmdname : sub ( #prefix + 1 ) or cmdname
		if ( Paramless[ cmdname ] ) then
			cmd = "if(" .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 1 .. "] == '\\0') return cmd_" .. cmdname .. "(playerid);\n" .. TreeMethod ( array[ mid ] , 2 , #array[ mid ] , cmdname )
		else
			cmd = "if(" .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 1 .. "] == '\\0') return dcmd_" .. cmdname .. "(playerid, \"\");\nif(" .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 1 .. "] == ' ') return dcmd_" .. cmdname .. "(playerid, " .. TEXTSTRING .. "[" .. string.len ( cmdname ) + 2 .. "]);\n" .. TreeMethod ( array[ mid ] , 2 , #array[ mid ] , cmdname )
		end
		str = "switch(strcmp(" .. TEXTSTRING .. "[" .. ( prefix and #prefix + 1 or 1 ) .. "], \"" .. cmdstr .. "\" , true, " .. string.len ( cmdstr ) .. "))"  .. ( KandR and " " or "\n") .. "{\n"
	end

	if ( part1 or part2 ) then
		if ( part1 ) then
			str = str .. "\tcase -1:" .. ( KandR and " " or "\n\t") .. "{\n\t\t" .. part1 : gsub ( "\n" , "\n\t\t" ) .. "\n\t}\n"
		end
		str = str .. "\tcase 0:" .. ( KandR and " " or "\n\t") .. "{\n\t\t" .. cmd : gsub ( "\n" , "\n\t\t" ) .. "\n\t}\n"
		if ( part2 ) then
			str = str .. "\tcase 1:" .. ( KandR and " " or "\n\t") .. "{\n\t\t" .. part2 : gsub ( "\n" , "\n\t\t" ) .. "\n\t}\n"
		end
		return str .. "}"
	end
	return "if(" .. ( #cmdstr == 1 and TEXTSTRING .. "[" .. ( prefix and #prefix + 1 or 1 ) ..  "] == '" .. cmdstr .. "'" or "strcmp(" .. TEXTSTRING .. "[" .. ( prefix and #prefix + 1 or 1 ) .. "], \"" .. cmdstr .. "\", true" .. ( ( Paramless[ cmdname ] and type ( array[ mid ]  ) == "string" ) and "" or ", " .. string.len ( cmdstr ) ) .. ") == 0" ) .. ")"  .. ( KandR and " " or "\n") .. "{\n\t" .. cmd : gsub ( "\n" , "\n\t" ) .. "\n}"
end

function OrderCommands ( array )
	local ary = {}
	local i = 1
	while i <= #array do
		local tmp = {}
		local count = 0
		for j = i + 1, #array do
			if ( array[ j ] : match ( "^" .. array[ i ] ) ) then
				table.insert ( tmp , array[ j ] )
				count = count + 1
			end
		end
		if ( count > 0 ) then
			tmp = OrderCommands ( tmp )
			table.insert ( tmp , 1 , array[ i ] )
			table.insert ( ary , tmp )
			i = i + count
		else
			table.insert ( ary , array[ i ] )
		end
		i = i + 1
	end
	return ary
end

function dcmdMethod ( array )
	local str = ""
	for _ , v in ipairs( array ) do
		if ( type ( v ) == "string" ) then
			if ( Paramless[ v ] ) then
				str = str .. "cmd(" .. v .. ", " .. TEXTSTRING .. ");\n"
			else
				str = str .. "dcmd(" .. v .. ", " .. string.len ( v ) .. ", " .. TEXTSTRING .. ");\n"
			end

		else
			str = str .. dcmdMethod ( v )
		end
	end
	return str
end

do
	if ( #COMMANDS == 0 ) then
		print ( "ERROR: No commands found" )
		os.execute( "pause" )
		os.exit ( )
	end

	for i , v in ipairs( COMMANDS ) do
		if ( type ( v ) == "table" ) then
			COMMANDS[ i ] = v[ 1 ]
			Paramless[ v[ 1 ] ] = true
		end
	end

	table.sort ( COMMANDS )
	local array = OrderCommands ( COMMANDS )

	outputfile = io.open ( OUTPUT , "w+" )
	outputfile : write ( "// Defines\n#define dcmd(%1,%2,%3)		if((strcmp((%3)[1], #%1, true, (%2)) == 0) && ((((%3)[(%2) + 1] == '\\0') && (dcmd_%1(playerid, \"\")))||(((%3)[(%2) + 1] == ' ') && (dcmd_%1(playerid, (%3)[(%2) + 2]))))) return 1\n#define cmd(%1,%2)			if(strcmp((%2)[1], #%1, true) == 0) return cmd_%1(playerid)\n\n// Dcmd method\n" .. dcmdMethod ( COMMANDS ) .. "\n// Binary tree method\n" .. TreeMethod ( array , 1 , #array ) )
	outputfile : close ( )
end




