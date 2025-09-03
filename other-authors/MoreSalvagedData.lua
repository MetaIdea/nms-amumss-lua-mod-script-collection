NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MoreSalvagedData.pak",
    ["MOD_AUTHOR"]      = "MMM0513",
    ["NMS_VERSION"]     = "6.0",
    ["MOD_DESCRIPTION"] = "Gives you more Salvaged Data per Burried Technology Module",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            -- Looks in the SpecialRewardTable entry for BP_SALVAGE
                            ["SPECIAL_KEY_WORDS"]  = {"Id", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AmountMin", "5"},
                                {"AmountMax", "50"}
                            },
                            ["REPLACE_TYPE"] = "ALL"
                        }
                    }
                }
            }
        }
    }
}