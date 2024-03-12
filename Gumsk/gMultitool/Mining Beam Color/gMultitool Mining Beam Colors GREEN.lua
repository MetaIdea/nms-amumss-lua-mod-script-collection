ColorName		= "GREEN"
RedAmount		= 0.0
GreenAmount		= 1.0
BlueAmount		= 0.0

Author			= "Gumsk"
ModName 		= "gMultitool Mining Beam Colors"
ModNameSub		= ColorName
BaseDescription = "Changes the neutron cannon projectile color to "..ColorName
GameVersion = "452"
ModVersion		= "b"

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
								{"R", RedAmount},			--0.28627452
								{"G", GreenAmount},			--0.81960785
								{"B", BlueAmount},			--0.16470589
							},
						},
						{
							SPECIAL_KEY_WORDS = {"ID","STRONGLASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},			--0.26666668
								{"G", GreenAmount},			--0.99215686
								{"B", BlueAmount},			--1
							},
						},
						{
							SPECIAL_KEY_WORDS = {"ID","UT_MINER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},			--0.26666668
								{"G", GreenAmount},			--0.99215686
								{"B", BlueAmount},			--1
							},
						},
						{
							SPECIAL_KEY_WORDS = {"ID","LASER_XO","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},			--0.26666668
								{"G", GreenAmount},			--0.99215686
								{"B", BlueAmount},			--1
							},
						},
						{
							SPECIAL_KEY_WORDS = {"ID","SOUL_LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},			--0.26666668
								{"G", GreenAmount},			--0.99215686
								{"B", BlueAmount},			--1
							},
						},
						{
							SPECIAL_KEY_WORDS = {"ID","SENT_LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},			--0.26666668
								{"G", GreenAmount},			--0.99215686
								{"B", BlueAmount},			--1
							},
						},
						{
							SPECIAL_KEY_WORDS = {"ID","ATLAS_LASER","UpgradeColour","Colour.xml"},
							VALUE_CHANGE_TABLE = {
								{"R", RedAmount},			--0.26666668
								{"G", GreenAmount},			--0.99215686
								{"B", BlueAmount},			--1
							},
						},
					},
				},
			}
		}
	}
}