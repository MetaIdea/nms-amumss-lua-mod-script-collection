NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "AIPriceRestore.pak",
["MOD_AUTHOR"]    = "theQuestorian",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.36.2",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UI_EX_BLUE_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseValue", "949"},
                            }
                        },
                    }
                },
            }
        },
    }
}
