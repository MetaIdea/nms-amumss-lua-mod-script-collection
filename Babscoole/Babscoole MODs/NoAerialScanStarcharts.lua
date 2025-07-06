NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoAerialScanStarcharts",
["MOD_DESCRIPTION"] = "Removes the fly up Aerial Scan animation when using StarCharts A-D",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
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
                                {"Id", "R_STARCHART_A", "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_C", "List", "GcRewardTableItemList"},
                                {"Id", "R_STARCHART_D", "List", "GcRewardTableItemList"},
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