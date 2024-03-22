MINMULTI = 1
MAXMULTI = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Savage Sentinels by Exosolar.pak",
["MOD_AUTHOR"]              = "Exosolar",
["LUA_AUTHOR"]              = "Babscoole & Xen0nex",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCROBOTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GrenadeLaunchFlightTime",                  2},
                                {"MaxNumPatrolDrones",                       2},
                                {"UnderwaterPerceptionMargin",               2},
                                {"CombatWaveSpawnTime",                      15},
                                {"WalkerEnergyLength",                       20},
                                {"WalkerEnergyMinAlpha",                     0.1},
                                {"RobotHUDMarkerRange",                      120},
                                {"DroneSpawnHeight",                         2},
                                {"MaxNumInvestigatingDrones",                8},
                                {"WalkerLaserOvershootStart",                -2},
                                {"WalkerLaserOvershootEnd",                  2},
                                {"WalkerGunShootTime",                       7},
                                {"WalkerGunChargeTime",                      0.8},
                                {"WalkerGunRate",                            0.035},
                                {"QuadLookAngleMax",                         60},
                                {"QuadAttackTurnAngleMax",                   120},
                                {"QuadAttackTurnAngleMin",                   30},
                                {"QuadJumpBackRange",                        16},
                                {"QuadPounceDamageRadius",                   1.66},
                                {"QuadCannotSeeTargetRepositionTime",        0.3},
                                {"QuadAttackRate",                           5},
                                {"QuadEvadeCooldown",                        4},
                                {"DroneReAttackTime",                        10},
                                {"DronePatrolAttackSightTime",               2.5},
                                {"DroneAttackGetInRangeBoost",               2},
                                {"DroneAggressiveInvestigateAttackTime",     1},
                                {"FireRateLastHitBypassTime",                5.1},
                                {"FireRateModifierMin",                      1.65},
                                {"FireRateModifierMax",                      0.8},
                                {"DronePerceptionRange",                     20},
                                {"DronePerceptionRangeHostile",              35},
                                {"DronePerceptionSightRange",                50},
                                {"DronePerceptionSightRangeHostile",         92},
                                {"DronePerceptionSightAngle",                45},
                                {"DroneInvestigateMinWitnessRangeCantSee",   2.5},
                                {"DronePerceptionMinHearingSpeed",           4},
                                {"DroneCriminalScanTime",                    12},
                                {"DroneInvestigateMinScanTime",              0.5},
                                {"DroneInvestigateMinWitnessRange",          22},
                                {"DroneInvestigateMinWitnessTime",           10},
                                {"DroneCrimePostInvestigateWaitTime",        20},
                                {"DronePatrolSearchTime",                    3.5},
                                {"DroneCrimeCooldown",                       0.3},
                                {"DroneCrimeCooldownWaitTime",               10},
                                {"DroneCrimeCooldownWaitTimeAtMax",          15},
                                {"DroneDecisionTime",                        2},
                                {"DroneCrimeWitnessInvestigateDistance",     45},
                                {"DronePatrolDistanceMin",                   15},
                                {"DronePatrolDistanceMax",                   50},
                                {"DronePatrolTargetDistance",                25},
                                {"DroneSearchTime",                          10},
                                {"DroneSearchPauseTime",                     0.5},
                                {"DroneSearchCriminalScanRadius",            8},
                                {"DroneSearchCriminalScanRadiusWanted",      20},
                                {"MechMinMaintainFireTargetTime",            4},
                                {"MechAttackRate",                           2},
                                {"QuadAttackMoveRange",                      30},
                                {"SpiderPounceAngle",                        75},
                                {"SpiderPounceRange",                        35},
                                {"SpiderPounceMinRange",                     8},
                                {"HitsToCancelStealthSmall",                 4},
                                {"HitsToCancelStealth",                      8},
                                {"CorruptedDroneRepairInteruptCooldownTime", 4},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"QuadLookTurnSpeeds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", 1},
                                {"y", 1.1}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"QuadAttackTurnSpeeds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", 1},
                                {"y", 1.2}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", -0.005},
                                {"y", 0.065}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", -0.005},
                                {"y", -0.007}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WalkerLaser"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LaserMiningDamage",    130},
                                {"LaserChargeTime",      1},
                                {"LaserTime",            1.66},
                                {"LaserLightChargeSize", 40},
                                {"LaserLightAttackSize", 70},
                                {"R",                    0.863},
                                {"G",                    0.688}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"QuadLaser"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LaserChargeTime",      0.5},
                                {"LaserTime",            0.66},
                                {"LaserLightChargeSize", 25},
                                {"LaserLightAttackSize", 9},
                                {"G",                    0.588}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DroneControl"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DronePatrolHonkTime",                 1.2},
                                {"DronePatrolHonkProbability",          7},
                                {"DroneAlertTime",                      20},
                                {"AttackAngle",                         30},
                                {"AttackActivateTime",                  0.01},
                                {"AttackBobAmount",                     0.5},
                                {"AttackBobRotation",                   0.05},
                                {"AttackMoveMinChoiceTime",             0.05},
                                {"AttackMoveAngle",                     1},
                                {"AttackMaxDistanceFromAlert",          150},
                                {"DroneSearchCriminalScanRadiusInShip", 8},
                                {"DroneScanPlayerTime",                 15},
                                {"LeanAmount",                          0.5},
                                {"LeanSpeedMin",                        5},
                                {"LeanSpeedRange",                      2},
                                {"EyeFocusTime",                        0.00001},
                                {"EyeNumRandomsMin",                    5},
                                {"EyeNumRandomsMax",                    9999999},
                                {"EyeTimeMin",                          0.5},
                                {"EyeTimeMax",                          80},
                                {"EyeAngleMax",                         1},
                                {"EngineDirSpeedMin",                   60},
                                {"EngineDirAngleMax",                   0}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             2000},
                                {"HealthIncreasePerLevel", 1400},
                                {"RepairTime",             3},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONEARMOURED.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             2500},
                                {"HealthIncreasePerLevel", 2100},
                                {"RepairTime",             3},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONEMEDIC.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             3000},
                                {"HealthIncreasePerLevel", 1400},
                                {"RepairTime",             1.5},
                                {"RepairThreshold",        50},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONESUMMONER.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             3000},
                                {"HealthIncreasePerLevel", 2100},
                                {"RepairTime",             1.5},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             4500},
                                {"HealthIncreasePerLevel", 4500},
                                {"RepairTime",             3},
                                {"RepairThreshold",        60},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             8000},
                                {"HealthIncreasePerLevel", 8500},
                                {"RepairTime",             5},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/SENTINELMECH.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             20000},
                                {"HealthIncreasePerLevel", 12000},
                                {"RepairTime",             7},
                                {"RepairThreshold",        50},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             30000},
                                {"HealthIncreasePerLevel", 25000},
                                {"RepairTime",             7},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/SPIDER_QUADRUPED.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             12000},
                                {"HealthIncreasePerLevel", 25000},
                                {"RepairTime",             6},
                                {"RepairThreshold",        50},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/SPIDER_SMALLQUAD.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             15000},
                                {"HealthIncreasePerLevel", 4500},
                                {"RepairTime",             1.5},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONESHIELD.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseHealth",             30000},
                                {"HealthIncreasePerLevel", 4000},
                                {"RepairTime",             7},
                                {"RepairThreshold",        95},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENMECHGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0.07},
                                {"FireInterval",     0.03},
                                {"NumShotsMin",      45},
                                {"NumShotsMax",      75},
                                {"IdealRange",       20},
                                {"MinRange",         10},
                                {"MaxRange",         70},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENMECHCANON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxRange", 100},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MECHFLAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0.07},
                                {"FireInterval",     0.03},
                                {"NumShotsMin",      50},
                                {"NumShotsMax",      70},
                                {"CooldownTimeMin",  2},
                                {"CooldownTimeMax",  4},
                                {"IdealRange",       8},
                                {"MinRange",         1},
                                {"MaxRange",         40},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "QUADLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0},
                                {"FireInterval",     1},
                                {"FireTimeMin",      4.5},
                                {"FireTimeMax",      7},
                                {"NumShotsMin",      1},
                                {"NumShotsMax",      4},
                                {"MinRange",         8},
                                {"MaxRange",         50},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "QUADCANNON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0},
                                {"FireInterval",     0.25},
                                {"FireTimeMin",      5.5},
                                {"FireTimeMax",      9},
                                {"NumShotsMin",      4},
                                {"NumShotsMax",      8},
                                {"MinRange",         8},
                                {"MaxRange",         60},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "QUADGRENADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumProjectiles",   2},
                                {"ProjectileSpread", 0},
                                {"FireInterval",     1},
                                {"FireTimeMin",      3},
                                {"FireTimeMax",      7},
                                {"NumShotsMin",      3},
                                {"NumShotsMax",      6},
                                {"MinRange",         17},
                                {"MaxRange",         60},
                                {"ExplosionRadius",  2.8}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "QUADFLAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0.07},
                                {"FireInterval",     0.03},
                                {"FireTimeMin",      4},
                                {"FireTimeMax",      8},
                                {"NumShotsMin",      15},
                                {"NumShotsMax",      45},
                                {"MinRange",         0},
                                {"MaxRange",         24},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTSMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0},
                                {"FireRate",         0.04},
                                {"FireTimeMin",      2},
                                {"FireTimeMax",      4.5},
                                {"NumShotsMin",      12},
                                {"NumShotsMax",      30},
                                {"Range",            40},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTGRENADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0},
                                {"FireRate",         0.5},
                                {"FireTimeMin",      5},
                                {"FireTimeMax",      8},
                                {"NumShotsMin",      1},
                                {"NumShotsMax",      3},
                                {"Range",            120},
                                {"ExplosionRadius",  2.2}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTSHOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumProjectiles",   12},
                                {"ProjectileSpread", 0.07},
                                {"FireRate",         0.18},
                                {"FireTimeMin",      5},
                                {"FireTimeMax",      8},
                                {"NumShotsMin",      3},
                                {"NumShotsMax",      6},
                                {"Range",            30},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CORRUPTFLAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileSpread", 0.07},
                                {"FireRate",         0.03},
                                {"FireTimeMin",      4.5},
                                {"FireTimeMax",      7},
                                {"NumShotsMin",      45},
                                {"NumShotsMax",      60},
                                {"Range",            20},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Attack", "GcDroneControlData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       8},
                                {"Strength",       1.6},
                                {"DirectionBrake", 0.6}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Search", "GcDroneControlData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       12},
                                {"Strength",       2},
                                {"DirectionBrake", 2.5}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcDroneWeaponData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_MATCH"] = "120",
                            ["VALUE_MATCH_OPTIONS"] = "~=",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Range", 2}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
                            ["MATH_OPERATION"] = "*",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinAmount", MINMULTI},
                                {"MaxAmount", MAXMULTI},
                            }
                        },
                    }
                },
            }
        },
    }
}