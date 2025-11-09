NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cheaper Derelict Maps",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Changes the unit prices for each derelict map at scrap dealer shops",
["NMS_VERSION"]     = "6.16",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        { -- adds new derelict map prices
                            ["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
                            ["PRECEDING_KEY_WORDS"] = {"Costs"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Costs", "2500000"},
                                {"Costs", "5000000"},
                                {"Costs", "7500000"},
                                {"Costs", "10000000"},
                            }
                        },
                    }
                },
            }
        },
    }
}