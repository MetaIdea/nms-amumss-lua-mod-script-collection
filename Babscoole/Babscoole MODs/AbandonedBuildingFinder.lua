NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "AbandonedBuildingFinder",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Planetary Chart B (Emergency Cartographic Data) will only show abandoned buildings",
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList", "List", "GcRewardTableItem"},
                            -- ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentageChance", "100"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "List", "GcRewardTableItemList", "List", "GcRewardTableItem"},
                            -- ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = {1,2,3,4},
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