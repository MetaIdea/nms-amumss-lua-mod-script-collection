NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MorePirates.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Increases amount of pirates of regular space and planetary spawns.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateSpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 },
                                { "y", 2 },
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateSpawns", "Count", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 },
                                { "y", 3 },
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetaryPirateFlybySpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 3 }, -- 1
                                { "y", 6 }, -- 3
                            },
                        },
                    }
                },
            }
        }
    }
}
