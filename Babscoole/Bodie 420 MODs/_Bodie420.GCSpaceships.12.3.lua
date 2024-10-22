NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]           = "_Bodie420.GCSpaceships.12.3.pak",
["MOD_AUTHOR"]             = "Bodie420",
["LUA_AUTHOR"]             = "Babscoole",
["NMS_VERSION"]            = "4.72",
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
                                {"LandingMaxSpeed",                          "1000"},
                                {"MaximumDistanceFromShipWhenExiting",       "2"},
                                -- {"DockingAttractAlignRange",                 "2000"},
                                {"OutpostDockSpeedAlignRange",               "1000"},
                                {"WarpInTime",                               "0.01"},
                                {"WarpInFlashTime",                          "0.01"},
                                {"WarpInTimeFreighter",                      "0.01"},
                                {"WarpInFlashTimeFreighter",                 "0.01"},
                                {"WarpOutTime",                              "0.01"},
                                {"WarpInTimeNexus",                          "0.01"},
                                {"WarpInFlashTimeNexus",                     "0.01"},
                                {"WarpNexusRotation",                        "1"},
                                {"WarpNexusPitch",                           "1"},
                                {"PostWarpSlowDownTime",                     "1"},
                                {"PostFreighterWarpTransitionTime",          "0.01"},
                                {"PadTurnSpeed",                             "9"},
                                {"HoverMinSpeed",                            "0"},
                                {"ShieldRechargeMinHitTime",                 "0"},
                                {"ShieldRechargeRate",                       "100"},
                                {"NoBoostStationDistance",                   "1"},
                                {"NoBoostAnomalyDistance",                   "1"},
                                {"NoBoostSpaceAnomalyDistance",              "1"},
                                {"NoBoostFreighterDistance",                 "1"},
                                {"NoBoostShipDistance",                      "1"},
                                {"NoBoostShipNearMinTime",                   "0"},
                                {"NoBoostShipLastHitTime",                   "0"},
                                {"NoBoostCombatEventMinBattleTime",          "0"},
                                {"NoBoostCombatEventMinFreighterBattleTime", "0"},
                                {"NoBoostCombatEventTime",                   "0"},
                                {"TakeOffCost",                              "0"},
                                {"MiniWarpFuelTime",                         "0"},
                                {"MiniWarpChargeTime",                       "0"},
                                {"MiniWarpSpeed",                            "90000"},
                                {"MiniWarpTime",                             "0.01"},
                                {"MiniWarpCooldownTime",                     "0"},
                                {"LaunchThrustersRegenTimePeriod",           "1"},
                                {"LaunchThrustersMinimumSummonPercentage",   "0"},
                                {"LaunchThrustersSummonCostMultiplier",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1180"},
                                {"BoostMaxSpeed", "11200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1125"},
                                {"BoostMaxSpeed", "1155"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1115"},
                                {"BoostMaxSpeed", "11200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"BoostMaxSpeed", "1155"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1180"},
                                {"BoostMaxSpeed", "11300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1125"},
                                {"BoostMaxSpeed", "1150"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1130"},
                                {"BoostMaxSpeed", "11300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"BoostMaxSpeed", "1155"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1180"},
                                {"BoostMaxSpeed", "11100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1130"},
                                {"BoostMaxSpeed", "1185"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1100"},
                                {"BoostMaxSpeed", "11100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"BoostMaxSpeed", "1120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1180"},
                                {"BoostMaxSpeed", "11100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1130"},
                                {"BoostMaxSpeed", "1185"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1100"},
                                {"BoostMaxSpeed", "11100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"BoostMaxSpeed", "1120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1180"},
                                {"BoostMaxSpeed", "11100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1130"},
                                {"BoostMaxSpeed", "1185"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "1130"},
                                {"BoostMaxSpeed", "11100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"BoostMaxSpeed", "1120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissileAim", "GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceAngleRange", "100"},
                                {"AimDistanceRange",      "10"},
                            }
                        },
                    }
                }
            }
        }
    }
}