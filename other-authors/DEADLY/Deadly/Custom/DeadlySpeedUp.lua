NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlySpeedUp.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases speed of scanning things, interacting with objects, discovery notifications.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "5.10",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCSPACESHIPGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MiniWarpHUDArrowAttractAngle", 4.5 }, -- 10
                            }
                        },
                    }
                },
                { -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "BinocTimeBeforeScan",                                0 },    -- 0.5
                                { "BinocMinScanTime",                                   0.01 }, -- 2.2
                                { "BinocScanTime",                                      0.01 }, -- 2.2
                                { "BinocCreatureScanTime",                              0.01 }, -- 1.9
                                { "MissionSurveyScanSpeed",                             0.5 },  -- 0.2
                                { "SurveyScanMinSpeed",                                 1.0 },  -- 0.75
                                { "SurveyScanMaxSpeed",                                 1.0 },  -- 0.75
                                --
                                { "InteractionMinTimeBeforeHighlightedOptionSelection", 0.3 },  -- 0.66
                                -- { "InteractionMinTimeBetweenStickOptionHighlights",     0.21 },  -- 0.21
                                -- { "InteractionStickOptionStrength",                     0.45 }, -- 0.45
                                -- { "InteractionMessageModuleDisplayTime",                4 },    -- 4
                                -- { "InteractionAttractTime",                             3 },   -- 3
                                -- { "InteractionDescriptionTextTime",                     4 },   -- 4
                                { "InteractionMinTimeForResponseText",                  0.3 }, -- 0.5
                            }
                        },
                    }
                },
                { -- GCUIGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FrontendConfirmTimeMouseMultiplier",   1 },   -- 0.5
                                { "FrontendConfirmTime",                  0.3 }, -- 0.7
                                { "FrontendConfirmTimeFast",              0.3 }, -- 0.35
                                { "FrontendConfirmTimeSlow",              0.3 }, -- 1.6
                                { "FrontendDeactivateTime",               0.3 }, -- 0.4
                                { "FrontendActivateTime",                 0.3 }, -- 0.4
                                { "RefinerPadStartTime",                  0.3 }, -- 1
                                -- speed ups initial interaction
                                { "FrontendWaitResponse",                 0.2 }, -- 0.8
                                { "FrontendWaitInitial",                  0.2 }, -- 1.5
                                { "FrontendWaitInitialTerminal",          0.2 }, -- 0.5
                                -- { "FrontendWaitFadeTextOut",              0.1 }, -- 0.5
                                -- { "FrontendWaitFadeTextFrameOut",         0.1 }, -- 0.2
                                -- { "FrontendWaitFadeProgressiveDialogOut", 0.1 }, -- 0.2
                                { "FrontendWaitResponseOffset",           0.2 }, -- 0.2
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "DiscoveryHelperTimings" },
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "DiscoverPlanetMessageTime", 2 }, -- 7
                                { "DiscoverPlanetTotalTime",   5 }, -- 10
                            }
                        },
                    }
                },
                { -- GCGALAXYGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                -- this speeds up navigation with in a chosen path
                                { "PathUISelectionMultiplierPad", 2.4 }, -- 0.8
                                -- i don't play with mouse or vr, so no changes
                                --{ "PathUISelectionMultiplierMouse",   1.2 }, -- 0.4
                                --{ "PathUISelectionMultiplierPushing", 0.3 }, -- 0.1
                                -- ???
                                --{ "PathUIConfirmSelectionMultiplier", 4 }, -- 2
                                -- transition time between world to map and vice versa
                                { "TransitionTime",               1.1 }, -- 2.05
                            }
                        },
                    }
                },
            }
        }
    }
}
