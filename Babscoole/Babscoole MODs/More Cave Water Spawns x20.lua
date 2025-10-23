MULTIPLIER = 20

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "More Cave Water Spawns x20",
["MOD_AUTHOR"]    = "courtykat and Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "@*"..MULTIPLIER},
                                {"Normal",    "@*"..MULTIPLIER},
                                {"Dense",     "@*"..MULTIPLIER},
                                {"VeryDense", "@*"..MULTIPLIER},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "@*"..MULTIPLIER},
                                {"Normal",    "@*"..MULTIPLIER},
                                {"Dense",     "@*"..MULTIPLIER},
                                {"VeryDense", "@*"..MULTIPLIER},
                            }
                        },
                    }
                },
            }
        },
    },
}