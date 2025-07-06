--Jetpack
  Suit_Jetpack_Tank = 9999     --2.75 ; Jetpack tank size
  -- Suit_Jetpack_Drain = 1       --1 ; No effect.
  -- Suit_Jetpack_Ignition = 1    --1 ; No effect?
  Suit_Jetpack_Refill = 9999   --1 ; 7x tank size = instant refill.
  --RocketBootsSpeed = 4       --Boost to speed granted by Rocket Boots. My addition. Inactive

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_2_SOS_1xWalk3xSprint3xSwimNoRecoil",
["MOD_DESCRIPTION"]			= "This mod basically allows you to fly",
["MOD_AUTHOR"]				= "JimminyBillyBob888 AKA TheNexGDD and NooBzPoWaH",
["LUA_AUTHOR"] 				= "Babscoole",
["NMS_VERSION"]				= "5.7+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "GroundRunSpeed", 				"24" }, 	--Original "8"
								{ "GroundRunSpeedLowG", 			"10.5" }, 	--Original "3.5"
								{ "JetpackUnderwaterDrainRate",			"-9999" },	--Original "0.4"
								{ "JetpackUnderwaterFillRate",			"9999" },	--Original "1"
								{ "UnderwaterSwimMaxSpeed", 			"12" }, 	--Original "4"
								{ "UnderwaterForce", 				"20" }, 	--Original "15"
								{ "UnderwaterMaxJetpackEscapeSpeed",	 	"24" }, 	--Original "8"
								{ "HealthRechargeMinTimeSinceDamage", 		"1" }, 		--Original "10"
								{ "CockpitEjectTestSphereRadius", 		"2" }, 		--Original "0.4"
								{ "EnergyDischargeRateMedium", 			"0.02" }, 	--Original "0.25"
								{ "EnergyDischargeRateHigh", 			"0.02" }, 	--Original "0.9"
								{ "FreeJetpackRange", 				"9999" }, 	--Original "3"
								{ "FreeJetpackRangePrime",			"9999" }, 	--Original "5"
								{ "FreeJetpackRangeNonTerrain", 		"9999" }, 	--Original "1.1"
								{ "JetpackDrainHorizontalFactor", 		"-9999" }, 	--Original "2.5"
								{ "MeleeBoostAirForce",				"5" },		--Original "3"
								{ "MeleeToAirBoostInitialImpulse",		"7" },		--Original "5"
								{ "MaxTimeInMeleeBoost",			"2" },		--Original "1.4"
								{ "RocketBootsImpulse", 			"6" }, 		--Original "3"
								{ "RocketBootsBoostForce", 			"80" }, 	--Original "68"
								{ "RocketBootsDriftForce", 			"40" }, 	--Original "30"
								{ "RocketBootsMaxDesiredHeight", 		"18" }, 	--Original "6"
								{ "RocketBootsHeightAdjustTime", 		"0.36" }, 	--Original "0.18"
								{ "RocketBootsHeightAdjustUpStrength",	 	"1" }, 		--Original "0.57"
								{ "RocketBootsBoostTankDrainSpeed", 		"0" }, 		--Original "6"
								{ "RocketBootsDriftTankDrainSpeed", 		"0" }, 		--Original "1"
								{ "RocketBootsMaxSpeed", 			"60" }, 	--Original "20"
								{ "JetpackForce", 				"45" }, 	--Original "31"
								{ "JetpackBrake",				"3.5" },	--Original "2.2"
								{ "JetpackMaxSpeed", 				"50" }, 	--Original "5"
								{ "JetpackMaxUpSpeed", 				"40" }, 	--Original "30"
								{ "JetpackUpForce", 				"45" }, 	--Original "30"
								{ "JetpackIgnitionForce", 			"90" }, 	--Original "60"
								{ "JetpackIgnitionTime", 			"0.1" }, 	--Original "0.4"
								{ "JetpackMinIgnitionTime", 			"0.05" }, 	--Original "0.2"
								{ "JetpackFillRate", 				"9999" }, 	--Original "0.5"
								{ "JetpackFillRateMidair", 			"9999" }, 	--Original "0.25"
								{ "JetpackFillRateSpaceStationMultiplier",	"10" },		--Original "5"
								{ "JetpackUpForceDeadPlanetExtra",		"15" },		--Original "10"
								{ "JetpackForceDeadPlanetExtra",		"80" },		--Original "15"
								{ "JetpackIgnitionForceDeadPlanetExtra",	"80" }, 	--Original "45"
								{ "SpaceJetpackDrainRate", 			"-9999" }, 	--Original "0.3"
								{ "MaxNumDestroyEffects", 			"0" }, 		--Original "8"
								{ "MinNumDestroyEffects", 			"0" }, 		--Original "3"
								{ "LaserMiningDamageMultiplier", 		"4" }, 		--Original "1"
								{ "ShieldRechargeMinTimeSinceDamage", 		"0" }, 		--Original "30"
								{ "ShieldRechargeRate", 			"20" }, 	--Original "10"
								{ "SpeedLinesMinAlpha", 			"0" }, 		--Original "0.6"
								{ "SpeedLinesMaxAlpha", 			"0" }, 		--Original "1"
								{ "LaserShakeMin", 				"0" }, 		--Original "0.5"
								{ "LaserShakeMax", 				"0" }, 		--Original "2"
								{ "GunRecoil", 					"0" }, 		--Original "5"
								{ "LaserRecoil", 				"0" }, 		--Original "2"
								{ "BeamRecoil", 				"0" }, 		--Original "6"
								{ "GrenadeRecoil", 				"0" }, 		--Original "10"
								{ "GunRecoilSpring", 				"0" }, 		--Original "0.33"
								{ "BlastRecoilSpring", 				"0" }, 		--Original "0.3"
								{ "RailRecoilSpring", 				"0" }, 		--Original "0.1"
								{ "PulseRecoilSpring", 				"0" }, 		--Original "0.19"
								{ "CannonRecoilSpring", 			"0" }, 		--Original "0.3"
								{ "GunRecoilSettleSpring", 			"0" }, 		--Original "0.4"
								{ "GunRecoilMin", 				"0" }, 		--Original "0.15"
								{ "GunRecoilMax", 				"0" }, 		--Original "1.6"
								--{ "AutoAim", 					"True" }, 	--Original "False" (same NMS 5.50)
								{ "AutoLandTime", 				"1" }, 		--Original "2"
								{ "LaserBeamMineRate", 				"0.9" }, 	--Original "0.3"
								{ "LaserBeamFlickerAmp", 			"0.5" }, 	--Original "1.5"
								{ "LaserBeamFlickerFreq", 			"10" }, 	--Original "1"
								{ "LaserBeamTerrainDeformRadius", 		"1" }, 		--Original "2"
								--{ "LaserBeamAmmoUseTime", 			"1.2" }, 	--Original "0.5" (same NMS 5.50)
								--{ "ReloadButtonHoldTimeToHolster", 		"0.5" }, 	--Original "0.75" (same NMS 5.50)
								--{ "WeaponChangeModeTime", 			"0.75" }, 	--Original "0" (same NMS 5.50)
								{ "HardLandMin", 				"98" }, 	--Original "5"
								{ "HardLandMax", 				"99" }, 	--Original "18"
								{ "AnimRunSpeed", 				"5" }, 		--Original "4"
							}	
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
          --Jetpack
            { --JetpackTank
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {
                {"Bonus", Suit_Jetpack_Tank},
              },
            },
            { --JetpackRegen
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Refill"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {
                {"Bonus", Suit_Jetpack_Refill},
              },
            },
					}
				},
			}
		},
	}	
} --NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE