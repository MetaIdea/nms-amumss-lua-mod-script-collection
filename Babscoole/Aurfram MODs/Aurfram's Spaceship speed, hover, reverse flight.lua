NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Aurfram's Spaceship speed, hover, reverse flight.pak",
["MOD_AUTHOR"]              = "Aurfram",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
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
                                {"LandingMaxSpeed", "8000"},
                                {"HoverMinSpeed",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "200"},
                                {"MaxSpeed",         "1250"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "1550"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1150"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "1550"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "800"},
                                {"MaxSpeed",         "1800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "13000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1250"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "2000"},
                                {"BoostMaxSpeed",    "1500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "800"},
                                {"MaxSpeed",         "1300"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "13000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "800"},
                                {"MaxSpeed",         "800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "1550"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "11000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "200"},
                                {"MaxSpeed",         "1300"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed",    "1850"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1000"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "11000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "1200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "11000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "200"},
                                {"MaxSpeed",         "1300"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "4000"},
                                {"BoostMaxSpeed",    "1850"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1300"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "11000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "800"},
                                {"MinSpeed",         "0"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "1200"},
                            }
                        },                        
                    }
                }
            }
        }
    }
}