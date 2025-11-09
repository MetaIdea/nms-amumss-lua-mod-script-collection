NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Aerial Scan for Starcharts",
["MOD_DESCRIPTION"] = "Removes the fly up Aerial Scan animation when using StarCharts A-D",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.16",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "R_STARCHART_A",   "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_B",   "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_C",   "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_D",   "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHRT_SETT", "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_NPC", "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_FRE", "List", "GcRewardTableItemList"},
                                {"Id", "R_CHRT_SETTLE",   "List", "GcRewardTableItemList"},
                                {"Id", "R_CHRT_BSETTLE",  "List", "GcRewardTableItemList"},
                                {"Id", "R_CHRT_TREASURE", "List", "GcRewardTableItemList"},
                                {"Id", "R_CHART_ROBOT",   "List", "GcRewardTableItemList"},
                                {"Id", "R_CHART_PORTAL",  "List", "GcRewardTableItemList"},
                                {"Id", "R_CHART_BUILDER", "List", "GcRewardTableItemList"},

                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DoAerialScan", "false"},
                            },
                        },
                    },
                },
            }
        }
    }
}