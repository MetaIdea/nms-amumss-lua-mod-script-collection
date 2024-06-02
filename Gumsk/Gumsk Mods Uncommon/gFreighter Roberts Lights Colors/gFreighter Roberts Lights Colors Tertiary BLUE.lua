Color = "BLUE"

Author = "Gumsk"
ModName = "gFreighter Roberts Lights Colors Tertiary"
ModNameSub = Color
BaseDescription = "Changes color of tertiary external lights on Roberts class freighters to "..Color
GameVersion = "4711"
ModVersion = "a"

ColorsRgb = {
    BLACK = {R="0.0",G="0.0",B="0.0"},
    BLUE = {R="0.0",G="0.0",B="1.0"},
    CYAN = {R="0.0",G="0.8",B="0.8"},
    GOLD = {R="1.0",G="0.8",B="0.0"},
    GREEN = {R="0.0",G="1.0",B="0.0"},
    ORANGE = {R="1.0",G="0.46",B="0.09"},
    PINK = {R="1.0",G="0.75",B="0.8"},
    PURPLE = {R="0.5",G="0.0",B="0.5"},
    RED = {R="1.0",G="0.0",B="0.0"},
    TURQ = {R="0.0",G="0.753",B="0.64"},
    WHITE = {R="1.0",G="1.0",B="1.0"},
    YELLOW = {R="1.0",G="1.0",B="0.0"}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\PIRATEFREIGHTER\REDGLOW_MAT.MATERIAL.MBIN"},
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","gMaterialColourVec4"},
							VALUE_CHANGE_TABLE = {
								{"x",ColorsRgb[Color]["R"]},
								{"y",ColorsRgb[Color]["G"]},
								{"z",ColorsRgb[Color]["B"]}
							}
						},
					},
				},
			}
		}
	}
}