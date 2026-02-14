ModName = "gShip Better Ship Lighting"
ModNameSub = "Station Ambience"
BaseDescription = ""
GameVersion = "6.2.1.0"
ModVersion = "a"

--[[ Files Modified:
METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN
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
					MBIN_FILE_SOURCE = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
					MXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = {
								"SpaceStationLights"
							},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"R",1.000000},
								{"G",1.000000},
								{"B",1.000000}
							}
						}
					}
				},
			}
		}
	}
}