NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_AstralShipsandFlight.pak",
["MOD_AUTHOR"]              = "AstralNut",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AtmosphereEffectEnabled",            "True"},
                                {"AbandonedSystemShipSpawnProbablity", "0.001"},
                                {"FlybyCloseOdds",                     "7"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShipThrustReverseThreshhold",     "0.18"},
                                {"LandingMaxSpeed",                 "420"},
                                {"LandingMaxAngle",                 "75"},
                                {"MaxOverspeedBrake",               "1000"},
                                {"LandingPushNoseUpFactor",         "0.07"},
                                {"AutoLevelWaterAngle",             "0"},
                                {"GroundHeightDownSpeedMultiplier", "5"},
                                {"GroundHeightBrakeMultiplier",     "1.2"},
                                {"PitchCorrectHeightMin",           "0"},
                                {"PitchCorrectHeightMax",           "0"},
                                {"AutoLevelMinPitchAngle",          "-10"},
                                {"AutoLevelMaxPitchAngle",          "45"},
                                {"AutoLevelMinAngle",               "5"},
                                {"AutoLevelMaxAngle",               "110"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "125"},
                                {"MinSpeed",          "20"},
                                {"Falloff",           "0.5"},
                                {"BoostMaxSpeed",     "155"},
                                {"BoostFalloff",      "0.7"},
                                {"BoostingTurnDamp",  "0.25"},
                                {"DirectionBrakeMin", "1"},
                                {"DirectionBrake",    "1.5"},
                                {"TurnBrakeMin",      "2"},
                                {"TurnBrakeMax",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "115"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "80"},
                                {"MinSpeed",      "10"},
                                {"Falloff",       "0.7"},
                                {"BoostMaxSpeed", "155"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "420"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "840"},
                                {"BoostFalloff",   "0"},
                                {"OverspeedBrake", "0"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "0.2"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "1.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "250"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "300"},
                                {"BoostFalloff",   "0.18"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "1.8"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "300"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "800"},
                                {"BoostFalloff",   "0.18"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "1.8"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "2.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "160"},
                                {"MinSpeed",       "0"},
                                {"Falloff",        "0"},
                                {"BoostMaxSpeed",  "250"},
                                {"BoostFalloff",   "0.18"},
                                {"ReverseBrake",   "0.42"},
                                {"OverspeedBrake", "1.8"},
                                {"TurnBrakeMin",   "0"},
                                {"TurnBrakeMax",   "0"},
                                {"TurnStrength",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "130"},
                                {"MinSpeed",      "20"},
                                {"Falloff",       "0.5"},
                                {"BoostMaxSpeed", "185"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "100"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "80"},
                                {"MinSpeed",     "10"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "130"},
                                {"MinSpeed",      "1"},
                                {"Falloff",       "0.5"},
                                {"BoostMaxSpeed", "185"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "100"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "80"},
                                {"MinSpeed",      "10"},
                                {"Falloff",       "0.7"},
                                {"BoostMaxSpeed", "120"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "4"},
                            }
                        }, 
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "180"},
                                {"MinSpeed",     "1"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "130"},
                                {"MinSpeed",      "1"},
                                {"Falloff",       "0.5"},
                                {"BoostMaxSpeed", "185"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",     "130"},
                                {"MinSpeed",     "50"},
                                {"Falloff",      "0.7"},
                                {"BoostFalloff", "0.7"},
                                {"TurnBrakeMin", "1"},
                                {"TurnBrakeMax", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "80"},
                                {"MinSpeed",      "10"},
                                {"Falloff",       "0.7"},
                                {"BoostMaxSpeed", "120"},
                                {"BoostFalloff",  "0.7"},
                                {"TurnBrakeMin",  "1"},
                                {"TurnBrakeMax",  "4"},
                            }
                        },
                    }
                },
            }
        }
    }
}