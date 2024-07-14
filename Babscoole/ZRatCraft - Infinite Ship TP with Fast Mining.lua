NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ZRatCraft - Infinite Ship TP with Fast Mining.pak",
["MOD_AUTHOR"]    = "RatanKabidge",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT", "StatsType", "Ship_Teleport"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "500000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "T_BOBBLE_APOLLO"},
                                {"ID", "T_BOBBLE_ART"},
                                {"ID", "T_BOBBLE_ATLAS"},
                                {"ID", "T_BOBBLE_NADA"},
                                {"ID", "T_BOBBLE_NULL"},
                                {"ID", "T_BOBBLE_POLO"},
                                {"ID", "T_SHIP_RAINBOW"},
                                {"ID", "T_SHIP_DARK"},
                                {"ID", "T_SHIP_RED"},
                                {"ID", "T_SHIP_GREEN"},
                                {"ID", "T_SHIP_GOLD"},
                                {"ID", "T_SHIP_PIRATE"},
                                {"ID", "T_SHIP_ROGUE"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "LASER",       "StatsType", "Weapon_Laser_Mining_Speed"},
                                {"ID", "LASER",       "StatsType", "Weapon_Laser_HeatTime"},
                                {"ID", "LASER",       "StatsType", "Weapon_Laser_Damage"},
                                {"ID", "LASER",       "StatsType", "Weapon_Laser_ReloadTime"},
                                {"ID", "LASER",       "StatsType", "Weapon_Laser_Drain"},
                                {"ID", "LASER",       "StatsType", "Weapon_Laser_MiningBonus"},
                                {"ID", "STRONGLASER", "StatsType", "Weapon_Laser_StrongLaser"},
                                {"ID", "STRONGLASER", "StatsType", "Weapon_Laser_Mining_Speed"},
                                {"ID", "UT_MINER",    "StatsType", "Weapon_Laser_MiningBonus"},
                            },
                            ["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "@*10"},
                            }
                        },
                    }
                },
            }
        }
    }
}