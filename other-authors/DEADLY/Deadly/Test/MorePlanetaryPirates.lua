NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "MorePlanetaryPirates.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCPLAYERGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PirateRaidMinTime", 600 }, -- 90
                                { "PirateRaidMaxTime", 900 }, -- 180
                            }
                        },
                    }
                },
                --
                -- GCAISPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ???
                                -- { "PlanetaryPirateRaidFocusBuildingsTime",   10 }, -- 40
                                { "PlanetaryPirateRaidTradersEngageTime",    300 }, -- 30
                                { "PlanetaryPirateRaidMaxTradersJoinCombat", 0 },  -- 4
                            }
                        },
                    }
                },
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "60" },  -- 800
                                { "y", "120" }, -- 1000
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "120" }, -- 1000
                                { "y", "180" }, -- 1400
                            }
                        },
                    }
                },
            }
        }
    }
}
