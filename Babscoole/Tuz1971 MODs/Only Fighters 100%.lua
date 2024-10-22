NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Only Fighters 100%.pak",
["MOD_AUTHOR"]    = "Tuz1971",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
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
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                                {"IGNORE", "60"},
                                {"IGNORE", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship",   "0"},
                                {"Scientific", "0"},
                                {"Shuttle",    "0"},
                                {"Royal",      "0"},
                                {"Alien",      "10"},
                                {"Fighter",    "10000"},
                            }
                        },
                    }
                },
            }
        },
    }
}
