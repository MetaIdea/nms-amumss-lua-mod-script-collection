NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "DSFOrbital.pak",
["MOD_AUTHOR"]              = "Dazaster",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.63",
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
                                {"DefaultTrailMinForwardSpeed", "775"},
                                {"LateralDriftRollAmount",      "0.2"},
                                {"LateralDriftRange",           "120"},
                                {"PadTurnSpeed",                "0.55"},
                                {"LandingPushNoseUpFactor",     "-0.1"},
                                {"MiniWarpLinesNum",            "0"},
                                {"MiniWarpSpeed",               "90000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "125"},
                                {"MaxSpeed",          "375"},
                                {"MinSpeed",          "0"},
                                {"Falloff",           "0.05"},
                                {"MinSpeedForce",     "30"},
                                {"BoostThrustForce",  "1000"},
                                {"BoostMaxSpeed",     "3275"},
                                {"BoostFalloff",      "0.05"},
                                {"DirectionBrakeMin", "2"},
                                {"DirectionBrake",    "2.5"},
                                {"ReverseBrake",      "0.7"},
                                {"TurnBrakeMax",      "3"},
                                {"TurnStrength",      "13"},
                                {"RollAmount",        "5"},
                                {"RollForce",         "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",       "105"},
                                {"MaxSpeed",          "320"},
                                {"MinSpeed",          "0.01"},
                                {"Falloff",           "0.05"},
                                {"MinSpeedForce",     "60"},
                                {"BoostThrustForce",  "440"},
                                {"BoostMaxSpeed",     "640"},
                                {"BoostFalloff",      "0.057"},
                                {"DirectionBrakeMin", "2"},
                                {"DirectionBrake",    "2.5"},
                                {"ReverseBrake",      "1.2"},
                                {"TurnBrakeMax",      "4"},
                                {"TurnStrength",      "13"},
                                {"RollAmount",        "5"},
                                {"RollForce",         "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "125"},
                                {"MaxSpeed",         "180"},
                                {"MinSpeed",         "30"},
                                {"Falloff",          "0.05"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "3275"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "0.9"},
                                {"TurnStrength",     "13"},
                                {"RollAmount",       "5"},
                                {"RollForce",        "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "140"},
                                {"MaxSpeed",         "180"},
                                {"BoostThrustForce", "150"},
                                {"BoostMaxSpeed",    "360"},
                                {"ReverseBrake",     "0.9"},
                                {"TurnStrength",     "13"},
                                {"RollAmount",       "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "165"},
                                {"MaxSpeed",         "375"},
                                {"MinSpeed",         "0"},
                                {"Falloff",          "0.05"},
                                {"MinSpeedForce",    "30"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "3375"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "0.7"},
                                {"TurnBrakeMax",     "4"},
                                {"TurnStrength",     "13"},
                                {"RollAmount",       "5"},
                                {"RollForce",        "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "125"},
                                {"MaxSpeed",         "320"},
                                {"MinSpeed",         "0.01"},
                                {"Falloff",          "0.05"},
                                {"MinSpeedForce",    "60"},
                                {"BoostThrustForce", "440"},
                                {"BoostMaxSpeed",    "640"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "1.2"},
                                {"TurnStrength",     "13"},
                                {"RollAmount",       "5"},
                                {"RollForce",        "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "165"},
                                {"MaxSpeed",         "180"},
                                {"MinSpeed",         "30"},
                                {"Falloff",          "0.05"},
                                {"BoostThrustForce", "640"},
                                {"BoostMaxSpeed",    "2375"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "0.9"},
                                {"TurnStrength",     "13"},
                                {"RollAmount",       "5"},
                                {"RollForce",        "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "165"},
                                {"MaxSpeed",         "180"},
                                {"BoostThrustForce", "150"},
                                {"BoostMaxSpeed",    "640"},
                                {"ReverseBrake",     "0.9"},
                                {"TurnBrakeMax",     "5"},
                                {"TurnStrength",     "13"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "125"},
                                {"MaxSpeed",         "375"},
                                {"MinSpeed",         "0"},
                                {"Falloff",          "0.05"},
                                {"MinSpeedForce",    "30"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "2175"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "0.7"},
                                {"TurnBrakeMax",     "4"},
                                {"TurnStrength",     "13"},
                                {"RollAmount",       "5"},
                                {"RollForce",        "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "105"},
                                {"MaxSpeed",         "325"},
                                {"MinSpeed",         "0.01"},
                                {"Falloff",          "0.05"},
                                {"MinSpeedForce",    "60"},
                                {"BoostThrustForce", "205"},
                                {"BoostMaxSpeed",    "650"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "1.2"},
                                {"TurnBrakeMax",     "4"},
                                {"TurnStrength",     "11"},
                                {"RollAmount",       "4"},
                                {"RollForce",        "2.25"},

                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",      "125"},
                                {"MaxSpeed",         "180"},
                                {"MinSpeed",         "30"},
                                {"Falloff",          "0.05"},
                                {"BoostThrustForce", "1000"},
                                {"BoostMaxSpeed",    "2175"},
                                {"BoostFalloff",     "0.05"},
                                {"ReverseBrake",     "0.7"},
                                {"TurnStrength",     "11"},
                                {"RollAmount",       "4"},
                                {"RollForce",        "2.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"BoostMaxSpeed", "360"},
                                {"TurnStrength",  "11"},
                                {"RollAmount",    "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",             "0"},
                                {"MaxSpeed",                "0"},
                                {"MinSpeed",                "0"},
                                {"Falloff",                 "0"},
                                {"MinSpeedForce",           "0"},
                                {"BoostThrustForce",        "0"},
                                {"BoostMaxSpeed",           "0"},
                                {"BoostFalloff",            "0"},
                                {"BoostingTurnDamp",        "0"},
                                {"DirectionBrakeMin",       "0"},
                                {"DirectionBrake",          "0"},
                                {"ReverseBrake",            "0"},
                                {"OverspeedBrake",          "0"},
                                {"LowSpeedTurnDamper",      "0"},
                                {"TurnBrakeMin",            "0"},
                                {"TurnBrakeMax",            "0"},
                                {"TurnStrength",            "0"},
                                {"RollAmount",              "0"},
                                {"RollForce",               "0"},
                                {"RollAutoTime",            "0"},
                                {"BalanceTimeMin",          "0"},
                                {"BalanceTimeMax",          "0"},
                                {"FollowProportionalGain",  "0"},
                                {"FollowDerivativeGain",    "0"},
                                {"FollowIntegralGain",      "0"},
                                {"FollowProportionalLimit", "0"},
                                {"FollowDerivativeLimit",   "0"},
                                {"FollowIntegralLimit",     "0"},
                                {"FollowIntegralDecay",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",             "0"},
                                {"MaxSpeed",                "0"},
                                {"MinSpeed",                "0"},
                                {"Falloff",                 "0"},
                                {"MinSpeedForce",           "0"},
                                {"BoostThrustForce",        "0"},
                                {"BoostMaxSpeed",           "0"},
                                {"BoostFalloff",            "0"},
                                {"BoostingTurnDamp",        "0"},
                                {"DirectionBrakeMin",       "0"},
                                {"DirectionBrake",          "0"},
                                {"ReverseBrake",            "0"},
                                {"OverspeedBrake",          "0"},
                                {"LowSpeedTurnDamper",      "0"},
                                {"TurnBrakeMin",            "0"},
                                {"TurnBrakeMax",            "0"},
                                {"TurnStrength",            "0"},
                                {"RollAmount",              "0"},
                                {"RollForce",               "0"},
                                {"RollAutoTime",            "0"},
                                {"BalanceTimeMin",          "0"},
                                {"BalanceTimeMax",          "0"},
                                {"FollowProportionalGain",  "0"},
                                {"FollowDerivativeGain",    "0"},
                                {"FollowIntegralGain",      "0"},
                                {"FollowProportionalLimit", "0"},
                                {"FollowDerivativeLimit",   "0"},
                                {"FollowIntegralLimit",     "0"},
                                {"FollowIntegralDecay",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",             "0"},
                                {"MaxSpeed",                "0"},
                                {"MinSpeed",                "0"},
                                {"Falloff",                 "0"},
                                {"MinSpeedForce",           "0"},
                                {"BoostThrustForce",        "0"},
                                {"BoostMaxSpeed",           "0"},
                                {"BoostFalloff",            "0"},
                                {"BoostingTurnDamp",        "0"},
                                {"DirectionBrakeMin",       "0"},
                                {"DirectionBrake",          "0"},
                                {"ReverseBrake",            "0"},
                                {"OverspeedBrake",          "0"},
                                {"LowSpeedTurnDamper",      "0"},
                                {"TurnBrakeMin",            "0"},
                                {"TurnBrakeMax",            "0"},
                                {"TurnStrength",            "0"},
                                {"RollAmount",              "0"},
                                {"RollForce",               "0"},
                                {"RollAutoTime",            "0"},
                                {"BalanceTimeMin",          "0"},
                                {"BalanceTimeMax",          "0"},
                                {"FollowProportionalGain",  "0"},
                                {"FollowDerivativeGain",    "0"},
                                {"FollowIntegralGain",      "0"},
                                {"FollowProportionalLimit", "0"},
                                {"FollowDerivativeLimit",   "0"},
                                {"FollowIntegralLimit",     "0"},
                                {"FollowIntegralDecay",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",             "0"},
                                {"MaxSpeed",                "0"},
                                {"MinSpeed",                "0"},
                                {"Falloff",                 "0"},
                                {"MinSpeedForce",           "0"},
                                {"BoostThrustForce",        "0"},
                                {"BoostMaxSpeed",           "0"},
                                {"BoostFalloff",            "0"},
                                {"BoostingTurnDamp",        "0"},
                                {"DirectionBrakeMin",       "0"},
                                {"DirectionBrake",          "0"},
                                {"ReverseBrake",            "0"},
                                {"OverspeedBrake",          "0"},
                                {"LowSpeedTurnDamper",      "0"},
                                {"TurnBrakeMin",            "0"},
                                {"TurnBrakeMax",            "0"},
                                {"TurnStrength",            "0"},
                                {"RollAmount",              "0"},
                                {"RollForce",               "0"},
                                {"RollAutoTime",            "0"},
                                {"BalanceTimeMin",          "0"},
                                {"BalanceTimeMax",          "0"},
                                {"FollowProportionalGain",  "0"},
                                {"FollowDerivativeGain",    "0"},
                                {"FollowIntegralGain",      "0"},
                                {"FollowProportionalLimit", "0"},
                                {"FollowDerivativeLimit",   "0"},
                                {"FollowIntegralLimit",     "0"},
                                {"FollowIntegralDecay",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ExitHeightFactorMin",         "0"},
                                {"ExitHeightFactorMax",         "0"},
                                {"ExitHeightFactorPlungeMin",   "0"},
                                {"ExitHeightFactorPlungeMax",   "0"},
                                {"ExitAngleMin",                "0"},
                                {"ExitAngleMax",                "0"},
                                {"ExitLeaveAngle",              "0"},
                                {"AngularFactor",               "0"},
                                {"MaxTorque",                   "0"},
                                {"ShipPlanetBrakeMinSpeed",     "0"},
                                {"ShipPlanetBrakeMaxSpeed",     "0"},
                                {"ShipPlanetBrakeMinHeight",    "0"},
                                {"ShipPlanetBrakeMaxHeight",    "0"},
                                {"ShipPlanetBrakeForce",        "0"},
                                {"ShipPlanetBrakeAlignMinTime", "0"},
                                {"ShipPlanetBrakeAlignMaxTime", "0"},
                                {"ShipMinHeightForce",          "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "Linear"},
                            }
                        },                        
                    }
                }
            }
        }
    }
}