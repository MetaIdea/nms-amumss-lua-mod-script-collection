NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "AddOn_FewerFauna_10%.pak",
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
                            ["SPECIAL_KEY_WORDS"] = {"EmptySystemSpecific", "GcCreatureGenerationOptionalWeightedList.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Probability", "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "2.5"},
                                {"Normal",    "5"},
                                {"Dense",     "10"},
                                {"VeryDense", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterGroupsGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "3"},
                                {"Normal",    "6"},
                                {"Dense",     "8"},
                                {"VeryDense", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AirGroupsGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "1"},
                                {"Normal",    "2"},
                                {"Dense",     "3"},
                                {"VeryDense", "4"},
                            }
                        },
                    }
                },
            }
        },
    },
}