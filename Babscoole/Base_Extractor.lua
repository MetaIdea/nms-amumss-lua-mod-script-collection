NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Base_Extractor.pak",
["MOD_AUTHOR"]    = "cmk",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXTRACTOR_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"DependsOnHotspots", "None"},
                                {"Rate",              "200"},
                                {"Storage",           "200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_GASEXTRACTOR"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"DependsOnHotspots", "None"},
                                {"Rate",              "200"},
                                {"Storage",           "200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage", "4000000"},
                            }
                        },
                    }
                },
            }
        }
    }
}