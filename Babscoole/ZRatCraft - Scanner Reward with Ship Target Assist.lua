RMULTIPLIER = 5

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ZRatCraft - Scanner Reward with Ship Target Assist.pak",
["MOD_AUTHOR"]    = "RatanKabidge",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"DiscoveryWorth", "SolarSystem", "Record"},
                                {"DiscoveryWorth", "Planet",      "Record"},
                                {"DiscoveryWorth", "Animal",      "Record"},
                                {"DiscoveryWorth", "Flora",       "Record"},
                                {"DiscoveryWorth", "Mineral",     "Record"},
                                {"DiscoveryWorth", "Sector",      "Record"},
                            },
                            ["MATH_OPERATION"]  = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Common",   RMULTIPLIER},
                                {"Uncommon", RMULTIPLIER},
                                {"Rare",     RMULTIPLIER},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"DiscoveryWorth", "Animal", "OnScan"},
                                {"DiscoveryWorth", "Flora",  "OnScan"},
                            },
                            ["MATH_OPERATION"]  = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Common",   "@*2"},
                                {"Uncommon", "@*3"},
                                {"Rare",     "@*4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DiscoveryWorth", "Mineral", "OnScan"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Common",   "50000"},
                                {"Uncommon", "50000"},
                                {"Rare",     "50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CreatureDiscoverySizeMultiplier"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1"},
                                {"IGNORE", "2"},
                                {"IGNORE", "3"},
                                {"IGNORE", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"ShipWeapons", "Laser"},
                                {"ShipWeapons", "Missile"},
                                {"ShipWeapons", "Rocket"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",      "25"},
                                {"AutoAimExtraAngle", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"ShipWeapons", "Projectile"},
                                {"ShipWeapons", "Minigun"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",      "15"},
                                {"AutoAimExtraAngle", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Shotgun"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Plasma"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",      "26"},
                                {"AutoAimExtraAngle", "50"},
                            }
                        },
                    }
                },
            }
        }
    }
}