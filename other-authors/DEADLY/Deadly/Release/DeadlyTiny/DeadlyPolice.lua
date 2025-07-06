NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyPolice.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCAISPACESHIPGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxNumActivePoliceRadius",                     50000.0 },  -- 10000.0
                                { "PoliceLaunchSpeed",                            2000.0 },   -- 500.0
                                { "PoliceAbortRange",                             20000.0 },  -- 3000.0
                                { "PoliceNumPerTarget",                           5 },        -- 3
                                { "PoliceFreighterLaserRange",                    100000.0 }, -- 2000.0
                                { "PoliceFreighterProjectileRange",               10000.0 },  -- 6000.0
                                { "PoliceFreighterWarpOutRange",                  100000.0 }, -- 8000.0
                                { "PoliceFreighterLaserRandomExtraPauseMax",      1.5 },      -- 3.5
                                { "PoliceFreighterProjectileRandomExtraPauseMax", 2.0 },      -- 4.0
                                -- for test cop freighter
                                --{ "PoliceStationNumToLaunch",                     1 },       -- 9
                                --{ "MaxNumActivePolice",                           15 },      -- 15
                            }
                        },
                    }
                },
                { -- GCPLAYERGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WantedLevelPlayerRangeSpace", 30000.0 }, -- 10000.0
                                { "WantedMinSpaceTime",          60.0 },    -- 20.0
                            }
                        },
                    }
                },
            }
        }
    }
}
