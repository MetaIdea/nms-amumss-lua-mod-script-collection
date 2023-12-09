NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlySpeedUp.pak",
    ["MOD_BATCHNAME"]   = "_Deadly.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases speed of scanning things, interacting with objects, discovery notifications.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "BinocTimeBeforeScan",    0 },   -- 0.5
                                { "BinocMinScanTime",       0.2 }, -- 2.2
                                { "BinocScanTime",          0.2 }, -- 2.2
                                { "BinocCreatureScanTime",  0.1 }, -- 1.9
                                { "MissionSurveyScanSpeed", 0.5 }, -- 0.2
                                { "SurveyScanMinSpeed",     1 },   -- 0.75
                                { "SurveyScanMaxSpeed",     1 },   -- 0.75
                            }
                        },
                    }
                },
                --
                -- GCUIGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FrontendConfirmTimeMouseMultiplier", 1 },    -- 0.5
                                { "FrontendConfirmTime",                0.36 }, -- 0.7
                                { "FrontendConfirmTimeSlow",            0.36 }, -- 1.6
                                { "RefinerPadStartTime",                0.36 }, -- 1
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "DiscoveryHelperTimings" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "DiscoverPlanetMessageTime", 2 }, -- 7
                                { "DiscoverPlanetTotalTime",   5 }, -- 10
                            }
                        },
                    }
                },
            }
        }
    }
}
