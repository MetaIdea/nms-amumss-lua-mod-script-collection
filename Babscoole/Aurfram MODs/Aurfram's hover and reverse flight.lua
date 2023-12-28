NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Aurfram's hover and reverse flight.pak",
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
                                {"HoverMinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShipPlanetBrakeMinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "0"},
                            }
                        },                        
                    }
                }
            }
        }
    }
}