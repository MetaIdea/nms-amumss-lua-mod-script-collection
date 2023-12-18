NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyRewardsAsteroid.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Gain more Tritium from Tritium Hypercluster.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Tritium gained from Tritium Hypercluster
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DE_GEODE_SPACE", "ID", "ROCKETSUB" },
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 50/50
                                { "AmountMax", 3 }, -- 90/160
                            }
                        },
                    }
                },
            }
        }
    }
}
