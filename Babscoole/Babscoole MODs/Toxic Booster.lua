NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Toxic Booster",
["MOD_AUTHOR"]    = "Exosolar & Babscoole",
["NMS_VERSION"]   = "6.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Toxic", "1000001"},
                            }
                        }
                    }
                }
            }
        }
    }
}