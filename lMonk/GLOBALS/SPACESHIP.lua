-------------------------------------------------------------------
local mod_desc = [[
  Spaceship controls changes:
   * reduced thrust force
   * more drifting: reduced speed falloff and turning brake
   * hover speed
   * greater 3rdP turning angle
   * no auto leveling
  Reduced terrain avoidance protection
  Easier landing - ignoring obstacles
  Dive underwater
  No contrails
]]-----------------------------------------------------------------
--						space					atmos						space combat			atmos combat
local eng_props = {--	c   l   h   hv   v		c   l   h   hv   v			c   l   h   hv   v		c   l   h   hv   v
	ThrustForce 	  =	{0.8,					0.7,						0.9,					0.9						},
	MinSpeed 		  =	{0.01,					{0.02,0.02,0.02, 0.1,0.1},	0.005,					0.001					},
	MaxSpeed 		  =	{1.4,					1.4,						1.3,					1.3						},
	Falloff 		  =	{1.1,					0.9,						1.2,					1.1						},
	BoostThrustForce  =	{0.85,					{1, 0.8, 3, 3, 0.75},		0.95,					{0.94,0.94, 1.5,1.5,1.5}},
	BoostMaxSpeed	  =	{{1.3,1,1.1, 1.3, 1.3},	1.2,						{1.4,1,1.2, 1.5, 1.4},	{1.2,1.2, 1.8,1.8,1.8}	},
	BoostFalloff 	  =	{1.1,					0.9,						1.2,					1.1						},
	DirectionBrakeMin =	{0.2,					{0.7, 0.8, 0.9, 0.9, 0.9},	0.4,					0.75					},
	DirectionBrake	  =	{0.5,					{0.8, 0.9, 1.1, 1.1, 1.1},	0.7,					0.8						},
	ReverseBrake 	  =	{1.1,					1.3,						1.1,					1.2						},
	OverspeedBrake	  =	{0.6,					0.95,						0.7,					0.9						},
	TurnStrength	  =	{{1, 1, 1, 1.4, 1.5},	1,							{1, 1, 1, 1.1, 1.2},	{1, 1, 1, 1.1, 1.2}		},
	LowSpeedTurnDamper=	{0.7,					{0.9, 6, 0.9, 0.8, 0.8},	0.4,					1						},
	TurnBrakeMin 	  =	{1,						{1, 1, 1.2, 1.4, 1.5},		1,						1						}
}
local ex_ct = {}
for i, ctrl in ipairs({'Control', 'ControlLight', 'ControlHeavy', 'ControlHeavyHover', 'ControlHover'}) do
	for j, eng in ipairs({'SpaceEngine', 'PlanetEngine', 'CombatEngine', 'AtmosCombatEngine'}) do
		ex_ct[#ex_ct+1] = {
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {
				ctrl,	'GcPlayerSpaceshipControlData.xml',
				eng,	'GcPlayerSpaceshipEngineData.xml'
			},
			VALUE_CHANGE_TABLE 	= (
				function()
					local tm = {}
					for prop, mod in pairs(eng_props) do
						local mul = type(mod[j]) == 'table' and mod[j][i] or mod[j]
						tm[#tm+1] = {prop , mul}
					end
					return tm
				end
			)()
		}
	end
end
ex_ct[#ex_ct+1] = {
	VALUE_CHANGE_TABLE 	= {
		{'LandingMaxSpeed',						120		},	-- 80
		{'LandingMargin',						2.2		},	-- 1.4
		{'LandingObstacleMinHeight',			3.2		},	-- 2
		{'LandingTooManyLowPointsFraction',		0.6		},	-- 0.3
		{'LowAltitudeAnimationHeight',			3100	},	-- 1200 -- solar sail trigger
		{'LowAltitudeAnimationHysteresisTime',	2		},	-- 4
		{'LowAltitudeAnimationTime',			3		},	-- 6
		{'ApplyHeightForce',					false	},
		{'WarpInTimeFreighter',					2.2		},	-- 1
		{'WarpInTimeNexus',						2.2		},	-- 1
		{'WarpNexusDistance',					-8000	},	-- -9000
		{'MaxOverspeedBrake',					900		},	-- 1000
		{'PulseDrivePlanetApproachHeight',		4000	},	-- 6000
		{'_3rdPersonRollAngle',					78		},	-- 75		(270)
		{'_3rdPersonRollAngleScience',			72		},	-- 62
		{'_3rdPersonRollAngleDropship',			64		},	-- 45
		{'_3rdPersonRollAngleAlien',			54		},	-- 30
		{'_3rdPersonFlashIntensity',			0.5		},	-- 0.9
		{'_3rdPersonFlashDuration',				0.6		},	-- 0.9
		{'_3rdPersonWarpXWander',				3.2		},	-- 6
		{'_3rdPersonWarpYWander',				1		},	-- 1.5
		{'_3rdPersonWarpZWander',				2		},	-- 5.5
		{'_3rdPersonWarpWanderStartTime',		1		},	-- 6.5
		{'AvoidancePower',						4		},	-- 3
		{'PitchCorrectHeightMax',				300		},	-- 700
		{'HoverTakeoffHeight',					68		},	-- 90
		{'HoverLandReachedDistance',			8		},	-- 10
		{'LandingButtonMinTime',				0.3		},	-- 0.5
		{'LandingPushNoseUpFactor',				-0.05	},	-- 0.15
		{'AutoLevelMinAngle',					360		}, 	-- 5
		{'AutoLevelMaxAngle',					0		}, 	-- 110
		{'ShieldRechargeMinHitTime',			20		},	-- 60		(1136)
		{'HitAsteroidDamage',					40000	},	-- 10000
		{'MuzzleLightIntensity',				6		},	-- 9
		{'HoverBrakeStrength',					2		}, 	-- 10
		{'PlayerFreighterClearSpaceRadius',		2100	},	-- 3000
		{'ThrustDecaySpring',					50		},	-- 20
		{'MiniWarpLinesNum',					0		},	-- 4
		{'MiniWarpLinesSpacing',				0		},	-- 3000
		{'MiniWarpLinesOffset',					0		},	-- 1000
		{'MiniWarpLinesHeight',					0		},	-- 800
		{'MiniWarpShakeStrength',				1.2		},	-- 2		(1358)
		{'MiniWarpStoppingMarginPlanet',		4200	},	-- 5000
		{'MiniWarpHUDArrowAttractAngle',		3		},	-- 10
		{'MiniWarpHUDArrowAttractAngleStation',	3		},	-- 5
		{'MiniWarpHUDArrowAttractAngleDense',	3		},	-- 4
		{'MiniWarpHUDArrowNumMarkersToBeDense',	3		},	-- 6
		{'CombatBoostTurnDamp',					0.75	},	-- 0.9
		{'DockingRotateSpeed',					0.7		},	-- 1
		{'ShakeMaxPower',						0.9		},	-- 1.3
		{'GroundHeightSmoothTime',				3		},	-- 0
		{'MaxSpeedUpVelocity',					80		},	-- 100
	}
}
ex_ct[#ex_ct+1] = {
--	class bonuses
	REPLACE_TYPE 		= 'All',
	MATH_OPERATION 		= '*',
	VALUE_CHANGE_TABLE 	= {
		{'ThrustForceMax', 0.8}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC SPACESHIP.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.29',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= ex_ct
	}
}}}}
