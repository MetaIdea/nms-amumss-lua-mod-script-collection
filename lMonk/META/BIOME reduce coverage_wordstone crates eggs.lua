--------------------------------------------------------------------------
local desc = [[
  Remove random cargo drops & damaged machinery in the wild
  Lower chance of wordstones, underground cargo & dead planet fiend eggs
]]------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META reduce coverage_wordstone crate eggs.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN'},
				SECTION_UP			= 1,
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN'},
				SECTION_UP			= 1,
				REMOVE				= 'SECTION'
			},
			{
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Coverage',	0.1},
				}
			},
			{
				MATH_OPERATION 		= '*',
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS 	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {		--	F		FS
					{'Coverage',	0.75},	--	1		0.15
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',				
				VALUE_CHANGE_TABLE 	= {
					{'DestroyedByPlayerVehicle', false} -- bug fix
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
					{'Coverage',	0.5},	-- 0.1 / 2
				}
			}
		}
	}
}}}}
