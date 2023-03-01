Author = "Gumsk"
ModName = "GCreatures Giants"
ModNameSub = "Test"
BaseDescription = "Increases creature sizes"
GameVersion = "411"
ModVersion = ""
FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN"
FileSource2 = "GCCREATUREGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = FileSource1,
	["EXML_CHANGE_TABLE"] = {

		{["MATH_OPERATION"] = "*",
			["INTEGER_TO_FLOAT"] = "FORCE",
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] = {
				{"MaxScale", 20},
		}},
	}},
	
	{["MBIN_FILE_SOURCE"] = FileSource2,
	["EXML_CHANGE_TABLE"] = {

		{["VALUE_CHANGE_TABLE"] = {
				{"MaxCreatureSize", 50},
		}},
	}},
}}}}