NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "noflashbino.pak",
["MOD_AUTHOR"]    = "Diamanda",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.21",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BinocularFlashTime",     "0"},
                                {"BinocularFlashStrength", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
