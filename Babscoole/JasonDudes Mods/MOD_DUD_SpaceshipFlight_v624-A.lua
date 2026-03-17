NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_SpaceshipFlight_v624-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.24",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShieldLeechMul",                           "0.030000"},
                                {"ShieldRechargeMinHitTime",                 "3.000000"},
                                {"ShieldRechargeRate",                       "4.000000"},
                                {"NoBoostFreighterDistance",                 "2000.000000"},
                                {"NoBoostFreighterAngle",                    "30.000000"},
                                {"NoBoostShipDistance",                      "2000.000000"},
                                {"NoBoostShipNearMinTime",                   "3.000000"},
                                {"NoBoostShipLastHitTime",                   "10.000000"},
                                {"NoBoostCombatEventMinBattleTime",          "35.000000"},
                                {"NoBoostCombatEventMinFreighterBattleTime", "55.000000"},
                                {"NoBoostCombatEventTime",                   "25.000000"},
                                {"ThrustDecaySpring",                        "90000.000000"},
                                {"ThrustDecaySpringCombat",                  "90000.000000"},
                                {"DriftTurnStrengthMultiplier",              "0.050000"},
                                {"AsteroidHitAngle",                         "180.000000"},
                                {"AsteroidHitAngleBoosting",                 "180.000000"},
                                {"MiniWarpLinesNum",                         "0"},
                                {"CombatBoostMultiplier",                    "2.500000"},
                                {"CombatBoostTurnDamp",                      "0.300000"},
                                {"MiniWarpHUDArrowAttractAngle",             "3.000000"},
                                {"MiniWarpHUDArrowAttractAngleStation",      "3.000000"},
                                {"MiniWarpHUDArrowAttractAngleDense",        "3.000000"},
                                {"PowerSettingEngineMul",                    "1.150000"},
                                {"PowerSettingEngineDamper",                 "0.800000"},
                                {"PowerSettingWeaponMul",                    "1.200000"},
                                {"PowerSettingWeaponDamper",                 "0.800000"},
                                {"PowerSettingShieldMul",                    "1.300000"},
                                {"PowerSettingShieldDamper",                 "0.800000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff",            "0.500000"},
                                {"BoostThrustForce",   "100.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MinSpeed",           "0.010000"},
                                {"Falloff",            "0.400000"},
                                {"MinSpeedForce",      "30.000000"},
                                {"BoostThrustForce",   "50.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"ReverseBrake",       "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",           "160.000000"},
                                {"MinSpeed",           "10.000000"},
                                {"Falloff",            "0.500000"},
                                {"MinSpeedForce",      "5.000000"},
                                {"BoostThrustForce",   "100.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MaxSpeed",           "105.000000"},
                                {"Falloff",            "0.400000"},
                                {"BoostThrustForce",   "50.000000"},
                                {"BoostMaxSpeed",      "135.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAutoTime",       "0.500000"},
                                {"BalanceTimeMin",     "0.600000"},
                                {"BalanceTimeMax",     "0.700000"},
                                {"RollAmount",         "1.500000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "45.000000"},
                                {"BoostThrustForce",   "150.000000"},
                                {"BoostMaxSpeed",      "1000.000000"},
                                {"BoostFalloff",       "0.500000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.750000"},
                                {"DirectionBrake",     "1.000000"},
                                {"ReverseBrake",       "0.700000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",           "0.010000"},
                                {"MinSpeedForce",      "30.000000"},
                                {"BoostThrustForce",   "75.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"DirectionBrake",     "1.000000"},
                                {"ReverseBrake",       "0.700000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "45.000000"},
                                {"MaxSpeed",           "160.000000"},
                                {"MinSpeed",           "10.000000"},
                                {"MinSpeedForce",      "5.000000"},
                                {"BoostThrustForce",   "150.000000"},
                                {"BoostMaxSpeed",      "1000.000000"},
                                {"BoostFalloff",       "0.500000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.750000"},
                                {"DirectionBrake",     "1.000000"},
                                {"ReverseBrake",       "0.700000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "40.000000"},
                                {"MaxSpeed",           "105.000000"},
                                {"Falloff",            "0.500000"},
                                {"BoostThrustForce",   "75.000000"},
                                {"BoostMaxSpeed",      "130.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.750000"},
                                {"DirectionBrake",     "1.000000"},
                                {"ReverseBrake",       "0.700000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                                {"RollAutoTime",       "0.000000"},
                                {"BalanceTimeMin",     "0.60000"},
                                {"BalanceTimeMax",     "1.70000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff",            "0.500000"},
                                {"BoostThrustForce",   "70.000000"},
                                {"BoostMaxSpeed",      "1600.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.000000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.000000"},
                                {"RollAmount",         "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MaxSpeed",           "125.000000"},
                                {"MinSpeed",           "0.010000"},
                                {"Falloff",            "0.400000"},
                                {"MinSpeedForce",      "30.000000"},
                                {"BoostThrustForce",   "35.000000"},
                                {"BoostMaxSpeed",      "175.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",           "160.000000"},
                                {"MinSpeed",           "10.000000"},
                                {"Falloff",            "0.500000"},
                                {"MinSpeedForce",      "5.000000"},
                                {"BoostThrustForce",   "70.000000"},
                                {"BoostMaxSpeed",      "1600.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MaxSpeed",           "105.000000"},
                                {"Falloff",            "0.400000"},
                                {"BoostThrustForce",   "35.000000"},
                                {"BoostMaxSpeed",      "155.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                                {"RollAutoTime",       "0.000000"},
                                {"BalanceTimeMin",     "0.650000"},
                                {"BalanceTimeMax",     "1.750000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"Falloff",            "0.500000"},
                                {"BoostThrustForce",   "70.000000"},
                                {"BoostMaxSpeed",      "1600.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "30.000000"},
                                {"MaxSpeed",           "125.000000"},
                                {"MinSpeed",           "0.010000"},
                                {"Falloff",            "0.400000"},
                                {"MinSpeedForce",      "30.000000"},
                                {"BoostThrustForce",   "35.000000"},
                                {"BoostMaxSpeed",      "175.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MaxSpeed",           "160.000000"},
                                {"MinSpeed",           "10.000000"},
                                {"Falloff",            "0.500000"},
                                {"MinSpeedForce",      "5.000000"},
                                {"BoostThrustForce",   "70.000000"},
                                {"BoostMaxSpeed",      "1600.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "30.000000"},
                                {"MaxSpeed",           "105.000000"},
                                {"Falloff",            "0.400000"},
                                {"BoostThrustForce",   "35.000000"},
                                {"BoostMaxSpeed",      "155.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                                {"RollAutoTime",       "0.000000"},
                                {"BalanceTimeMin",     "0.650000"},
                                {"BalanceTimeMax",     "1.750000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "30.000000"},
                                {"Falloff",            "0.500000"},
                                {"BoostThrustForce",   "52.500000"},
                                {"BoostMaxSpeed",      "1000.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.000000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.000000"},
                                {"RollAmount",         "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "26.250000"},
                                {"MaxSpeed",           "125.000000"},
                                {"MinSpeed",           "0.010000"},
                                {"Falloff",            "0.400000"},
                                {"MinSpeedForce",      "30.000000"},
                                {"BoostThrustForce",   "26.250000"},
                                {"BoostMaxSpeed",      "175.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "30.000000"},
                                {"MaxSpeed",           "160.000000"},
                                {"MinSpeed",           "10.000000"},
                                {"Falloff",            "0.500000"},
                                {"MinSpeedForce",      "5.000000"},
                                {"BoostThrustForce",   "52.500000"},
                                {"BoostMaxSpeed",      "1000.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "26.250000"},
                                {"MaxSpeed",           "105.000000"},
                                {"Falloff",            "0.400000"},
                                {"BoostThrustForce",   "26.250000"},
                                {"BoostMaxSpeed",      "155.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.300000"},
                                {"DirectionBrakeMin",  "0.300000"},
                                {"DirectionBrake",     "0.650000"},
                                {"ReverseBrake",       "0.300000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.250000"},
                                {"RollAutoTime",       "0.000000"},
                                {"BalanceTimeMin",     "0.650000"},
                                {"BalanceTimeMax",     "1.750000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Falloff",            "0.500000"},
                                {"BoostThrustForce",   "100.000000"},
                                {"BoostMaxSpeed",      "1200.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MaxSpeed",           "125.000000"},
                                {"MinSpeed",           "0.010000"},
                                {"Falloff",            "0.400000"},
                                {"MinSpeedForce",      "30.000000"},
                                {"BoostThrustForce",   "50.000000"},
                                {"BoostMaxSpeed",      "155.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrake",     "0.750000"},
                                {"ReverseBrake",       "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                                {"RollAutoTime",       "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",           "160.000000"},
                                {"MinSpeed",           "10.000000"},
                                {"Falloff",            "0.500000"},
                                {"MinSpeedForce",      "5.000000"},
                                {"BoostThrustForce",   "100.000000"},
                                {"BoostMaxSpeed",      "1200.000000"},
                                {"BoostFalloff",       "0.400000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"OverspeedBrake",     "0.500000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "35.000000"},
                                {"MaxSpeed",           "105.000000"},
                                {"Falloff",            "0.400000"},
                                {"BoostMaxSpeed",      "135.000000"},
                                {"BoostFalloff",       "0.300000"},
                                {"BoostingTurnDamp",   "0.200000"},
                                {"DirectionBrakeMin",  "0.500000"},
                                {"DirectionBrake",     "0.750000"},
                                {"LowSpeedTurnDamper", "0.500000"},
                                {"TurnBrakeMin",       "0.500000"},
                                {"TurnBrakeMax",       "1.250000"},
                                {"TurnStrength",       "1.250000"},
                                {"RollAmount",         "1.500000"},
                                {"RollAutoTime",       "0.000000"},
                                {"BalanceTimeMin",     "0.650000"},
                                {"BalanceTimeMax",     "1.750000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "10.000000"},
                                {"ThrustForceMin", "0.000000"},
                                {"MaxSpeedMax",    "5.000000"},
                                {"MaxSpeedMin",    "0.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "20.000000"},
                                {"ThrustForceMin", "10.000000"},
                                {"MaxSpeedMax",    "10.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "30.000000"},
                                {"ThrustForceMin", "20.000000"},
                                {"MaxSpeedMin",    "5.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForceMax", "40.000000"},
                                {"ThrustForceMin", "30.000000"},
                                {"MaxSpeedMin",    "10.000000"},
                            }
                        },
                    }
                }
            }
        }
    }
}