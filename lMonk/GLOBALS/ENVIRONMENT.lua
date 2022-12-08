---------------------------------------------------------
local desc = [[
  LOD levels increase
  Clouds size gradient decrease, cloud movement reduced
]]-------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC ENVIRONMENT.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.08',
	MOD_DESCRIPTION			= desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= {'High', 'LODAdjust'},
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		1},
					{'Ignore',		1.5},
					{'Ignore',		2},
					{'Ignore',		2.5},
					{'Ignore',		3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= {'Ultra', 'LODAdjust'},
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		2},
					{'Ignore',		2.5},
					{'Ignore',		3},
					{'Ignore',		3.5},
					{'Ignore',		4}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE = {
					{'PlanetObjectSwitch',        2},
					{'PlanetLodSwitch0',          2},
					{'PlanetLodSwitch0Elevation', 2},
					{'PlanetLodSwitch1',          2},
					{'PlanetLodSwitch2',          2},
					{'PlanetLodSwitch3',          2},
				}
			},
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'TerrainFadeTime',						-1},	-- 2
					{'TerrainFadeTimeInShip',				-1},	-- 2
					{'CreatureFadeTime',					-1.1},	-- 1.5
					{'FloraFadeTimeMin',					-0.3},	-- 0.6
					{'FloraFadeTimeMax',					-1.65},	-- 2.25
					{'AnimationScale',						-30},	-- 50 (clouds speed)
					{'IndoorsLightingPlanetMax',			0.58},	-- 0.42
					{'IndoorsLightingAbandonedFreighterMax',4},		-- 1
					{'IndoorsLightingFreighterMax',			9},		-- 1
				}
			},
			{
				PRECEDING_KEY_WORDS = 'IndoorAmbientColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			1},
					{'G',			1},
					{'B',			1},
					{'A',			0.1}
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'WindOffset',
				VALUE_CHANGE_TABLE 	= {
					{'x',			-0.1},	-- 0.5
					{'y',			-0.1}	-- 0.5
				}
			}
		}
	}
}}}}
