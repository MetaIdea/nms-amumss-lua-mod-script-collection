PLAYER_WEAPON_RANGE_MULTI = 2

AI_ATTACK_WEAPON_RANGE_MULTI = 3
AI_ATTACK_TARGET_MAX_RANGE_MULTI = 5

AI_ATTACK_APPROACH_MIN_RANGE = 100
AI_ATTACK_APPROACH_MAX_RANGE = 1500

AI_FLEE_MIN_TIME = 6
AI_FLEE_MAX_TIME = 12

AI_ATTACK_SHOOT_TIME_MIN_MULTI = 5
AI_ATTACK_SHOOT_TIME_MAX_MULTI = 5
AI_ATTACK_MAX_TIME_MULTI = 12

AI_LASER_HEALTH_POINT_MULTI = 20
AI_FLEE_RANGE_MULTI = 8

AI_SPACE_THRUST_FORCE_MULTI = 4
AI_SPACE_MAX_SPEED_MULTI = 4

AI_SPACE_FLEE_BOOST = 180
AI_SPACE_FLEE_URGENT_BOOST = 280

AI_PLANET_THRUST_FORCE_MULTI = 5
AI_PLANET_MAX_SPEED_MULTI = 2
AI_PLANET_FLEE_BOOST = 130
AI_PLANET_FLEE_URGENT_BOOST = 180

