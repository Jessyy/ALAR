--[[
	For use with the IP-to-Country Database found at http://ip-to-country.webhosting.info/
		or GeoLite Country found at http://www.maxmind.com/app/geolitecountry

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

local CODEFILE = "codes.dat"
local INPUTS = {
	{ "GeoIPCountryWhois.csv" , "^\"%d+.%d+.%d+.%d+\",\"%d+.%d+.%d+.%d+\",\"(%d+)\",\"(%d+)\",\"([^\"]+)\",\"([^\"]*)\"$" },
	{ "ip-to-country.csv" , "^\"(%d+)\",\"(%d+)\",\"([^\"]+)\",\"[^\"]*\",\"([^\"]*)\"$" }
}
local OUTPUT = arg[1] and arg[1]:match (  "(.-)[\\/]?$" ):gsub ( "[^\\/]+[\\/]%.%.[\\/]" , "") or arg[0]:match (  "([^\\/]+)%.[lL][uU][aA]$" )
local LOG = arg[0]:match (  "([^\\/]+)%.[lL][uU][aA]$" ) .. ".log"

function CreateDir ( name )
	os.execute ( "dir " .. "\"" .. name .. "\\..\\\"" .. "/A:D-S /B > dir.tmp" )
	local direxists = false
	local tmp = io.open ( "dir.tmp" )
	local dirname = name:match ( "([^\\/]+)$" ):lower ( )
	for line in tmp:lines ( ) do
		if ( line:lower ( ) == dirname ) then
			direxists = true
			break
		end
	end
	tmp:close ( )
	os.remove ( "dir.tmp" )
	if ( not direxists ) then
		os.execute ( "mkdir " .. "\"" .. name .. "\"" )
		return true
	end
	return false
end

do
	local logfile = io.open ( LOG , "w+" )
	local csvfile , inputidx

	for k , v in pairs ( INPUTS ) do
		csvfile = io.open ( INPUTS[k][1] )
		if ( csvfile ) then
			inputidx = k
			break
		end
	end

	if ( not csvfile ) then
		logfile:write ( "Unable to find an input file\n" )
		logfile:close ( )
		os.exit ( )
	else
		logfile:write ( "Opening input file " .. INPUTS[inputidx][1] .. "\n" )
	end


	local countrycodes = {}
	local codefile = io.open ( CODEFILE )
	if ( not codefile ) then
		logfile:write ( "Unable to find " .. CODEFILE .. "\n" )
	else
		local num = 0
		for line in codefile:lines ( ) do
			local _ , _ , code, country = string.find ( line , "^(%w+)%s+(.+)$" )
			if ( code and country ) then
				countrycodes[code] = country:gsub ( "(%a)([%w_']*)" , function ( first , rest ) return first:upper ( ) .. rest:lower ( ) end )
				num = num + 1
			end
		end
		logfile:write ( "Loaded " .. tostring ( num ) .. " countries from " .. CODEFILE .. "\n" )
		codefile:close ( )
	end

	if ( CreateDir ( OUTPUT ) ) then
		logfile:write ( "Directory \"" .. OUTPUT .. "\\\" created\n" )
	end


	local octet = 0
	local linenumber = 1
	local entries = 0
	local countries = {}
	local octetfile = io.open ( OUTPUT .. "\\" .. tostring ( octet ) .. ".dat" , "w+" )

	for line in csvfile:lines ( ) do
		local _ , _ , ipstart, ipend, code, country = string.find ( line , INPUTS[inputidx][2] )
		if ( ipstart and ipend and code and ( country ~= "" or countrycodes[code] ) ) then
			if ( country == "" ) then
				logfile:write ( "Correcting entry on line " .. tostring ( linenumber ) .. " (" .. line .. ")\n" )
				country = countrycodes[code]
			end

			if ( not countries[code] ) then
				countries[code] = country:gsub ( "(%a)([%w_']*)" , function ( first , rest ) return first:upper ( ) .. rest:lower ( ) end )
			end

			while ( ( octet + 1 ) * 16777216 <= tonumber ( ipstart ) ) do
				octetfile:close ( )
				octet = octet + 1
				octetfile = io.open ( OUTPUT .. "\\" .. tostring ( octet ) .. ".dat" , "w+" )
			end

			while ( tonumber ( ipend ) > ( octet + 1 ) * 16777216 ) do
				octet = octet + 1
				octetfile:write ( ipstart .. " " .. tostring ( octet * 16777216 - 1 ) .. " " .. code .. "\n" )
				ipstart = tostring ( octet * 16777216 )
				octetfile:close ( )
				octetfile = io.open ( OUTPUT .. "\\" .. tostring ( octet ) .. ".dat" , "w+" )
				entries = entries + 1
			end

			octetfile:write ( ipstart .. " " .. ipend .. " " .. code .. "\n" )
			entries = entries + 1
		elseif ( line ~= "" ) then
			logfile:write ( "Invalid entry on line " .. tostring ( linenumber ) .. " (" .. line .. ")\n" )
		end

		linenumber = linenumber + 1
	end

	csvfile:close ( )

	while ( octet < 255 ) do
		octetfile:close ( )
		octet = octet + 1
		octetfile = io.open ( OUTPUT .. "\\" .. tostring ( octet ) .. ".dat" , "w+" )
	end

	octetfile:close ( )

	logfile:write ( "Number of entries written:  " .. tostring ( entries ) .. "\n" )

	t2 = {}
	table.foreach ( countries , function ( k ) table.insert ( t2 , k ) end )
	table.sort ( t2 )

	local countryfile = io.open ( OUTPUT .. "\\Countries.dat" , "w+" )
	for _ , v in ipairs ( t2 ) do
		countryfile:write (  v .. " " .. countries[v] .. "\n" )
	end
	countryfile:close ( )

	logfile:write ( "Number of countries written:  " .. tostring ( #t2 ) .. "\n" )

	logfile:close ( )
end
