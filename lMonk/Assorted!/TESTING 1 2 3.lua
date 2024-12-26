------------------------------------------------------------------
local mod_desc = [[
  clear skies no storms & no interruptions for testing / building
]]----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TESTING sunny skies.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSKYGLOBALS.GLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'MinTimeBetweenStormsHigh',			7200},	-- 120
					{'MaxTimeBetweenStormsHigh',			7400},	-- 620
					{'MinTimeBetweenStormsExtremeFallback', 7200},	-- 240
					{'MaxTimeBetweenStormsExtremeFallback',	7400},	-- 620
					{'MinStormLengthLow',					1	},	-- 120
					{'MaxStormLengthLow',					2	},	-- 180
					{'MinStormLengthHigh',					1	},	-- 150
					{'MaxStormLengthHigh',					2	},	-- 320
					{'NoAtmosphereFogStrength',				0	},	-- 0.3
					{'NoAtmosphereFogMax',					0	},	-- 0.97
					--- disable nights ---
					{'MinNightFade',						1	},	-- 0.62
					{'MaxNightFade',						1	}	-- 0.68
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'GCBUILDINGGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'UnknownBuildingRange',				800	},	-- 600
					{'MarkerLineWidth',						2	},	-- 4
					{'MaxShipScanBuildings',				3	},	-- 2
					{'BuildingPlacementMaxConnectionLength',1800},	-- 200
					{'BuildingPlacementDefaultMinDistance',	1	},	-- 3
					{'MaxRadiusForPlanetBases',			 	2000},	-- 1000
					{'BaseRadiusExtension',					100	},
					{'MinRadiusForBases',					1600}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'GCROBOTGLOBALS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'DroneInvestigateMinWitnessRange',		  0	},
					{'DroneInvestigateMinWitnessRangeCantSee',0	}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'GCDEBUGOPTIONS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'WeaponScale3P',						0.7},
					{'DisableSaveSlotSorting',				true},
					{'AlwaysHaveFocus',						true},
					{'DisableBaseBuildingLimits',			true},
					{'DisableFileWatcher',					true},
					{'DisableStorms',						true}
				}
			}
		}
	},
}}}}
