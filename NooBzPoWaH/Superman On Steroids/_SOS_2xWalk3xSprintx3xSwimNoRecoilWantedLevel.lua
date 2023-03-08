--Jetpack
	JetpackTank = 9999											--2.75 ; Jetpack tank size
	JetpackDrain = 1											--1 ; No effect.
	JetpackIgnition = 1											--1 ; No effect?
	JetpackRegen = 9999											--1 ; 7x tank size = instant refill.
	--RocketBootsSpeed = 4										--Boost to speed granted by Rocket Boots. My addition. Inactive

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_SOS_2xWalk3xSprintx3xSwimNoRecoilWantedLevel.pak",
["MOD_DESCRIPTION"]			= "This mod basically allows you to fly",
["MOD_AUTHOR"]				= "JimminyBillyBob888 AKA TheNexGDD and NooBzPoWaH",
["NMS_VERSION"]				= "4.+",
["MODIFICATIONS"] 			= 
	{
		{
			-- ["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", NOT REQUIRED
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							-- ["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "GroundWalkSpeed", 				"8.8" }, 	--Original "4.4"
								{ "GroundWalkSpeedTeleportHmd", 		"8.8" }, 	--Original "4.4"
								{ "GroundRunSpeed", 				"24" }, 	--Original "8"
								{ "GroundWalkSpeedLowG", 			"6.6" }, 	--Original "1.6"
								{ "GroundRunSpeedLowG", 			"16" }, 	--Original "3.5"
								{ "JetpackUnderwaterDrainRate",			"0.2" },	--Original "0.4"
								{ "JetpackUnderwaterFillRate",			"2" },		--Original "1"
								{ "UnderwaterMaxSpeed", 			"12" }, 	--Original "4"
								{ "UnderwaterForce", 				"20" }, 	--Original "15"
								{ "UnderwaterMaxJetpackEscapeSpeed",	 	"24" }, 	--Original "8"
								{ "HealthRechargeMinTimeSinceDamage", 		"1" }, 		--Original "10"
								{ "CockpitEjectTestSphereRadius", 		"2" }, 		--Original "0.4"
								{ "EnergyDischargeRateMedium", 			"0.02" }, 	--Original "0.25"
								{ "EnergyDischargeRateHigh", 			"0.02" }, 	--Original "0.9"
								{ "FreeJetpackRange", 				"99" }, 	--Original "3"
								{ "FreeJetpackRangeNonTerrain", 		"99" }, 	--Original "1.1"
								{ "JetpackDrainHorizontalFactor", 		"0" }, 		--Original "2.5"
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
								{ "JetpackFillRate", 				"99" }, 	--Original "0.5"
								{ "JetpackFillRateSpaceStationMultiplier",	"10" },		--Original "5"
								{ "JetpackUpForceDeadPlanetExtra",		"15" },		--Original "10"
								{ "JetpackForceDeadPlanetExtra",		"80" },		--Original "15
								{ "JetpackIgnitionForceDeadPlanetExtra",	"80" }, 	--Original "45"
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
								{ "GunRecoilSettleSpring", 			"0" }, 		--Original "0.4"
								{ "GunRecoilMin", 				"0" }, 		--Original "0.15"
								{ "GunRecoilMax", 				"0" }, 		--Original "1.6"
								{ "AutoAim", 					"True" }, 	--Original "False"
								{ "AutoLandTime", 				"1" }, 		--Original "2"
								{ "LaserBeamMineRate", 				"0.9" }, 	--Original "0.3"
								{ "LaserBeamFlickerAmp", 			"0.5" }, 	--Original "1.5"
								{ "LaserBeamFlickerFreq", 			"10" }, 	--Original "1"
								{ "LaserBeamTerrainDeformRadius", 		"1" }, 		--Original "2"
								{ "LaserBeamAmmoUseTime", 			"1.2" }, 	--Original "0.5"
								{ "ReloadButtonHoldTimeToHolster", 		"0.5" }, 	--Original "0.75"
								{ "WeaponChangeModeTime", 			"0.75" }, 	--Original "0"
								{ "HardLandMin", 				"98" }, 	--Original "5"
								{ "HardLandMax", 				"99" }, 	--Original "18"
								{ "AnimWalkSpeed", 				"2" }, 		--Original "1.5"
								{ "AnimRunSpeed", 				"5" }, 		--Original "4"
							}	
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
              ["LINE_OFFSET"] 	= "1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					999 },	 	--Original "4"
							}	
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
              ["LINE_OFFSET"] 	= "2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					999 }, 		--Original "6"
							}	
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
              ["LINE_OFFSET"] 	= "3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					999 },	 	--Original "8"
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] 	= "1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					1 }, 		--Original "10"
							}	
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] 	= "2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					1 },	 	--Original "15"
							}	
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] 	= "3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					1 }, 		--Original "10"
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] 	= "4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					1 }, 		--Original "15"
							}	
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},
              ["LINE_OFFSET"] 	= "5",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					1 }, 		--Original "10"
							}	
						},											
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
          --Jetpack
            { --JetpackTank
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},	
              ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml"},
              ["VALUE_CHANGE_TABLE"] = {
                {"Bonus", JetpackTank},
              },
            },
            { --JetpackDrain No Effect
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
              ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
              ["VALUE_CHANGE_TABLE"] = {
                {"Bonus", JetpackDrain},
              },
            },
            { --JetpackIgnition
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
              ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
              ["VALUE_CHANGE_TABLE"] = {
                {"Bonus", JetpackIgnition},
              },
            },
            { --JetpackRegen
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1"},
              ["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml"},
              ["VALUE_CHANGE_TABLE"] = {
                {"Bonus", JetpackRegen},
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