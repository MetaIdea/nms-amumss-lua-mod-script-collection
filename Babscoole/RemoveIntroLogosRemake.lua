NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "RemoveIntroLogosRemake.pak",
["MOD_AUTHOR"]    = "InfiniteSource",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.65",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Textures"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", ""}
                            }
                        },
                    }
                },
            }
        }
    }
}