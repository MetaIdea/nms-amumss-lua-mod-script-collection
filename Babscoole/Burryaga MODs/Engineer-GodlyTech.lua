NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Engineer-GodlyTech.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
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
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "PROTECT"},
                                {"ID", "ENERGY"},
                                {"ID", "JET1"},
                                {"ID", "SHIPJUMP1"},
                                {"ID", "LAUNCHER"},
                                {"ID", "HYPERDRIVE"},
                                {"ID", "SHIPSHIELD"},
                                {"ID", "SHIPGUN1"},
                                {"ID", "F_HYPERDRIVE"},
                                {"ID", "SHIPJUMP_ALIEN"},
                                {"ID", "LAUNCHER_ALIEN"},
                                {"ID", "WARP_ALIEN"},
                                {"ID", "SHIELD_ALIEN"},
                                {"ID", "SHIPGUN_ALIEN"},
                                {"ID", "SHIPLAS_ALIEN"},
                                {"ID", "LAUNCHER_SPEC"},
                                {"ID", "SHIPJUMP_SPEC"},
                                {"ID", "HYPERDRIVE_SPEC"},
                                {"ID", "SHIP_LIFESUP"},
                                {"ID", "LASER"},
                                {"ID", "VEHICLE_ENGINE"},
                                {"ID", "SUB_ENGINE"},
                                {"ID", "MECH_ENGINE"},
                                {"ID", "MECH_FUEL"},
                                {"ID", "MAINT_FARM1"},
                                {"ID", "MAINT_FARM2"},
                                {"ID", "MAINT_FARM3"},
                                {"ID", "MAINT_FARM4"},
                                {"ID", "MAINT_FARM5"},
                                {"ID", "MAINT_FUEL1"},
                                {"ID", "MAINT_FUEL2"},
                                {"ID", "MAINT_FUEL3"},
                                {"ID", "MAINT_FUEL4"},
                                {"ID", "MAINT_FUEL5"},
                                {"ID", "MAINT_TECH1"},
                                {"ID", "MAINT_TECH2"},
                                {"ID", "MAINT_TECH3"},
                                {"ID", "MAINT_TECH4"},
                                {"ID", "MAINT_TECH5"},
                                {"ID", "MAINT_TECH6"},
                                {"ID", "MAINT_TECH7"},
                                {"ID", "MAINT_TECH8"},
                                {"ID", "MAINT_TECH9"},
                                {"ID", "MAINT_TECH10"},
                                {"ID", "MAINT_TECH11"},
                                {"ID", "MAINT_TECH12"},
                                {"ID", "MAINT_TECH13"},
                                {"ID", "MAINT_TECH14"},
                                {"ID", "MAINT_TECH15"},
                                {"ID", "MAINT_TECH16"},
                                {"ID", "MAINT_TECH17"},
                                {"ID", "MAINT_TECH18"},
                                {"ID", "MAINT_TECH19"},
                                {"ID", "MAINT_TECH20"},
                                {"ID", "MAINT_TECH21"},
                                {"ID", "MAINT_TECH22"},
                                {"ID", "MAINT_TECH23"},
                                {"ID", "MAINT_TECH24"},
                                {"ID", "MAINT_TECH25"},
                                {"ID", "MAINT_PORTAL1"},
                                {"ID", "MAINT_PORTAL2"},
                                {"ID", "MAINT_PORTAL3"},
                                {"ID", "MAINT_PORTAL4"},
                                {"ID", "MAINT_PORTAL5"},
                                {"ID", "MAINT_PORTAL6"},
                                {"ID", "MAINT_PORTAL7"},
                                {"ID", "MAINT_PORTAL8"},
                                {"ID", "MAINT_PORTAL9"},
                                {"ID", "MAINT_PORTAL10"},
                                {"ID", "MAINT_PORTAL11"},
                                {"ID", "MAINT_PORTAL12"},
                                {"ID", "MAINT_PORTAL13"},
                                {"ID", "MAINT_PORTAL14"},
                                {"ID", "MAINT_PORTAL15"},
                                {"ID", "MAINT_PORTAL16"},
                                {"ID", "MAINT_REFINER"},
                                {"ID", "MAINT_BURNER"},
                                {"ID", "MAINT_ARTIFACT"},
                                {"ID", "MAINT_SEALOCK1"},
                                {"ID", "MAINT_SEALOCK2"},
                                {"ID", "MAINT_FRIG1"},
                                {"ID", "MAINT_FRIG2"},
                                {"ID", "MAINT_FRIG3"},
                                {"ID", "MAINT_FRIG4"},
                                {"ID", "MAINT_FRIG5"},
                                {"ID", "MAINT_FRIG6"},
                                {"ID", "MAINT_FRIG7"},
                                {"ID", "MAINT_FRIG8"},
                                {"ID", "MAINT_FRIG9"},
                                {"ID", "MAINT_FRIG10"},
                                {"ID", "EXOPOD_TECH1"},
                                {"ID", "EXOPOD_TECH2"},
                                {"ID", "EXOPOD_TECH3"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "HYPERDRIVE_SPEC", "Rarity",         "GcTechnologyRarity.xml"},
                                {"ID", "HYPERDRIVE_SPEC", "TechShopRarity", "GcTechnologyRarity.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyRarity", "Always"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "HYPERDRIVE",      "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "WARP_ALIEN",      "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE_SPEC", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "9999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT", "StatsType", "Freighter_Teleport"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "100000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "F_HACCESS1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HACCESS2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HACCESS3", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "499999940"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST3", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "7.999999E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2.9999997E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1.9999997E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "999999900"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_U3REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "PROTECT"},
                                {"ID", "ENERGY"},
                                {"ID", "JET1"},
                                {"ID", "SHIPGUN1"},
                                {"ID", "SHIPSHIELD"},
                                {"ID", "SHIPJUMP1"},
                                {"ID", "HYPERDRIVE"},
                                {"ID", "LAUNCHER"},
                                {"ID", "HDRIVEBOOST1"},
                                {"ID", "HDRIVEBOOST2"},
                                {"ID", "HDRIVEBOOST3"},
                                {"ID", "LAUNCHER"},
                                {"ID", "F_HYPERDRIVE"},
                                {"ID", "F_HDRIVEBOOST1"},
                                {"ID", "F_HDRIVEBOOST2"},
                                {"ID", "F_HDRIVEBOOST3"},
                                {"ID", "LASER"},
                                {"ID", "VEHICLE_ENGINE"},
                                {"ID", "MAINT_FARM1"},
                                {"ID", "MAINT_FARM2"},
                                {"ID", "MAINT_FARM3"},
                                {"ID", "MAINT_FARM4"},
                                {"ID", "MAINT_FARM5"},
                                {"ID", "MAINT_FUEL1"},
                                {"ID", "MAINT_FUEL2"},
                                {"ID", "MAINT_FUEL3"},
                                {"ID", "MAINT_FUEL4"},
                                {"ID", "MAINT_FUEL5"},
                                {"ID", "MAINT_TECH1"},
                                {"ID", "MAINT_TECH2"},
                                {"ID", "MAINT_TECH3"},
                                {"ID", "MAINT_TECH4"},
                                {"ID", "MAINT_TECH5"},
                                {"ID", "MAINT_TECH6"},
                                {"ID", "MAINT_TECH7"},
                                {"ID", "MAINT_TECH8"},
                                {"ID", "MAINT_TECH9"},
                                {"ID", "MAINT_TECH10"},
                                {"ID", "MAINT_TECH11"},
                                {"ID", "MAINT_TECH12"},
                                {"ID", "MAINT_TECH13"},
                                {"ID", "MAINT_TECH14"},
                                {"ID", "MAINT_TECH15"},
                                {"ID", "MAINT_TECH16"},
                                {"ID", "MAINT_TECH17"},
                                {"ID", "MAINT_TECH18"},
                                {"ID", "MAINT_TECH19"},
                                {"ID", "MAINT_TECH20"},
                                {"ID", "MAINT_TECH21"},
                                {"ID", "MAINT_TECH22"},
                                {"ID", "MAINT_TECH23"},
                                {"ID", "MAINT_TECH24"},
                                {"ID", "MAINT_TECH25"},
                                {"ID", "MAINT_PORTAL1"},
                                {"ID", "MAINT_PORTAL2"},
                                {"ID", "MAINT_PORTAL3"},
                                {"ID", "MAINT_PORTAL4"},
                                {"ID", "MAINT_PORTAL5"},
                                {"ID", "MAINT_PORTAL6"},
                                {"ID", "MAINT_PORTAL7"},
                                {"ID", "MAINT_PORTAL8"},
                                {"ID", "MAINT_PORTAL9"},
                                {"ID", "MAINT_PORTAL10"},
                                {"ID", "MAINT_PORTAL11"},
                                {"ID", "MAINT_PORTAL12"},
                                {"ID", "MAINT_PORTAL13"},
                                {"ID", "MAINT_PORTAL14"},
                                {"ID", "MAINT_PORTAL15"},
                                {"ID", "MAINT_PORTAL16"},
                                {"ID", "MAINT_REFINER"},
                                {"ID", "MAINT_ARTIFACT"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST3", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "7.999999E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "3.9999995E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1.9999997E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "4.9999995E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "HYPERDRIVE",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HDRIVEBOOST1", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HDRIVEBOOST2", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HDRIVEBOOST3", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "9999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Tank"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "5000"},
                            }
                        },
                    }
                },
            }
        }
    }
}