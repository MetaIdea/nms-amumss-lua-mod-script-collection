NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_electricity10x.pak",
["MOD_AUTHOR"]    = "zernot1984",
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
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DependsOnEnvironment", "None"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_BIOGENERATOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", "1800000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_BATTERY_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", "450000"}
                            }
                        },
                    }
                },
            }
        }
    }
}