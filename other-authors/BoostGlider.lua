NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "BoostGlider.pak",
["MOD_AUTHOR"]		= "OTBP",
["NMS_VERSION"]		= "v4.25.0.1",
["MOD_DESCRIPTION"]	= "Walk, Run, Swim, Jet:Range, Height, Landing, Melee, Force, Speed, Refill, More..",
["MODIFICATIONS"]	=
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "GroundWalkSpeed", 					"6.0" }, 	--WayPoint "4.4"
								{ "GroundRunSpeed", 					"12" }, 	--WayPoint "8"
								{ "UnderwaterMaxSpeed", 				"12" }, 	--WayPoint "4"
								{ "UnderwaterForce", 					"20" }, 	--WayPoint "15"
								{ "UnderwaterMaxJetpackEscapeSpeed", 	"24" }, 	--WayPoint "8"
								{ "UnderwaterJetpackEscapeForce",		"36" },     --WayPoint "20" Testing
								{ "HealthRechargeMinTimeSinceDamage", 	"1" }, 		--WayPoint "10"
								{ "CockpitEjectTestSphereRadius", 		"2" }, 		--WayPoint "0.4"
								{ "EnergyDischargeRateMedium", 			"0.02" }, 	--WayPoint "0.25"
								{ "EnergyDischargeRateHigh", 			"0.02" }, 	--WayPoint "0.9"
								{ "FreeJetpackRange", 					"99" }, 	--WayPoint "3"
								{ "FreeJetpackRangeNonTerrain", 		"99" }, 	--WayPoint "1.1"
								{ "JetpackDrainHorizontalFactor", 		"0" }, 		--WayPoint "2.5"
								{ "MeleeBoostAirForce",                 "3" },      --WayPoint "3" Testing
                                { "MeleeToAirBoostInitialImpulse",      "25" },     --WayPoint "5" Testing
                                { "MaxTimeInMeleeBoost", 				"1.2" },    --WayPoint "1.4" Testing								
								{ "RocketBootsImpulse", 				"6" }, 		--WayPoint "3"
								{ "RocketBootsBoostForce", 				"80" }, 	--WayPoint "68"
								{ "RocketBootsDriftForce", 				"40" }, 	--WayPoint "30"
								{ "RocketBootsMaxDesiredHeight", 		"18" }, 	--WayPoint "6"
								{ "RocketBootsHeightAdjustTime", 		"0.36" }, 	--WayPoint "0.18"
								{ "RocketBootsHeightAdjustUpStrength", 	"1" }, 		--WayPoint "0.57"
								{ "RocketBootsBoostTankDrainSpeed", 	"0" }, 		--WayPoint "6"
								{ "RocketBootsDriftTankDrainSpeed", 	"0" }, 		--WayPoint "1"
								{ "RocketBootsMaxSpeed", 				"60" }, 	--WayPoint "20"
								{ "JetpackForce", 						"62" }, 	--WayPoint "31"
								{ "MaxFallSpeed",                       "11" }, 	--WayPoint "30" Allows Explorer to scan whilst glide boosting								
								{ "JetpackMaxSpeed", 					"27" }, 	--WayPoint "5"
								{ "JetpackMaxUpSpeed", 					"45" }, 	--WayPoint "30"
								{ "JetpackUpForce", 					"45" }, 	--WayPoint "30"
								{ "JetpackIgnitionForce", 				"90" }, 	--WayPoint "60"
								{ "JetpackIgnitionTime", 				"0.1" }, 	--WayPoint "0.4"
								{ "JetpackMinIgnitionTime", 			"0.05" }, 	--WayPoint "0.2"
								{ "JetpackFillRate", 					"99" }, 	--WayPoint "0.5"
								{ "JetpackFillRateMidair",				"2" },      --WayPoint "0.25" Testing
								{ "JetpackIgnitionForceDeadPlanetExtra", "80" }, 	--WayPoint "45"
								{ "MaxNumDestroyEffects", 				"0" }, 		--WayPoint "8"
								{ "MinNumDestroyEffects", 				"0" }, 		--WayPoint "3"
								{ "LaserMiningDamageMultiplier", 		"4" }, 		--WayPoint "1"
								{ "ShieldRechargeMinTimeSinceDamage", 	"0" }, 		--WayPoint "30"
								{ "ShieldRechargeRate", 				"20" }, 	--WayPoint "10"
								{ "SpeedLinesMinAlpha", 				"0" }, 		--WayPoint "0.6"
								{ "SpeedLinesMaxAlpha", 				"0" }, 		--WayPoint "1"
								{ "LaserShakeMin", 						"0" }, 		--WayPoint "0.5"
								{ "LaserShakeMax", 						"0" }, 		--WayPoint "2"
								{ "GunRecoil", 							"0" }, 		--WayPoint "5"
								{ "LaserRecoil", 						"0" }, 		--WayPoint "2"
								{ "BeamRecoil", 						"0" }, 		--WayPoint "6"
								{ "GrenadeRecoil", 						"0" }, 		--WayPoint "10"
								{ "GunRecoilSpring", 					"0" }, 		--WayPoint "0.33"
								{ "BlastRecoilSpring", 					"0" }, 		--WayPoint "0.3"
								{ "RailRecoilSpring", 					"0" }, 		--WayPoint "0.1"
								{ "PulseRecoilSpring", 					"0" }, 		--WayPoint "0.19"
								{ "GunRecoilSettleSpring", 				"0" }, 		--WayPoint "0.4"
								{ "GunRecoilMin", 						"0" }, 		--WayPoint "0.15"
								{ "GunRecoilMax", 						"0" }, 		--WayPoint "1.6"
								{ "AutoAim", 							"True" }, 	--WayPoint "False"
								{ "AutoLandTime", 						"1" }, 		--WayPoint "2"
								{ "LaserBeamMineRate", 					"0.9" }, 	--WayPoint "0.3"
								{ "LaserBeamFlickerAmp", 				"0.5" }, 	--WayPoint "1.5"
								{ "LaserBeamFlickerFreq", 				"10" }, 	--WayPoint "1"
								{ "LaserBeamTerrainDeformRadius", 		"1" }, 		--WayPoint "2"
								{ "LaserBeamAmmoUseTime", 				"0.5" }, 	--WayPoint "1.2"
								{ "ReloadButtonHoldTimeToHolster", 		"0.5" }, 	--WayPoint "0.5"
								{ "WeaponChangeModeTime", 				"0.5" }, 	--WayPoint "0.75"
								{ "HardLandMin", 						"98" }, 	--WayPoint "5"
								{ "HardLandMax", 						"99" }, 	--WayPoint "18"
								{ "AnimWalkSpeed", 						"2" }, 		--WayPoint "1.5"
								{ "AnimRunSpeed", 						"5" }, 		--WayPoint "4"
								{ "ShieldRestoreSpeed", 				"1" }, 		--WayPoint "0.2"
								{ "ShieldRestoreDelay", 				"0" }, 		--WayPoint "10"
								{ "WeaponShotgunSlowdown", 				"0.9" }, 	--WayPoint "0.7"
							}
						}
					}
				}
			}
		}
	}	
}	