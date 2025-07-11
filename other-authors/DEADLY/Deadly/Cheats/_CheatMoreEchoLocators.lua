NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MoreEchoLocators.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases drop chance of Echo Locator",
    ["NMS_VERSION"]     = "5.63",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- Inverted Mirror
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DE_MINIHIVE", "ID", "DRONE_SALVAGE" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 50.0 }, -- 80.0
                            }
                        },
                        { -- Echo Locator
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DE_MINIHIVE", "ID", "CHART_ROBOT" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 50.0 }, -- 20.0
                            }
                        },
                    }
                },
            },
        },
    }
}
