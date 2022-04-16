Author = "Gumsk"
ModName = "GCreatures Life"
ModNameSub = "150"
BaseDescription = "150% of normal life"
GameVersion = "382"
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
					{"IGNORE","0.6"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
				["LINE_OFFSET"] = "+3",
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE","1.05"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
				["LINE_OFFSET"] = "+4",
				["VALUE_CHANGE_TABLE"] = {
					{"IGNORE","2.1"},
				},
			},
		}
}}}}}