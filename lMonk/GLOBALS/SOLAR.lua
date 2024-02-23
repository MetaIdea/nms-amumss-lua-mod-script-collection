----------------------------------------------------
local mod_desc = [[
  remove non-grouped small asteroids
  larger clean space around planets & stations
  small chance of living ships in the wild
]]--------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC SOLAR.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'PlanetInvalidAsteroidZone',				14000},	-- 10000
					{'SparseAsteroidSpread',					-1010},	-- -7
					{'AsteroidSpaceStationAvoidRadius',			6500},	-- 5000
					{'AsteroidCreatureRichSystemProbability',	0.008}	-- 0.005
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Preserve',
				PRECEDING_KEY_WORDS = 'CommonAsteroidData',
				VALUE_CHANGE_TABLE	= {
					{'Health',		2000},		-- 1000
					{'Spacing',		'@*1.4'},	-- 645
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Preserve',
				PRECEDING_KEY_WORDS = 'LargeAsteroidData',
				VALUE_CHANGE_TABLE	= {
					{'Health',		1200},		-- 400
					{'Spacing',		'@*2'},		-- 9000
					{'FadeRange',	8100}		-- 9000
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Preserve',
				PRECEDING_KEY_WORDS = 'RareAsteroidData',
				VALUE_CHANGE_TABLE	= {
					{'Health',		1800},		-- 1400
					{'Spacing',		'@*4'},		-- 850
					{'FadeRange',	8100},		-- 9000
					{'NoiseScale',	'@*2.1'},	-- 50000
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'CivilianClassWeightings',
				VALUE_CHANGE_TABLE	= {
					{'Royal',		3},
					{'Sail',		5},
					{'Alien',		2},
					{'Robot',		3}
				}
			}
		}
	}
}}}}
