NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_PM_TimeGunk.pak",
["MOD_AUTHOR"]    = "Phantom",
["LUA_AUTHOR"]    = "Phantom",
["NMS_VERSION"]   = "7.3",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "REFINERECIPE_52"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TimeToMake", "450.000000"} --150.000000
                            }
                        },							
                    }						
                },
            }
        }
    }
}