Author = "Gumsk"
ModName = "gSound"
ModNameSub = "Biodome"
BaseDescription = "Mutes the biodome ambient sounds"
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
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM\ENTITIES\AUDIO_BIODOME.ENTITY.MBIN",
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
                "TriggerVolumeType","TkVolumeTriggerType.xml",
              },
              VALUE_CHANGE_TABLE = {
                {"VolumeTriggerType","GenericInterior"},
              },
						}
					}
				},
			}
		}
	}
}