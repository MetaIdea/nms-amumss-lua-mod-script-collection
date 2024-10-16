NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_BetterFishing_v512-B.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFISHINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FishingRange",  "50"},
                                {"MinWaitTime",   "15"},
                                {"MaxWaitTime",   "50"},
                                {"LineWidth",     "2.5"},
                                {"LineNibbleSag", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ChaseTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Small",      "4"},
                                {"Medium",     "5"},
                                {"Large",      "6"},
                                {"ExtraLarge", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LineColourDefault", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LineColourNibble", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.48"},
                                {"G", "0.78"},
                                {"B", "0.98"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LineColourBite", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.467"},
                                {"G", "0.812"},
                                {"B", "0.659"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LineColourChase", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.467"},
                                {"G", "0.812"},
                                {"B", "0.659"},
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LineColourLand", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LineColourFail", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.48"},
                                {"G", "0.78"},
                                {"B", "0.98"},
                                {"A", "0.8"},
                            }
                        },
                    },
                },
            },
        },
    },
}