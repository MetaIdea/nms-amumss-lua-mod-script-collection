Color = "YELLOW"
RedAmount = "1.0"
GreenAmount = "1.0"
BlueAmount = "0"


Author = "Gumsk"
ModName = "gMech Hardpoint Reskin Light"
GameVersion = "382"
ModVersion = "a"
ModNameSub = Color
BaseDescription = "Changes color of hardpoint exomech light to "..Color

FileSource1 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\REDGLOW_MAT5.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
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
							--{"t","1"},
						},
					},
				}
			},
		}
	},
}}