NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AdrenalJuice-3.98-1.00.pak",
["MOD_AUTHOR"]				= "Tinz",
["NMS_VERSION"]				= "3.98",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","JET1",},
							["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"200"},	-- Original "2.75" line 549 --This will generate a WARNING
								{"Bonus",	"100"}, 	-- Original "2.75" line 549
							}
						}
					}
				},
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"BinocTimeBeforeScan",					"0.1"}, 	-- Original "0.5"
								{"BinocMinScanTime",					"1"},		-- Original "3.9"
								{"BinocScanTime",						"1"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"1"},		-- Original "3.2"
								--{"BinocularScanTargetInitialFadeTime",	"0.1"}, 	-- Original "0.5"
								--{"BinocularScanTargetFadeTime",			"0.1"}		-- Original "0.5"
								--{"TerrainResourceScanTime",				"30"},	-- Original "30"
								--{"TerrainResourceScanRange",			"1200"}, 	-- Original "1200"								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"400"},	-- Original "200"			
								{"ChargeTime",					"2"} 	-- Original "30"		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"500"},	-- Original "150"			
								{"ChargeTime",					"4"} 	-- Original "90"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"20000"},	-- Original "10000"			
								{"ChargeTime",					"2"} 		-- Original "10"							
							}
						}
					}
				}
			}
		},		
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackMaxSpeed",					"50"}, 	-- Original "5"
								{"GroundRunSpeed",					"24"}, 	-- Original "8"
								{"GroundWalkSpeed",					"6"}, 	-- Original "4.4"
								{"GroundWalkSpeedLowG",				"2.2"}, -- Original "1.6"
								{"GroundRunSpeedLowG",				"2.2"}, -- Original "3.5"
								{"UnderwaterMaxSpeed",				"12"}, 	-- Original "4"
								{"LaserBeamMineRate",				"0.9"},	-- Original "0.3"					
							}	
						}						
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["PRECEDING_KEY_WORDS"] = "",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HoverSpeedFactor", 					"0" }, 		--Original "20"
								{ "CruiseHeight", 						"0" }, 		--Original "250"
								{ "HoverMaxSpeed", 						"1200" }, 	--Original "150"
								{ "MiniWarpSpeed",						"150000"}	--Original "30000" (5x)
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"50" }, 	--Original "40"
								{ "MaxSpeed", 							"1200" }, 	--Original "180"
								{ "MinSpeed", 							"-1200" }, 	--Original "1"
								{ "Falloff", 							"0.0" }, 		--Original "0.7"
								{ "MinSpeedForce", 						"0" }, 		--Original "5"
								{ "BoostThrustForce", 					"100" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1500" }, 	--Original "1200"
								{ "BoostFalloff", 						"0.0" }, 		--Original "0.7"
								{ "DirectionBrakeMin", 					"0.3" }, 	--Original "1"
								{ "DirectionBrake", 					"0.5" }, 	--Original "1.5"
								{ "ReverseBrake", 						"0.5" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "TurnBrakeMin", 						"0.5" }, 	--Original "1"
								{ "TurnBrakeMax", 						"1" } 		--Original "2"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed", 							"1200" }, 	--Original "125"
								{ "MinSpeed", 							"0" }, 		--Original "20"
								{ "Falloff", 							"0.0" }, 		--Original "0.5"
								{ "BoostMaxSpeed", 						"1200" }, 	--Original "155"
								{ "BoostFalloff", 						"0.0" }, 		--Original "0.7"
								{ "OverspeedBrake", 					"0" } 		--Original "3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"50" }, 	--Original "80"
								{ "MaxSpeed", 							"1200" }, 	--Original "80"
								{ "MinSpeed", 							"-1200" }, 	--Original "1"
								{ "Falloff", 							"0.0" }, 	--Original "0.7"
								{ "MinSpeedForce", 						"0" }, 		--Original "5"
								{ "BoostThrustForce", 					"100" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1500" }, 	--Original "1300"
								{ "BoostFalloff", 						"0.0" }, 	--Original "0.7"
								{ "DirectionBrakeMin", 					"0.3" }, 	--Original "0.8"
								{ "DirectionBrake", 					"0.5" }, 	--Original "1.2"
								{ "ReverseBrake", 						"0.9" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "TurnBrakeMin", 						"0.5" }, 	--Original "1"
								{ "TurnBrakeMax", 						"1" } 		--Original "3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed", 							"1200" }, 	--Original "125"
								{ "MinSpeed", 							"0" }, 		--Original "20"
								{ "Falloff", 							"0.0" }, 	--Original "0.5"
								{ "BoostMaxSpeed", 						"1200" }, 	--Original "150"
								{ "BoostFalloff", 						"0.0" }, 	--Original "0.7"
								{ "OverspeedBrake", 					"0" } 		--Original "3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "ThrustForce", 						"50" }, 	--Original "40"
								{ "MaxSpeed", 							"1200" }, 	--Original "180"
								{ "MinSpeed", 							"-1200" }, 	--Original "1"
								{ "Falloff", 							"0.0" }, 	--Original "0.7"
								{ "MinSpeedForce", 						"0" }, 		--Original "5"
								{ "BoostThrustForce", 					"100" }, 	--Original "500"
								{ "BoostMaxSpeed", 						"1500" }, 	--Original "1100"
								{ "BoostFalloff", 						"0.0" }, 	--Original "0.7"
								{ "DirectionBrakeMin", 					"0.3" }, 	--Original "1"
								{ "DirectionBrake", 					"0.5" }, 	--Original "1.5"
								{ "ReverseBrake", 						"0.3" }, 	--Original "0.5"
								{ "OverspeedBrake", 					"0" }, 		--Original "3"
								{ "TurnBrakeMin", 						"0.5" }, 	--Original "1"
								{ "TurnBrakeMax", 						"1" } 		--Original "3"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed", 							"1200" }, 	--Original "130"
								{ "MinSpeed", 							"0" }, 		--Original "20"
								{ "Falloff", 							"0.0" }, 	--Original "0.5"
								{ "BoostMaxSpeed", 						"1200" }, 	--Original "185"
								{ "BoostFalloff", 						"0" }, 		--Original "0.7"
								{ "OverspeedBrake", 					"0" } 		--Original "3"
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE