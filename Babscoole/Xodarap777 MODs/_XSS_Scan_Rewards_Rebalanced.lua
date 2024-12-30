NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_XSS_Scan_Rewards_Rebalanced.pak",
["MOD_AUTHOR"]    = "Xodarap777",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.29",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Animal", "GcDiscoveryWorth.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Record"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Uncommon", "5"},
                                {"Rare",     "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Animal", "GcDiscoveryWorth.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"OnScan"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Common",   "300"},
                                {"Uncommon", "500"},
                                {"Rare",     "800"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NPC_Freighter_Captain", "GcAlienPuzzleTableIndex.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NPC_Freighter_Captain", "Regular"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxIsUncommon", "TkCurveType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "Linear"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxIsRare", "TkCurveType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "EaseInQuad"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxIsSuperRare", "TkCurveType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "EaseInQuart"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MinIsUncommon", "TkCurveType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "EaseInExpo"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MinIsRare", "TkCurveType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "EaseOutQuad"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MinIsSuperRare", "TkCurveType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "EaseOutQuart"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOT"},
                            ["PRECEDING_KEY_WORDS"] = {"Multipliers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Multiplier", "0.6"},
                            }
                        },
                    }
                },
            }
        }
    }
}