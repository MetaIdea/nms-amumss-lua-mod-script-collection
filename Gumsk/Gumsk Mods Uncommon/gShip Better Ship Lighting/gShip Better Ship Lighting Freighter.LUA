ModName = "gShip Better Ship Lighting"
ModNameSub = "Freighter"
BaseDescription = ""
GameVersion = "6.2.1.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.SCENE.MBIN
MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN
MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_R"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_G"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_B"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","pointLight1",
								"Name","FALLOFF"
							},
							VALUE_CHANGE_TABLE = {
								{"Value","1.000000"},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","pointLight1",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",12.000000},
							}
						},
					}
				},
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_R"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_G"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_B"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
					}
				},
				{
					MBIN_FILE_SOURCE = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_R"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_G"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_B"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
					}
				},
			}
		}
	}
}