NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "CrashedShipFinder.pak",
["MOD_DESCRIPTION"] = "Planetary Chart B (Emergency Cartographic Data) increased chances of finding Crashed Ship",
["MOD_AUTHOR"]      = "Fartbottum10",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.91",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {  --ABANDONED
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "15"},
                            },
                        },
                        {  --DISTRESS
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "50"},
                            },
                        },
                        {  --DISTRESS_NPC
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "10"},
                            },
                        },
                        {  --CRASHED_FREIGHTER
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "20"},
                            },
                        },
                        {  --OBSERVATORY
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"List", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml", "GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "5"},
                            },
                        },
                    },
                },
            }
        }
    }
}