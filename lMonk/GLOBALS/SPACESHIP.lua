-------------------------------------------------------------------
local desc = [[
  Ship hover; tighter turning; no contrails; increase pulse speed
  Higher roll angle; milder auto leveling
]]-----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC SPACESHIP.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'LandingMargin',					0.8},	-- 1.4
					{'LandingObstacleMinHeight',		1.2},	-- 2
					{'_3rdPersonRollAngle',				3},		-- 75
					{'_3rdPersonRollAngleScience',		8},		-- 62
					{'_3rdPersonRollAngleDropship',		20},	-- 45
					{'_3rdPersonRollAngleAlien',		22},	-- 30
					{'_3rdPersonFlashIntensity',		-0.4},	-- 0.9
					{'_3rdPersonFlashDuration',			-0.3},	-- 0.9
					{'_3rdPersonWarpXWander',			-2.8},	-- 6
					{'_3rdPersonWarpYWander',			-0.5},	-- 1.5
					{'_3rdPersonWarpZWander',			-3.5},	-- 5.5
					{'_3rdPersonWarpWanderStartTime',	-2},	-- 6.5
					{'AvoidancePower',					4},		-- 3
					{'MiniWarpHUDArrowAttractAngle',	-7},	-- 10
					{'HoverTakeoffHeight',				-22},	-- 90
					{'HoverLandReachedDistance',		-2},	-- 10
					{'LandingButtonMinTime',			-0.2},	-- 0.5
					{'LandingPushNoseUpFactor',			-0.17},	-- 0.15
					{'PulseDrivePlanetApproachHeight',	2000},	-- 6000
					{'ShieldRechargeMinHitTime',		2},		-- 3
					{'ShieldRechargeRate',				-2},	-- 6
					{'SurvivalTakeOffCostMultiplier',	-0.8},	-- 2
					{'WarpInTimeFreighter',				1.6},	-- 1
					{'WarpInFlashTimeFreighter',		1.6},	-- 0.98
					{'WarpInTimeNexus',					1.6},	-- 1
					{'WarpInFlashTimeNexus',			1.6},	-- 0.98
					{'PlayerFreighterClearSpaceRadius',	-800},	-- 3000
					{"MiniWarpLinesNum",				-4},	-- 4
					{'HitAsteroidDamage',				30000},	-- 10000
					{'LootAttractDistance',				240},	-- 120
					{'LootCollectDistance',				32},	-- 20
					{'DockingRotateSpeed',				-0.3},	-- 1
					{'MiniWarpShakeStrength',			-1},	-- 2
					{'MiniWarpSpeed',					6000},	-- 30000
					{'MiniWarpStoppingMarginPlanet',	1000},	-- 5000
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'SpaceEngine', 'GcPlayerSpaceshipEngineData.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'MinSpeed',			0.001},	-- 1
					{'Falloff',				0.4},	-- 0.7
					{'LowSpeedTurnDamper',	0.7},
					{'TurnStrength',		1.16},
					{'RollAmount',			1.16},
					{'RollForce', 			1.3},
					{'RollAutoTime',		8}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'PlanetEngine', 'GcPlayerSpaceshipEngineData.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'MinSpeed',			0.0001},
					{'Falloff',				0.2},
					{'LowSpeedTurnDamper',	0.7},
					{'TurnStrength',		1.12},
					{'RollAmount',			1.12},
					{'RollForce', 			1.2},
					{'RollAutoTime',		8}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'CombatEngine', 'GcPlayerSpaceshipEngineData.xml'},
				VALUE_CHANGE_TABLE 	= {
					{'MinSpeed',			0.0005},
					{'Falloff',				0.4},
					{'LowSpeedTurnDamper',	0.06},
					{'TurnStrength',		1.44},
					{'RollAmount',			1.16},
					{'RollForce', 			1.32},
					{'RollAutoTime',		8}
				}
			}
		}
	}
}}}}
