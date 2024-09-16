Author = "Gumsk"
ModName = "gExtract"
ModNameSub = "No Shake"
BaseDescription = "Gets rid of the screen shake near mineral extractors"
GameVersion = "5.1.1.0"
ModVersion = "a"
FileSource = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_PUMPS\ENTITIES\MINERALEXTRACTOR.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = FileSource,
					EXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Shake","EXTRACTOR"},
							VALUE_CHANGE_TABLE = {
								{"Shake",""}
							},
						},
					},
				},
			}
		}
	}
}