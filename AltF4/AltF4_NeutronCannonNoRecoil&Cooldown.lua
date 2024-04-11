NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_NeutronCannonNoRecoil&Cooldown.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.64",
    ["MOD_DESCRIPTION"] = "Neutron Cannon no recoil and cooldown.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- CANNON (Neutron Cannon)
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_Projectile_Range"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "1000"},         -- 800
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "0"},            -- 1600
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "2.5"},          -- 2.5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_ChargedProjectile_ChargeTime"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "0.1"},          -- 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_ChargedProjectile_ExtraSpeed"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "180"},          -- 180
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_Grenade_Radius"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "2"},            -- 2
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","CANNON","StatsType","Weapon_Projectile_BurstCooldown"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus", "0"},            -- 0.5
                            },
                        },
                    },
                },
            },
        },
    }
}