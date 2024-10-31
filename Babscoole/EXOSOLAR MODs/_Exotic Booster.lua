NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exotic Booster.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Green", "GcBiomeList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Green", "1000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Blue", "GcBiomeList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Blue", "1000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Red", "GcBiomeList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Red", "1000000"},
                            }
                        },
                    }
                }
            }
        }
    }
}