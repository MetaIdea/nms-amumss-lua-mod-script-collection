NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoDice.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
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
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FrigateTraitStrengths", "Combat",       "StatAlteration"},
                                {"FrigateTraitStrengths", "Exploration",  "StatAlteration"},
                                {"FrigateTraitStrengths", "Mining",       "StatAlteration"},
                                {"FrigateTraitStrengths", "Diplomatic",   "StatAlteration"},
                                {"FrigateTraitStrengths", "FuelBurnRate", "StatAlteration"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NegativeLarge",   "0"},
                                {"NegativeMedium",  "0"},
                                {"NegativeSmall",   "0"},
                                {"TertiarySmall",   "3"},
                                {"TertiaryMedium",  "3"},
                                {"SecondarySmall",  "6"},
                                {"SecondaryMedium", "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateTraitStrengths", "FuelBurnRate", "StatAlteration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NegativeLarge",   "0"},
                                {"NegativeMedium",  "0"},
                                {"NegativeSmall",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateTraitStrengths", "FuelCapacity", "StatAlteration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TertiarySmall",   "6"},
                                {"TertiaryMedium",  "6"},
                                {"SecondarySmall",  "9"},
                                {"SecondaryMedium", "9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateTraitStrengths", "Speed", "StatAlteration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TertiarySmall",   "3"},
                                {"TertiaryMedium",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", "@1*F:Maximum"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenerationData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots",      "48"},
                                {"MaxSlots",      "48"},
                                {"MinTechSlots",  "48"},
                                {"MaxTechSlots",  "48"},
                                {"MinCargoSlots", "48"},
                                {"MaxCargoSlots", "48"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", "S"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "@1*F:Max"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumStatsMin", "@1*F:NumStatsMax"},
                                {"ValueMin",    "@1*F:ValueMax"},
                            }
                        },
                    }
                },
            }
        }
    }
}