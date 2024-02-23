------------------------------------------------------------------
-- EXCLUDED FROM BATCH
------------------------------------------------------------------
local desc = [[
  clear skies no storms & no interruptions for testing / building
]]----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TESTING clear conditions.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCBUILDINGGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'MarkerLineWidth',						-3},	-- 4
					{'MaxRadiusForPlanetBases',			 	2400},	-- 1000
					{'BuildingPlacementMaxConnectionLength',3000},	-- 200
					{'BaseRadiusExtension',					200},
					{'MinRadiusForBases',					2500},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'GCDEBUGOPTIONS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'DisableSaveSlotSorting',				true},
					{'DisableBaseBuildingLimits',			true},
					{'ForceSunAngle',						35},	-- 0
					{'EnableDayNightCycle',					false},
					{'DisableStorms',						true},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'GCGAMEPLAYGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'AggressiveSentinelProbability',		0.001},
					{'LowSentinelProbability',				0.999},
				}
			}
		}
	},
}}}}
