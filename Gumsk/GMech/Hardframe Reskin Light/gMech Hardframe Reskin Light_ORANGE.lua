Color = "ORANGE"
RedAmount = "1.0"
GreenAmount = "0.55"
BlueAmount = "0"

Author = "Gumsk"
ModName = "gMech Hardframe Reskin Light"
GameVersion = "393"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of hardframe exomech light to "..Color

FileSource1 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\REDGLOW_MAT5.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MODIFICATIONS"]	= {
	{
		["MBIN_CHANGE_TABLE"] = {
			{
				["MBIN_FILE_SOURCE"] = FileSource1,
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name","gMaterialColourVec4"},
						["VALUE_CHANGE_TABLE"] = {
							{"x",RedAmount},
							{"y",GreenAmount},
							{"z",BlueAmount},
						},
					},
				}
			},
		}
	},
}}