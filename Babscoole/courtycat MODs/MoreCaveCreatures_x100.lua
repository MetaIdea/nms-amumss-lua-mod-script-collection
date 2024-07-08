NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreCaveCreatures_x100.pak",
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
                                {"Sparse",    "5000"},
                                {"Normal",    "10000"},
                                {"Dense",     "20000"},
                                {"VeryDense", "30000"},
                            }
                        },
                    }
                },
            }
        },
    },
}