SPAWNCHANCE = "100"
WARPS = "0"
HOURS = "0"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "_MoreFreighterBattles.pak",
    ["MOD_AUTHOR"] = "Ray Khouri, mrgamemafia, and Bladehawke",
    ["NMS_VERSION"] = "3.51+",
    ["UPDATE_LINK"] = "https://pastebin.com/raw/QWyDvfJn",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"FreighterSpawnRate", SPAWNCHANCE}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"WarpsBetweenBattles", WARPS},
                                {"HoursBetweenBattles", HOURS}
                            }
                        }
                    }
                }
            }
        }
    }
}