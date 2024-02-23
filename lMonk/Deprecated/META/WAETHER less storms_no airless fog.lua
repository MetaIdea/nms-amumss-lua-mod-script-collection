--------------------------------------------
local desc = [[
  Decrease storms occurrence chance
  Less damaging storms in lush biome
  Remove all fog and dust in airless biome
]]------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META Decrease storm chance_No airless fog.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|Decrease storms occurance| chance
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/BLUEWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/DUSTWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/FIRESTORMWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/GRAVITYSTORMWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/GREENWEATHER.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/HUMIDWEATHER.MBIN',
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
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'LowStormsChance',		0.7},
					{'HighStormsChance',	0.6},
					{'ExtremeWeatherChance',0.4}
				}
			}
		}
	},
	{
	---	|less damaging weather in lush biome|
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/HUMIDWEATHER.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = {'Temperature', 'Storm'},
				VALUE_CHANGE_TABLE 	= {
					{'Normal',		-51},
					{'Extreme',		-73},
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = {'Temperature', 'Night'},
				VALUE_CHANGE_TABLE 	= {
					{'Normal',		-7},
					{'Extreme',		-12},
				}
			},
		}
	},
	{
	---	|No dust & fog on airless biomes|
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARCOLD.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = {'HeavyAir', 'NMSString0x80.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', ''},
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0},
					{'FogMax',				0},
					{'HeightFogStrength',	0},
					{'HeightFogMax',		0},
					{'FogHeight',			0}
				}
			}
		}
	}
}}}}
