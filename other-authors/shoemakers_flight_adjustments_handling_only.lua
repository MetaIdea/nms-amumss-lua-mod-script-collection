NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    =   "shoemakers Flight Adjustments - Handling Only.pak",
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
                                {"CombatBoostTurnDamp", "0.1"}
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
                                {"MinSpeed", "1"},  
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
                                {"MinSpeed", "1"},   
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
                                {"MinSpeed", "1"},   
                                {"ReverseBrake", "0.6"},  
                                {"OverSpeedBrake", "2"},  
								{"TurnStrength", "2.6"},  
								{"TurnBrakeMin", "0.5"},  
								{"TurnBrakeMax", "2"}, 
                            }
                        }
                    }
                }
            }
        }
    }
}