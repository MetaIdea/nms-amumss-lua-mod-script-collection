NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Gameplay-tweaks_Explo-Buffs_By_Redmas.pak",
["MOD_DESCRIPTION"] = "REDMAS EASY MODE - EASIER EXPLORATION",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.99",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "12.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET", "StatsType", "Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "100.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE", "StatsType", "Ship_Hyperdrive_JumpsPerCell"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE", "StatsType", "Freighter_Hyperdrive_JumpsPerCell"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "3000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST3", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "8000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "500"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "500"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCANBINOC1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCANBINOC1", "StatsType", "Weapon_Scan_Binoculars"},
                            ["SECTION_UP"] = 1,
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCANBINOC1", "StatsType", "Weapon_Scan_Discovery_Creature"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCANBINOC1", "StatsType", "Weapon_Scan_Discovery_Flora"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCANBINOC1", "StatsType", "Weapon_Scan_Secondary"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCAN1", "StatsType", "Weapon_Scan"},
                            ["SECTION_UP"] = 1,
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCAN1", "StatsType", "Weapon_Scan_Radius"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCAN1", "StatsType", "Weapon_Scan_Terrain_Resource"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCAN1", "StatsType", "Weapon_Scan_Discovery_Creature"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCAN1", "StatsType", "Weapon_Scan_Discovery_Flora"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCAN1", "StatsType", "Weapon_Scan_Recharge_Time"},
                            ["SECTION_UP"] = 1,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SCAN", "StatsType", "Weapon_Scan_Recharge_Time"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0.4"},
                            }
                        },
                    }
                }
            }
        }
    }
}