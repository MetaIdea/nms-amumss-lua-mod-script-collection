NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Vandermoore_Remove_Trap_Limit.pak",
["MOD_AUTHOR"]    = "Vandermoore",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.11",
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
                                {"ID", "BUILDBEACON"},
                                {"ID", "MESSAGE"},
                                {"ID", "BUILDGASHARVEST"},
                                {"ID", "BUILDSEAHARVEST"},
                                {"ID", "SUMMON_GARAGE"},
                                {"ID", "GARAGE_B"},
                                {"ID", "GARAGE_S"},
                                {"ID", "GARAGE_M"},
                                {"ID", "GARAGE_L"},
                                {"ID", "GARAGE_MECH"},
                                {"ID", "GARAGE_SUB"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetLimit", "0"}
                            }
                        },
                    }
                },
            }
        }
    }
}