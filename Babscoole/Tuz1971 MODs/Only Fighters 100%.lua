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
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
                            ["LINE_OFFSET"] = "+2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
                            ["LINE_OFFSET"] = "+3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
                            ["LINE_OFFSET"] = "+4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "IGNORE"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "IGNORE"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Fighter", "10000"},
                                {"Alien",   "10"},
                            }
                        },
                    }
                },
            }
        },
    }
}
