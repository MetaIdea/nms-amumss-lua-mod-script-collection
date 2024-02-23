---------------------------------------------------------
local mod_desc = [[
  LOD levels increase
  Clouds size gradient decrease, cloud movement reduced
  reduce biome lighting effects indoors
]]-------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC ENVIRONMENT.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS	= {'Ultra', 'LODAdjust'},
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		3},
					{'Ignore',		3},
					{'Ignore',		3},
					{'Ignore',		3},
					{'Ignore',		3}
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS	= {'Ultra', 'RegionLODRadius'},
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		0},
					{'Ignore',		2},
					{'Ignore',		3},
					{'Ignore',		4},
					{'Ignore',		5},
					{'Ignore',		6}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'Ultra',
				VALUE_CHANGE_TABLE = {
					{'ImposterResolutionMultiplier', 8}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE = {
					{'PlanetObjectSwitch',        3},
					{'PlanetLodSwitch0',          3},
					{'PlanetLodSwitch0Elevation', 3},
					{'PlanetLodSwitch1',          3},
					{'PlanetLodSwitch2',          3},
					{'PlanetLodSwitch3',          3},
				}
			},
			{
				VALUE_CHANGE_TABLE 	= {
					{'TerrainFadeTime',						1},		-- 2
					{'TerrainFadeTimeInShip',				1},		-- 2
					{'CreatureFadeTime',					0.7},	-- 1.5
					{'FloraFadeTimeMin',					0.8},	-- 0.6
					{'FloraFadeTimeMax',					1.6},	-- 2.25
					{'AnimationScale',						30},	-- 50 (clouds speed)
					{'IndoorsLightingPlanetMax',			0.98},	-- 0.42
					{'IndoorsLightingAbandonedFreighterMax',5},		-- 1
					{'IndoorsLightingFreighterMax',			10},	-- 1
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
				PRECEDING_KEY_WORDS = 'WindOffset',
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.4},	-- 0.5
					{'y',			0.4}	-- 0.5
				}
			}
		}
	}
}}}}
