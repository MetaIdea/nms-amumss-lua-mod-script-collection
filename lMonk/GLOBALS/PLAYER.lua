--[[┎────────────────────────────────────────────────────────────────
	┃ More powerful jetpack & tweaks
────┸────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC PLAYER.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCPLAYERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'SummonArcRange',					160},	-- 40
					{'GroundWalkSpeedLowG',				1.2},	-- 1.6
					{'GroundRunSpeedLowG',				1.8},	-- 3.5
					{'JetpackDrainHorizontalFactor',	-0.8},	-- 2.5
					{'MeleeBoostAirForce',				0.4},	-- 3
					{'RocketBootsDoubleTapTime',		0.05},	-- 0.2
					{'RocketBootsBoostTankDrainSpeed',	-2},	-- 6
					{'RocketBootsDriftTankDrainSpeed',	-0.3},	-- 1
					{'RocketBootsMaxSpeed',				4},		-- 20
					{'JetpackForce',					4},		-- 31
					{'JetpackBrake',					-0.6},	-- 2.2
					{'JetpackMaxSpeed',					1},		-- 5
					{'JetpackFillRate',					0.2},	-- 0.5
					{'JetpackUpForceDeadPlanetExtra',	2},		-- 10
					{'JetpackForceDeadPlanetExtra',		3},		-- 15
					{'SpaceJetpackForce',				6},		-- 40
					{'SpaceJetpackUpForce',				3},		-- 30
					{'SpaceJetpackDrainRate',			-0.2},	-- 0.3
					-- {'ShieldRechargeMinTimeSinceDamage',-20},	-- 30
					{'ReloadButtonHoldTimeToHolster',	-0.1},	-- 0.5
					{'StaminaRate',						-0.06},	-- 0.1 (pet ride stamina)
					{'MaxFallSpeed',					26}, 	-- 30
					{'MaxBuildHeight',					1000}, 	-- 64
					{'AutoAimMaxAngle',					-10}, 	-- 30
				}
			}
		}
	}
}}}}
