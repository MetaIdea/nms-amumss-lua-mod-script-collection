NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_LMF_Always-SClass-MaxStats.pak",
["MOD_DESCRIPTION"] = "This mod makes Frigates spawn with best initial stats and always as S class",
["MOD_AUTHOR"]      = "ll62518475TheSecond & NooBzPoWaH",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.+",
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
                                {"PercentChangeOfFrigateBeingPurchasable",         "100"}, -- Original 60
                                --{"MinFrigateStatValue",                          "50"},  -- Original -10
                                {"PercentChanceOfFrigateAdditionalSpawnedTrait",   "600"}, -- Original 55
                                {"LowDamageNumberOfExpeditions",                   "1"},   -- Original 3
                                {"RampDamageNumberOfExpeditions",                  "5"},   -- Original 10
                                {"TimeTakenForExpeditionEvent_Easy",               "180"}, -- Original 900
                                {"TimeTakenForExpeditionEvent",                    "900"}, -- Original 5400
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 2
                                {"Maximum", 2}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 1
                                {"Maximum", 5}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "ExtraLoot"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                                {"Maximum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normandy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 8
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normandy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "ExtraLoot"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                                {"Maximum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normandy", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpace", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 8
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                                {"Maximum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcFrigateStats.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Stats", "Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                                {"Maximum", 4}, -- Original 0
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
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Combat",          "0"},
                                {"Exploration",     "0"},
                                {"Mining",          "0"},
                                {"Diplomacy",       "0"},
                                {"Support",         "0"},
                                {"Normandy",        "0"},
                                {"DeepSpace",       "0"},
                                {"DeepSpaceCommon", "0"},
                                {"Pirate",          "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}