Color			= "ORANGE"

Author			= "Gumsk"
ModName 		= "gMultitool Mining Beam Colors"
ModNameSub		= Color
BaseDescription = "Changes the neutron cannon projectile color to "..Color
GameVersion = "452"
ModVersion		= "c"

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
	MOD_FILENAME			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION			= BaseDescription,
	MOD_AUTHOR				= Author,
	LUA_AUTHOR				= "Gumsk",
	NMS_VERSION				= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT	= "FORCE",
	MODIFICATIONS			= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"ID","LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},			--0.28627452
								{"G", ColorsRgb[Color]["G"]},			--0.81960785
								{"B", ColorsRgb[Color]["B"]}			--0.16470589
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","STRONGLASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","UT_MINER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","LASER_XO","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","SOUL_LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","SENT_LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","ATLAS_LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						}
					}
				},
				{
					MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"ID","UP_LASER1","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","UP_LASER2","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","UP_LASER3","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","UP_LASER4","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"ID","UP_LASERX","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", ColorsRgb[Color]["R"]},
								{"G", ColorsRgb[Color]["G"]},
								{"B", ColorsRgb[Color]["B"]}
							}
						}
					}
				}
			}
		}
	}
}