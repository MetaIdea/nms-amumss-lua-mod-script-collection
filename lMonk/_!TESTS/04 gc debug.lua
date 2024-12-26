--------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '___TEST 04 debug.pak',
	MOD_AUTHOR			= 'lMonk',
	MODIFICATIONS		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/NPCWEAROOM/PARTS/FLOOR0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'polySurface4279', nil, nil}, -- 'IGNORE', 'IGNORE'
				VALUE_CHANGE_TABLE 	= {
					{'TransZ', 8}
				}
			}
		}
	},
}}}}
