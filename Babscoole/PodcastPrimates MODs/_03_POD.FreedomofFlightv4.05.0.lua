NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_03_POD.FreedomofFlightv4.05.0.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "PodcastPrimate",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.05",
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ApplyHeightForce", "False"},
                                {"WarpInRangeFreighter", "6000"},
                                {"WarpNexusRotation", "0"},
                                {"WarpNexusPitch", "0"},
                                {"MaxOverspeedBrake", "500"},
                                {"AutoLevelWaterAngle", "180"},
                                {"FighterTakeOffMod", "1.25"},
                                {"AutoLevelMaxAngle", "180"},
                                {"ShieldRechargeMinHitTime", "3"},
                                {"ShieldRechargeRate", "3"},
                                {"NoBoostFreighterDistance", "500"},
                                {"NoBoostFreighterAngle", "30"},
                                {"NoBoostShipDistance", "3000"},
                                {"NoBoostShipNearMinTime", "10"},
                                {"NoBoostCombatEventMinBattleTime", "15"},
                                {"NoBoostCombatEventMinFreighterBattleTime", "60"},
                                {"NoBoostCombatEventTime", "30"},
                                {"ThrustDecaySpring", "90000"},
                                {"ThrustDecaySpringCombat", "90000"},
                                {"DriftTurnStrengthMultiplier", "0.05"},
                                {"AsteroidHitAngle", "180"},
                                {"AsteroidHitAngleBoosting", "180"},
                                {"MiniWarpLinesNum", "0"},
                                {"CombatBoostMultiplier", "2"},
                                {"CombatBoostTurnDamp", "0.3"},
                                {"MiniWarpMinPlanetDistance", "500"},
                                {"MiniWarpHUDArrowAttractAngle", "3"},
                                {"MiniWarpHUDArrowAttractAngleStation", "3"},
                                {"MiniWarpHUDArrowAttractAngleDense", "3"},
                                {"GroundHeightPostCollisionDamper", "0"},
                                {"GroundHeightSmoothTime", "10"},
                                {"LootAttractDistance", "5000"},
                                {"LootAttractTime", "20"},
                                {"LootCollectDistance", "5000"},
                                {"ShakeMaxPower", "0.5"},
                                {"WingmanAtTimeStart", "0.1"},
                                {"WingmanAttackRange", "1200"},
                                {"WingmanAttackAngle", "45"},
                                {"WingmanAttackTimeout", "4"},
                                {"WingmanFwd1", "-100"},
                                {"WingmanFwd2", "-200"},
                                {"LaunchThrustersMinimumSummonPercentage", "1"},
                                {"MaxSpeedUpVelocity", "50"},
                                {"SpaceCombatFollowModeAimTime", "60"},
                                {"SpaceCombatFollowModeTargetDistance", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "25"},
                                {"Falloff", "0"},
                                {"BoostThrustForce", "250"},
                                {"BoostMaxSpeed", "1300"},
                                {"BoostFalloff", "0"},
                                {"BoostingTurnDamp", "0.3"},
                                {"DirectionBrakeMin", "0.35"},
                                {"DirectionBrake", "0.75"},
                                {"ReverseBrake", "0.4"},
                                {"OverspeedBrake", "0.1"},
                                {"TurnBrakeMin", "0.25"},
                                {"TurnBrakeMax", "0.5"},
                                {"TurnStrength", "0.9"},
                                {"RollAmount", "1.75"},
                                {"RollForce", "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "18"},
                                {"MinSpeed", "0.01"},
                                {"Falloff", "0.4"},
                                {"BoostThrustForce", "60"},
                                {"BoostFalloff", "0.3"},
                                {"BoostingTurnDamp", "0.2"},
                                {"DirectionBrakeMin", "0.6"},
                                {"DirectionBrake", "1.1"},
                                {"ReverseBrake", "0.5"},
                                {"OverspeedBrake", "0.1"},
                                {"TurnBrakeMin", "0.75"},
                                {"TurnBrakeMax", "1"},
                                {"RollForce", "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "25"},
                                {"MaxSpeed", "180"},
                                {"MinSpeed", "10"},
                                {"Falloff", "0.6"},
                                {"BoostThrustForce", "275"},
                                {"BoostFalloff", "0.4"},
                                {"BoostingTurnDamp", "0.2"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake", "1"},
                                {"ReverseBrake", "0.25"},
                                {"OverspeedBrake", "0.4"},
                                {"TurnBrakeMin", "0.25"},
                                {"TurnBrakeMax", "0.5"},
                                {"TurnStrength", "1"},
                                {"RollForce", "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "18"},
                                {"MaxSpeed", "125"},
                                {"Falloff", "0.4"},
                                {"BoostThrustForce", "60"},
                                {"BoostMaxSpeed", "125"},
                                {"BoostFalloff", "0.3"},
                                {"BoostingTurnDamp", "0.2"},
                                {"DirectionBrakeMin", "0.6"},
                                {"DirectionBrake", "1.1"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin", "0.75"},
                                {"TurnBrakeMax", "1"},
                                {"TurnStrength", "1"},
                                {"RollForce", "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "55"},
                                {"Falloff", "0"},
                                {"BoostThrustForce", "300"},
                                {"BoostMaxSpeed", "1500"},
                                {"BoostFalloff", "0"},
                                {"BoostingTurnDamp", "0.3"},
                                {"DirectionBrakeMin", "0.35"},
                                {"DirectionBrake", "0.75"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin", "0.25"},
                                {"TurnBrakeMax", "0.5"},
                                {"TurnStrength", "1.5"},
                                {"RollAmount", "3"},
                                {"RollForce", "1.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "30"},
                                {"MaxSpeed", "145"},
                                {"MinSpeed", "0.01"},
                                {"Falloff", "0"},
                                {"BoostThrustForce", "100"},
                                {"BoostMaxSpeed", "175"},
                                {"BoostFalloff", "0"},
                                {"BoostingTurnDamp", "0.1"},
                                {"DirectionBrakeMin", "0.85"},
                                {"DirectionBrake", "1.35"},
                                {"ReverseBrake", "0.5"},
                                {"OverspeedBrake", "0.1"},
                                {"TurnBrakeMin", "0.5"},
                                {"TurnBrakeMax", "0.75"},
                                {"TurnStrength", "1.5"},
                                {"RollAmount", "3"},
                                {"RollForce", "1.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "55"},
                                {"MaxSpeed", "195"},
                                {"MinSpeed", "10"},
                                {"Falloff", "0.6"},
                                {"BoostThrustForce", "300"},
                                {"BoostMaxSpeed", "1500"},
                                {"BoostFalloff", "0.5"},
                                {"BoostingTurnDamp", "0.3"},
                                {"DirectionBrakeMin", "0.75"},
                                {"DirectionBrake", "1.25"},
                                {"ReverseBrake", "0.4"},
                                {"OverspeedBrake", "0.5"},
                                {"TurnBrakeMin", "0.25"},
                                {"TurnBrakeMax", "0.5"},
                                {"RollAmount", "3"},
                                {"RollForce", "1.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "40"},
                                {"MaxSpeed", "145"},
                                {"Falloff", "0.2"},
                                {"BoostMaxSpeed", "375"},
                                {"BoostFalloff", "0.2"},
                                {"BoostingTurnDamp", "0.3"},
                                {"DirectionBrakeMin", "0.85"},
                                {"DirectionBrake", "1.35"},
                                {"ReverseBrake", "0.6"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin", "0.5"},
                                {"TurnBrakeMax", "0.75"},
                                {"RollAmount", "3"},
                                {"RollForce", "1.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight"},
                            ["INTEGER_TO_FLOAT"]    =   "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ShipMinHeightForce",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "15"},
                                {"MaxSpeed", "170"},
                                {"Falloff", "0"},
                                {"BoostThrustForce", "220"},
                                {"BoostMaxSpeed", "1200"},
                                {"BoostFalloff", "0"},
                                {"BoostingTurnDamp", "0.3"},
                                {"DirectionBrakeMin", "0.35"},
                                {"DirectionBrake", "0.75"},
                                {"ReverseBrake", "0.2"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin", "0.25"},
                                {"TurnBrakeMax", "0.5"},
                                {"TurnStrength", "0.4"},
                                {"RollForce", "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "8"},
                                {"MaxSpeed", "125"},
                                {"MinSpeed", "0.01"},
                                {"Falloff", "0"},
                                {"BoostThrustForce", "15"},
                                {"BoostMaxSpeed", "165"},
                                {"BoostFalloff", "0"},
                                {"BoostingTurnDamp", "0.1"},
                                {"DirectionBrakeMin", "0.6"},
                                {"DirectionBrake", "0.85"},
                                {"ReverseBrake", "0.2"},
                                {"OverspeedBrake", "0.1"},
                                {"TurnBrakeMin", "1.25"},
                                {"TurnBrakeMax", "1.5"},
                                {"TurnStrength", "0.4"},
                                {"RollAmount", "1.5"},
                                {"RollForce", "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "17"},
                                {"MaxSpeed", "170"},
                                {"MinSpeed", "10"},
                                {"Falloff", "0.1"},
                                {"BoostThrustForce", "230"},
                                {"BoostFalloff", "0.1"},
                                {"DirectionBrakeMin", "0.5"},
                                {"DirectionBrake", "0.75"},
                                {"ReverseBrake", "0.2"},
                                {"OverspeedBrake", "0.3"},
                                {"TurnBrakeMin", "0.25"},
                                {"TurnBrakeMax", "0.5"},
                                {"TurnStrength", "0.4"},
                                {"RollForce", "1.35"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce", "8"},
                                {"MaxSpeed", "125"},
                                {"Falloff", "0.3"},
                                {"BoostThrustForce", "75"},
                                {"BoostMaxSpeed", "130"},
                                {"BoostFalloff", "0.1"},
                                {"DirectionBrakeMin", "0.6"},
                                {"DirectionBrake", "0.85"},
                                {"ReverseBrake", "0.2"},
                                {"OverspeedBrake", "0"},
                                {"TurnBrakeMin", "1.25"},
                                {"TurnBrakeMax", "1.5"},
                                {"TurnStrength", "0.4"},
                                {"RollForce", "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy"},
                            ["INTEGER_TO_FLOAT"]    =   "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ShipPlanetBrakeMinSpeed", "1"},
                                {"ShipPlanetBrakeMaxSpeed", "25"},
                                {"ShipMinHeightForce", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ThrustForceMax",  "10"},
                                {"ThrustForceMin",  "0"},
                                {"MaxSpeedMax", "5"},
                                {"MaxSpeedMin", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ThrustForceMax",  "20"},
                                {"ThrustForceMin",  "10"},
                                {"MaxSpeedMax", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ThrustForceMax",  "30"},
                                {"ThrustForceMin",  "20"},
                                {"MaxSpeedMin", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ThrustForceMax",  "40"},
                                {"ThrustForceMin",  "30"},
                                {"MaxSpeedMin", "10"},
                            }
                        },
                    }
                }
            }
        }
    }
}