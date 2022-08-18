-------------------------------------------------------------------
local desc = [[
  Ship hover; tighter turning; no contrails; increase pulse speed
  Higher roll angle; milder auto leveling
]]-----------------------------------------------------------------

local engine_settings = {
	{'keys',				'SpaceEngine',	'CombatEngine','PlanetEngine',	'AtmosCombatEngine'},
	{'MinSpeed',			0.001,			0.0005,			0.0001,			0.0005},
	{'MaxSpeed',			1.3,			1.3,			1.3,			1.3},
	{'Falloff',				0.25,			0.4,			0.7,			0.45},
	{'BoostThrustForce',	1.2,			1.2,			1.2,			1.2},
	{'BoostMaxSpeed',		1.3,			1.5,			1.3,			1.5},
	{'BoostFalloff',		0.4,			0.45,			0.75,			0.45},
	{'DirectionBrakeMin',	0.4,			0.5,			0.75,			0.75},
	{'DirectionBrake',		0.6,			0.7,			0.85,			0.85},
	{'LowSpeedTurnDamper',	0.18,			0.24,			0.6,			0.8},
	{'TurnStrength',		1.08,			1.2,			1.02,			1.24},
	-- {'RollAmount',			1.16,			1.16,			1.12,			1.16},
	-- {'RollForce',			1.3,			1.32,			1.2,			1.32},
	{'RollAutoTime',		1,				1,				8,				8},
	{'BalanceTimeMin',		1,				1,				10,				4},
	{'BalanceTimeMax',		1,				1,				10,				4},
}
function engine_settings:Get(x)
	return {
		REPLACE_TYPE 		= 'All',
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {self[1][x], 'GcPlayerSpaceshipEngineData.xml'},
		VALUE_CHANGE_TABLE 	= (
			function()
				T = {}
				for i=2, #self do
					table.insert(T, {self[i][1] ,self[i][x]})
				end
				return T
			end
		)()
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i=2, #tbl[1] do table.insert(T, tbl:Get(i)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC SPACESHIP.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= 3.99,
	MOD_DESCRIPTION			= desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(engine_settings)
	},
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'LandingMargin',					0.8},	-- 1.4
					{'LandingObstacleMinHeight',		1.2},	-- 2
					{'LowAltitudeAnimationHeight',		1100},	-- 1200 -- solar sail trigger
					{'LowAltitudeAnimationHysteresisTime',-1},	-- 4
					{'LowAltitudeAnimationTime',		-2},	-- 6
					{'_3rdPersonRollAngle',				3},		-- 75
					{'_3rdPersonRollAngleScience',		8},		-- 62
					{'_3rdPersonRollAngleDropship',		20},	-- 45
					{'_3rdPersonRollAngleAlien',		22},	-- 30
					{'_3rdPersonFlashIntensity',		-0.4},	-- 0.9
					{'_3rdPersonFlashDuration',			-0.3},	-- 0.9
					{'_3rdPersonWarpXWander',			-2.8},	-- 6
					{'_3rdPersonWarpYWander',			-0.5},	-- 1.5
					{'_3rdPersonWarpZWander',			-3.5},	-- 5.5
					{'_3rdPersonWarpWanderStartTime',	1},		-- 6.5
					{'AvoidancePower',					4},		-- 3
					{'MiniWarpHUDArrowAttractAngle',	-7},	-- 10
					{'HoverTakeoffHeight',				-22},	-- 90
					{'HoverLandReachedDistance',		-2},	-- 10
					{'LandingButtonMinTime',			-0.2},	-- 0.5
					{'LandingPushNoseUpFactor',			-0.18},	-- 0.15
					{'PulseDrivePlanetApproachHeight',	2000},	-- 6000
					{'ShieldRechargeMinHitTime',		-40},	-- 60
					{'SurvivalTakeOffCostMultiplier',	-0.8},	-- 2
					{'WarpInTimeFreighter',				1.2},	-- 1
					{'WarpInTimeNexus',					1.2},	-- 1
					{'PlayerFreighterClearSpaceRadius',	-800},	-- 3000
					{"MiniWarpLinesNum",				-4},	-- 4
					{'HitAsteroidDamage',				30000},	-- 10000
					{'LootAttractDistance',				240},	-- 120
					{'LootCollectDistance',				32},	-- 20
					{'DockingRotateSpeed',				-0.3},	-- 1
					{'MiniWarpShakeStrength',			-1},	-- 2
					{'MiniWarpStoppingMarginPlanet',	1000},	-- 5000
				}
			}
		}
	}
}}}}
