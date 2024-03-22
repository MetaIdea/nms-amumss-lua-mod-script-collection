NMS_VERSION = "4.45"
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_LMSaMT_"..NMS_VERSION..".pak",
["MOD_DESCRIPTION"] = "Removes the RNG for ship, freighter, multitool and staff classes, slots and stats",
["MOD_AUTHOR"]      = "dvkkha",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = NMS_VERSION,
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "GcInventoryTableEntry.xml",
                            ["MATH_OPERATION"] = "*F:MaxSize",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSize", "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "GenerationDataPerSizeType",
                            ["MATH_OPERATION"] = "*F:MaxSlots",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "GenerationDataPerSizeType",
                            ["MATH_OPERATION"] = "*F:MaxTechSlots",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinTechSlots", "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Poor"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "100"},
                                {"S", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Average"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Wealthy"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Pirate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"A", "GcInventoryGenerationBaseStatClassData.xml"},
                                {"S", "GcInventoryGenerationBaseStatClassData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = "GcInventoryGenerationBaseStatDataEntry.xml",
                            ["MATH_OPERATION"] = "*F:Max",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "5"},
                            }
                        },
                    }
                }
            }
        }
    }
}