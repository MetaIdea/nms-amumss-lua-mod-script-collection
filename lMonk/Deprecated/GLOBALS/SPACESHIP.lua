-------------------------------------------------------------------
local desc = [[
  Ship hover; tighter turning; no contrails; increase pulse speed
  Higher roll angle; milder auto leveling
]]-----------------------------------------------------------------

function EngineSettings()
	local engines = {
		mode =					{'SpaceEngine',	'CombatEngine', 'PlanetEngine',	'AtmosCombatEngine'},
		{pr='ThrustForce',			0.8,			0.96,			0.7,			0.96},
		{pr='MinSpeed',				0.001,			0.0005,			0.0001,			0.0005},
		{pr='MaxSpeed',				1.4,			1.3,			1.4,			1.3},
		{pr='Falloff',				0.3,			0.4,			0.7,			0.5},
		{pr='BoostThrustForce',		0.85,			0.96,			0.7,			0.96},
		{pr='BoostMaxSpeed',		1.3,			1.5,			1.3,			1.5},
		{pr='BoostFalloff',			0.4,			0.5,			0.75,			0.8},
		{pr='DirectionBrakeMin',	0.4,			0.5,			0.75,			0.75},
		{pr='DirectionBrake',		0.6,			0.7,			0.84,			0.84},
		{pr='LowSpeedTurnDamper',	0.7,			0.7,			0.9,			1},
		{pr='RollAutoTime',			1,				1,				8,				8},
		{pr='BalanceTimeMin',		1,				1,				10,				4},
		{pr='BalanceTimeMax',		1,				1,				10,				4}
	}
	local T = {}
	for i, em in ipairs(engines.mode) do
		table.insert(T, {
			REPLACE_TYPE 		= 'All',
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {em, 'GcPlayerSpaceshipEngineData.xml'},
			VALUE_CHANGE_TABLE 	= (
				function()
					tm = {}
					for _,v in ipairs(engines) do
						table.insert(tm, {v.pr , v[i]})
					end
					return tm
				end
			)()
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC SPACESHIP.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.08',
	MOD_DESCRIPTION			= desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= EngineSettings()
	},
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'LandingMargin',						0.8},	-- 1.4
					{'LandingObstacleMinHeight',			1.2},	-- 2
					{'LowAltitudeAnimationHeight',			1100},	-- 1200 -- solar sail trigger
					{'LowAltitudeAnimationHysteresisTime',	-1},	-- 4
					{'LowAltitudeAnimationTime',			-2},	-- 6
					{'MaxOverspeedBrake',					-150},	-- 1000
					{'PulseDrivePlanetApproachHeight',		2000},	-- 6000
					{'_3rdPersonRollAngle',					3},		-- 75		(270)
					{'_3rdPersonRollAngleScience',			8},		-- 62
					{'_3rdPersonRollAngleDropship',			20},	-- 45
					{'_3rdPersonRollAngleAlien',			22},	-- 30
					{'_3rdPersonFlashIntensity',			-0.4},	-- 0.9
					{'_3rdPersonFlashDuration',				-0.3},	-- 0.9
					{'_3rdPersonWarpXWander',				-2.8},	-- 6
					{'_3rdPersonWarpYWander',				-0.5},	-- 1.5
					{'_3rdPersonWarpZWander',				-3.5},	-- 5.5
					{'_3rdPersonWarpWanderStartTime',		1},		-- 6.5
					{'AvoidancePower',						1},		-- 3
					{'PitchCorrectHeightMax',				-400},	-- 700 test
					{'HoverTakeoffHeight',					-22},	-- 90
					{'HoverLandReachedDistance',			-2},	-- 10
					{'LandingButtonMinTime',				-0.2},	-- 0.5
					{'LandingPushNoseUpFactor',				-0.18},	-- 0.15
					{'ShieldRechargeMinHitTime',			-40},	-- 60
					{'WarpInTimeFreighter',					1.2},	-- 1
					{'WarpInTimeNexus',						1.2},	-- 1
					{'WarpNexusDistance',					1000},	-- -9000
					{'PlayerFreighterClearSpaceRadius',		-800},	-- 3000
					{'HitAsteroidDamage',					30000},	-- 10000
					{'MiniWarpShakeStrength',				-0.8},	-- 2		(1205)
					{'MiniWarpStoppingMarginPlanet',		1000},	-- 5000
					{'MiniWarpHUDArrowAttractAngle',		-7},	-- 10
					{'MiniWarpHUDArrowAttractAngleStation',	-2},	-- 5
					{'MiniWarpHUDArrowAttractAngleDense',	-1},	-- 4
					{'MiniWarpHUDArrowNumMarkersToBeDense',	-3},	-- 6
					{'LootAttractDistance',					240},	-- 120
					{'LootCollectDistance',					32},	-- 20
					{'DockingRotateSpeed',					-0.3},	-- 1
					{'ShakeMaxPower',						-0.6},	-- 1.3
					{'GroundHeightSmoothTime',				3},		-- 0
					{'MaxSpeedUpVelocity',					-20},	-- 100
				}
			},
			{
			--	class bonuses
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'ThrustForceMax',		0.8}
				}
			},
			{
				VALUE_CHANGE_TABLE 	= {

					{'MiniWarpLinesNum',	0},
					{'MiniWarpLinesSpacing',0},
					{'MiniWarpLinesOffset',	0},
					{'MiniWarpLinesHeight',	0},
					{'ApplyHeightForce',	false}
				}
			}
		}
	}
}}}}
