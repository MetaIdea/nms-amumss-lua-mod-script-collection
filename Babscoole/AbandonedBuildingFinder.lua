NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "AbandonedBuildingFinder.pak",
["MOD_DESCRIPTION"] = "Planetary Chart B (Emergency Cartographic Data) will only show abandoned buildings",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "100"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "0"},
                            },
                        },
                    },
                },
            }
        }
    }
}