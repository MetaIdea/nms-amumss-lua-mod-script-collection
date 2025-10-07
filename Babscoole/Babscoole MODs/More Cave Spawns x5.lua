MULTIPLIER = 5

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "More Cave Spawns x5",
["MOD_AUTHOR"]    = "courtykat and Babscoole",
["NMS_VERSION"]   = "6.00",
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
                    }
                },
            }
        },
    },
}