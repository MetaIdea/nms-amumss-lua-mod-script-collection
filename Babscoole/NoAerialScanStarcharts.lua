NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoAerialScanStarcharts.pak",
["MOD_DESCRIPTION"] = "Removes the fly up Aerial Scan animation when using StarCharts A-D",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.47",
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
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Id", "R_STARCHART_A", "List", "GcRewardTableItemList.xml"},
                                {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList.xml"},
                                {"Id", "R_STARCHART_C", "List", "GcRewardTableItemList.xml"},
                                {"Id", "R_STARCHART_D", "List", "GcRewardTableItemList.xml"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DoAerialScan", "False"},
                            },
                        },
                    },
                },
            }
        }
    }
}