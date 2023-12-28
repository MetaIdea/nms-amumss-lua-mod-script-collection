NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Turbo_Ship_Droid_100+.pak",
["MOD_DESCRIPTION"]         = "Added the speed of the guards starships trial version",
["MOD_AUTHOR"]              = "Tuz1971",
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
                                {"EnablePulseDriveSpaceStationOrient", "True"},
                                {"LandingMaxSpeed",                    "300"},
                                {"LandingMaxAngle",                    "90"},
                                {"VignetteAmountAcceleration",         "60"},
                                {"VignetteAmountTurning",              "0.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "600"},
                                {"BoostMaxSpeed", "60000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "550"},
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "0.5"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "500"},
                                {"MinSpeed",      "5"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "450"},
                                {"MinSpeedForce", "10"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "650"},
                                {"BoostMaxSpeed", "61000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "550"},
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "0.5"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "0.5"},
                                {"BoostMaxSpeed", "61000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "480"},
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "5"},
                                {"BoostMaxSpeed", "60000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "500"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "550"},
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "5"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "400"},
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "5"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "550"},
                                {"MinSpeed",      "5"},
                                {"MinSpeedForce", "5"},
                                {"BoostMaxSpeed", "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "700"},
                                {"BoostThrustForce", "50"},
                                {"BoostMaxSpeed",    "70000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "1300"},
                                {"BoostThrustForce", "40"},
                                {"BoostMaxSpeed",    "70000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "1300"},
                                {"BoostThrustForce", "50"},
                                {"BoostMaxSpeed",    "70000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "800"},
                                {"BoostMaxSpeed",    "70000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BoostMaxSpeedMax", "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BoostMaxSpeedMax", "550"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BoostMaxSpeedMax", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BoostMaxSpeedMax", "650"},
                            }
                        },
                    }
                }
            }
        }
    }
}