NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyPolice.pak",
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
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxNumActivePoliceRadius",                     50000 },   -- 10000
                                { "PoliceLaunchSpeed",                            2000 },    -- 500
                                { "PoliceAbortRange",                             20000 },   -- 3000
                                { "PoliceNumPerTarget",                           5 },       -- 3
                                { "PoliceFreighterLaserRange",                    100000 },  -- 2000
                                { "PoliceFreighterProjectileRange",               10000 },   -- 6000
                                { "PoliceFreighterWarpOutRange",                  100000 },  -- 10000
                                { "PoliceFreighterLaserRandomExtraPauseMax",      1.5 },     -- 3.5
                                { "PoliceFreighterProjectileRandomExtraPauseMax", 2 },       -- 4
                                -- for test cop freighter
                                --{ "PoliceStationNumToLaunch",                     1 },       -- 9
                                --{ "MaxNumActivePolice",                           15 },      -- 15
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
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WantedLevelPlayerRangeSpace",                      30000 }, -- 10000
                                { "WantedMinSpaceTime",                               60 },    -- 20
                            }
                        },
                    }
                },
            }
        }
    }
}
