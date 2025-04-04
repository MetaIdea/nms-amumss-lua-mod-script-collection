NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    =   "shoemakers Flight Adjustments Vanilla Handling.pak",
    ["MOD_AUTHOR"]      =   "shoemakerjones",
    ["LUA_AUTHOR"]      =   "shoemakerjones",
    ["NMS_VERSION"]     =   "4.x",
    ["MOD_DESCRIPTION"] =   "v2.3 - Makes significant changes to they way flight is handled, both in space as well as in planetary athmosphere.",
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
                                {"MinSpeed", "1"},  
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "2.4"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "0.5"},
                                {"BoostingTurnDamp", "1"},   
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this  
                                {"MinSpeed", "1"},   
                                {"ReverseBrake", "1"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "2.4"},  
								{"TurnBrakeMin", "1"},  
								{"TurnBrakeMax", "1.5"},
                                {"BoostingTurnDamp", "0.50"}, 
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this 
                                {"MinSpeed", "1"},    
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"}, 
								{"TurnStrength", "3"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"},
                                {"BoostingTurnDamp", "1"},  
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"]	= 
                            {
								{"LowSpeedTurnDamper", "0.01"}, -- Do not change this
                                {"MinSpeed", "1"},  
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "3"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"},
                                {"BoostingTurnDamp", "1"},  
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
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