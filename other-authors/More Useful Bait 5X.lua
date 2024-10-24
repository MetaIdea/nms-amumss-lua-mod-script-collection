Multiple = 5;

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "More Useful Bait " .. Multiple .. "X.pak",
    ["MOD_AUTHOR"]      = "KuroPeach",
    ["LUA_AUTHOR"]      = "KuroPeach",
    ["NMS_VERSION"]     = "5.20",
    ["MOD_DESCRIPTION"] = "加强各种鱼饵的效果",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BAITDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Small",      1 },
                                { "Medium",     2 },
                                { "Large",      3 },
                                { "ExtraLarge", 2 },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ProductID", "FISHBAIT_1" },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Rare", Multiple },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ProductID", "FISHBAIT_2" },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Epic", Multiple },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ProductID", "FISHBAIT_3" },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Legendary", Multiple },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ProductID", "FISHBAIT_DAY" },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "DayTimeBoost", Multiple },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ProductID", "FISHBAIT_NIGHT" },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "NightTimeBoost", Multiple },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "ProductID", "FISHBAIT_STORM" },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "StormBoost", Multiple },
                            }
                        },
                    }
                }
            }
        }
    }
}
