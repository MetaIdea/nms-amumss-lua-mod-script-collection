NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatBoltcaster.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.20",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "BOLT", "StatsType", "Weapon_Projectile_Damage" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Bonus", 10000 }, -- 180
                            }
                        },
                    }
                },
            }
        },
    }
}
