NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_NMSMorePower.1.0.pak",
["MOD_AUTHOR"]    = "ZakTheEvil",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
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
                                {"Rate", "200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_BIOGENERATOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DependentRate", "200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_BATTERY_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", "200000"},
                            }
                        },
                    }
                },
            }
        },
    }
}