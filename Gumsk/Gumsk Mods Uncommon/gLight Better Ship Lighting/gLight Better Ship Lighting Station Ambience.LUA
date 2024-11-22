ModName = "gLight Better Ship Lighting"
ModNameSub = "Station Ambience"
BaseDescription = ""
GameVersion = "5.2.8.0"
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
					MBIN_FILE_SOURCE = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
					EXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = {
								"SpaceStationLights"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"R",1.0},
								{"G",1.0},
								{"B",1.0}
							}
						}
					}
				},
			}
		}
	}
}