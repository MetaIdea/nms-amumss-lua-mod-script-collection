NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_AiShipPlusMoreDamage_v520-A.pak",
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
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SummonStartSpeed",                   "150"},
                                {"MinimumCircleTimeBeforeLanding",     "20"},
                                {"TradingPostTraderRequestTime",       "60"},
                                {"TurretOriginOffset",                 "0"},
                                {"SpaceStationTraderRequestTime",      "30"},
                                {"DockingLandingTime",                 "2"},
                                {"DockingLandingTimeDirectional",      "2"},
                                {"DockWaitMinTime",                    "60"},
                                {"DockWaitMaxTime",                    "120"},
                                {"DisableTradeRoutes",                 "True"},
                                {"LandingManuevreTime",                "2"},
                                {"LandingManeuvreAlignTime",           "2"},
                                {"GroundCircleHeight",                 "90"},
                                {"MaxDifficultySpaceCombatTurnExtra",  "0"},
                                {"MaxDifficultySpaceCombatSpeedExtra", "0"},
                                {"TurretOriginOffset",                 "15"},
                                {"AsteroidMiningMinDistFromPlayer",    "500"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CombatFormationOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "10"},
                                {"z", "140"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CombatFormationOffsetThirdPerson", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "10"},
                                {"z", "110"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"AsteroidMiningPositioningTravelData", "GcSpaceshipTravelData.xml"},
                                {"AsteroidMiningTravelData",            "GcSpaceshipTravelData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Force", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeRouteColours"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0.02"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_NOSHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "15000"},
                                {"LevelledExtraHealth", "30000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "21000"},
                                {"LevelledExtraHealth", "42000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "25000"},
                                {"LevelledExtraHealth", "50000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "40000"},
                                {"LevelledExtraHealth", "80000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POLICE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "40000"},
                                {"LevelledExtraHealth", "80000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "21000"},
                                {"LevelledExtraHealth", "42000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_ESCORT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "40000"},
                                {"LevelledExtraHealth", "80000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "24000"},
                                {"LevelledExtraHealth", "48000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_DOGFIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "24000"},
                                {"LevelledExtraHealth", "48000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_FLYBY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "21000"},
                                {"LevelledExtraHealth", "42000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_C"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "7500"},
                                {"LevelledExtraHealth", "15000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "10000"},
                                {"LevelledExtraHealth", "20000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "12500"},
                                {"LevelledExtraHealth", "25000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Definitions"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "15000"},
                                {"LevelledExtraHealth", "30000"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "2"},
                                {"GunFireRate",                  "0.13"},
                                {"LaserHealthPoint",             "40"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackAngle",                  "45"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackShootTimeMin",           "2"},
                                {"AttackShootTimeMax",           "3"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachMinRange",       "165"},
                                {"AttackApproachMaxRange",       "225"},
                                {"AttackTooCloseRange",          "75"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"AttackBoostAngle",             "45"},
                                {"NumHitsBeforeBail",            "6000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "80"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "180"},
                                {"FleeUrgentBoost",              "1.5"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeRepositionUrgentAngleMax", "180"},
                                {"FleeMinTime",                  "2"},
                                {"FleeUrgentRange",              "100"},
                                {"AttackTargetMinRange",         "0"},
                                {"AttackTargetMaxRange",         "1500"},
                                {"AttackTargetOffsetMin",        "0"},
                                {"AttackTargetOffsetMax",        "0"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "2"},
                                {"GunFireRate",                  "0.13"},
                                {"LaserHealthPoint",             "40"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackAngle",                  "45"},
                                {"AttackShootTimeMin",           "2"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachOffset",         "150"},
                                {"AttackApproachMinRange",       "165"},
                                {"AttackApproachMaxRange",       "225"},
                                {"AttackTooCloseRange",          "75"},
                                {"AttackFlybyOffset",            "150"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"AttackBoostAngle",             "45"},
                                {"NumHitsBeforeBail",            "6000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "100"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeUrgentBoost",              "1.5"},
                                {"FleeRepositionUrgentTime",     "2"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeMinTime",                  "2"},
                                {"FleeMaxTime",                  "8"},
                                {"AttackTargetMinRange",         "0"},
                                {"AttackTargetMaxRange",         "1500"},
                                {"AttackTargetOffsetMin",        "0"},
                                {"AttackTargetOffsetMax",        "0"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "2"},
                                {"GunFireRate",                  "0.13"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackAngle",                  "45"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackShootTimeMin",           "1"},
                                {"AttackShootTimeMax",           "3"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachMinRange",       "165"},
                                {"AttackApproachMaxRange",       "225"},
                                {"AttackTooCloseRange",          "75"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"AttackBoostAngle",             "45"},
                                {"NumHitsBeforeBail",            "6000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "80"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "90"},
                                {"FleeUrgentBoost",              "1.5"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeRepositionUrgentAngleMax", "180"},
                                {"FleeMinTime",                  "2"},
                                {"FleeUrgentRange",              "100"},
                                {"AttackTargetMinRange",         "0"},
                                {"AttackTargetMaxRange",         "1500"},
                                {"AttackTargetOffsetMin",        "0"},
                                {"AttackTargetOffsetMax",        "0"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_WEAK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {

                                {"GunDispersionAngle",           "3"},
                                {"GunFireRate",                  "0.15"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackAngle",                  "45"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackShootTimeMax",           "3"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachOffset",         "150"},
                                {"AttackApproachMinRange",       "165"},
                                {"AttackApproachMaxRange",       "225"},
                                {"AttackTooCloseRange",          "75"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"AttackBoostAngle",             "45"},
                                {"NumHitsBeforeBail",            "5000"},
                                {"NumHitsBeforeReposition",      "4000"},
                                {"FleeBoost",                    "60"},
                                {"FleeRepositionTime",           "5"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "90"},
                                {"FleeRepositionUrgentTime",     "5"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"AttackTargetMinRange",         "0"},
                                {"AttackTargetMaxRange",         "1500"},
                                {"AttackTargetOffsetMin",        "0"},
                                {"AttackTargetOffsetMax",        "0"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "3"},
                                {"GunFireRate",                  "0.13"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachOffset",         "150"},
                                {"AttackApproachMinRange",       "165"},
                                {"AttackApproachMaxRange",       "225"},
                                {"AttackTooCloseRange",          "75"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"AttackBoostRange",             "2000"},
                                {"AttackBoostAngle",             "45"},
                                {"NumHitsBeforeBail",            "6000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "80"},
                                {"FleeRepositionTime",           "5"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "90"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeMinTime",                  "2"},
                                {"AttackTargetMinRange",         "0"},
                                {"AttackTargetMaxRange",         "1500"},
                                {"AttackTargetOffsetMin",        "0"},
                                {"AttackTargetOffsetMax",        "0"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "50"},
                                {"MaxSpeed",       "180"},
                                {"BoostSpeed",     "1000"},
                                {"Force",          "125"},
                                {"TurnMin",        "0.5"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "3"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "50"},
                                {"MaxSpeed",       "200"},
                                {"BoostSpeed",     "1000"},
                                {"Force",          "150"},
                                {"TurnMin",        "0.75"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "2"},
                                {"Falloff",        "0.6"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",   "80"},
                                {"BoostSpeed", "100"},
                                {"TurnMin",    "0.5"},
                                {"TurnMax",    "1.5"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "50"},
                                {"MaxSpeed",       "100"},
                                {"BoostSpeed",     "120"},
                                {"TurnMin",        "0.75"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "2"},
                                {"Falloff",        "0.6"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "50"},
                                {"MaxSpeed",       "90"},
                                {"BoostSpeed",     "130"},
                                {"MinSpeedForce",  "10"},
                                {"TurnMin",        "0.5"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "3"},
                                {"MaxSpeedBrake",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_SLOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "160"},
                                {"BoostSpeed",     "1500"},
                                {"Force",          "75"},
                                {"TurnMin",        "0.25"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "3"},
                                {"Falloff",        "0.6"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_FAST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "180"},
                                {"Force",         "100"},
                                {"TurnMin",       "0.75"},
                                {"TurnMax",       "1.5"},
                                {"DirectionBrake","2"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEAK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",            "4000"},
                                {"RechargeTime",      "12"},
                                {"RechargeDelayTime", "4"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STANDARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "8000"},
                                {"LevelledExtraHealth", "20000"},
                                {"RechargeTime",        "12"},
                                {"RechargeDelayTime",   "4"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "12000"},
                                {"LevelledExtraHealth", "30000"},
                                {"RechargeTime",        "14"},
                                {"RechargeDelayTime",   "4"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FAST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "4000"},
                                {"LevelledExtraHealth", "12000"},
                                {"RechargeTime",        "6"},
                                {"RechargeDelayTime",   "3.5"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FAST_STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "12000"},
                                {"LevelledExtraHealth", "30000"},
                                {"RechargeTime",        "10"},
                                {"RechargeDelayTime",   "3.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "225"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADERGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "250"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POLICEGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "250"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AISHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "250"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultSpeed",  "3500"},
                                {"DefaultDamage", "500"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COP_FREIGHTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultSpeed",  "3500"},
                                {"DefaultDamage", "500"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PI_FRE_SMAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "100"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "250"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COP_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HitWidth",      "50"},
                                {"DefaultDamage", "500"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HitWidth",      "50"},
                                {"DefaultDamage", "500"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNDMG_MED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTBIGGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LASERDAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "3.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDSPIT_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "17"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKERLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLASTEROID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "30"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MEDIUMASTEROID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "40"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEASTEROID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "60"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GASPLANT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRABPLANT_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VENUSFLY_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLERSPITDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TORNADO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "45"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TurretRange",                      "2500"},
                                {"TurretLaserAbortDistance",         "1500"},
                                {"TurretShootPauseTime",             "2"},
                                {"TurretBurstCount",                 "20"},
                                {"TurretBurstTime",                  "0.2"},
                                {"TurretMaxYawTurnSpeedDegPerSec",   "360"},
                                {"TurretMaxPitchTurnSpeedDegPerSec", "180"},
                                {"TurretAngle",                      "360"},
                                {"TurretDispersionAngle",            "0"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA_POLICE\ENTITIES\TURRETPOLICE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TurretRange",                      "2500"},
                                {"TurretLaserShootTime",             "2"},
                                {"TurretLaserMoveSpeed",             "5"},
                                {"TurretLaserChargeTime",            "0"},
                                {"TurretLaserAbortDistance",         "1500"},
                                {"TurretShootPauseTime",             "2"},
                                {"TurretBurstCount",                 "1"},
                                {"TurretBurstTime",                  "0.15"},
                                {"TurretMaxYawTurnSpeedDegPerSec",   "360"},
                                {"TurretMaxPitchTurnSpeedDegPerSec", "180"},
                                {"TurretAngle",                      "360"},
                                {"TurretDispersionAngle",            "0"},
                            },
                        },
                    }
                },
            }
        }
    }
}
