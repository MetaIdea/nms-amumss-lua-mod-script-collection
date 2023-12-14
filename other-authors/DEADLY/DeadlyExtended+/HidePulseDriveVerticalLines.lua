NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "HidePulseDriveVerticalLines.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes pulse drive vertical lines",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MiniWarpLinesNum", "0" }, -- 4
                            }
                        },
                    }
                },
            }
        }
    }
}
