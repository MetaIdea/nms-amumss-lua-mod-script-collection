NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyStarChartCost.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases exchange cost of planetary maps.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- STARCHART_A:   secure site of interest
                        -- STARCHART_B:   distress signal
                        -- STARCHART_C:   inhabited outpost
                        -- STARCHART_D:   ancient artifact site
                        -- CHART_SETTLE:  planetary settlement
                        -- NAV_DATA_DROP: Exosuit Upgrade Chart
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "STARCHART_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 3 }, -- 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "STARCHART_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 3 }, -- 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "STARCHART_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 3 }, -- 1
                            },
                        },
                    }
                },
            }
        }
    }
}
