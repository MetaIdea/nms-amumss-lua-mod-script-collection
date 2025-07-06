NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    =   "shoemakers-flight-adjustments.pak",
    ["MOD_AUTHOR"]      =   "shoemakerjones",
    ["LUA_AUTHOR"]      =   "shoemakerjones",
    ["NMS_VERSION"]     =   "5.51",
    ["MOD_DESCRIPTION"] =   "v2.31 - Updated for Worlds 2.0.",
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
                                {"LandingMaxSpeed", "300"},
                                {"HoverSpeedFactor", "0.01"},
                                {"HoverLandReachedDistance","8"},
                                {"LandingPushNoseUpFactor", "0.02"},
                                {"MiniWarpLinesNum", "0"},
                                {"MiniWarpSpeed", "120000"},
                                {"MiniWarpTime", "3"},
								{"DockingRotateSpeed", "3"},
                                {"LandGroundTakeOffTime", "0.5"},
                                {"CombatBoostTurnDamp", "1"},
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
                                {"BoostingTurnDamp", "1"},   
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},   
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "0.5"}, 
								{"TurnStrength", "2.4"}, 
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
                                {"MaxSpeed", "500"},  
                                {"MinSpeed", "1"}, 
                                {"BoostThrustForce", "200"},  
                                {"BoostMaxSpeed", "1200"},
                                {"BoostingTurnDamp", "0.50"},  
                                {"ReverseBrake", "1"},  
                                {"OverSpeedBrake", "2"},{"LowSpeedTurnDamper", "0.01"}, -- Do not change this  
								{"TurnBrakeMin", "1"},  
								{"TurnBrakeMax", "1.5"},  
								{"TurnStrength", "2.4"}, 
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
                                {"MaxSpeed", "160"},  
                                {"MinSpeed", "1"},  
                                {"BoostThrustForce", "1000"},  
                                {"BoostMaxSpeed", "2400"},
                                {"BoostingTurnDamp", "1"},   
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"}, 
								{"TurnStrength", "3"}, 
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
                                {"MaxSpeed", "160"},  
                                {"MinSpeed", "1"}, 
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed", "1200"}, 
                                {"BoostingTurnDamp", "1"},  
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"}, 
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this 
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"}, 
								{"TurnStrength", "3"},  
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StatsType", "Ship_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 2,
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
                            ["SPECIAL_KEY_WORDS"] = {"Camera", "GcGalaxyCameraData.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"FreePanSpeed", "1.35"},
                                {"FreePanSpeedTurbo", "70"}, 
                            }
                        }
                    }
                }
            }
        }
    }
}