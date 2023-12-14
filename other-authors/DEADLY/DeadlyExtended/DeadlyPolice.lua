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
                                { "MaxNumActivePoliceRadius",                     40000 },   -- 10000
                                { "PoliceStationEngageRange",                     50000 },   -- 10000
                                { "PoliceLaunchSpeed",                            2000 },    -- 500
                                { "PoliceAbortRange",                             30000 },   -- 3000
                                { "PoliceNumPerTarget",                           5 },       -- 3
                                { "PoliceFreighterLaserRange",                    100000 },  -- 2000
                                { "PoliceFreighterProjectileRange",               10000 },   -- 6000
                                { "PoliceFreighterWarpOutRange",                  100000 },  -- 10000
                                { "PoliceFreighterLaserRange",                    1000000 }, -- 2000
                                { "PoliceFreighterLaserShootTime",                1 },       -- 1.2
                                { "PoliceFreighterLaserRandomExtraPauseMax",      1.5 },     -- 3.5
                                { "PoliceFreighterProjectileRandomExtraPauseMax", 2 },       -- 4
                                -- for test cop freighter
                                --{ "PoliceStationNumToLaunch",                     1 },       -- 9
                                --{ "MaxNumActivePolice",                           15 },      -- 15
                                -- ???
                                { "PolicePauseTime",                              0 },       -- 3
                                { "PolicePauseTimeSpaceBattle",                   0 },       -- 30
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
                                { "ExperienceDefeatLevel5SpaceSentinelsMessageDelay", 0 },     -- 4
                                { "ExperienceDefeatLevel5SpaceSentinelsRewardDelay",  0 },     -- 9
                                { "WantedLevelPlayerRangeSpace",                      50000 }, -- 10000
                                { "WantedMinSpaceTime",                               40 },    -- 20
                            }
                        },
                    }
                },
            }
        }
    }
}
