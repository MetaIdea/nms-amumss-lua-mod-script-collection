NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Fast_Fish_Release.pak",
["MOD_AUTHOR"]    = "br4iny",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.11",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "F_JELLYCHILD"},
                                {"ID", "FISH_COMMON"},
                                {"ID", "FISH_RARE"},
                                {"ID", "FISH_EPIC"},
                                {"ID", "FISH_LEGEND"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloseInventoryWhenUsed", "False"}
                            }
                        },
                    }
                },
            }
        }
    }
}