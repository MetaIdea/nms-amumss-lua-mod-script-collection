--Jetpack
  Suit_Jetpack_Tank = 9999     --2.75 ; Jetpack tank size
  -- Suit_Jetpack_Drain = 1       --1 ; No effect.
  -- Suit_Jetpack_Ignition = 1    --1 ; No effect?
  Suit_Jetpack_Refill = 9999   --1 ; 7x tank size = instant refill.
  --RocketBootsSpeed = 4       --Boost to speed granted by Rocket Boots. My addition. Inactive

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_1_SOS_JetpackOnly",
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
								{ "JetpackUnderwaterDrainRate",			"-9999.000000" },	--Original "0.4"
								{ "JetpackUnderwaterFillRate",			"9999.000000" },		--Original "1"
								{ "UnderwaterMaxJetpackEscapeSpeed", 		"24.000000" }, 	--Original "8"
								{ "CockpitEjectTestSphereRadius", 		"2.000000" }, 		--Original "0.4"
								{ "FreeJetpackRange", 				"9999.000000" }, 	--Original "3"
								{ "FreeJetpackRangePrime",			"9999.000000" }, 	--Original "5"
								{ "FreeJetpackRangeNonTerrain", 		"9999.000000" }, 	--Original "1.1"
								{ "JetpackDrainHorizontalFactor", 		"-9999.000000" }, 		--Original "2.5"
								{ "MeleeBoostAirForce",				"5.000000" },		--Original "3"
								{ "MeleeToAirBoostInitialImpulse",		"7.000000" },		--Original "5"
								{ "MaxTimeInMeleeBoost",			"2.000000" },		--Original "1.4"
								{ "RocketBootsImpulse", 			"6.000000" }, 		--Original "3"
								{ "RocketBootsBoostForce", 			"80.000000" }, 	--Original "68"
								{ "RocketBootsDriftForce", 			"40.000000" }, 	--Original "30"
								{ "RocketBootsMaxDesiredHeight", 		"18.000000" }, 	--Original "6"
								{ "RocketBootsHeightAdjustTime", 		"0.360000" }, 	--Original "0.18"
								{ "RocketBootsHeightAdjustUpStrength",	 	"1.000000" }, 		--Original "0.57"
								{ "RocketBootsBoostTankDrainSpeed", 		"0.000000" }, 		--Original "6"
								{ "RocketBootsDriftTankDrainSpeed", 		"0.000000" }, 		--Original "1"
								{ "RocketBootsMaxSpeed", 			"60.000000" }, 	--Original "20"
								{ "JetpackForce", 				"45.000000" }, 	--Original "31"
								{ "JetpackBrake",				"3.500000" },	--Original "2.2"
								{ "JetpackMaxSpeed", 				"50.000000" }, 	--Original "5"
								{ "JetpackMaxUpSpeed", 				"40.000000" }, 	--Original "30"
								{ "JetpackUpForce", 				"45.000000" }, 	--Original "30"
								{ "JetpackIgnitionForce", 			"90.000000" }, 	--Original "60"
								{ "JetpackIgnitionTime", 			"0.100000" }, 	--Original "0.4"
								{ "JetpackMinIgnitionTime", 			"0.050000" }, 	--Original "0.2"
								{ "JetpackFillRate", 				"9999.000000" }, 	--Original "0.5"
								{ "JetpackFillRateMidair", 			"9999.000000" }, 	--Original "0.25"
								{ "JetpackFillRateSpaceStationMultiplier",	"10.000000" },		--Original "5"
								{ "JetpackUpForceDeadPlanetExtra",		"15.000000" },		--Original "10"
								{ "JetpackForceDeadPlanetExtra",		"80.000000" },		--Original "15"
								{ "JetpackIgnitionForceDeadPlanetExtra",	"80.000000" }, 	--Original "45"
								{ "SpaceJetpackDrainRate", 			"-9999.000000" }, 	--Original "0.35"
								--{ "AutoAim", 					"True" }, 	--Original "False" (same NMS 5.50)
								{ "LaserBeamFlickerAmp", 			"0.500000" }, 	--Original "1.5"
								{ "LaserBeamFlickerFreq", 			"10.000000" }, 	--Original "1"
								--{ "LaserBeamAmmoUseTime", 			"1.200000" }, 	--Original "0.5" (same NMS 5.50)
								--{ "ReloadButtonHoldTimeToHolster", 		"0.500000" }, 	--Original "0.75" (same NMS 5.50)
								--{ "WeaponChangeModeTime", 			"0.750000" }, 	--Original "0" (same NMS 5.50)
								{ "HardLandMin", 				"98.000000" }, 	--Original "5"
								{ "HardLandMax", 				"99.000000" }, 	--Original "18"
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