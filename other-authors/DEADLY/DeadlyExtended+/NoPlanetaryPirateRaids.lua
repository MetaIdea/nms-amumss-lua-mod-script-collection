NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "NoPlanetaryPirateRaids.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Disables Planetary Pirate Raids on specific types of buildings.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateAttackableBuildingClasses" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Shelter",       "False" },
                                { "Shop",          "False" },
                                { "Outpost",       "False" },
                                { "RadioTower",    "False" },
                                { "Observatory",   "False" },
                                { "Depot",         "False" },
                                { "Factory",       "False" },
                                { "Harvester",     "False" },
                                { "LargeBuilding", "False" },
                                -- { "Settlement_Hub",             "False" },
                                -- { "Settlement_LandingZone",     "False" },
                                -- { "Settlement_Bar",             "False" },
                                -- { "Settlement_Tower",           "False" },
                                -- { "Settlement_Market",          "False" },
                                -- { "Settlement_Small",           "False" },
                                -- { "Settlement_SmallIndustrial", "False" },
                                -- { "Settlement_Medium",          "False" },
                                -- { "Settlement_Large",           "False" },
                                -- { "Settlement_Monument",        "False" },
                                -- { "Settlement_SheriffsOffice",  "False" },
                                -- { "Settlement_Double",          "False" },
                                -- { "Settlement_Farm",            "False" },
                                -- { "Settlement_Factory",         "False" },
                            }
                        }
                    }
                }
            }
        }
    }
}
