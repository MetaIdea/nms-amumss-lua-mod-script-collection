NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "OftenPlanetaryPirates.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "270" }, -- 800
                                { "y", "330" }, -- 1000
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "330" }, -- 1000
                                { "y", "390" }, -- 1400
                            }
                        },
                    }
                },
            }
        }
    }
}
