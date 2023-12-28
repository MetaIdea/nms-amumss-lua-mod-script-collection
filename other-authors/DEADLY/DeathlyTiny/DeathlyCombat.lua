ATTACK_WEAPON_RANGE_MULTI = 3
ATTACK_TARGET_MAX_RANGE_MULTI = 5

ATTACK_APPROACH_MIN_RANGE = 100
ATTACK_APPROACH_MAX_RANGE = 2000

FLEE_MIN_TIME = 6
FLEE_MAX_TIME = 12

ATTACK_SHOOT_TIME_MIN_MULTI = 5
ATTACK_SHOOT_TIME_MAX_MULTI = 5
ATTACK_MAX_TIME_MULTI = 12

LASER_HEALTH_POINT_MULTI = 20
FLEE_RANGE_MULTI = 8

SPACE_EASY_THRUST_FORCE = 165 -- 100
SPACE_HARD_THRUST_FORCE = 180 -- 100
SQUADRON_SLOW_THRUST_FORCE = 165 -- 100
SQUADRON_FAST_THRUST_FORCE = 180 -- 120

SPACE_EASY_MAX_SPEED = 265    -- 60
SPACE_HARD_MAX_SPEED = 330    -- 90
SQUADRON_SLOW_MAX_SPEED = 265 -- 200
SQUADRON_FAST_MAX_SPEED = 330 -- 300

SPACE_FLEE_BOOST = 200
SPACE_FLEE_URGENT_BOOST = 220

PLANET_THRUST_FORCE = 125    -- 50
PLANET_EASY_MAX_SPEED = 130  -- 80
PLANET_HARD_MAX_SPEED = 155  -- 130
--RAID_BUILDING_MAX_SPEED = 80 -- 60
PLANET_FLEE_BOOST = 100
PLANET_FLEE_URGENT_BOOST = 150

SQUADRON_WEAK_LASER_HEALTH_POINT = 0
SQUADRON_STRONG_LASER_HEALTH_POINT = 1000


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeathlyCombat.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
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
                                { "PlanetaryPirateRaidTradersEngageTime",    300 },   -- 30
                                { "PlanetaryPirateRaidMaxTradersJoinCombat", 8 },     -- 4
                                { "PirateStartSpeed",                        1000 },  -- 100
                                -- ???
                                { "VisibleDistance",                         10000 }, -- 3500
                                { "CollisionRayLengthMax",                   5000 },  -- 2000
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
                -- METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                                --{ "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AttackTargetSwitchTargetTime", 1 }, -- 10
                                { "FleeMinTime",                  FLEE_MIN_TIME },
                                { "FleeMaxTime",                  FLEE_MAX_TIME },
                                { "AttackApproachMinRange",       ATTACK_APPROACH_MIN_RANGE },
                                { "AttackApproachMaxRange",       ATTACK_APPROACH_MAX_RANGE },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                                --{ "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AttackShootTimeMin",   ATTACK_SHOOT_TIME_MIN_MULTI },
                                { "AttackShootTimeMax",   ATTACK_SHOOT_TIME_MAX_MULTI },
                                { "AttackMaxTime",        ATTACK_MAX_TIME_MULTI },
                                { "FleeRange",            FLEE_RANGE_MULTI },
                                { "FleeUrgentRange",      FLEE_RANGE_MULTI },
                                { "AttackWeaponRange",    ATTACK_WEAPON_RANGE_MULTI },
                                { "AttackTargetMaxRange", ATTACK_TARGET_MAX_RANGE_MULTI },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserHealthPoint", LASER_HEALTH_POINT_MULTI }, -- 50
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
                                { "AttackTargetOffsetMax",        2000 }, -- 500
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "SPACE" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                                { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FleeBoost",       SPACE_FLEE_BOOST },
                                { "FleeUrgentBoost", SPACE_FLEE_URGENT_BOOST },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SPACE_EASY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force", SPACE_EASY_THRUST_FORCE }, -- 100
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SPACE_HARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force", SPACE_HARD_THRUST_FORCE }, -- 100
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SQUADRON_SLOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force", SQUADRON_SLOW_THRUST_FORCE }, -- 100
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SQUADRON_FAST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force", SQUADRON_FAST_THRUST_FORCE }, -- 120
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SPACE_EASY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxSpeed", SPACE_EASY_MAX_SPEED }, -- 60
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SPACE_HARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxSpeed", SPACE_HARD_MAX_SPEED }, -- 90
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SQUADRON_SLOW" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxSpeed", SQUADRON_SLOW_MAX_SPEED }, -- 200
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "SQUADRON_FAST" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxSpeed", SQUADRON_FAST_MAX_SPEED }, -- 300
                            },
                        },
                        -- planetary flying
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                --{ "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserHealthPoint",         0 },    -- disables laser usage
                                { "FleeRepositionUrgentTime", 10 },   -- 1/2
                                { "GunDispersionAngle",       1 },    -- 5/3
                                { "GunFireRate",              0.1 },  -- 0.15
                                { "AttackTargetMinRange",     50 },   -- 200
                                { "AttackTargetOffsetMax",    1000 }, -- 500
                                { "AttackBoostRange",         1100 }, -- 550
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "BehaviourTable", "IGNORE", "Id", "PLANET" },
                                --{ "BehaviourTable", "IGNORE", "Id", "RAID_BUILDING" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FleeBoost",       PLANET_FLEE_BOOST },
                                { "FleeUrgentBoost", PLANET_FLEE_URGENT_BOOST },
                            },
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "EngineTable", "IGNORE", "Id", "PLANET_EASY" },
                                { "EngineTable", "IGNORE", "Id", "PLANET_HARD" },
                                --{ "EngineTable", "IGNORE", "Id", "RAID_BUILDING" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Force", PLANET_THRUST_FORCE }, -- 50
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "PLANET_EASY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxSpeed", PLANET_EASY_MAX_SPEED },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "PLANET_HARD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxSpeed", PLANET_HARD_MAX_SPEED },
                            },
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "EngineTable", "IGNORE", "Id", "RAID_BUILDING" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "MaxSpeed", RAID_BUILDING_MAX_SPEED },
                        --     },
                        -- },
                        -- squadron combat
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "BehaviourTable", "IGNORE", "Id", "SQUADRON_WEAK" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "GunDispersionAngle", 3 },                                -- 6
                                { "GunFireRate",        0.15 },                             -- 0.3
                                { "LaserHealthPoint",   SQUADRON_WEAK_LASER_HEALTH_POINT }, -- 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "BehaviourTable", "IGNORE", "Id", "SQUADRON_STRONG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "GunDispersionAngle", 1 },                                  -- 2
                                { "GunFireRate",        0.1 },                                -- 0.1
                                { "LaserHealthPoint",   SQUADRON_STRONG_LASER_HEALTH_POINT }, -- 0
                            },
                        },
                    }
                },
            },
        }
    }
}
