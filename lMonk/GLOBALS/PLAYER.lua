----------------------------------
local mod_desc = [[
  More powerful jetpack & tweaks
]]--------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC PLAYER.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 4.73,
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCPLAYERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'SummonArcRange',						200	},	-- 40
					{'GroundWalkSpeed', 					5.2	}, 	-- 4.4		452
					{'GroundRunSpeed',						9.8	},	-- 8
					{'GroundWalkSpeedLowG',					2.8	},	-- 1.6
					{'GroundRunSpeedLowG',					4.4	},	-- 3.5
					{'UnderwaterMaxSpeed',					5	},	-- 4
					{'UnderwaterForce',						18	},	-- 15
					{'UnderwaterMaxJetpackSpeed',			10	},	-- 8
					{'UnderwaterJetpackForce',				28	},	-- 25
					{'WeaponZoomFOV',						0.9	},	-- 0.7
					{'BinocularRangePlanet',				1500},	-- 1000
					{'BinocularRangeSpace',					15000},	-- 10000
					{'JetpackUnderwaterDrainRate',			0.6	},	-- 0.4
					{'JetpackDrainHorizontalFactor',		1.7	},	-- 2.5
					{'MeleeBoostAirForce',					3.6	},	-- 3
					{'RocketBootsDoubleTapTime',			0.24},	-- 0.2		791
					{'RocketBootsMaxSpeed',					30	},	-- 20
					{'RocketBootsDriftEndTime',				0.8	},	-- 2
					{'RocketBootsDriftBraking',				1.0	},	-- 0.6
					{'StealthMinLevel',						0.5	},	-- 0.15
					{'StealthDrainRate',					3	},	-- 15
					{'StealthRechargeRate',					20	},	-- 12
					{'JetpackMaxSpeed',						8	},	-- 5
					{'JetpackIgnitionTime',					0.2	},	-- 0.4
					{'JetpackFillRate',						0.7	},	-- 0.5
					{'SpaceJetpackMaxSpeed',				15	},	-- 10
					{'SpaceJetpackDrainRate',				0.06},	-- 0.3
					{'ShieldRechargeMinTimeSinceDamage',	15	},	-- 30		991
					{'StaminaRate',							0.04},	-- 0.1		pet ride stamina
					{'ReloadButtonHoldTimeToHolster',		0.4	},	-- 0.5		1470
					{'WeaponLowerDelay',					4	},	-- 3
					{'WeaponLag',							2	},	-- 0.6
					{'HardLandMin',							8	},	-- 5
					{'HardLandMax',							32	},	-- 18
					{'TerrainLaserRange',					160	},	-- 100
					{'VehicleLaserRange',					320	},	-- 200
					{'MaxFallSpeed',						50	}, 	-- 30
					{'MaxBuildHeight',						1024}, 	-- 64
					{'AutoAimMaxAngle',						25	}, 	-- 30
					{'SlopeSlidingSpeed',					-18	},	-- -15
					{'SlopeSlideBrake',						6.5	},	-- 18.5
					{'AutoSaveMaxTime',						999999999},
					{'AutoSaveMinTime',						999999999},
					{'AutoSaveRangeOnFoot',					999999999},
					{'AutoSaveRangeInVehicle',				999999999},
					{'AutoSaveRangeInSpace',				9999999999},
				}
			}
		}
	}
}}}}
