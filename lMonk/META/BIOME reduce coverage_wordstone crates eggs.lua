--[[┎──────────────────────────────────────────────────────
	┃ Remove random cargo drops
	┃ Less wordstones; less fiends eggs on dead planets
────┸──────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META reduce coverage_wordstone crate eggs.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Coverage',	0.00001},
				}
			},
			{
				MATH_OPERATION 		= '*',
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS 	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {		--	F		FS
					{'Coverage',	0.78},	--	1		0.15
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'DestroyedByPlayerVehicle', false} -- bug fix
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'DetailObjects',
				VALUE_CHANGE_TABLE 	= {
					{'Coverage',	0.00001},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/FIENDEGGS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'Coverage',	0.66},	-- 0.1 / 2
				}
			}
		}
	}
}}}}
