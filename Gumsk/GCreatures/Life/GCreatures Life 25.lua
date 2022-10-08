Author = "Gumsk"
ModName = "gCreatures Life"
ModNameSub = "25"
BaseDescription = "25% of normal life"
GameVersion = "401"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"

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
				["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
				["LINE_OFFSET"] = "+1",
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE","0"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
				["LINE_OFFSET"] = "+2",
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE","0.1"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
				["LINE_OFFSET"] = "+3",
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE","0.2"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
				["LINE_OFFSET"] = "+4",
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE","0.3"},
				},
			},
		}
}}}}}