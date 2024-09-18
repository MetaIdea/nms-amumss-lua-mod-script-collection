Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Refiner Portable"
BaseDescription = "Mutes the portable refiner"
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
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
                "Sound","Obj_PortableRefinery_Start",
              },
              SECTION_UP = 1,
              REMOVE_TYPE = "ALL",
              REMOVE = "SECTION",
						}
					}
				},
			}
		}
	}
}