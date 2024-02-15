NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_SquareSCSlots_OnlyS.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.50",
    ["MOD_DESCRIPTION"] = "Make the generated ships, multitools, freighters and frigates only have S class with square super charged slots. Make frigates have max stats.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "SpecialTechSlotMaxIndex",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "1"},
                                {"Y", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Poor", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Average", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Wealthy", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Pirate", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PercentChangeOfFrigateBeingPurchasable",100},			--60
                                {"PercentChanceOfFrigateAdditionalSpawnedTrait",100},	--55
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomatic","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FuelBurnRate","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",0},
                                {"Maximum",0},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FuelCapacity","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Speed","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength", "NegativeSmall"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", 0},
                                {"Exploration", 0},
                                {"Mining", 0},
                                {"Diplomacy", 0},
                                {"Support", 0},
                                {"Normandy", 0},
                                {"DeepSpace", 0},
                                {"DeepSpaceCommon", 0},
                                {"Pirate", 0},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength", "NegativeMedium"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", 0},
                                {"Exploration", 0},
                                {"Mining", 0},
                                {"Diplomacy", 0},
                                {"Support", 0},
                                {"Normandy", 0},
                                {"DeepSpace", 0},
                                {"DeepSpaceCommon", 0},
                                {"Pirate", 0},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength", "NegativeLarge"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", 0},
                                {"Exploration", 0},
                                {"Mining", 0},
                                {"Diplomacy", 0},
                                {"Support", 0},
                                {"Normandy", 0},
                                {"DeepSpace", 0},
                                {"DeepSpaceCommon", 0},
                                {"Pirate", 0},
                            },
                        },
                    },
                },
            },
        },
    },
}