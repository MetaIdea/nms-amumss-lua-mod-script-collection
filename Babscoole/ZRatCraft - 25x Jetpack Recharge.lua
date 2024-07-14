MULTIPLIER = 5

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ZRatCraft - 25x Jetpack Recharge.pak",
["MOD_AUTHOR"]    = "RatanKabidge",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"]  = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JetpackUnderwaterFillRate", MULTIPLIER},
                                {"JetpackFillRate",           MULTIPLIER},
                            }
                        },
                    }
                },
            }
        }
    }
}