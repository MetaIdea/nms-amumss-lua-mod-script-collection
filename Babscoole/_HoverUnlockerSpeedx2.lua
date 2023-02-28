NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_HoverUnlockerSpeedx2.pak",
["MOD_DESCRIPTION"] = "Every Space Ships will go faster on planets and also in space. In addition I unlocked the possibility to hover on planets and in space",
["MOD_AUTHOR"]      = "katonslin20",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "360"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "250"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "360"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "250"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2700"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "350"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "260"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "320"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                                {"MinSpeed", "0"},
                                {"MinSpeedForce", "0"},
                                {"BoostMaxSpeed", "2200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                                {"MinSpeed", "0"},
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