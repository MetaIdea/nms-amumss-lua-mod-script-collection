NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlySpeedUp.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases speed of scanning things, interacting with objects, discovery notifications.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCSPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MiniWarpHUDArrowAttractAngle", 5 }, -- 10
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
                                { "BinocTimeBeforeScan",    0 },    -- 0.5
                                { "BinocMinScanTime",       0.01 }, -- 2.2
                                { "BinocScanTime",          0.01 }, -- 2.2
                                { "BinocCreatureScanTime",  0.01 }, -- 1.9
                                { "MissionSurveyScanSpeed", 0.5 },  -- 0.2
                                { "SurveyScanMinSpeed",     1 },    -- 0.75
                                { "SurveyScanMaxSpeed",     1 },    -- 0.75
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
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "DiscoverPlanetMessageWait", 0.5 }, -- 1
                                { "DiscoverPlanetMessageTime", 1.5 }, -- 7
                                { "DiscoverPlanetTotalTime",   5 },   -- 10
                            }
                        },
                    }
                },
            }
        }
    }
}
