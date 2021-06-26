--[[┎──────────────────────────────────────────────────────────
	┃ Decrease storms occurance chance
	┃ non-damaging storms in lush biomes
	┃ Remove all fog and dust in airless biomes
────┸──────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META Decrease storm chance_No airless fog.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- Decrease storms occurance chance
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/BLUEWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/DUSTWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/FIRESTORMWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/GRAVITYSTORMWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/GREENWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/LAVAWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/RADIOACTIVE.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/RAINWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/REDWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SCORCHED.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SNOWWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SWAMPWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/TOXIC.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'LowStormsChance',		0.7},
					{'HighStormsChance',	0.6},
					{'ExtremeWeatherChance',0.4}
				}
			}
		}
	},
	{
		-- less-damaging storms in lush biomes
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/HUMIDWEATHER.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'LowStormsChance',		0.7},
					{'HighStormsChance',	0.6},
					{'ExtremeWeatherChance',0.4}
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
					{'Extreme',		-76},
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
					{'Extreme',		-12},
				}
			}
		}
	},
	{
		-- Remove all fog and dust in airless biome
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARCOLD.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0},
					{'HeightFogStrength',	0},
					{'Thickness',			0},
					{'Alpha1',				0},
					{'Alpha2',				0},
					{'CloudRatio',			0},
				}
			}
		}
	}
}}}}
