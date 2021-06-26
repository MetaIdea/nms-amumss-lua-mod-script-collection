--[[┎──────────────────────────────────────────────────────────────────
	┃ non-damaging storms in lush biomes
────┸──────────────────────────────────────────────────────────────--]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 14 non-damaging storm on lush biome.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/HUMIDWEATHER.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'OverrideTemperature', false}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				VALUE_MATCH			= 90,
				VALUE_MATCH_OPTIONS = '>',
				PRECEDING_KEY_WORDS = 'Storm',
				VALUE_CHANGE_TABLE 	= {
					{'Normal',		-55},
					{'Extreme',		-86},
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				VALUE_MATCH			= 9,
				VALUE_MATCH_OPTIONS = '>=',
				PRECEDING_KEY_WORDS = 'Night',
				VALUE_CHANGE_TABLE 	= {
					{'Normal',		-7},
					{'Extreme',		-19},
				}
			}
		}
	}
}}}}
