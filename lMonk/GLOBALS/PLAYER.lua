----------------------------------
local mod_desc = [[
  More powerful jetpack & tweaks
]]--------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC PLAYER.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCPLAYERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'SummonArcRange',						200},	-- 40
					{'GroundWalkSpeed', 					5.2}, 	-- 4.4		452
					{'GroundRunSpeed',						9.8},	-- 8
					{'GroundWalkSpeedLowG',					2.8},	-- 1.6
					{'GroundRunSpeedLowG',					4.4},	-- 3.5
					{'WeaponZoomFOV',						0.9},	-- 0.7
					{'JetpackUnderwaterDrainRate',			0.6},	-- 0.4
					{'JetpackDrainHorizontalFactor',		1.7},	-- 2.5
					{'MeleeBoostAirForce',					3.6},	-- 3		783
					{'RocketBootsDoubleTapTime',			0.26},	-- 0.2
					{'RocketBootsMaxSpeed',					25},	-- 20
					{'RocketBootsDriftBraking',				0.3},	-- 0.6
					{'StealthMinLevel',						0.5},	-- 0.15
					{'StealthDrainRate',					3},		-- 15
					{'StealthRechargeRate',					20},	-- 12
					{'JetpackBrake',						1.6},	-- 2.2
					{'JetpackMaxSpeed',						6},		-- 5
					{'JetpackFillRate',						0.7},	-- 0.5
					{'SpaceJetpackMaxSpeed',				15},	-- 10
					{'SpaceJetpackDrainRate',				0.06},	-- 0.3
					{'ShieldRechargeMinTimeSinceDamage',	15},	-- 30		991
					{'StaminaRate',							0.04},	-- 0.1		pet ride stamina
					{'ReloadButtonHoldTimeToHolster',		0.4},	-- 0.5		1470
					{'WeaponLowerDelay',					4},		-- 3
					{'WeaponHolsterDelay',					8},		-- 6
					{'MaxFallSpeed',						50}, 	-- 30
					{'MaxBuildHeight',						1024}, 	-- 64
					{'AutoAimMaxAngle',						25}, 	-- 30
					{'SlopeSlidingSpeed',					-18},	-- -15
					{'SlopeSlideBrake',						6.5},	-- 18.5
					{'AutoSaveMaxTime',						999999999},	--	1600
					{'AutoSaveMinTime',						999999999},
					{'AutoSaveRangeOnFoot',					999999999},
					{'AutoSaveRangeInVehicle',				999999999},
					{'AutoSaveRangeInSpace',				9999999999},
				}
			}
		}
	}
}}}}
