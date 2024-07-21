NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "ShipTweeks.pak",
["MOD_AUTHOR"]              = "TwistedViking",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.00",
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
                                {"LandingMaxSpeed",          "200"},
                                {"LandingMaxAngle",          "15"},
                                {"HoverSpeedFactor",         "60"},
                                {"HoverLandReachedDistance", "8"},
                                {"MiniWarpChargeTime",       "0"},
                                {"MiniWarpSpeed",            "200000"},
                                {"LandingHelperTurnTime",    "0.1"},
                                {"LandingHelperRollTime",    "0.5"},
                                {"LandGroundTakeOffTime",    "0.6"},
                                {"GroundHeightSmoothTime",   "10000000"},
                                {"DockingRotateSpeed",       "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "100"},
                                {"MaxSpeed",          "700"},
                                {"BoostThrustForce",  "1000"},
                                {"BoostMaxSpeed",     "3000"},
                                {"BoostFalloff",      "0"},
                                {"BoostingTurnDamp",  "0.5"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0.2"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1"},
                                {"TurnStrength",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "40"},
                                {"MaxSpeed",           "400"},
                                {"MinSpeed",           "-5"},
                                {"BoostThrustForce",   "200"},
                                {"BoostMaxSpeed",      "800"},
                                {"LowSpeedTurnDamper", "1"},
                                {"TurnBrakeMin",       "0.2"},
                                {"TurnBrakeMax",       "2"},
                                {"TurnStrength",       "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "40"},
                                {"MaxSpeed",         "400"},
                                {"MinSpeed",         "-5"},
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed",    "900"},
                                {"TurnBrakeMin",     "0.2"},
                                {"TurnBrakeMax",     "5"},
                                {"TurnStrength",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",          "400"},
                                {"MinSpeed",          "-5"},
                                {"BoostMaxSpeed",     "800"},
                                {"BoostFalloff",      "0"},
                                {"BoostingTurnDamp",  "0.5"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake",    "1"},
                                {"OverspeedBrake",    "0.2"},
                                {"TurnBrakeMin",      "0.5"},
                                {"TurnBrakeMax",      "1"},
                                {"TurnStrength",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "50"},
                                {"MaxSpeed",         "600"},
                                {"MinSpeed",         "-5"},
                                {"BoostThrustForce", "400"},
                                {"BoostMaxSpeed",    "800"},
                                {"TurnBrakeMin",     "0.2"},
                                {"TurnBrakeMax",     "5"},
                                {"TurnStrength",     "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "50"},
                                {"MaxSpeed",           "600"},
                                {"MinSpeed",           "-5"},
                                {"BoostThrustForce",   "400"},
                                {"BoostMaxSpeed",      "600"},
                                {"LowSpeedTurnDamper", "1"},
                                {"TurnBrakeMin",       "0.2"},
                                {"TurnBrakeMax",       "5"},
                                {"TurnStrength",       "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "40"},
                                {"MaxSpeed",         "400"},
                                {"BoostThrustForce", "200"},
                                {"BoostMaxSpeed",    "800"},
                                {"TurnStrength",     "10"},
                            }
                        },                       
                    }
                }
            }
        }
    }
}