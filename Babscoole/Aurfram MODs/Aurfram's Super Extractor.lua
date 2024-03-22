MULTI = 3

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Aurfram's Super Extractor "..MULTI.."x.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "U_EXTRACTOR_S"},
                                {"ID", "U_GASEXTRACTOR"},
                            },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate",    MULTI},
                                {"Storage", MULTI},
                            }
                        },
                    }
                },
            }
        }
    }
}