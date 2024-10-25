NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_SpaceshipFlight_v520-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.20",
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
                                {"ShieldLeechMul",                           "0.03"},
                                {"ShieldRechargeMinHitTime",                 "3"},
                                {"ShieldRechargeRate",                       "4"},
                                {"NoBoostFreighterDistance",                 "2000"},
                                {"NoBoostFreighterAngle",                    "30"},
                                {"NoBoostShipDistance",                      "2000"},
                                {"NoBoostShipNearMinTime",                   "3"},
                                {"NoBoostShipLastHitTime",                   "10"},
                                {"NoBoostCombatEventMinBattleTime",          "35"},
                                {"NoBoostCombatEventMinFreighterBattleTime", "55"},
                                {"NoBoostCombatEventTime",                   "25"},
                                {"ThrustDecaySpring",                        "90000"},
                                {"ThrustDecaySpringCombat",                  "90000"},
                                {"DriftTurnStrengthMultiplier",              "0.05"},
                                {"AsteroidHitAngle",                         "180"},
                                {"AsteroidHitAngleBoosting",                 "180"},
                                {"MiniWarpLinesNum",                         "0"},
                                {"CombatBoostMultiplier",                    "2.5"},
                                {"CombatBoostTurnDamp",                      "0.3"},
                                {"MiniWarpHUDArrowAttractAngle",             "3"},
                                {"MiniWarpHUDArrowAttractAngleStation",      "3"},
                                {"MiniWarpHUDArrowAttractAngleDense",        "3"},
                                {"PowerSettingEngineMul",                    "1.15"},
                                {"PowerSettingEngineDamper",                 "0.8"},
                                {"PowerSettingWeaponMul",                    "1.2"},
                                {"PowerSettingWeaponDamper",                 "0.8"},
                                {"PowerSettingShieldMul",                    "1.3"},
                                {"PowerSettingShieldDamper",                 "0.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff",            "0.5"},
                                {"BoostThrustForce",   "100"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MinSpeed",           "0.01"},
                                {"Falloff",            "0.4"},
                                {"MinSpeedForce",      "30"},
                                {"BoostThrustForce",   "50"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"ReverseBrake",       "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",           "160"},
                                {"MinSpeed",           "10"},
                                {"Falloff",            "0.5"},
                                {"MinSpeedForce",      "5"},
                                {"BoostThrustForce",   "100"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MaxSpeed",           "105"},
                                {"Falloff",            "0.4"},
                                {"BoostThrustForce",   "50"},
                                {"BoostMaxSpeed",      "135"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                                {"RollAutoTime",       "0.5"},
                                {"BalanceTimeMin",     "0.6"},
                                {"BalanceTimeMax",     "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "45"},
                                {"BoostThrustForce",   "150"},
                                {"BoostMaxSpeed",      "1000"},
                                {"BoostFalloff",       "0.5"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.75"},
                                {"DirectionBrake",     "1"},
                                {"ReverseBrake",       "0.7"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",           "0.01"},
                                {"MinSpeedForce",      "30"},
                                {"BoostThrustForce",   "75"},
                                {"BoostFalloff",       "0.4"},
                                {"DirectionBrake",     "1"},
                                {"ReverseBrake",       "0.7"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "45"},
                                {"MaxSpeed",           "160"},
                                {"MinSpeed",           "10"},
                                {"MinSpeedForce",      "5"},
                                {"BoostThrustForce",   "150"},
                                {"BoostMaxSpeed",      "1000"},
                                {"BoostFalloff",       "0.5"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.75"},
                                {"DirectionBrake",     "1"},
                                {"ReverseBrake",       "0.7"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "40"},
                                {"MaxSpeed",           "105"},
                                {"Falloff",            "0.5"},
                                {"BoostThrustForce",   "75"},
                                {"BoostMaxSpeed",      "130"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.75"},
                                {"DirectionBrake",     "1"},
                                {"ReverseBrake",       "0.7"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                                {"RollAmount",         "2"},
                                {"RollAutoTime",       "0.5"},
                                {"BalanceTimeMin",     "0.6"},
                                {"BalanceTimeMax",     "1.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff",            "0.5"},
                                {"BoostThrustForce",   "70"},
                                {"BoostMaxSpeed",      "1600"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MaxSpeed",           "125"},
                                {"MinSpeed",           "0.01"},
                                {"Falloff",            "0.4"},
                                {"MinSpeedForce",      "30"},
                                {"BoostThrustForce",   "35"},
                                {"BoostMaxSpeed",      "175"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",           "160"},
                                {"MinSpeed",           "10"},
                                {"Falloff",            "0.5"},
                                {"MinSpeedForce",      "5"},
                                {"BoostThrustForce",   "70"},
                                {"BoostMaxSpeed",      "1600"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MaxSpeed",           "105"},
                                {"Falloff",            "0.4"},
                                {"BoostThrustForce",   "35"},
                                {"BoostMaxSpeed",      "155"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                                {"RollAmount",         "1.25"},
                                {"RollAutoTime",       "0.5"},
                                {"BalanceTimeMin",     "0.65"},
                                {"BalanceTimeMax",     "1.75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"Falloff",            "0.5"},
                                {"BoostThrustForce",   "70"},
                                {"BoostMaxSpeed",      "1600"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "30"},
                                {"MaxSpeed",           "125"},
                                {"MinSpeed",           "0.01"},
                                {"Falloff",            "0.4"},
                                {"MinSpeedForce",      "30"},
                                {"BoostThrustForce",   "35"},
                                {"BoostMaxSpeed",      "175"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MaxSpeed",           "160"},
                                {"MinSpeed",           "10"},
                                {"Falloff",            "0.5"},
                                {"MinSpeedForce",      "5"},
                                {"BoostThrustForce",   "70"},
                                {"BoostMaxSpeed",      "1600"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "30"},
                                {"MaxSpeed",           "105"},
                                {"Falloff",            "0.4"},
                                {"BoostThrustForce",   "35"},
                                {"BoostMaxSpeed",      "155"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.3"},
                                {"DirectionBrakeMin",  "0.3"},
                                {"DirectionBrake",     "0.65"},
                                {"ReverseBrake",       "0.3"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                                {"RollAmount",         "1.25"},
                                {"RollAutoTime",       "0.5"},
                                {"BalanceTimeMin",     "0.65"},
                                {"BalanceTimeMax",     "1.75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff",            "0.5"},
                                {"BoostThrustForce",   "100"},
                                {"BoostMaxSpeed",      "1200"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MaxSpeed",           "125"},
                                {"MinSpeed",           "0.01"},
                                {"Falloff",            "0.4"},
                                {"MinSpeedForce",      "30"},
                                {"BoostThrustForce",   "50"},
                                {"BoostMaxSpeed",      "155"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrake",     "0.75"},
                                {"ReverseBrake",       "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",           "160"},
                                {"MinSpeed",           "10"},
                                {"Falloff",            "0.5"},
                                {"MinSpeedForce",      "5"},
                                {"BoostThrustForce",   "100"},
                                {"BoostMaxSpeed",      "1200"},
                                {"BoostFalloff",       "0.4"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"OverspeedBrake",     "0.5"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35"},
                                {"MaxSpeed",           "105"},
                                {"Falloff",            "0.4"},
                                {"BoostMaxSpeed",      "135"},
                                {"BoostFalloff",       "0.3"},
                                {"BoostingTurnDamp",   "0.2"},
                                {"DirectionBrakeMin",  "0.5"},
                                {"DirectionBrake",     "0.75"},
                                {"LowSpeedTurnDamper", "0.5"},
                                {"TurnBrakeMin",       "0.5"},
                                {"TurnBrakeMax",       "1.25"},
                                {"TurnStrength",       "1.25"},
                                {"RollAmount",         "1.25"},
                                {"RollAutoTime",       "0.5"},
                                {"BalanceTimeMin",     "0.65"},
                                {"BalanceTimeMax",     "1.75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "10"},
                                {"ThrustForceMin", "0"},
                                {"MaxSpeedMax",    "5"},
                                {"MaxSpeedMin",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "20"},
                                {"ThrustForceMin", "10"},
                                {"MaxSpeedMax",    "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "30"},
                                {"ThrustForceMin", "20"},
                                {"MaxSpeedMin",    "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "40"},
                                {"ThrustForceMin", "30"},
                                {"MaxSpeedMin",    "10"},
                            }
                        },
                    }
                }
            }
        }
    }
}