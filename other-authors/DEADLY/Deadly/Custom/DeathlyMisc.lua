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
                                { "WingmanAttackRange",                       2000 }, -- 1400
                                --{ "WarpOutRange",                             10000 }, -- 1000
                                --{ "WarpOutTime",                              10 },    -- 2
                                { "BoostNoAsteroidRadius",                    0 },   -- 1000
                                { "MiniWarpNoAsteroidRadius",                 500 }, -- 1500
                                { "NoBoostCombatEventMinBattleTime",          60 },  -- 35
                                { "NoBoostCombatEventMinFreighterBattleTime", 60 },  -- 55
                                { "NoBoostCombatEventTime",                   60 },  -- 25
                            }
                        },
                    }
                },
                { -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AsteroidSpaceStationAvoidRadius", 1000 },   -- 5000
                                { "AsteroidWarpInAreaAvoidRadius",   500 },    -- 5000
                                -- place asteroids a bit farer from planets
                                { "PlanetInvalidAsteroidZone",       100000 }, -- 10000
                            },
                        },
                    }
                },
            }
        }
    }
}
