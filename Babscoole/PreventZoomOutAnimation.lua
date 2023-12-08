NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "PreventZoomOutAnimation.pak",
["MOD_AUTHOR"]    = "Quesmues",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCameraAerialViewDataTableEntry.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time",                      "0"},
                                {"TimeBack",                  "0"},
                                {"StartTime",                 "0"},
                                {"PauseTime",                 "0"},
                                {"LookTime",                  "0"},
                                {"Distance",                  "0"},
                                {"TargetOffsetAngle",         "0"},
                                {"FocusTargetOffsetDistance", "0"},
                                {"SpeedLineDist",             "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
