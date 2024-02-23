----------------------------------------------
local mod_desc = [[
  squadron formation & battle tweaks;
  freighter summon delay
]]--------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC AISPACESHIP.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCAISPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'FormationOffsetZOffsetVarianceMaxSpeedScale',		80},	-- 150
					{'FormationOffsetCylinderWidth',					50},	-- 80
					{'FormationOffsetCylinderHeight',					30},	-- 40
					{'FormationOffsetCylinderLength',					5},		-- 10
					{'CombatFormationOffsetCylinderWidth',				180},	-- 80
					{'CombatFormationOffsetCylinderHeight',				90},	-- 40
					{'CombatFormationOffsetCylinderLength',				50},	-- 10
					{'CombatFormationOffsetCylinderWidthThirdPerson',	180},	-- 75
					{'CombatFormationOffsetCylinderHeightThirdPerson',	90},	-- 40
					{'CombatFormationOffsetCylinderLengthThirdPerson',	30},	-- 5
					{'MaintainFormationInCombatMinTime',				2},		-- 10
					{'MaintainFormationInCombatMaxTime',				8},		-- 20
					{'MaintainFormationLockStrengthCombat',				0.5},	-- 4.5
					{'OutOfFormationMinTime',							2},		-- 8
					{'OutOfFormationMaxTime',							40},	-- 16
					{'PoliceStationEngageRange',						8000},	-- 10000
					{'PoliceStationNumToLaunch',						4},		-- 9
					{'DockWaitMinTime',									25},	-- 20
					{'AbandonedSystemShipSpawnProbablity',				0.05},	-- 0
					{'FlybyHeight',										200},	-- 120
					{'FlybyOffset',										360},	-- 320
					{'FlybyCloseOdds',									35},	-- 20
					{'FreighterSpawnRate',								30},	-- 40
					{'TradeRouteFlickerFreq',							0},
					{'TradeRouteFlickerAmp',							0},
					{'WarpInTimeFreighter',								2},		-- 0.6
					{'MaxNumFreighters',								9},		-- 12
				}
			}
		}
	}
}}}}
