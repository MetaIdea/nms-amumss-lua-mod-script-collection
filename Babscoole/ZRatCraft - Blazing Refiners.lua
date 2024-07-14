NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ZRatCraft - Blazing Refiners.pak",
["MOD_AUTHOR"]    = "RatanKabidge",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.16",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcRefinerRecipe.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TimeToMake", "1"}
                            }
                        },
                    }
                },
            }
        }
    }
}