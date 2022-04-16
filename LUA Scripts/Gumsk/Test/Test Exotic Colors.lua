Author = "Gumsk"
ModName = "Test"
ModNameSub = "Exotic Colors"
BaseDescription = "Test"
GameVersion = "353"
ModVersion = "a"
FileSource1 = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\ROYALSCLASS_TRIM.TEXTURE.MBIN"

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
				["SPECIAL_KEY_WORDS"] = {"Name","GOLD"},
				["VALUE_CHANGE_TABLE"] = {
					{"Name",""},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","GOLD","Palette","Rock"},
				["LINE_OFFSET"] = "+1",
				["VALUE_CHANGE_TABLE"] = {
					{"Palette","Primary"},
				}
			},

		}
}}}}}