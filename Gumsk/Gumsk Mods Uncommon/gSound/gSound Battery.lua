Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Battery"
BaseDescription = "Mutes the battery"
GameVersion = "5.1.2.0"
ModVersion = "a"

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
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_BATTERYS\ENTITIES\BATTERY.ENTITY.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
                "Sound","Base_Battery_Charging",
              },
              SECTION_UP = 2,
              REMOVE_TYPE = "ALL",
              REMOVE = "SECTION",
						}
					}
				},
			}
		}
	}
}