SQUADRON_WEAK_LASER_HEALTH_POINT = 0
SQUADRON_STRONG_LASER_HEALTH_POINT = 1000


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyCombat.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- boost player's weapon range
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "ID", "SHIPROCKETS",   "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPGUN1",      "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPSHOTGUN",   "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPMINIGUN",   "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPPLASMA",    "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPGUN_ALIEN", "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPGUN_ROBO",  "StatsType", "Ship_Weapons_Guns_Range" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Bonus", PLAYER_WEAPON_RANGE_MULTI },
                            }
                        },
                    }
                },
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SpaceBattleRadius",                50000 }, -- 13500
                                { "SpaceCombatRadius",                50000 }, -- 5000
                                { "FreighterBattleRadius",            50000 }, -- 5000
                                { "SpaceBattleAnyHostileShipsRadius", 50000 }, -- 10000
                            }
                        },
                    }
                },
                --
                -- GCPLAYERGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- boost player's laser range
                        {
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserShipRange", PLAYER_WEAPON_RANGE_MULTI },
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PirateRaidMinTime", 180 }, -- 90
                                { "PirateRaidMaxTime", 360 }, -- 180
                            }
                        },
                    }
                },
                --
                -- GCAISPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FreighterAttackDisengageDistance",        30000 }, -- 3000
                                { "PiratePlayerAttackRange",                 3000 },  -- 1500
                                { "MissileRange",                            8000 },  -- 2000
                                { "CollisionRayLengthMax",                   5000 },  -- 2000
                                { "PlanetaryPirateRaidTradersEngageTime",    300 },   -- 30
                                { "PlanetaryPirateRaidMaxTradersJoinCombat", 8 },     -- 4
                                -- ???
                                { "VisibleDistance",                         10000 }, -- 3500
                                -- ???
                                -- { "ShipEscapeTimeBeforeWarpOut",             10 },    -- 10
                                -- for tests
                                -- { "MaxDifficultySpaceCombatTurnExtra",  0 },     -- 1.6
                                -- { "MaxDifficultySpaceCombatSpeedExtra", 0 },     -- 55
                            }
                        }
                    }
                },
                --
                -- GCSPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WingmanAttackRange", 2000 },  -- 1400
                                { "WarpOutRange",       10000 }, -- 1000
                                { "WarpOutTime",        10 },    -- 2
                            }
                        },
                    }
                },
                --
                -- METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                                { "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AttackTargetSwitchTargetTime", 1 }, -- 10
                                { "FleeMinTime",                  AI_FLEE_MIN_TIME },
                                { "FleeMaxTime",                  AI_FLEE_MAX_TIME },
                                { "AttackApproachMinRange",       AI_ATTACK_APPROACH_MIN_RANGE },
                                { "AttackApproachMaxRange",       AI_ATTACK_APPROACH_MAX_RANGE },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                                { "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AttackShootTimeMin",   AI_ATTACK_SHOOT_TIME_MIN_MULTI },
                                { "AttackShootTimeMax",   AI_ATTACK_SHOOT_TIME_MAX_MULTI },
                                { "AttackMaxTime",        AI_ATTACK_MAX_TIME_MULTI },
                                { "FleeRange",            AI_FLEE_RANGE_MULTI },
                                { "FleeUrgentRange",      AI_FLEE_RANGE_MULTI },
                                { "AttackWeaponRange",    AI_ATTACK_WEAPON_RANGE_MULTI },
                                { "AttackTargetMaxRange", AI_ATTACK_TARGET_MAX_RANGE_MULTI },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserHealthPoint", AI_LASER_HEALTH_POINT_MULTI }, -- 50
                            },
                        },
                        -- space flying
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FleeUrgentBrakeTime",          1 },    -- 3
                                { "FleeRepositionAngleMin",       30 },   -- 140
                                { "FleeRepositionUrgentAngleMin", 45 },   -- 180
                                { "FleeRepositionUrgentTime",     10 },   -- 1
                                { "AttackAngle",                  40 },   -- 30
                                { "AttackBoostAngle",             15 },   -- 15
                                { "GunDispersionAngle",           2.5 },  -- 5.5
                                { "GunFireRate",                  0.1 },  -- 0.15
                                { "AttackTargetMinRange",         100 },  -- 250
                                { "AttackTargetOffsetMax",        1000 }, -- 500
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FleeBoost",       AI_SPACE_FLEE_BOOST },
                                { "FleeUrgentBoost", AI_SPACE_FLEE_URGENT_BOOST },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "EngineTable", "IGNORE", "Id", "SPACE_EASY" },
                                { "EngineTable", "IGNORE", "Id", "SPACE_HARD" },
                                { "EngineTable", "IGNORE", "Id", "SQUADRON_SLOW" },
                                { "EngineTable", "IGNORE", "Id", "SQUADRON_FAST" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force",    AI_SPACE_THRUST_FORCE_MULTI }, -- 100
                                { "MaxSpeed", AI_SPACE_MAX_SPEED_MULTI },
                            },
                        },
                        -- planetary flying
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                { "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserHealthPoint",         0 },    -- disables laser usage
                                { "FleeRepositionUrgentTime", 10 },   -- 1/2
                                { "GunDispersionAngle",       1 },    -- 5/3
                                { "GunFireRate",              0.1 },  -- 0.15
                                { "AttackTargetMinRange",     50 },   -- 200
                                { "AttackTargetOffsetMax",    1000 }, -- 500
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                { "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FleeBoost",       AI_PLANET_FLEE_BOOST },
                                { "FleeUrgentBoost", AI_PLANET_FLEE_URGENT_BOOST },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "EngineTable", "IGNORE", "Id", "PLANET_EASY" },
                                { "EngineTable", "IGNORE", "Id", "PLANET_HARD" },
                                { "EngineTable", "IGNORE", "Id", "RAID_BUILDING" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force",    AI_PLANET_THRUST_FORCE_MULTI }, -- 50
                                { "MaxSpeed", AI_PLANET_MAX_SPEED_MULTI },
                            },
                        },
                        -- squadron combat
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "GunDispersionAngle", 3 },    -- 6
                                { "GunFireRate",        0.15 }, -- 0.3
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "GunDispersionAngle", 1 },   -- 2
                                { "GunFireRate",        0.1 }, -- 0.1
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserHealthPoint", SQUADRON_WEAK_LASER_HEALTH_POINT }, -- 0
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserHealthPoint", SQUADRON_STRONG_LASER_HEALTH_POINT }, -- 0
                            },
                        },
                    }
                },
            },
        }
    }
}
