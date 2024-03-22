NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "All starship.pak",
["MOD_AUTHOR"]    = "Tuz1971",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "50"},
                                {"IGNORE", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship",   "100"},
                                {"Fighter",    "100"},
                                {"Scientific", "100"},
                                {"Shuttle",    "100"},
                                {"Royal",      "100"},
                                {"Alien",      "100"},
                                {"Sail",       "100"},
                                {"Robot",      "100"},
                            }
                        },
                    }
                },
            }
        },
    }
}
