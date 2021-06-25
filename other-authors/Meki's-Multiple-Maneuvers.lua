NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Meki'sMultipleManeuvers-1.3-nms2.09-2xPulse-1xLaunch.pak",
["MOD_AUTHOR"]				= "Himeki and lua script conversion by Mjjstral",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "LandingHoverOffset", 				"1" }, 		--Original "3"
								{ "LandingMaxSpeed", 					"180" }, 	--Original "80"
								{ "NearGroundPitchCorrectMinHeight", 	"0.1" }, 	--Original "23"
								{ "NearGroundPitchCorrectRange", 		"0" }, 		--Original "15"
								{ "NearGroundPitchCorrectMinHeightRemote", "10" }, 	--Original "30"
								{ "NearGroundPitchCorrectRangeRemote", 	"10" }, 	--Original "30"
								{ "_3rdPersonPitchAngle", 				"8" }, 		--Original "12"
								{ "_3rdPersonYawAngle", 				"3" }, 		--Original "10"
								{ "_3rdPersonAngleSpringTime", 			"0.2" }, 	--Original "0.9"
								{ "_3rdPersonAngleSpeedRangePitch", 	"8" }, 		--Original "3"
								{ "_3rdPersonAngleSpeedRangeYaw", 		"8" }, 		--Original "3"
								{ "_3rdPersonLowHeightOffsetVertRotationY", "0" }, 	--Original "-2"
								{ "_3rdPersonLowHeightOffsetY", 		"0" }, 		--Original "-2"
								{ "_3rdPersonLowHeightSpringTime", 		"0.5" }, 	--Original "1.5"
								{ "HoverTakeoffHeight", 				"15" }, 	--Original "90"
								{ "HoverTime", 							"0.75" }, 	--Original "2"
								{ "HoverAlignTime", 					"1" }, 		--Original "0.7"
								{ "HoverSpeedFactor", 					"10" }, 	--Original "20"
								{ "HoverMinSpeed", 						"-1" }, 	--Original "1"
								{ "HoverLandReachedDistance", 			"4" }, 		--Original "10"
								{ "HoverLandManeuvreTimeMin", 			"0.5" }, 	--Original "0.7"
								{ "AutoLevelWaterTorque", 				"0" }, 		--Original "1.5"
								{ "LandingPushNoseUpFactor", 			"0.05" }, 	--Original "0.15"
								{ "GroundHeightSoftForce", 				"0.1" }, 	--Original "35"
								{ "GroundHeightSoft", 					"0.1" }, 	--Original "20"
								{ "GroundHeightSoftHorizontal", 		"0.1" }, 	--Original "5"
								{ "GroundHeightHard", 					"0.1" }, 	--Original "5"
								{ "GroundHeightPostCollisionMultiplier", "1.2" }, 	--Original "2"
								{ "PitchCorrectSoftDownAngle", 			"360" }, 	--Original "25"
								{ "PitchCorrectMaxDownAngle", 			"360" }, 	--Original "50"
								{ "PitchCorrectMaxDownAnglePostCollision", "360" }, --Original "10"
								{ "PitchCorrectSoftDownAnglePostCollision", "360" }, --Original "-10"
								{ "PitchCorrectMaxDownAngleWater", 		"360" }, 	--Original "20"
								{ "PitchCorrectTimeMax", 				"0.25" }, 	--Original "1"
								{ "PitchCorrectTimeHeight", 			"0.1" }, 	--Original "8"
								{ "PitchCorrectHeightSpring", 			"0" }, 		--Original "0.3"
								{ "PitchCorrectHeightMin", 				"0" }, 		--Original "10"
								{ "PitchCorrectHeightMax", 				"0" }, 		--Original "700"								
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed", 							"-2" }, 	--Original "1"
								{ "BoostingTurnDamp", 					"0.7" }, 	--Original "0.1"
								{ "DirectionBrake", 					"2" }, 		--Original "1.5"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "TurnBrakeMax", 						"4" }, 		--Original "2"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "MinSpeed", 							"-2" }, 	--Original "20"
								{ "BoostingTurnDamp", 					"0.7" }, 	--Original "0.25"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "RollAutoTime", 						"1.4" }, 	--Original "0.5"
								{ "BalanceTimeMax", 					"2.1" }, 	--Original "0.7"
							}
						},						
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed", 							"-2" }, 	--Original "1"
								{ "BoostingTurnDamp", 					"0.7" }, 	--Original "0.1"
								{ "DirectionBrakeMin", 					"1" }, 		--Original "0.8"
								{ "DirectionBrake", 					"1.5" }, 	--Original "1.2"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "TurnBrakeMax", 						"4" }, 		--Original "3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "MinSpeed", 							"-2" }, 	--Original "20"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "RollAutoTime", 						"1.4" }, 	--Original "0.5"
								{ "BalanceTimeMax", 					"2.1" }, 	--Original "1.7"
							}
						},						
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed", 							"-2" }, 	--Original "1"
								{ "BoostingTurnDamp", 					"0.7" }, 	--Original "0.1"
								{ "DirectionBrake", 					"2" }, 		--Original "1.5"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "TurnBrakeMax", 						"4" }, 		--Original "3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "MinSpeed", 							"-2" }, 	--Original "20"
								{ "BoostingTurnDamp", 					"0.7" }, 	--Original "0.15"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "RollAutoTime", 						"1.4" }, 	--Original "0.5"
								{ "BalanceTimeMax", 					"2.1" }, 	--Original "1.75"
							}
						},
						{
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "AutoLevelMinPitchAngle", 			"0" }, 		--Original "-10"
								{ "AutoLevelMaxPitchAngle", 			"0" }, 		--Original "45"
								{ "AutoLevelMinAngle", 					"0" }, 		--Original "5"
								{ "AutoLevelMaxAngle", 					"0" }, 		--Original "110"
								{ "NoBoostAnomalyDistance", 			"2000" }, 	--Original "3000"
								{ "FreighterApproachDistanceMin", 		"10" }, 	--Original "50"
								{ "FreighterApproachDistanceMax", 		"150" }, 	--Original "300"
								{ "FreighterApproachExtraMargin", 		"500" }, 	--Original "1000"
								{ "MiniWarpStationRadius", 				"400" }, 	--Original "700"
								{ "MiniWarpSpeed", 						"40000" }, 	--Original "20000"
								{ "MiniWarpStoppingMarginPlanet", 		"4000" }, 	--Original "5000"
								{ "MiniWarpStoppingMarginStation", 		"2300" }, 	--Original "2500"
								{ "MiniWarpHUDArrowAttractAngle", 		"5" }, 		--Original "10"
								{ "SummonShipAnywhereFwdOffset", 		"10" }, 	--Original "-100"
								{ "LandGroundTakeOffTime", 				"1" }, 		--Original "1.2"
								{ "LandSlopeMax", 						"90" }, 	--Original "22"
								{ "CollisionDistance", 					"50" }, 	--Original "200"
								{ "CollisionDistanceGround", 			"1" }, 		--Original "10"
								{ "CollisionDistanceAsteroid", 			"10" }, 	--Original "17"
								{ "CollisionDistanceSpaceships", 		"15" }, 	--Original "20"
								{ "DeflectDistance", 					"50" }, 	--Original "150"
								{ "GroundHeightHardTimeMax", 			"0.2" }, 	--Original "0.4"
								{ "GroundHeightSmoothTime", 			"1E+09" }, 	--Original "0"
								{ "LootAttractDistance", 				"2000" }, 	--Original "120"
								{ "LootCollectDistance", 				"50" }, 	--Original "20"
								{ "LaunchThrustersMinimumSummonPercentage", "1" }, 	--Original "25"							
							}
						}					
					}
				}
			}
		}
	}	
}