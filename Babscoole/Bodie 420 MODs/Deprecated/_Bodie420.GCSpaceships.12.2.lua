NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]           = "_Bodie420.GCSpaceships.12.2.pak",
["MOD_AUTHOR"]             = "Bodie420",
["LUA_AUTHOR"]             = "Babscoole",
["NMS_VERSION"]            = "4.15",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
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
                                {"MaximumDistanceFromShipWhenExiting",     "2"},
                                {"MaximumHeightWhenExitingShip",           "2"},
                                {"OutpostDockSpeedAlignMinDistance",       "1"},
                                {"OutpostDockSpeedAlignRange",             "3000"},
                                {"WarpInTime",                             "0.1"},
                                {"WarpInFlashTime",                        "0.098"},
                                {"WarpNexusRotation",                      "0"},
                                {"WarpNexusPitch",                         "0"},
                                {"PadTurnSpeed",                           "9"},
                                {"TakeOffCost",                            "0"},
                                {"MiniWarpChargeTime",                     "0.1"},
                                {"MiniWarpSpeed",                          "99999"},
                                {"MiniWarpTime",                           "0.1"},
                                {"MiniWarpCooldownTime",                   "0.1"},
                                {"MiniWarpStoppingMarginPlanet",           "2000"},
                                {"MiniWarpMinPlanetDistance",              "1000"},
                                {"MiniWarpStoppingMarginDefault",          "1500"},
                                {"MiniWarpStoppingMarginLong",             "1500"},
                                {"MiniWarpExitTime",                       "0.1"},
                                {"LaunchThrustersRegenTimePeriod",         "0.1"},
                                {"LaunchThrustersMinimumSummonPercentage", "0"},
                                {"LaunchThrustersSummonCostMultiplier",    "0"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "99999"}, 
                                {"MinSpeed",      "0"},  
                                {"BoostMaxSpeed", "99999"}, 
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "99999"},
                                {"MinSpeed",         "0"},  
                                {"Falloff",          "0.7"}, 
                                {"MinSpeedForce",    "5"},  
                                {"BoostThrustForce", "500"}, 
                                {"BoostMaxSpeed",    "99999"}, 
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "99999"}, 
                                {"MinSpeed",      "0"},  
                                {"MinSpeedForce", "5"}, 
                                {"BoostMaxSpeed", "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "99999"}, 
                                {"MinSpeed",         "0"},  
                                {"MinSpeedForce",    "5"},
                                {"BoostThrustForce", "500"},                                
                                {"BoostMaxSpeed",    "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "99999"},
                                {"MinSpeed",      "0"}, 
                                {"BoostMaxSpeed", "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "99999"},
                                {"MinSpeed",         "0"},  
                                {"Falloff",          "0.7"}, 
                                {"MinSpeedForce",    "5"},  
                                {"BoostThrustForce", "500"}, 
                                {"BoostMaxSpeed",    "99999"}, 
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "99999"}, 
                                {"MinSpeed",      "0"},  
                                {"MinSpeedForce", "5"}, 
                                {"BoostMaxSpeed", "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "99999"}, 
                                {"MinSpeed",         "0"},  
                                {"MinSpeedForce",    "5"},
                                {"BoostThrustForce", "500"},                                
                                {"BoostMaxSpeed",    "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "99999"},
                                {"MinSpeed",      "0"}, 
                                {"BoostMaxSpeed", "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "99999"},
                                {"MinSpeed",         "0"},  
                                {"Falloff",          "0.7"}, 
                                {"MinSpeedForce",    "5"},  
                                {"BoostThrustForce", "500"}, 
                                {"BoostMaxSpeed",    "99999"}, 
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "99999"}, 
                                {"MinSpeed",      "0"},  
                                {"MinSpeedForce", "5"}, 
                                {"BoostMaxSpeed", "99999"},
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "99999"}, 
                                {"MinSpeed",         "0"},  
                                {"MinSpeedForce",    "5"},
                                {"BoostThrustForce", "500"},                                
                                {"BoostMaxSpeed",    "99999"},
                            }
                        },
                    }
                }
            }
        }
    }
}