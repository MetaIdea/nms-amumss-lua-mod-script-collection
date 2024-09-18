Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Nutrient Processor"
BaseDescription = "Mutes the nutrient processor"
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
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\COOKER\ENTITIES\TRIGGERACTIONDATA.ENTITY.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
                "Sound","Cooker_Cooking",
              },
              REMOVE_TYPE = "ALL",
              REMOVE = "SECTION",
						}
					}
				},
			}
		}
	}
}