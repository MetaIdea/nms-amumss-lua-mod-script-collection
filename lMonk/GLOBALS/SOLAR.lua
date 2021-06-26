--[[┎────────────────────────────────────────────────────────────────
	┃ Fewer and more dispersed asteroids
────┸────────────────────────────────────────────────────────────--]]
Asteroid_Spread_Mult = { X=0.52, Y=0.42 }

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC SOLAR.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'PlanetInvalidAsteroidZone',		12000},	-- 10000
					{'AsteroidNoiseScale',				-9000},	-- 30000
					{'AsteroidFadeRangeMin',			-200},	-- 1000
					{'AsteroidFadeRangeMax',			1000},	-- 2000
					{'AsteroidSpacing',					700},	-- 1000
					{'RareAsteroidMinResources',		2},		-- 3
					{'RareAsteroidMaxResources',		4},		-- 5
					{'RareAsteroidHealth',				5000},	-- 1000
					{'CommonAsteroidMinResources',		2},		-- 3
					{'CommonAsteroidMaxResources',		4},		-- 5
					{'CommonAsteroidHealth',			1600},	-- 400
					{'LargeAsteroidSpacing',			800},	-- 3000
					{'LargeAsteroidFadeRangeMin',		-1000},	-- 4000
					{'LargeAsteroidFadeRangeMax',		1000},	-- 4000
					{'AsteroidMaxNumGenerates',			-46000},-- 50000
					{'AsteroidMaxNumGeneratesPulseJump',-900},	-- 1000
					{'AsteroidSpaceStationAvoidRadius',	4000}	-- 5000
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= 'AsteroidNoiseRange',
				VALUE_CHANGE_TABLE	= {
					{'x', Asteroid_Spread_Mult.X},
					{'y', Asteroid_Spread_Mult.Y}
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= 'LargeAsteroidNoiseRange',
				VALUE_CHANGE_TABLE	= {
					{'x', Asteroid_Spread_Mult.X},
					{'y', Asteroid_Spread_Mult.Y}
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= 'RareAsteroidNoiseRangeFewRares',
				VALUE_CHANGE_TABLE	= {
					{'x', Asteroid_Spread_Mult.X},
					{'y', Asteroid_Spread_Mult.Y}
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= 'RareAsteroidNoiseRangeSomeRares',
				VALUE_CHANGE_TABLE	= {
					{'x', Asteroid_Spread_Mult.X},
					{'y', Asteroid_Spread_Mult.Y}
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= 'RareAsteroidNoiseRangeLotsOfRares',
				VALUE_CHANGE_TABLE	= {
					{'x', Asteroid_Spread_Mult.X},
					{'y', Asteroid_Spread_Mult.Y}
				}
			}
		}
	}
}}}}
