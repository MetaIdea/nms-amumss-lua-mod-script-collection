ModName = "gLight Better Ship Lighting"
ModNameSub = "Station Pads"
BaseDescription = ""
GameVersion = "5.1.1.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_R"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_G"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","COL_B"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"Value",1.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight7",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",60000.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight7",
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight8",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",60000.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight8",
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight9",
								"Name","INTENSITY"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",60000.0},
							}
						},
						{
							SPECIAL_KEY_WORDS = {
								"Name","spotlight9",
								"Name","FOV"
							},
							VALUE_CHANGE_TABLE = {
								{"Value",120.0},
							}
						},
					}
				}
			}
		}
	}
}