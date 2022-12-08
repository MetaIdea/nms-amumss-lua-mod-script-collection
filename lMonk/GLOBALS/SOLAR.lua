----------------------------------------------------
local desc = [[
  remove non-grouped small asteroids
  larger clean space around planets & stations
  small chance of living ships in the wild
]]--------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC SOLAR.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'PlanetInvalidAsteroidZone',				4000},	-- 10000
					{'SparseAsteroidSpread',					-1000},	-- -7
					{'AsteroidSpaceStationAvoidRadius',			3500},	-- 5000
					{'AsteroidCreatureRichSystemProbability',	0.002}	-- 0.005
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'CommonAsteroidData',
				VALUE_CHANGE_TABLE	= {
					{'Health',		2},
					{'Spacing',		1.2},	-- 645
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'LargeAsteroidData',
				VALUE_CHANGE_TABLE	= {
					{'Health',		3},
					{'Spacing',		2},		-- 9000
					{'FadeRange',	0.9},
					{'x',			1.4},
					{'y',			1.6},
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'RareAsteroidData',
				VALUE_CHANGE_TABLE	= {
					{'Health',		1.2},
					{'Spacing',		4},		-- 850
					{'FadeRange',	0.9},
					{'x',			1.4},
					{'y',			1.6},
					{'NoiseScale',	2.1},	-- 50000
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'CivilianClassWeightings',
				VALUE_CHANGE_TABLE	= {
					{'Alien',		1}
				}
			}
		}
	}
}}}}
