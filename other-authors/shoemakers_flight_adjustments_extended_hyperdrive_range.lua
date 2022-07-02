NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    =   "shoemakers Flight Adjustments Extended Hyperdrive",
    ["MOD_AUTHOR"]      =   "shoemakerjones",
    ["LUA_AUTHOR"]      =   "shoemakerjones",
    ["NMS_VERSION"]     =   "3.93",
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
                                {"LandingHoverOffset", "2"}, -- Original 3
                                {"LandingMaxSpeed", "80"}, -- Original 80
                                {"HoverSpeedFactor", "0.01"}, -- Original 20
                                {"HoverLandReachedDistance","8"}, -- Original 10
                                {"LandingPushNoseUpFactor", "0.02"}, -- Original 0.15
                                {"MiniWarpLinesNum", "0"}, -- Original 4
								{"DockingRotateSpeed", "3"}, -- Original 1
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "720"}, -- Original 180
                                {"BoostThrustForce", "1000"}, -- Original 500
                                {"BoostMaxSpeed", "2400"}, -- Original 1200
                                {"ReverseBrake", "0.6"}, -- Original 0.5
                                {"OverSpeedBrake", "2"}, -- Original 3
								{"TurnStrength", "2"}, -- Original 1
								{"TurnBrakeMin", "0.5"}, -- Original 1
								{"TurnBrakeMax", "0.5"}, -- Original 1
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "500"}, -- Original 125
                                {"MinSpeed", "1"}, -- Original 10
                                {"BoostThrustForce", "200"}, -- Original 100
                                {"BoostMaxSpeed", "1200"}, -- Original 155
                                {"ReverseBrake", "1"}, -- Original 1
                                {"OverSpeedBrake", "2"}, -- Original 3
								{"TurnStrength", "2"}, -- Original 1
								{"TurnBrakeMin", "1"}, -- Original 2
								{"TurnBrakeMax", "1.5"}, -- Original 3
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "160"}, -- Original 80
                                {"MinSpeed", "1"}, -- Original 10
                                {"BoostThrustForce", "1000"}, -- Original 500
                                {"BoostMaxSpeed", "2400"}, -- Original 1200
                                {"ReverseBrake", "0.6"}, -- Original 0.5
                                {"OverSpeedBrake", "2"}, -- Original 3
								{"TurnStrength", "0.65"}, -- Original 1.3
								{"TurnBrakeMin", "0.5"}, -- Original 1
								{"TurnBrakeMax", "2"}, -- Original 4
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MaxSpeed", "160"}, -- Original 180
                                {"MinSpeed", "1"}, -- Original 10
                                {"BoostThrustForce", "200"}, -- Original 100
                                {"BoostMaxSpeed", "1200"}, -- Original 155
                                {"ReverseBrake", "0.6"}, -- Original 0.5
                                {"OverSpeedBrake", "2"}, -- Original 3
								{"TurnStrength", "0.65"}, -- Original 1.3
								{"TurnBrakeMin", "0.5"}, -- Original 1
								{"TurnBrakeMax", "2"}, -- Original 4
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
								{"Bonus", "1000000"}, 	-- Original "100"
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","WARP_ALIEN",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "1000000"}, 	-- Original "100"
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "1000000"}, 	-- Original "100"
                            }
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE_SPEC",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
								{"Bonus", "1000000"}, 	-- Original "100"
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
                                {"FreePanSpeed", "1.25"}, -- Original 0.8
                                {"FreePanSpeedTurbo", "75"}, -- Original 2.75
                            }
                        }
                    }
                }
            }
        }
    }
}