--------------------------------------------------------------------------------
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/exml_2_lua.lua')
--------------------------------------------------------------------------------
--[[
  PrintExmlAsLua function is a tool for printing the exml-2-lua data.
  Paste one or more sections (must be complete sections) or full exml files,
  run the string through PrintExmlAsLua, then print to output or save to file.
]]

local exml_sections = [[<Property name="Requirements">
	<Property value="GcTechnologyRequirement.xml">
		<Property name="ID" value="STELLAR2"/>
		<Property name="Type" value="GcInventoryType.xml">
			<Property name="InventoryType" value="Substance"/>
		</Property>
		<Property name="Amount" value="100"/>
	</Property>
	<Property value="GcTechnologyRequirement.xml">
		<Property name="ID" value="FUEL2"/>
		<Property name="Type" value="GcInventoryType.xml">
			<Property name="InventoryType" value="Substance"/>
		</Property>
		<Property name="Amount" value="100"/>
	</Property>
</Property>]]

local function GetTableFromFile(path)
	local f = io.open(path, 'r')
	if f then
		local s = PrintExmlAsLua(f:read('*a'))
		f:close()
	end
	return s
end

local function GetTableFromString(s)
	return PrintExmlAsLua(s)
end

local function WriteToFile(s, path)
	if s then
		local f = io.open(path, 'w')
		f:write(s)
		f:close()
	end
end

-- simply printing the output to the console can be enough for small sections
print( GetTableFromString(exml_sections) )

-- or save the output as a ready-to-use script
local tbl_from_source = GetTableFromFile('C:/TEMP/GCCAMERAGLOBALS.GLOBAL.EXML')
WriteToFile(tbl_from_source, 'C:/TEMP/gccameraglobals.global.lua')

print('saved script to file')
