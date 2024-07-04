NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cheaper Squadron Slots.pak",
["MOD_AUTHOR"]      = "MiJwA2012",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "Cuts squadron slots costs in half",
["NMS_VERSION"]     = "4.70",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "C_PILOT_SLOT"},
                                {"Id", "C_PILOT_UPGRADE"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Costs"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "@/2"},
                            }
                        },
                    }
                },
            }
        },
    }
}