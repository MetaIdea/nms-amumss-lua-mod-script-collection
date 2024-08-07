NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]			= "5-FastShip_InstantLanding.pak",
["MOD_AUTHOR"]				= "Strange7",
["LUA_AUTHOR"]				= "Strange7",
["NMS_VERSION"]				= "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "LandingMaxSpeed", 					"400" }, 	--Original "80"
								{ "HoverTakeoffHeight", 				"50" }, 	--Original "90"
								{ "HoverTime", 							"0.1" }, 	--Original "2"
								{ "HoverAlignTime", 					"0.1" }, 	--Original "0.7"
								{ "HoverTimeAlt", 						"0.1" }, 	--Original "5"
								{ "HoverAlignTimeAlt", 					"1" }, 		--Original "1.5"
								{ "HoverSpeedFactor", 					"60" }, 	--Original "20"
								{ "HoverMinSpeed", 						"0.1" }, 	--Original "1"
								{ "HoverLandReachedMinTime", 			"0.1" }, 	--Original "0.2"
								{ "HoverLandReachedDistance", 			"80" }, 	--Original "10"
								{ "HoverLandManeuvreTimeMin", 			"0.1" }, 	--Original "0.7"
								{ "HoverLandManeuvreTimeMax", 			"0.1" }, 	--Original "1.2"
								{ "HoverLandManeuvreTimeHmdMin", 		"0.1" }, 	--Original "1.2"
								{ "HoverLandManeuvreTimeHmdMax", 		"0.1" }, 	--Original "2"
								{ "HoverLandManeuvreTimeWaterMultiplier", "6" }, 		--Original "2"
								{ "LandingCheckBuildingRadiusFactor", 	"0.1" }, 	--Original "1.1"
								{ "LandingButtonMinTime", 				"0.1" }, 	--Original "0.5"
								{ "LandingPushNoseUpFactor", 			"0.05" }, 	--Original "0.15"
								{ "NoBoostShipNearMinTime", 			"6" }, 		--Original "3"
								{ "HoverMaxSpeed", 						"600" }, 	--Original "150"
								{ "LandGroundTakeOffTime", 				"0.1" }, 	--Original "1.2"
								{ "DockingRotateSpeed", 				"15" }, 	--Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MaxSpeed", 							"360" }, 	--Original "180"
								{ "MinSpeed", 							"0.05" }, 	--Original "1"
								{ "ReverseBrake", 						"0.45" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0.45" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"35" }, 	--Original "20"
								{ "MaxSpeed", 							"200" }, 	--Original "125"
								{ "BoostMaxSpeed", 						"348.75" }, --Original "155"
								{ "ReverseBrake", 						"0.9" }, 	--Original "1"
								{ "OverspeedBrake", 					"4.8" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MaxSpeed", 							"230" }, 	--Original "115"
								{ "MinSpeed", 							"2.5" }, 	--Original "50"
								{ "ReverseBrake", 						"0.45" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0.45" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"50" }, 	--Original "40"
								{ "MaxSpeed", 							"128" }, 	--Original "80"
								{ "BoostMaxSpeed", 						"209.25" }, --Original "155"
								{ "ReverseBrake", 						"0.45" }, 	--Original "0.5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"100" }, 	--Original "80"
								{ "MaxSpeed", 							"315" }, 	--Original "180"
								{ "MinSpeed", 							"0.05" }, 	--Original "1"
								{ "ReverseBrake", 						"0.45" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0.9" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"70" }, 	--Original "40"
								{ "MaxSpeed", 							"200" }, 	--Original "125"
								{ "BoostMaxSpeed", 						"337.5" }, 	--Original "150"
								{ "ReverseBrake", 						"0.9" }, 	--Original "1"
								{ "OverspeedBrake", 					"4.8" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"100" }, 	--Original "80"
								{ "MaxSpeed", 							"260" }, 	--Original "130"
								{ "MinSpeed", 							"2.5" }, 	--Original "50"
								{ "ReverseBrake", 						"0.45" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0.45" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"100" }, 	--Original "80"
								{ "MaxSpeed", 							"128" }, 	--Original "80"
								{ "BoostMaxSpeed", 						"209.25" }, --Original "155"
								{ "ReverseBrake", 						"0.45" }, 	--Original "0.5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MaxSpeed", 							"360" }, 	--Original "180"
								{ "MinSpeed", 							"0.05" }, 	--Original "1"
								{ "ReverseBrake", 						"0.6" }, 	--Original "0.5"
								{ "TurnBrakeMax", 						"3.9" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"35" }, 	--Original "20"
								{ "MaxSpeed", 							"208" }, 	--Original "130"
								{ "BoostMaxSpeed", 						"351.5" }, 	--Original "185"
								{ "ReverseBrake", 						"1.2" }, 	--Original "1"
								{ "OverspeedBrake", 					"4.8" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MaxSpeed", 							"200" }, 	--Original "100"
								{ "MinSpeed", 							"2.5" }, 	--Original "50"
								{ "ReverseBrake", 						"0.6" }, 	--Original "0.5"
								{ "TurnBrakeMax", 						"5.2" }, 	--Original "4"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"50" }, 	--Original "40"
								{ "MaxSpeed", 							"128" }, 	--Original "80"
								{ "BoostMaxSpeed", 						"180" }, 	--Original "120"
								{ "ReverseBrake", 						"0.6" }, 	--Original "0.5"
							}
						}, 
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MaxSpeed", 							"360" }, 	--Original "180"
								{ "MinSpeed", 							"0.05" }, 	--Original "1"
								{ "ReverseBrake", 						"0.6" }, 	--Original "0.5"
								{ "TurnBrakeMax", 						"3.9" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"35" }, 	--Original "20"
								{ "MaxSpeed", 							"208" }, 	--Original "130"
								{ "BoostMaxSpeed", 						"351.5" }, 	--Original "185"
								{ "ReverseBrake", 						"1.2" }, 	--Original "1"
								{ "OverspeedBrake", 					"4.8" }, 	--Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MaxSpeed", 							"260" }, 	--Original "130"
								{ "MinSpeed", 							"2.5" }, 	--Original "50"
								{ "ReverseBrake", 						"0.6" }, 	--Original "0.5"
								{ "TurnBrakeMax", 						"5.2" }, 	--Original "4"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForce", 						"50" }, 	--Original "40"
								{ "MaxSpeed", 							"128" }, 	--Original "80"
								{ "BoostMaxSpeed", 						"180" }, 	--Original "120"
								{ "ReverseBrake", 						"0.6" }, 	--Original "0.5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForceMax", 					"45" }, 	--Original "30"
							}
						}, 
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForceMax", 					"80" }, 	--Original "60"
								{ "ThrustForceMin", 					"30" }, 	--Original "20"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForceMax", 					"150" }, 	--Original "100"
								{ "ThrustForceMin", 					"75" }, 	--Original "50"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["VALUE_CHANGE_TABLE"] =
							{
								{ "ThrustForceMax", 					"450" }, 	--Original "250"
								{ "ThrustForceMin", 					"90" }, 	--Original "50"
							}
						},
					}
				}
			}
		}
	}	
}	
