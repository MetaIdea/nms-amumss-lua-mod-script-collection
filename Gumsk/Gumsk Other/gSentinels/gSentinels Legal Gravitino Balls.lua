Author = "Gumsk"
ModName = "gSentinel Legal Gravitino Balls"
ModNameSub = ""
BaseDescription = "Picking up gravballs no longer triggers sentinel attacks"
GameVersion = "5.2.8.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT\ENTITIES\LIGHTUP.ENTITY.MBIN
--]]


NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT\ENTITIES\LIGHTUP.ENTITY.MBIN",
          EXML_CHANGE_TABLE = {
            {
              VALUE_CHANGE_TABLE = {
                {"InteractIsCrime","False"},
              },
            },
          },
				},
			},
		}
	}
}