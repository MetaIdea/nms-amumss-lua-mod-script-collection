NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "HideDockingCircles.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCSPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "DirectionDockingInRangeColour",  "Colour.xml" },
                                { "DirectionDockingOutRangeColour", "Colour.xml" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "A", "0" }, -- 0.8
                            },
                        },
                    }
                },
            }
        }
    }
}
