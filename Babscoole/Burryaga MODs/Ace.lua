NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Ace.pak",
["MOD_AUTHOR"]              = "Burryaga",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.70",
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
                                {"MiniWarpChargeTime", "0.5"},
                                {"MiniWarpSpeed",      "60000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "900"},
                                {"MinSpeed",      "-900"},
                                {"BoostMaxSpeed", "8400"},
                                {"TurnStrength",  "1.8"},
                                {"RollAmount",    "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "375"},
                                {"MinSpeed",      "1E-07"},
                                {"BoostMaxSpeed", "620"},
                                {"TurnStrength",  "1.8"},
                                {"RollAmount",    "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "560"},
                                {"MinSpeed",      "-560"},
                                {"BoostMaxSpeed", "12000"},
                                {"TurnStrength",  "2.86"},
                                {"RollAmount",    "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTorque",                "10000000"},
                                {"ShipPlanetBrakeMaxHeight", "12500"},
                                {"ShipPlanetBrakeForce",     "65"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "900"},
                                {"MinSpeed",      "-900"},
                                {"BoostMaxSpeed", "9100"},
                                {"TurnStrength",  "1.98"},
                                {"RollAmount",    "6.8999996"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "375"},
                                {"MinSpeed",      "1E-07"},
                                {"BoostMaxSpeed", "600"},
                                {"TurnStrength",  "2.9699998"},
                                {"RollAmount",    "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "560"},
                                {"MinSpeed",      "-560"},
                                {"BoostMaxSpeed", "13000"},
                                {"TurnStrength",  "3.3000002"},
                                {"RollAmount",    "11.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTorque",                "10000000"},
                                {"ShipPlanetBrakeMaxHeight", "12500"},
                                {"ShipPlanetBrakeForce",     "65"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "900"},
                                {"MinSpeed",      "-900"},
                                {"BoostMaxSpeed", "7700"},
                                {"TurnStrength",  "1.08"},
                                {"RollAmount",    "4.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "390"},
                                {"MinSpeed",      "1E-07"},
                                {"BoostMaxSpeed", "740"},
                                {"TurnStrength",  "1.26"},
                                {"RollAmount",    "3.75"},

                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "560"},
                                {"MinSpeed",      "-560"},
                                {"BoostMaxSpeed", "11000"},
                                {"TurnStrength",  "2.2"},
                                {"RollAmount",    "7.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTorque",                "10000000"},
                                {"ShipPlanetBrakeMaxHeight", "12500"},
                                {"ShipPlanetBrakeForce",     "65"},
                            }
                        },
                    }
                },
            }
        }
    }
}