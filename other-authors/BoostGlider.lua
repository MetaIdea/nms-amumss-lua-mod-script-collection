NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "BoostGlider.pak",
["MOD_AUTHOR"]		= "OTBP",
["NMS_VERSION"]		= "ORBITAL 4.65.0.3", --NOT WORKING
["MOD_DESCRIPTION"]	= "fields became ordered, probably for optimization reasons... per monkeyman192 git action buildout, Walk, Run, Swim, Jet:Range, Height, Landing, Melee, Force, Speed, Refill, More..",
["MODIFICATIONS"]	=
	{
		{
			--["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak",
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
								{ "AnimWalkSpeed", 						"2" }, 		--Orbital "1.5"
								{ "AnimRunSpeed", 						"5" }, 		--Orbital "4"
								{ "AutoLandTime", 						"1" }, 		--Orbital "2"
								{ "BeamRecoil", 						"0" }, 		--Orbital "6"
								{ "BlastRecoilSpring", 					"0" }, 		--Orbital "0.3"
								{ "EnergyDischargeRateMedium", 			"0.02" }, 	--Orbital "0.25"
								{ "EnergyDischargeRateHigh", 			"0.02" }, 	--Orbital "0.9"
								{ "CockpitEjectTestSphereRadius", 		"2" }, 		--Orbital "0.4"
								{ "FreeJetpackRange", 					"99" }, 	--Orbital "3"
								{ "FreeJetpackRangeNonTerrain", 		"99" }, 	--Orbital "1.1"
								{ "GrenadeRecoil", 						"0" }, 		--Orbital "10"
								{ "GroundRunSpeed", 					"12" }, 	--Orbital "8"
								{ "GroundWalkSpeed", 					"6.0" }, 	--Orbital "4.4"
								{ "GunRecoil", 							"0" }, 		--Orbital "5"
								{ "GunRecoilMax", 						"0" }, 		--Orbital "1.6"
								{ "GunRecoilMin", 						"0" }, 		--Orbital "0.15"
								{ "GunRecoilSettleSpring", 				"0" }, 		--Orbital "0.4"
								{ "GunRecoilSpring", 					"0" }, 		--Orbital "0.33"
								{ "HardLandMax", 						"99" }, 	--Orbital "18"
								{ "HardLandMin", 						"98" }, 	--Orbital "5"
								{ "HealthRechargeMinTimeSinceDamage", 	"1" }, 		--Orbital "10"
								{ "JetpackDrainHorizontalFactor", 		"0" }, 		--Orbital "2.5"
								{ "JetpackFillRate", 					"99" }, 	--Orbital "0.5"
								{ "JetpackFillRateMidair",				"2" },      --Orbital "0.25"
								{ "JetpackForce", 						"62" }, 	--Orbital "31"
								{ "JetpackIgnitionForce", 				"90" }, 	--Orbital "60"
								{ "JetpackIgnitionForceDeadPlanetExtra", "80" }, 	--Orbital "45"
								{ "JetpackIgnitionTime", 				"0.1" }, 	--Orbital "0.4"
								{ "JetpackMaxSpeed", 					"27" }, 	--Orbital "5"
								{ "JetpackMaxUpSpeed", 					"45" }, 	--Orbital "30"
								{ "JetpackMinIgnitionTime", 			"0.05" }, 	--Orbital "0.2"
								{ "JetpackUpForce", 					"45" }, 	--Orbital "30"
								{ "LaserBeamAmmoUseTime", 				"0.5" }, 	--Orbital "1.2"
								{ "LaserBeamFlickerAmp", 				"0.5" }, 	--Orbital "1.5"
								{ "LaserBeamFlickerFreq", 				"10" }, 	--Orbital "1"
								{ "LaserBeamMineRate", 					"0.9" }, 	--Orbital "0.3"
								{ "LaserBeamTerrainDeformRadius", 		"1" }, 		--Orbital "2"
								{ "LaserMiningDamageMultiplier", 		"4" }, 		--Orbital "1"
								{ "LaserRecoil", 						"0" }, 		--Orbital "2"
								{ "LaserShakeMax", 						"0" }, 		--Orbital "2"
								{ "LaserShakeMin", 						"0" }, 		--Orbital "0.5"
								{ "MaxFallSpeed",                       "11" }, 	--Orbital "30" 
								{ "MaxNumDestroyEffects", 				"0" }, 		--Orbital "8"
                                { "MaxTimeInMeleeBoost", 				"1.2" },    --Orbital "1.4"
								{ "MeleeBoostAirForce",                 "3" },      --Orbital "3" 
                                { "MeleeToAirBoostInitialImpulse",      "25" },     --Orbital "5"
								{ "MinNumDestroyEffects", 				"0" }, 		--Orbital "3"
								{ "PulseRecoilSpring", 					"0" }, 		--Orbital "0.19"
								{ "RailRecoilSpring", 					"0" }, 		--Orbital "0.1"
								{ "RocketBootsBoostForce", 				"80" }, 	--Orbital "68"
								{ "RocketBootsBoostTankDrainSpeed", 	"0" }, 		--Orbital "6"
								{ "RocketBootsDriftForce", 				"40" }, 	--Orbital "30"
								{ "RocketBootsDriftTankDrainSpeed", 	"0" }, 		--Orbital "1"
								{ "RocketBootsHeightAdjustTime", 		"0.36" }, 	--Orbital "0.18"
								{ "RocketBootsHeightAdjustUpStrength", 	"1" }, 		--Orbital "0.57"
								{ "RocketBootsImpulse", 				"6" }, 		--Orbital "3"
								{ "RocketBootsMaxDesiredHeight", 		"18" }, 	--Orbital "6"
								{ "RocketBootsMaxSpeed", 				"60" }, 	--Orbital "20"
								{ "ShieldRechargeMinTimeSinceDamage", 	"0" }, 		--Orbital "30"
								{ "ShieldRechargeRate", 				"20" }, 	--Orbital "10"
								{ "ShieldRestoreDelay", 				"0" }, 		--Orbital "10"
								{ "ShieldRestoreSpeed", 				"1" }, 		--Orbital "0.2"
								{ "SpeedLinesMaxAlpha", 				"0" }, 		--Orbital "1"
								{ "SpeedLinesMinAlpha", 				"0" }, 		--Orbital "0.6"
								{ "UnderwaterForce", 					"20" }, 	--Orbital "15"
								{ "UnderwaterMaxJetpackEscapeSpeed", 	"24" }, 	--Orbital "8"
								{ "UnderwaterJetpackEscapeForce",		"36" },     --Orbital "20"
								{ "UnderwaterMaxSpeed", 				"12" }, 	--Orbital "4"
								{ "WeaponChangeModeTime", 				"0.5" }, 	--Orbital "0.75"
								{ "WeaponShotgunSlowdown", 				"0.9" }, 	--Orbital "0.7"
								{ "AutoAim",							"True" }, 	--Orbital "False"
							}
						}
					}
				}
			}
		}
	}	
}	