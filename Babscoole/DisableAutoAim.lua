NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "DisableAutoAim.pak",
["MOD_AUTHOR"]    = "zerosupremo",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.36.2",
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
                                {"AutoAim", "False"},
                            }
                        },
                    }
                },
            }
        },
    }
}
