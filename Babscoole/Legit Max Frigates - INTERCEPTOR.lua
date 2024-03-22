NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_LMF_4.23.pak",
["MOD_DESCRIPTION"] = "This mod removes the RNG for Frigate classes and stat",
["MOD_AUTHOR"]      = "dvkkha",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.23",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                    {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentChangeOfFrigateBeingPurchasable",       "100"},
                                {"MinFrigateStatValue",                          "50"},
                                {"PercentChanceOfFrigateAdditionalSpawnedTrait", "100"},
                                {"LowDamageNumberOfExpeditions",                 "3"},
                                {"RampDamageNumberOfExpeditions",                "10"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 8},
                                {"Maximum", 8},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 8},
                                {"Maximum", 8},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 8},
                                {"Maximum", 8},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 8},
                                {"Maximum", 8},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2},
                                {"Maximum", 2},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Maximum", 8},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "FUEL_BAD_1"},
                                {"ID", "FUEL_BAD_2"},
                                {"ID", "FUEL_BAD_3"},
                                {"ID", "FUEL_BAD_4"},
                                {"ID", "FUEL_BAD_5"},
                                {"ID", "COMBAT_BAD_1"},
                                {"ID", "COMBAT_BAD_2"},
                                {"ID", "COMBAT_BAD_3"},
                                {"ID", "COMBAT_BAD_4"},
                                {"ID", "COMBAT_BAD_5"},
                                {"ID", "MINING_BAD_1"},
                                {"ID", "MINING_BAD_2"},
                                {"ID", "MINING_BAD_3"},
                                {"ID", "MINING_BAD_4"},
                                {"ID", "MINING_BAD_5"},
                                {"ID", "TRADING_BAD_1"},
                                {"ID", "TRADING_BAD_2"},
                                {"ID", "TRADING_BAD_3"},
                                {"ID", "TRADING_BAD_4"},
                                {"ID", "TRADING_BAD_5"},
                                {"ID", "EXPLORE_BAD_1"},
                                {"ID", "EXPLORE_BAD_2"},
                                {"ID", "EXPLORE_BAD_3"},
                                {"ID", "EXPLORE_BAD_4"},
                                {"ID", "EXPLORE_BAD_5"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Combat",      "0"},
                                {"Exploration", "0"},
                                {"Mining",      "0"},
                                {"Diplomacy",   "0"},
                                {"Support",     "0"},
                                {"Normandy",    "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}