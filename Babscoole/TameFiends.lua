NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "TameFiends.pak",
["MOD_AUTHOR"]    = "TheNexGDD",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FiendsCanAttack", "False"},
                            }
                        },
                    }
                },
            }
        },
    }
}