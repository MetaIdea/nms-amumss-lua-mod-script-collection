----------------------------------
local desc = [[
  More powerful jetpack & tweaks
]]--------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC PLAYER.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCPLAYERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'SummonArcRange',						160},	-- 40
					{"GroundWalkSpeed", 					0.8}, 	-- 4.4		319
					{"GroundRunSpeed",						1.4},	-- 8
					{'GroundWalkSpeedLowG',					1.2},	-- 1.6
					{'GroundRunSpeedLowG',					2},		-- 3.5
					{'WeaponZoomFOV',						0.2},	-- 0.7
					{'MeleeBoostAirForce',					0.4},	-- 3		654
					{'StealthMinLevel',						0.35},	-- 0.15
					{'StealthDrainRate',					-13},	-- 15
					{'StealthRechargeRate',					12},	-- 12
					{'RocketBootsActivationWindow',			0.05},	-- 0.25
					{'RocketBootsDoubleTapTime',			0.05},	-- 0.2
					{'RocketBootsDriftForce',				4},		-- 30
					{'RocketBootsMinDesiredHeight',			0.4},	-- 2
					{'RocketBootsMaxDesiredHeight',			0.2},	-- 6
					{'RocketBootsHeightAdjustTime',			-0.06},	-- 0.18
					{'RocketBootsHeightAdjustUpStrength',	0.05},	-- 0.57
					{'RocketBootsHeightAdjustDownStrength',	-0.08},	-- 0.3
					{'RocketBootsMaxSpeed',					4},		-- 20
					{'RocketBootsDriftBraking',				-0.2},	-- 0.6
					{'RocketBootsDriftDownwardForce',		-0.15},	-- 0.5
					{'JetpackDrainHorizontalFactor',		-0.7},	-- 2.5
					{'JetpackUnderwaterDrainRate',			0.2},	-- 0.4
					{'JetpackForce',						4},		-- 31
					{'JetpackBrake',						-0.6},	-- 2.2
					{'JetpackMaxSpeed',						1},		-- 5
					{'JetpackFillRate',						0.2},	-- 0.5
					{'JetpackUpForceDeadPlanetExtra',		2},		-- 10
					{'JetpackForceDeadPlanetExtra',			3},		-- 15
					{'SpaceJetpackForce',					8},		-- 40
					{'SpaceJetpackUpForce',					5},		-- 30
					{'SpaceJetpackMaxSpeed',				5},		-- 10
					{'SpaceJetpackDrainRate',				-0.28},	-- 0.3
					{'ShieldRechargeMinTimeSinceDamage',	-15},	-- 30
					{'WeaponLowerDelay',					1},		-- 3
					{'WeaponHolsterDelay',					2},		-- 6
					{'ReloadButtonHoldTimeToHolster',		-0.1},	-- 0.5
					{'StaminaRate',							-0.06},	-- 0.1 (pet ride stamina)
					{'MaxFallSpeed',						26}, 	-- 30
					{'MaxBuildHeight',						1000}, 	-- 64
					{'AutoAimMaxAngle',						-20}, 	-- 30
					{'SlopeSlidingSpeed',					-3},	-- -15
					{'SlopeSlideBrake',						-12},	-- 18.5
					{'AutoSaveMaxTime',						99999},	-- 60		1461
					{'AutoSaveMinTime',						99999},	-- 5
					{'AutoSaveRangeOnFoot',					99999},	-- 500
					{'AutoSaveRangeInVehicle',				999999},-- 8000
					{'AutoSaveRangeInSpace',				9999999},-- 100000
				}
			}
		}
	}
}}}}
