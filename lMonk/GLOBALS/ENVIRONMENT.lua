---------------------------------------------------------
local mod_desc = [[
  LOD levels increase
  Clouds size gradient decrease, cloud movement reduced
  reduce biome lighting effects indoors
]]-------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC ENVIRONMENT.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.29',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			-- {
				-- MATH_OPERATION 		= '*',
				-- SPECIAL_KEY_WORDS	= {'Name', '.-WIND'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'OverallWindStrength', 0.4},	-- 0.5 1
					-- {'LdsWindStrength',		0.4},	-- 0.2 0.3
					-- {'LdsWindSpeed',		0.4}	-- 1.5 2.5
				-- }
			-- },
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
					{'Ignore',		0},	-- 7
					{'Ignore',		2},	-- 10
					{'Ignore',		2},	-- 16
					{'Ignore',		2},	-- 12
					{'Ignore',		2},	-- 10
					{'Ignore',		2}	-- 10
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'Ultra',
				VALUE_CHANGE_TABLE = {
					-- {'NumberOfImposterViews',		16},	-- 8
					{'ImposterResolutionMultiplier',4}		-- 1
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
				VALUE_CHANGE_TABLE 	= {
					{'WaterChangeTime',						160	}, -- 90
					{'WaterConditionTransitionTime',		22	}, -- 12
					{'TerrainFadeTime',						1	},	-- 2
					{'TerrainFadeTimeInShip',				1	},	-- 2
					{'CreatureFadeTime',					0.7	},	-- 1.5
					{'FloraFadeTimeMin',					0.8	},	-- 0.6
					{'FloraFadeTimeMax',					1.6	},	-- 2.25
					{'AnimationScale',						30	},	-- 50 (clouds speed)
					{'IndoorsLightingPlanetMax',			0.98},	-- 0.42
					{'IndoorsLightingAbandonedFreighterMax',4.8	},	-- 1
					{'IndoorsLightingFreighterMax',			1.4	},	-- 1
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
