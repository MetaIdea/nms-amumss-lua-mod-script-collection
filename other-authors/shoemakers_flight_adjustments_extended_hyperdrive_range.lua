NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    =   "shoemakers Flight Adjustments Extended Hyperdrive.pak",
    ["MOD_AUTHOR"]      =   "shoemakerjones",
    ["LUA_AUTHOR"]      =   "shoemakerjones",
    ["NMS_VERSION"]     =   "3.98",
    ["MOD_DESCRIPTION"] =   "Makes significant changes to they way flight is handled, both in space as well as in planetary athmosphere.",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"LandingHoverOffset", "2"},  
                                {"LandingMaxSpeed", "80"},  
                                {"HoverSpeedFactor", "0.01"},  
                                {"HoverLandReachedDistance","8"},  
                                {"LandingPushNoseUpFactor", "0.02"},  
                                {"MiniWarpLinesNum", "0"}, 
								{"DockingRotateSpeed", "3"}, 
                                {"LandGroundTakeOffTime", "0.5"},
                                {"CombatBoostTurnDamp", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "720"},  
                                {"MinSpeed", "1"},  
                                {"BoostThrustForce", "1000"},  
                                {"BoostMaxSpeed", "2400"},  
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "2"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "0.5"},  
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "500"},  
                                {"MinSpeed", "1"}, 
                                {"BoostThrustForce", "200"},  
                                {"BoostMaxSpeed", "1200"},  
                                {"ReverseBrake", "1"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "2"},  
								{"TurnBrakeMin", "1"},  
								{"TurnBrakeMax", "1.5"},  
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "160"},  
                                {"MinSpeed", "1"},  
                                {"BoostThrustForce", "1000"},  
                                {"BoostMaxSpeed", "2400"},  
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"}, 
								{"TurnStrength", "2.6"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"}, 
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "160"},  
                                {"MinSpeed", "1"},  
                                {"BoostThrustForce", "200"},  
                                {"BoostMaxSpeed", "1200"},  
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "2.6"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"}, 
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "10000"}, 
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","WARP_ALIEN",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "10000"}, 
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "10000"}, 
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE_SPEC",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "10000"}, 
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","CARGOSHIELD",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "10000"}, 
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NebulaeAlphaPow", "0"},
                                {"NebulaeTraceValueMult", "0"},
                                {"NebulaeTraceScale", "0"},
                                {"NebulaeTraceDensity", "0"},
                                {"NebulaeTraceDensityCutoff", "0"},
                                {"NebulaeTraceStepRange", "0"},
                                -- {"BGColourStage1", "0"},
                                -- {"BGColourStage2", "0"},
                                -- {"BGColourStage3", "0"},
                                -- {"BGColourStage4", "0"},
                                -- {"BGColourCellBlend", "0"},
                                -- {"BGColourPow", "0"},
                                {"StarFieldBlendAmount", "0"},
                                {"SpiralFormChance", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "DefaultRenderSetup",
                                "GcGalaxyRenderSetupData.xml",
                                "NebulaeTraceStepRange",
                                "Vector2f.xml",
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Camera", "GcGalaxyCameraData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"FreePanSpeed", "1.25"},
                                {"FreePanSpeedTurbo", "75"}, 
                            }
                        }
                    }
                }
            }
        }
    }
}