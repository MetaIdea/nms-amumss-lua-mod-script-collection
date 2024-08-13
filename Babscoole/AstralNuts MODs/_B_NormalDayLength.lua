NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_B_NormalDayLength.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- {"DayLength",           "5400"},
                                {"StormTransitionTime", "42"},
                            }
                        },
                    }
                },
            }
        }
    }
}