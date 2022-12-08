----------------------------------------------
local desc = [[
  squadron formation tweaks;
  freigher summon delay
]]--------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC AISPACESHIP.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCAISPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					-- {'FormationOffsetCylinderWidth',					-30},	-- 80
					-- {'FormationOffsetCylinderHeight',					-10},	-- 40
					-- {'FormationOffsetCylinderLength',					-5},	-- 10
					-- {'CombatFormationOffsetCylinderWidth',				100},	-- 80
					-- {'CombatFormationOffsetCylinderHeight',				50},	-- 40
					-- {'CombatFormationOffsetCylinderLength',				40},	-- 10
					-- {'CombatFormationOffsetCylinderWidthThirdPerson',	105},	-- 75
					-- {'CombatFormationOffsetCylinderHeightThirdPerson',	50},	-- 40
					-- {'CombatFormationOffsetCylinderLengthThirdPerson',	40},	-- 5
					-- {'MaintainFormationStrengthVariance',				0.1},	-- 0.5
					{'MinimumCircleTimeBeforeLanding',					3},		-- 5
					{'MinimumTimeBetweenOutpostLandings',				1},		-- 3
					{'DockWaitMinTime',									5},		-- 20
					{'FlybyHeight',										60},	-- 120
					{'FlybyOffset',										40},	-- 320
					{'FlybyCloseOdds',									-15},	-- 20
					{'FreighterSpawnRate',								-20},	-- 40
					{'TradeRouteFlickerFreq',							-10},
					{'TradeRouteFlickerAmp',							-0.01},
					{'WarpInTimeFreighter',								1.4},	-- 0.6
					{'MaxNumFreighters',								-5},	-- 12
				}
			}
		}
	}
}}}}
