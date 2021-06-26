Author = "Gumsk"
ModName = "Test CopperBoltwire Asteroid"
ModNameSub = ""
BaseDescription = "Test"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

Multiplier = 10

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
			["MATH_OPERATION"] 		= "*",
			["REPLACE_TYPE"] 		= "ALL",
			["VALUE_CHANGE_TABLE"] = {
				{"CommonAsteroidMinResources", Multiplier},
				{"CommonAsteroidMaxResources", Multiplier},
				{"RareAsteroidMinResources", Multiplier},
				{"RareAsteroidMaxResources", Multiplier},
			},
			},
		}
}}}}}