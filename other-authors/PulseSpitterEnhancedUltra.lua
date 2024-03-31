NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_PulseSpitterEnhanced_Ultra.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "4.60",
    ["MOD_DESCRIPTION"] = "Significantly increases the power of pulse spitter.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                -- SMG Projcetile speed
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SMG"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DefaultSpeed", "240"}
                            }
                        }
                    }
                },
                -- SMG Damage
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SMG","StatsType","Weapon_Projectile_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus","2500"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SMG","StatsType","Weapon_Projectile_ClipSize"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus","960"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SMG","StatsType","Weapon_Projectile_Rate"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus","16"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SMG","StatsType","Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus","120"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SMG","StatsType","Weapon_Projectile_MaximumCharge"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus","1200"}
                            }
                        }
                    }
                }
            }
        }
    }
}