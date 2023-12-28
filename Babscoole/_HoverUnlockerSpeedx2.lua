NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_HoverUnlockerSpeedx2.pak",
["MOD_DESCRIPTION"]         = "Every Space Ships will go faster on planets and also in space. In addition I unlocked the possibility to hover on planets and in space",
["MOD_AUTHOR"]              = "katonslin20",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.10",
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
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "360"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "250"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",   "160"},
                                {"MinSpeed",   "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "360"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "250"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2700"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "260"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "320"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"MinSpeed",      "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "240"},
                            }
                        },
                    }
                }
            }
        }
    }
}