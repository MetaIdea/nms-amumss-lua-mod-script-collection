NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeathlyMisc.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCSPACESHIPGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                --{ "WingmanAttackRange",                       2000.0 }, -- 1400
                                --{ "WarpOutRange",                             10000.0 }, -- 1000.0
                                --{ "WarpOutTime",                              10.0 },    -- 2.0
                                { "BoostNoAsteroidRadius ",                   0.0 },    -- 1000.0
                                { "MiniWarpNoAsteroidRadius ",                500.0 },  -- 1500.0
                                { "NoBoostCombatEventMinBattleTime",          60.0 },   -- 35
                                { "NoBoostCombatEventMinFreighterBattleTime", 60.0 },   -- 55
                                { "NoBoostCombatEventTime",                   60.0 },   -- 25
                            }
                        },
                    }
                },
                { -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Asteroid Space Station Avoid Radius", 1000.0 },   -- 5000.0
                                { "Asteroid Warp In Area Avoid Radius",  500.0 },    -- 5000.0
                                -- place asteroids a bit farer from planets
                                { "Planet Invalid Asteroid Zone",        100000.0 }, -- 10000.0
                            },
                        },
                    }
                },
            }
        }
    }
}
