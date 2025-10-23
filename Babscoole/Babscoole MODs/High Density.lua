NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "High Density",
["MOD_AUTHOR"]    = "courtykat and Babscoole",
["LUA_AUTHOR"]    = "Babscoole",
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
                            ["PRECEDING_KEY_WORDS"] = {"DensityModifiers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    "4.000000"}, --Default 0.500000
                                {"Normal",    "4.000000"}, --Default 1.000000
                                {"Dense",     "4.000000"}, --Default 2.000000
                                {"VeryDense", "4.000000"}, --Default 4.000000
                            }
                        },
                    }
                },
            }
        },
    }
}