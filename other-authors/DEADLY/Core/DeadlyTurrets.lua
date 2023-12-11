NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]            = "_DeadlyTurrets.pak",
    ["MOD_AUTHOR"]              = "gh0stwizard",
    ["LUA_AUTHOR"]              = "gh0stwizard",
    ["NMS_VERSION"]             = "4.46",
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    ["MODIFICATIONS"]           = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\PROJECTILES\PROJECTILETABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/PROJECTILES/PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- ??? laser; not tested yet
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "COP_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultDamage", 150 }, -- 15
                            },
                        },
                        -- big laser (disabled, just for a case)
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Width",         300 },   -- 50
                                { "HitWidth",      90 },    -- 15
                                { "StartTime",     0 },     -- 0.3
                                { "Speed",         28000 }, -- 0
                                { "DefaultDamage", 1000 },  -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_FREIGHTER", "LightColour", "Colour.xml", },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "R", 1 },
                                { "G", 0.2 },
                                { "B", 0 },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_FREIGHTER", "Colour", "Colour.xml", },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "R", 1 },
                                { "G", 0.75 },
                                { "B", 0 },
                            }
                        },
                        -- small green lasers
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "FREIGHTGUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultSpeed",  10000 }, -- 1000
                                { "DefaultDamage", 2000 },  -- 15
                            }
                        },
                        -- pirate freighter gun
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PI_FRE_SMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultSpeed", 1000 }, -- 450
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  =
                    "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/TURRET/TURRETA/ENTITIES/TURRET.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TurretRange",              1000000 }, -- 2000
                                { "TurretLaserShootTime",     0 },       -- 3
                                { "TurretLaserActiveTime",    0 },       -- 2
                                { "TurretShootPauseTime",     0.25 },    -- 0.15
                                { "TurretBurstTime",          0.05 },    -- 0.15
                                { "TurretMissileLaunchSpeed", 500 },     -- 125
                                { "TurretProjectileRange",    100000 },  -- 3000
                                { "TurretMissileRange",       100000 },  -- 6000
                                { "TurretDispersionAngle",    0 },       -- 2
                                { "TurretMaxDownAngle",       25 },      -- 10
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  =
                    "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/ANTISHIPTURRET/ENTITIES/ANTISHIPTURRET.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TurretRange",              5000 }, -- 2000
                                { "TurretShootPauseTime",     2 },    -- 7
                                { "TurretMissileLaunchSpeed", 500 },  -- 125
                                { "TurretProjectileRange",    5000 }, -- 450
                            }
                        },
                    }
                },
            }
        }
    }
}