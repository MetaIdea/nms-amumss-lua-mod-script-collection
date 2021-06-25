NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_____DazShipFlightSynthesis.pak",
["MOD_AUTHOR"]		= "Dazaster and lua script conversion by Mjjstral",
["MOD_PAGE_LINK"]	= "https://www.nexusmods.com/nomanssky/mods/1160",
["NMS_VERSION"]		= "2.2+",
["MOD_DESCRIPTION"]	= "Hover, no reverse on planet, Faster flight, Bigger boost, Flat landing, Tighter turns, Faster combat, Faster pulse drive, Other stuff maybe",
["MODIFICATIONS"]	= 
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
								{ "LandingMaxSpeed", 					"160" }, 	--Original "80"
								{ "DirectionDockingIndicatorRange", 	"575" }, 	--Original "500"
								{ "DirectionDockingIndicatorMinHeight", "10" }, 	--Original "15"
								{ "DirectionDockingIndicatorMaxHeight", "40" }, 	--Original "25"	
								
								{ "DefaultTrailMinForwardSpeed", 		"675" }, 	--Original "45"
								{ "ContrailDefaultAlpha", 				"0.5" }, 	--Original "0.4"
								{ "EngineJetLightIntensityMultiplier", 	"0.9" }, 	--Original "0.5"
								{ "EngineEffectsThrustContribution", 	"0.7" }, 	--Original "0.3"
								{ "_3rdPersonLowHeightOffsetVertRotationY", "-1" }, --Original "-2"
								{ "_3rdPersonLowHeightOffsetY", 		"-1" }, 	--Original "-2"
								{ "HoverTakeoffHeight", 				"45" }, 	--Original "90"
								{ "LandingPushNoseUpFactor", 			"-0.2" }, 	--Original "0.15"
								
								{ "TurnRudderStrength", 				"0.6" }, 	--Original "0.4"
								{ "MiniWarpSpeed", 						"80000" }, 	--Original "30000"
								{ "LootAttractDistance", 				"150" }, 	--Original "120"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] 	= { "DirectionDockingInRangeColour" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "R", 									"0.162" }, 	--Original "0.081"
								{ "B", 									"0.275" }, 	--Original "0.228"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] 	= { "DirectionDockingOutRangeColour" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "R", 									"0.34" }, 	--Original "0.169"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"100" }, 	--Original "40"
								{ "MaxSpeed", 							"250" }, 	--Original "180"
								{ "MinSpeed", 							"0" }, 		--Original "1"
								{ "Falloff", 							"0.05" }, 	--Original "0.7"
								{ "BoostThrustForce", 					"550" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1250" }, 	--Original "1200"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.5" }, 	--Original "1"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "ThrustForce", 						"80" }, 	--Original "20"
								{ "MaxSpeed", 							"195" }, 	--Original "125"
								{ "MinSpeed", 							"0.01" }, 	--Original "20"
								{ "Falloff", 							"0.05" }, 	--Original "0.5"
								{ "BoostThrustForce", 					"170" }, 	--Original "100"
								{ "BoostMaxSpeed", 						"275" }, 	--Original "155"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.5" }, 	--Original "1"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"100" }, 	--Original "40"
								{ "MaxSpeed", 							"150" }, 	--Original "80"
								{ "MinSpeed", 							"30" }, 	--Original "50"
								{ "Falloff", 							"0.05" }, 	--Original "0.7"
								{ "BoostThrustForce", 					"550" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1250" }, 	--Original "1200"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.8" }, 	--Original "1.3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"140" }, 	--Original "80"
								{ "MaxSpeed", 							"250" }, 	--Original "180"
								{ "MinSpeed", 							"0" }, 		--Original "1"
								{ "Falloff", 							"0.05" }, 	--Original "0.7"
								{ "BoostThrustForce", 					"550" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1350" }, 	--Original "1300"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.6" }, 	--Original "1.1"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "ThrustForce", 						"100" }, 	--Original "40"
								{ "MaxSpeed", 							"195" }, 	--Original "125"
								{ "MinSpeed", 							"0.01" }, 	--Original "20"
								{ "Falloff", 							"0.05" }, 	--Original "0.5"
								{ "BoostThrustForce", 					"270" }, 	--Original "200"
								{ "BoostMaxSpeed", 						"270" }, 	--Original "150"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"2.15" }, 	--Original "1.65"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "ThrustForce", 						"140" }, 	--Original "80"
								{ "MaxSpeed", 							"150" }, 	--Original "80"
								{ "MinSpeed", 							"30" }, 	--Original "50"
								{ "Falloff", 							"0.05" }, 	--Original "0.7"
								{ "BoostThrustForce", 					"550" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1350" }, 	--Original "1300"
								{ "BoostFalloff", 						"0.3" }, 	--Original "0.7"
								{ "TurnStrength", 						"2" }, 		--Original "1.5"
							}
						},	
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"100" }, 	--Original "40"
								{ "MaxSpeed", 							"250" }, 	--Original "180"
								{ "MinSpeed", 							"0" }, 		--Original "1"
								{ "Falloff", 							"0.05" }, 	--Original "0.7"
								{ "BoostThrustForce", 					"550" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1150" }, 	--Original "1100"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.1" }, 	--Original "0.6"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "ThrustForce", 						"80" }, 	--Original "20"
								{ "MaxSpeed", 							"200" }, 	--Original "130"
								{ "MinSpeed", 							"0.01" }, 	--Original "20"
								{ "Falloff", 							"0.05" }, 	--Original "0.5"
								{ "BoostThrustForce", 					"80" }, 	--Original "20"
								{ "BoostMaxSpeed", 						"285" }, 	--Original "185"
								{ "BoostFalloff", 						"0.05" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.2" }, 	--Original "0.7"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{ "ThrustForce", 						"100" }, 	--Original "40"
								{ "MaxSpeed", 							"150" }, 	--Original "80"
								{ "MinSpeed", 							"30" }, 	--Original "50"
								{ "Falloff", 							"0.05" }, 	--Original "0.7"
								{ "BoostFalloff", 						"0.3" }, 	--Original "0.7"
								{ "TurnStrength", 						"1.5" }, 	--Original "1"
							}
						}				
					}
				}
			}
		}
	}	
}
