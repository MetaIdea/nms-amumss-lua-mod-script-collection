NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_AiShipPlusMoreDamage_v452-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
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
                                {"MinimumCircleTimeBeforeLanding",     "20"},
                                {"TradingPostTraderRequestTime",       "60"},
                                {"TurretOriginOffset",                 "0"},
                                {"SpaceStationTraderRequestTime",      "30"},
                                {"DockingLandingTime",                 "2"},
                                {"DockingLandingTimeDirectional",      "2"},
                                {"DisableTradeRoutes",                 "True"},
                                {"DockWaitMinTime",                    "60"},
                                {"DockWaitMaxTime",                    "120"},
                                {"LandingManuevreTime",                "2"},
                                {"LandingManeuvreAlignTime",           "2"},
                                {"GroundCircleHeight",                 "90"},
                                {"MaxDifficultySpaceCombatTurnExtra",  "0"},
                                {"MaxDifficultySpaceCombatSpeedExtra", "0"},
                                {"TurretOriginOffset",                 "15"},
                                {"AsteroidMiningMinDistFromPlayer",    "300"},
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
                                {"GunDispersionAngle",           "4"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackShootTimeMin",           "2"},
                                {"AttackShootTimeMax",           "3"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachMinRange",       "150"},
                                {"AttackApproachMaxRange",       "250"},
                                {"AttackTooCloseRange",          "50"},
                                {"AttackBoostTimeToRange",       "3"},
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
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "4"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackShootTimeMin",           "2"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachOffset",         "150"},
                                {"AttackApproachMinRange",       "150"},
                                {"AttackApproachMaxRange",       "250"},
                                {"AttackTooCloseRange",          "50"},
                                {"AttackFlybyOffset",            "150"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"NumHitsBeforeBail",            "6000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "100"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeUrgentBoost",              "1.5"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeMinTime",                  "1.5"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "4"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackShootTimeMin",           "1"},
                                {"AttackShootTimeMax",           "3"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachMinRange",       "150"},
                                {"AttackApproachMaxRange",       "250"},
                                {"AttackTooCloseRange",          "50"},
                                {"AttackBoostTimeToRange",       "3"},
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
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_WEAK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "2"},
                                {"GunFireRate",                  "0.2"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackShootTimeMax",           "3"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachMinRange",       "150"},
                                {"AttackApproachMaxRange",       "250"},
                                {"AttackTooCloseRange",          "50"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"NumHitsBeforeBail",            "4000"},
                                {"NumHitsBeforeReposition",      "3000"},
                                {"FleeBoost",                    "40"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "90"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "1"},
                                {"GunFireRate",                  "0.15"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackAngle",                  "40"},
                                {"AttackShootWaitTime",          "1"},
                                {"AttackReadyTime",              "0.1"},
                                {"AttackMaxTime",                "4"},
                                {"AttackApproachMinRange",       "150"},
                                {"AttackApproachMaxRange",       "250"},
                                {"AttackTooCloseRange",          "50"},
                                {"AttackBoostTimeToRange",       "3"},
                                {"AttackBoostRange",             "2000"},
                                {"NumHitsBeforeBail",            "6000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "80"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "90"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeMinTime",                  "1.5"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "50"},
                                {"MaxSpeed", "160"},
                                {"TurnMax",  "1.5"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "50"},
                                {"MaxSpeed", "180"},
                                {"TurnMax",  "1.75"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TurnMax", "1.5"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "50"},
                                {"MaxSpeed", "125"},
                                {"TurnMax",  "1.75"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "40"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_SLOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "160"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_FAST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed", "180"},
                                {"TurnMax",  "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEAK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",            "4000"},
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
                                {"RechargeTime",        "10"},
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
                                {"RechargeTime",        "12"},
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
                                {"RechargeTime",        "4"},
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
                                {"RechargeTime",        "8"},
                                {"RechargeDelayTime",   "3"},
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
                                {"TurretShootPauseTime",             "2"},
                                {"TurretBurstCount",                 "20"},
                                {"TurretBurstTime",                  "0.2"},
                                {"TurretMaxYawTurnSpeedDegPerSec",   "180"},
                                {"TurretMaxPitchTurnSpeedDegPerSec", "90"},
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
                                {"GunType",                          "Projectile"},
                                {"LaserEffectId",                    "AI_FREIGHTER"},
                                {"LaserMuzzleFlashId",               "AITURRETLASER"},
                                {"ProjectileId",                     "FREIGHTGUN"},
                                {"ProjectileMuzzleFlashId",          "TURRETGUN"},
                                {"TurretLaserShootTime",             "3"},
                                {"TurretLaserMoveSpeed",             "50"},
                                {"TurretLaserChargeTime",            "0.5"},
                                {"TurretShootPauseTime",             "2"},
                                {"TurretBurstCount",                 "20"},
                                {"TurretBurstTime",                  "0.2"},
                                {"TurretMaxYawTurnSpeedDegPerSec",   "180"},
                                {"TurretMaxPitchTurnSpeedDegPerSec", "90"},
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
