-----------------------------------------------------------
local desc = [[
  Decrease storms length and increase time between storms
  Decrease planet fog levels
]]---------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC SKY.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.08',
	MOD_DESCRIPTION			= desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCSKYGLOBALS.GLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'MinTimeBetweenStormsHigh',			3},		-- 120
					{'MaxTimeBetweenStormsHigh',			2},		-- 620
					{'MinTimeBetweenStormsExtremeFallback', 2},		-- 240
					{'MaxTimeBetweenStormsExtremeFallback',	2},		-- 620
					{'MinStormLengthLow',					0.75},	-- 120
					{'MaxStormLengthLow',					0.75},	-- 180
					{'MinStormLengthHigh',					0.75},	-- 150
					{'MaxStormLengthHigh',					0.55},	-- 320
					{'StormWarningTime',					0.8},	-- 25
					{'WeatherBloomGain',					0.66},	-- 7.1
					{'NoAtmosphereFogStrength',				0},		-- 0.3
					{'NoAtmosphereFogMax',					0},		-- 0.97
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'PhotoModeVignette',
				VALUE_CHANGE_TABLE 	= {
					{'x',			1},
					{'y',			1}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'PlanetFog', 'GcFogProperties.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'FogMax',				0.94},	-- 1
					{'Alpha1',				0.94},	-- 1
					{'Alpha2',				0.94}	-- 1
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'PlanetExtremeFog', 'GcFogProperties.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0.78},	-- 0.5
					{'FogMax',				0.95},	-- 0.9
					{'HeightFogStrength',	0.75},	-- 0.3
					{'Alpha1',				0.9},	-- 1
					{'Alpha2',				0.9}	-- 1
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'PlanetStormFog', 'GcFogProperties.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0.88},	-- 1.5
					{'FogMax',				0.95},	-- 0.95
					{'HeightFogStrength',	0.85},	-- 0.5
					{'Alpha1',				0.9},	-- 1
					{'Alpha2',				0.9}	-- 1
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'PlanetFlightFog', 'GcFogProperties.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0.8},	-- 0.04
					{'FogMax',				0.95},	-- 1
					{'HeightFogStrength',	0.8}	-- 0.15
				}
			},
			{
				PRECEDING_KEY_WORDS = 'SpaceSkyMin',
				VALUE_CHANGE_TABLE 	= {
					{'SpaceFogMax',			0.44},	-- 0.7
					{'SpaceFogPlanetMax',	0.5},	-- 0

				}
			},
			{
				PRECEDING_KEY_WORDS = 'SpaceSkyMax',
				VALUE_CHANGE_TABLE 	= {
					{'SpaceFogMax',			0.52},	-- 0.7
					{'SpaceFogPlanetMax',	0.54},	-- 0
				}
			},
		}
	}
}}}}
