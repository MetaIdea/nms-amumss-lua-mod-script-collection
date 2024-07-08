NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreCaveWaterSpawns_x10.pak",
["MOD_AUTHOR"]    = "courtykat",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.97",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "500"},
                                {"Normal",    "1000"},
                                {"Dense",     "2000"},
                                {"VeryDense", "3000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "300"},
                                {"Normal",    "600"},
                                {"Dense",     "800"},
                                {"VeryDense", "1000"},
                            }
                        },
                    }
                },
            }
        },
    },
}