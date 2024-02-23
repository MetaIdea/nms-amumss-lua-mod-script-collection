-------------------------------------------------------------------
local mod_desc = [[
  Spaceship controls changes:
   * reduced thrust force
   * more drifting: greatly reduced speed falloff and turning brake
   * hover speed
   * greater turning angle
   * no auto leveling
  reduced terrain avoidance protection
  easier landing - ignoring obstacles
  dive underwater
  no contrails
]]-----------------------------------------------------------------
--						space					atmos					space combat			atmos combat
local eng_props = {--	c   l   h   v			c   l   h   v			c   l   h   v			c   l   h   v
	ThrustForce 	  =	{0.8,					0.7,					0.96,					0.96					},
	MinSpeed 		  =	{0.01,					{0.02, 0.02, 0.02,0.1},	0.005,					0.001					},
	MaxSpeed 		  =	{1.4,					1.4,					1.3,					1.3						},
	Falloff 		  =	{0.3,					0.7,					0.4,					0.5						},
	BoostThrustForce  =	{0.85,					{1.0, 0.6, 2.0, 0.6},	0.96,					{0.94, 0.94, 1.4, 1.4}	},
	BoostMaxSpeed	  =	{{1.3, 1, 1.1, 1.3},	1.2,					{1.4, 1, 1.2, 1.4},		{1.2, 1.2, 1.8, 1.8}	},
	BoostFalloff 	  =	{0.4,					0.75,					0.5,					0.8						},
	DirectionBrakeMin =	{0.4,					{0.7, 0.8, 1.2, 1.2},	0.5,					0.75					},
	DirectionBrake	  =	{0.6,					{0.8, 1, 1.1, 1.1},		0.75,					0.75					},
	ReverseBrake 	  =	{1.1,					1.3,					1.1,					1.2						},
	OverspeedBrake	  =	{0.6,					1.05,					0.7,					0.92					},
	TurnStrength	  =	{{1, 1, 1, 1.3},		1,						{1, 1, 1, 1.2},			{1, 1, 1, 1.2}			},
	LowSpeedTurnDamper=	{0.7,					{0.9, 6.0, 0.9, 0.88},	0.4,					1						},
	TurnBrakeMin 	  =	{1,						{1, 1, 1.2, 1.5},		1,						1						}
}
local ECT = {}
for i, ctrl in ipairs(	{'Control',		'ControlLight',	'ControlHeavy',	'ControlHover'}) do
	for j, em in ipairs({'SpaceEngine',	'PlanetEngine',	'CombatEngine',	'AtmosCombatEngine'}) do
		ECT[#ECT+1] = {
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {
				ctrl,	'GcPlayerSpaceshipControlData.xml',
				em,		'GcPlayerSpaceshipEngineData.xml'
			},
			VALUE_CHANGE_TABLE 	= (
				function()
					local tm = {}
					for prop, mod in pairs(eng_props) do
						local mul = type(mod[i]) == 'table' and mod[i][j] or mod[i]
						tm[#tm+1] = {prop , mul}
					end
					return tm
				end
			)()
		}
	end
end
ECT[#ECT+1] = {
	VALUE_CHANGE_TABLE 	= {
		{'LandingMargin',						2.2		},	-- 1.4
		{'LandingObstacleMinHeight',			3.2		},	-- 2
		{'LowAltitudeAnimationHeight',			3300	},	-- 1200 -- solar sail trigger
		{'LowAltitudeAnimationHysteresisTime',	2		},	-- 4
		{'LowAltitudeAnimationTime',			3		},	-- 6
		{'ApplyHeightForce',					false	},
		{'WarpInTimeFreighter',					2.2		},	-- 1
		{'WarpInTimeNexus',						2.2		},	-- 1
		{'WarpNexusDistance',					-8000	},	-- -9000
		{'MaxOverspeedBrake',					900		},	-- 1000
		{'PulseDrivePlanetApproachHeight',		4000	},	-- 6000
		{'_3rdPersonRollAngle',					78		},	-- 75		(270)
		{'_3rdPersonRollAngleScience',			76		},	-- 62
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
		{'LandingPushNoseUpFactor',				-0.03	},	-- 0.15
		{'AutoLevelMinAngle',					360		}, 	-- 5
		{'AutoLevelMaxAngle',					0		}, 	-- 110
		{'ShieldRechargeMinHitTime',			20		},	-- 60		(1136)
		{'HitAsteroidDamage',					40000	},	-- 10000
		{'MuzzleLightIntensity',				6		},	-- 9
		{'HoverBrakeStrength',					2		}, 	-- 10
		{'PlayerFreighterClearSpaceRadius',		2100	},	-- 3000
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
		{'DockingRotateSpeed',					0.7		},	-- 1
		{'ShakeMaxPower',						0.9		},	-- 1.3
		{'GroundHeightSmoothTime',				3		},	-- 0
		{'MaxSpeedUpVelocity',					80		},	-- 100
	}
}
ECT[#ECT+1] = {
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
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
