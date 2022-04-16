Author = "Gumsk"
ModName = "Test"
ModNameSub = "Vignette"
BaseDescription = "Test"
GameVersion = "353"
ModVersion = "a"
FileSource1 = "GCSKYGLOBALS.GLOBALS.MBIN"

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
				["PRECEDING_KEY_WORDS"] = {"PhotoModeVignette"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0},
					{"y",0},
				}
			},
		}
}}}}}