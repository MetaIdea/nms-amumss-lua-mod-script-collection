Time = 4

Author = "Gumsk"
ModName = "gSwitch Push"
ModNameSub = Time
BaseDescription = "Extended switch button time"
GameVersion = "6.1.8.0"
ModVersion = "a"
FileSource = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\SWITCH_BUTTON\ENTITIES\INTERACTION.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource,
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Seconds","1.000000"},
							VALUE_CHANGE_TABLE = {
								{"Seconds",Time},
							},
						},
					},
				},
			}
		}
	}
}