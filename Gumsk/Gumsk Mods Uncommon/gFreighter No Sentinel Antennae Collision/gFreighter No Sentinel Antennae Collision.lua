Author = "Gumsk"
ModName = "gFreighter No Sentinel Antennae Collision"
ModNameSub = ""
BaseDescription = ""
GameVersion = "6.1.8.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\VERTICALFIN.SCENE.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = {
						"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\VERTICALFIN.SCENE.MBIN",
					},
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {
								"Type","COLLISION"
							},
							REMOVE = "SECTION",
						},
					},
				},
			}
		}
	}
}