NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MorePiratesCivilFleet.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases amount of small pirate ships attacking civil fleet.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "BattleInitialPirateSpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 4 }, -- 2
                                { "y", 4 }, -- 2
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "BattleInitialPirateSpawns", "Count", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 4 }, -- 2
                                { "y", 4 }, -- 2
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "BattleInitialPirateSpawns", "Count", "Count", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 4 }, -- 1
                                { "y", 4 }, -- 1
                            },
                        },
                    }
                },
            }
        }
    }
}
