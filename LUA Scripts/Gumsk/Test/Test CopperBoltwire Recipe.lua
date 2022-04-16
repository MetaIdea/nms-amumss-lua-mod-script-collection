Author = "Gumsk"
ModName = "Test CopperBoltwire Recipe"
ModNameSub = ""
BaseDescription = "Test"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"

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
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_52","Id","SPACEGUNK2"},
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_35","Id","YELLOW2"},
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
		}
}}}}}