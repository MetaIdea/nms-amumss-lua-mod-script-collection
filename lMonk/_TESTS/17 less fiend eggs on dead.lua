--[[┎───────────────────────────────────────────────────
	┃ less fiend eggs on dead planets
────┸───────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 17 less fiend eggs on dead planets.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/FIENDEGGS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Objects',
				VALUE_CHANGE_TABLE 	= {
					{'Coverage',	0.06},	-- 0.1
					{'FlatDensity',	0.005}	-- 0.005
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS	= 'DetailObjects',
				VALUE_CHANGE_TABLE 	= {
					{'Coverage',	1.4},	-- 2
					{'FlatDensity',	0.005}	-- 0.005
				}
			},
		}
	}
}}}}
