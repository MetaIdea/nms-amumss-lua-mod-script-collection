NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "10xflyingfastlanding.pak",
["MOD_AUTHOR"]              = "JamesDude420",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.14",
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
                                {"LandingMaxSpeed",             "800"},
                                {"ExhaustSpeed",                "10"},
                                {"HoverTime",                   "0.1"},
                                {"HoverAlignTime",              "0.1"},
                                {"HoverTimeAlt",                "0.1"},
                                {"HoverAlignTimeAlt",           "0.1"},
                                {"HoverLandReachedMinTime",     "0"},
                                {"HoverLandManeuvreTimeMin",    "0.1"},
                                {"HoverLandManeuvreTimeMax",    "0.1"},
                                {"HoverLandManeuvreTimeHmdMin", "0.1"},
                                {"HoverLandManeuvreTimeHmdMax", "0.1"},
                                {"LandingButtonMinTime",        "0.1"},
                                {"TakeOffCost",                 "0"},
                                {"LandGroundTakeOffTime",       "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1800"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                                {"TurnBrakeMax",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "60"},
                                {"MaxSpeed",         "375"},
                                {"BoostThrustForce", "300"},
                                {"BoostMaxSpeed",    "465"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "800"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "80"},
                                {"MaxSpeed",         "160"},
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed",    "310"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTorque",               "100000"},
                                {"ShipPlanetBrakeMaxSpeed", "900"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "400"},
                                {"MaxSpeed",          "1800"},
                                {"BoostThrustForce",  "5000"},
                                {"BoostMaxSpeed",     "12000"},
                                {"DirectionBrakeMin", "1"},
                                {"DirectionBrake",    "1.5"},
                                {"TurnBrakeMax",      "5"},
                                {"TurnStrength",      "1"},
                                {"RollAmount",        "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "60"},
                                {"MaxSpeed",           "375"},
                                {"BoostThrustForce",   "300"},
                                {"BoostMaxSpeed",      "465"},
                                {"BoostingTurnDamp",   "0.25"},
                                {"DirectionBrakeMin",  "1"},
                                {"DirectionBrake",     "1.5"},
                                {"LowSpeedTurnDamper", "0.25"},
                                {"TurnBrakeMin",       "2"},
                                {"TurnBrakeMax",       "3"},
                                {"TurnStrength",       "1"},
                                {"BalanceTimeMax",     "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "40"},
                                {"MaxSpeed",         "800"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                                {"DirectionBrake",   "2"},
                                {"TurnStrength",     "1.3"},
                                {"RollAmount",       "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "160"},
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed",    "310"},
                                {"DirectionBrake",   "2"},
                                {"TurnStrength",     "1.3"},
                                {"RollAmount",       "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTorque",               "100000"},
                                {"ShipPlanetBrakeMaxSpeed", "900"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "400"},
                                {"MaxSpeed",         "1800"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                                {"TurnBrakeMax",     "5"},
                                {"TurnStrength",     "1"},
                                {"RollAmount",       "2"},
                                {"RollForce",        "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "60"},
                                {"MaxSpeed",           "375"},
                                {"BoostThrustForce",   "300"},
                                {"BoostMaxSpeed",      "465"},
                                {"BoostingTurnDamp",   "0.25"},
                                {"DirectionBrakeMin",  "1"},
                                {"DirectionBrake",     "1.5"},
                                {"LowSpeedTurnDamper", "0.25"},
                                {"TurnBrakeMin",       "2"},
                                {"TurnBrakeMax",       "3"},
                                {"TurnStrength",       "1"},
                                {"RollAmount",         "2"},
                                {"RollForce",          "1.25"},
                                {"BalanceTimeMin",     "0.6"},
                                {"BalanceTimeMax",     "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "800"},
                                {"BoostThrustForce", "5000"},
                                {"BoostMaxSpeed",    "12000"},
                                {"TurnStrength",     "1.3"},
                                {"RollAmount",       "2"},
                                {"RollForce",        "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "80"},
                                {"MaxSpeed",         "160"},
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed",    "310"},
                                {"TurnStrength",     "1.3"},
                                {"RollAmount",       "2"},
                                {"RollForce",        "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTorque",               "100000"},
                                {"ShipPlanetBrakeMaxSpeed", "900"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax",      "2500"},
                                {"MaxSpeedMax",         "300"},
                                {"BoostMaxSpeedMax",    "150"},
                                {"BoostingTurnDampMax", "0.5"},
                                {"DirectionBrakeMin",   "0.8"},
                                {"TurnStrengthMax",     "0.6"},
                            }
                        },
                    }
                }
            }
        }
    }
}