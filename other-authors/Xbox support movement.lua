NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Xbox realistic movement.pak",
["MOD_AUTHOR"]    = "isturnburg",
["LUA_AUTHOR"]    = "isturnburg",
["NMS_VERSION"]   = "4.45",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed",           "4.5"},
                                {"GroundRunSpeed",            "7.7"},
                            }
                        },
                    }
                },
            }
        },
    }
}