ModName = "gShip Better Ship Lighting"
ModNameSub = "Pirate"
BaseDescription = ""
GameVersion = "6.2.1.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN
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
					MBIN_FILE_SOURCE = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_R"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_G"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_B"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",1.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.000000},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","LandingPadLight",
							},
							VALUE_CHANGE_TABLE = {
								{"TransY",12.000000},
							}
						},
					}
				}
			}
		}
	}
}