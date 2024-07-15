NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Mercenary-QuicksilverNexus.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATELOOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RewardChoice", "GiveAll"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY1"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "20000"},
                                {"AmountMax", "20000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY1", "Currency", "GcCurrency.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Currency", "Nanites"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY2"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "20000000"},
                                {"AmountMax", "20000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY3"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "30000000"},
                                {"AmountMax", "30000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DE_PET_ROCK", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DE_STORMCRYSTAL", "ID", "STORM_CRYSTAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_WAYPOINT", "ID", "NAV_DATA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_WAYPOINT"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "15000"},
                                {"AmountMax", "15000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcMultiSpecificItemEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Amount", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcMultiSpecificItemEntry.xml", "GcMultiSpecificItemEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Amount", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE_ONLY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
                                {"Id", "R_MB_LOW",       "ID", "BP_SALVAGE"},
                                {"Id", "R_MB_MED",       "ID", "BP_SALVAGE"},
                                {"Id", "R_MB_HIGH",      "ID", "BP_SALVAGE"},
                                {"Id", "R_MB_MEGA",      "ID", "BP_SALVAGE"},
                                {"Id", "R_NEXUS_MED",    "ID", "BP_SALVAGE"},
                                {"Id", "R_NEXUS_MEGA",   "ID", "BP_SALVAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED_C"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "0.33333334"},
                                {"AmountMin", "5000"},
                                {"AmountMax", "5000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["SUB_LEVEL"] = 8,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Currency", "Specials"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5000"},
                                {"AmountMax", "5000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "Currency"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Currency", "Specials"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "Currency"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Currency", "Specials"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA_C"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "Currency"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Currency", "Specials"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_QS"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5000"},
                                {"AmountMax", "5000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_QS_PQ"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5000"},
                                {"AmountMax", "5000"},
                            }
                        },
                    }
                },
            }
        }
    }
}