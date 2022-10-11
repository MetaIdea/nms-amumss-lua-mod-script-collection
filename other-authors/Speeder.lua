NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "SoS.pak",
["MOD_AUTHOR"]		= "OTBP",
["NMS_VERSION"]		= "2.0+",
["MOD_DESCRIPTION"]	= "Speeder",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
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
								{ "GroundWalkSpeed", 					"6.0" }, 	--Original "4.4"
								{ "GroundWalkSpeed_Unknown", 			"6.0" }, 	--Original "4.4"
								{ "GroundRunSpeed", 					"12" }, 	--Original "8"
								{ "UnderwaterMaxSpeed", 				"12" }, 	--Original "4"
								{ "UnderwaterForce", 					"20" }, 	--Original "15"
								{ "UnderwaterMaxJetpackEscapeSpeed", 	"24" }, 	--Original "8"
								{ "Unknown0x85C", 						"1" }, 		--Original "True"
								{ "HealthRechargeMinTimeSinceDamage", 	"1" }, 		--Original "10"
								{ "CockpitEjectTestSphereRadius", 		"2" }, 		--Original "0.4"
								{ "EnergyDischargeRateMedium", 			"0.02" }, 	--Original "0.25"
								{ "EnergyDischargeRateHigh", 			"0.02" }, 	--Original "0.9"
								{ "FreeJetpackRange", 					"99" }, 	--Original "3"
								{ "FreeJetpackRangeNonTerrain", 		"99" }, 	--Original "1.1"
								{ "JetpackDrainHorizontalFactor", 		"0" }, 		--Original "2.5"
								{ "MeleeBoostAirForce",                 "3" },      --Original "3" Testing
                                { "MeleeToAirBoostInitialImpulse",      "25" },     --Original "5" Testing
                                { "MaxTimeInMeleeBoost", 				"1.2" },    --Original "1.4" Testing								
								{ "RocketBootsImpulse", 				"6" }, 		--Original "3"
								{ "RocketBootsBoostForce", 				"80" }, 	--Original "68"
								{ "RocketBootsDriftForce", 				"40" }, 	--Original "30"
								{ "RocketBootsMaxDesiredHeight", 		"18" }, 	--Original "6"
								{ "RocketBootsHeightAdjustTime", 		"0.36" }, 	--Original "0.18"
								{ "RocketBootsHeightAdjustUpStrength", 	"1" }, 		--Original "0.57"
								{ "RocketBootsBoostTankDrainSpeed", 	"0" }, 		--Original "6"
								{ "RocketBootsDriftTankDrainSpeed", 	"0" }, 		--Original "1"
								{ "RocketBootsMaxSpeed", 				"60" }, 	--Original "20"
								{ "JetpackForce", 						"62" }, 	--Original "31"
								{ "MaxFallSpeed",                       "11" }, 	--Original "30" Allows Explorer to scan whilst glide boosting								
								{ "JetpackMaxSpeed", 					"27" }, 	--Original "5"
								{ "JetpackMaxUpSpeed", 					"45" }, 	--Original "30"
								{ "JetpackUpForce", 					"45" }, 	--Original "30"
								{ "JetpackIgnitionForce", 				"90" }, 	--Original "60"
								{ "JetpackIgnitionTime", 				"0.1" }, 	--Original "0.4"
								{ "JetpackMinIgnitionTime", 			"0.05" }, 	--Original "0.2"
								{ "JetpackFillRate", 					"99" }, 	--Original "0.5"
								{ "JetpackFillRateHardMode", 			"99" }, 	--Original "0.2"
								{ "JetpackIgnitionForceDeadPlanetExtra", "80" }, 	--Original "45"
								{ "MaxNumDestroyEffects", 				"0" }, 		--Original "8"
								{ "MinNumDestroyEffects", 				"0" }, 		--Original "3"
								{ "LaserMiningDamageMultiplier", 		"4" }, 		--Original "1"
								{ "ShieldRechargeMinTimeSinceDamage", 	"0" }, 		--Original "30"
								{ "ShieldRechargeRate", 				"20" }, 	--Original "10"
								{ "SpeedLinesMinAlpha", 				"0" }, 		--Original "0.6"
								{ "SpeedLinesMaxAlpha", 				"0" }, 		--Original "1"
								{ "LaserShakeMin", 						"0" }, 		--Original "0.5"
								{ "LaserShakeMax", 						"0" }, 		--Original "2"
								{ "GunRecoil", 							"0" }, 		--Original "5"
								{ "LaserRecoil", 						"0" }, 		--Original "2"
								{ "BeamRecoil", 						"0" }, 		--Original "6"
								{ "GrenadeRecoil", 						"0" }, 		--Original "10"
								{ "GunRecoilSpring", 					"0" }, 		--Original "0.33"
								{ "BlastRecoilSpring", 					"0" }, 		--Original "0.3"
								{ "RailRecoilSpring", 					"0" }, 		--Original "0.1"
								{ "PulseRecoilSpring", 					"0" }, 		--Original "0.19"
								{ "GunRecoilSettleSpring", 				"0" }, 		--Original "0.4"
								{ "GunRecoilMin", 						"0" }, 		--Original "0.15"
								{ "GunRecoilMax", 						"0" }, 		--Original "1.6"
								{ "AutoAim", 							"True" }, 	--Original "False"
								{ "AutoLandTime", 						"1" }, 		--Original "2"
								{ "LaserBeamMineRate", 					"0.9" }, 	--Original "0.3"
								{ "LaserBeamFlickerAmp", 				"0.5" }, 	--Original "1.5"
								{ "LaserBeamFlickerFreq", 				"10" }, 	--Original "1"
								{ "LaserBeamTerrainDeformRadius", 		"1" }, 		--Original "2"
								{ "LaserBeamOverheatTime", 				"5" }, 		--Original "1.2"
								{ "LaserBeamAmmoUseTime", 				"1.2" }, 	--Original "0.5"
								{ "ReloadButtonHoldTimeToHolster", 		"0.5" }, 	--Original "0.75"
								{ "WeaponChangeModeTime", 				"0.75" }, 	--Original "0"
								{ "HardLandMin", 						"98" }, 	--Original "5"
								{ "HardLandMax", 						"99" }, 	--Original "18"
								{ "AnimWalkSpeed", 						"2" }, 		--Original "1.5"
								{ "AnimRunSpeed", 						"5" }, 		--Original "4"
								{ "ShieldRestoreSpeed", 				"1" }, 		--Original "0.2"
								{ "ShieldRestoreDelay", 				"0" }, 		--Original "10"
							}
						}
					}
				}
			}
		}
	}	
}	
