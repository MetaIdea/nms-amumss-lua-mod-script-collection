-- Configuration constants
local NMS_VERSION = "6.45.1"
local MOD_VERSION = "0"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Camera Speed and Distance %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = {
                        "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PhotoModeMoveSpeed", "25" }, -- 11.000000
                                { "BuildingModeMaxDistance", "9999999" } -- 60.000000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ID", "BEACON" },
                            ["PRECEDING_KEY_WORDS"] = { "CameraAerialViewData" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Time", "0.500000" }, -- 5.000000
                                { "AerialViewMode", "FaceOut" }, -- FaceDownThenOut
                                { "TimeBack", "0.500000" }, -- 4.000000
                                { "StartTime", "0.100000" }, -- 1.000000
                                { "PauseTime", "0.000000" }, -- 2.500000
                                { "Distance", "0.100000" } -- 2000.000000
                            }
                        },
                    }
                },
            }
        },
    }
}