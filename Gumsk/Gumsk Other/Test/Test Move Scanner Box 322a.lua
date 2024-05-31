Author = "Gumsk"
ModName = "Test Move Scanner Box"
ModNameSub = ""
BaseDescription = "Test"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "UI\HUD\BINOCULARS\HUDBINOCSLEFTPANELNEW.MBIN"
FileSource2 = "UI\COMPONENTS\SCANNING\DATAVIEW.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {
	{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"Width","75"},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","DATA_VIEW"},
				["VALUE_CHANGE_TABLE"] = {
					{"Width","100"},
					{"WidthPercentage","True"},
				},
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] = FileSource2,
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"ID","DATA_VIEW"},
				["VALUE_CHANGE_TABLE"] = {
					{"PositionX","500"},
					{"PositionY","500"},
					{"Width","1000"},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","ENTRY1"},
				["VALUE_CHANGE_TABLE"] = {
					{"Width","100"},
					{"WidthPercentage","True"},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","MISSSURVEY_DATA"},
				["VALUE_CHANGE_TABLE"] = {
					{"Width","100"},
					{"WidthPercentage","True"},
				},
			},
		}
	},
}}}}