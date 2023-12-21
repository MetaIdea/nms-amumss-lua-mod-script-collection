PLAYER_WEAPON_RANGE_MULTI = 2

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeathlyPlayerWeaponRange.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Adjusts player starship weapon range.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- boost player's weapon range
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "ID", "SHIPROCKETS",   "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPGUN1",      "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPSHOTGUN",   "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPMINIGUN",   "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPPLASMA",    "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPGUN_ALIEN", "StatsType", "Ship_Weapons_Guns_Range" },
                                { "ID", "SHIPGUN_ROBO",  "StatsType", "Ship_Weapons_Guns_Range" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Bonus", PLAYER_WEAPON_RANGE_MULTI },
                            }
                        },
                    }
                },
                --
                -- GCPLAYERGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- boost player's laser range
                        {
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "LaserShipRange", PLAYER_WEAPON_RANGE_MULTI },
                            }
                        },
                    }
                },
            }
        }
    }
}
