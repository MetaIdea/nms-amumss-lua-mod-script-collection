NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "HideDockingCircles.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"]  = {
                                { "DirectionDockingInRangeColour" },
                                { "DirectionDockingOutRangeColour" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "A", 0.0 }, -- 0.8
                            },
                        },
                    }
                },
            }
        }
    }
}
