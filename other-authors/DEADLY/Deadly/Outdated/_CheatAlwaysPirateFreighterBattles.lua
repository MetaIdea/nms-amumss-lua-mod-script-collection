NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatAlwaysPirateFreighterBattles.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ChanceOfPirateFreighterBattleOnWarpToSystem" },
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_MATCH"]         = "0",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 1 }, -- 0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ChanceOfPirateFreighterBattleOnWarpToSystem" },
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_MATCH"]         = "0",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 1 }, -- 0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ChanceOfPirateFreighterBattleOnWarpToSystem" },
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_MATCH"]         = "0.1",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 1 }, -- 0.1
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ChanceOfPirateFreighterBattleOnWarpToSystem" },
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_MATCH"]         = "0.2",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 1 }, -- 0.2
                            }
                        },
                    }
                }
            }
        }
    }
}
