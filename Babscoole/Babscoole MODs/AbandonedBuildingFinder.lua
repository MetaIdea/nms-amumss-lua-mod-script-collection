NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "AbandonedBuildingFinder.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.22",
["MOD_DESCRIPTION"] = "Planetary Chart B (Emergency Cartographic Data) will only show abandoned buildings",
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
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["SECTION_ACTIVE"] = {2,3,4,5},
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