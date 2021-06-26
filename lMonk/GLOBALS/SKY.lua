--[[┎────────────────────────────────────────────────────────────────
	┃ Decrease storms length and increase time between storms
	┃ Decrease planet fog levels
────┸────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC SKY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSKYGLOBALS.GLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'MinTimeBetweenStormsHigh',			3},		-- 120
					{'MaxTimeBetweenStormsHigh',			2},		-- 620
					{'MinTimeBetweenStormsExtremeFallback', 2},		-- 240
					{'MaxTimeBetweenStormsExtremeFallback',	2},		-- 620
					{'MinStormLengthLow',					0.75},	-- 120
					{'MaxStormLengthLow',					0.75},	-- 180
					{'MinStormLengthHigh',					0.75},	-- 150
					{'MaxStormLengthHigh',					0.55},	-- 320
					{'StormWarningTime',					0.8}	-- 25
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'PlanetFog',
				VALUE_CHANGE_TABLE 	= {
					{'FogMax',				0.98},	-- 1
					{'Alpha1',				0.98},	-- 1
					{'Alpha2',				0.98}	-- 1
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'PlanetExtremeFog',
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0.78},	-- 0.5
					{'FogMax',				0.95},	-- 0.9
					{'HeightFogStrength',	0.75},	-- 0.3
					{'Alpha1',				0.9},	-- 1
					{'Alpha2',				0.9}	-- 1
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'PlanetStormFog',
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0.88},	-- 1.5
					{'FogMax',				0.95},	-- 0.95
					{'HeightFogStrength',	0.85},	-- 0.5
					{'Alpha1',				0.9},	-- 1
					{'Alpha2',				0.9}	-- 1
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'PlanetFlightFog',
				VALUE_CHANGE_TABLE 	= {
					{'FogStrength',			0.8},	-- 0.04
					{'FogMax',				0.95},	-- 1
					{'HeightFogStrength',	0.8}	-- 0.15
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'SpaceSkyMin',
				VALUE_CHANGE_TABLE 	= {
					{'SpaceFogMax',			0.44},	-- 0.7
					{'SpaceFogPlanetMax',	0.5}	-- 0
				}
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'SpaceSkyMax',
				VALUE_CHANGE_TABLE 	= {
					{'SpaceFogMax',			0.52},	-- 0.7
					{'SpaceFogPlanetMax',	0.54}	-- 0
				}
			}
		}
	}
}}}}
