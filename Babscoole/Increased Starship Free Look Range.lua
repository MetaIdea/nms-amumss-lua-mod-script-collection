NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Increased Starship Free Look Range.pak",
["MOD_AUTHOR"]    = "DaLuxen",
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
                            ["VALUE_MATCH"] = "45",
                            ["VALUE_MATCH_OPTIONS"] = "=",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LookStickLimitAngle", "125"},
                            }
                        },
                    }
                },
            }
        },
    }
}
