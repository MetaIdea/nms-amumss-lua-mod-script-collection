NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_InvOP.pak",
["MOD_AUTHOR"]    = "DarthRevanStarkiller",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.37",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassStrengths"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", 10},
                                {"B", 10},
                                {"A", 10},
                                {"S", 10},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RegionHotspotSubstances"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceYeild", 10},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FreighterCargoOptions"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinAmount",     "5000"},
                                {"MaxAmount",     "5000"},
                                {"PercentChance", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"StatsType", "Suit_Protection_Heat"},
                                {"StatsType", "Suit_Protection_Toxic"},
                                {"StatsType", "Suit_Protection_Radiation"},
                                {"StatsType", "Suit_Underwater"},
                                {"StatsType", "Suit_Protection"},
                                {"StatsType", "Suit_Stamina_Strength"},
                                {"StatsType", "Suit_Jetpack_Tank"},
                                {"StatsType", "Suit_Jetpack_Drain"},
                                {"StatsType", "Suit_Jetpack_Ignition"},
                                {"StatsType", "Suit_Utility"},
                                {"StatsType", "Weapon_Laser_Damage"},
                                {"StatsType", "Weapon_Laser_Mining_Speed"},
                                {"StatsType", "Weapon_Laser_HeatTime"},
                                {"StatsType", "Weapon_Laser_StrongLaser"},
                                {"StatsType", "Weapon_Laser"},
                                {"StatsType", "Weapon_Laser_MiningBonus"},
                                {"StatsType", "Weapon_Projectile_Damage"},
                                {"StatsType", "Weapon_Projectile_Range"},
                                {"StatsType", "Weapon_Projectile_Rate"},
                                {"StatsType", "Weapon_Rail"},
                                {"StatsType", "Weapon_Shotgun"},
                                {"StatsType", "Weapon_Burst"},
                                {"StatsType", "Weapon_Projectile"},
                                {"StatsType", "Weapon_Flame"},
                                {"StatsType", "Weapon_Cannon"},
                                {"StatsType", "Weapon_Grenade_Speed"},
                                {"StatsType", "Weapon_FrontShield"},
                                {"StatsType", "Weapon_TerrainEdit"},
                                {"StatsType", "Weapon_Grenade"},
                                {"StatsType", "Weapon_MineGrenade"},
                                {"StatsType", "Weapon_SunLaser"},
                                {"StatsType", "Weapon_SoulLaser"},
                                {"StatsType", "Weapon_Scan_Radius"},
                                {"StatsType", "Weapon_Scan_Binoculars"},
                                {"StatsType", "Weapon_Scan"},
                                {"StatsType", "Ship_Weapons_Guns_Damage"},
                                {"StatsType", "Ship_Weapons_Lasers_Damage"},
                                {"StatsType", "Ship_Armour_Shield"},
                                {"StatsType", "Ship_Armour_Shield_Strength"},
                                {"StatsType", "Ship_Scan"},
                                {"StatsType", "Ship_Hyperdrive"},
                                {"StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"StatsType", "Ship_Hyperdrive_JumpsPerCell"},
                                {"StatsType", "Freighter_Hyperdrive"},
                                {"StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"StatsType", "Vehicle_Boost"},
                                {"StatsType", "Vehicle_Engine"},
                                {"StatsType", "Vehicle_Laser"},
                                {"StatsType", "Vehicle_Gun"},
                                {"StatsType", "Vehicle_StunGun"},
                            },
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*F:RangeMax",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RangeMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"StatsType", "Ship_Weapons_Shotgun"},
                                {"StatsType", "Ship_Weapons_MiniGun"},
                                {"StatsType", "Ship_Weapons_Plasma"},
                                {"StatsType", "Ship_Weapons_Rockets"},
                                {"StatsType", "Ship_Weapons_Guns"},
                                {"StatsType", "Ship_Weapons_Lasers"},
                            },
                            ["SECTION_ACTIVE"] = 2,
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*F:RangeMax",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RangeMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StatsType", "Weapon_Grenade_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RangeMin", "150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shop", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TechShop", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "16"},
                                {"MaxItemsForSale", "16"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShipTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "36"},
                                {"MaxItemsForSale", "36"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShipTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShipTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SuitTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "26"},
                                {"MaxItemsForSale", "26"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SuitTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SuitTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeapTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "36"},
                                {"MaxItemsForSale", "36"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeapTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeapTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "33"},
                                {"MaxItemsForSale", "33"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleTechSpecialist", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NexusTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "39"},
                                {"MaxItemsForSale", "39"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ship", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ship", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ship", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ship", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExpShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExpShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExpShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ExpShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TraShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TraShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TraShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TraShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarShip", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneExp", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneExp", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneExp", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneExp", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneTra", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneTra", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneTra", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneTra", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneWar", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneWar", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneWar", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LoneWar", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "23"},
                                {"MaxItemsForSale", "23"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scrap", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scrap", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "5"},
                                {"Average", "5"},
                                {"Wealthy", "5"},
                                {"Pirate",  "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateTech", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "22"},
                                {"MaxItemsForSale", "22"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateTech", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "10"},
                                {"Average", "10"},
                                {"Wealthy", "10"},
                                {"Pirate",  "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateTech", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "30"},
                                {"Average", "30"},
                                {"Wealthy", "30"},
                                {"Pirate",  "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "20"},
                                {"Average", "40"},
                                {"Wealthy", "80"},
                                {"Pirate",  "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "40"},
                                {"Average", "80"},
                                {"Wealthy", "180"},
                                {"Pirate",  "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "500"},
                                {"Average", "1500"},
                                {"Wealthy", "2500"},
                                {"Pirate",  "2000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateVisitor", "GcTradeData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    "1000"},
                                {"Average", "3000"},
                                {"Wealthy", "5000"},
                                {"Pirate",  "4000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SciSmall", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxHeightLarge", "12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SciSmall", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"TechBounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxHeightLarge", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SciMedium",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"SciLarge",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"FgtSmall",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"FgtMedium",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"FgtLarge",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"ShuSmall",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"ShtMedium",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"ShtLarge",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"DrpSmall",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"DrpMedium",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"DrpLarge",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"RoySmall",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"RoyMedium",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"RoyLarge",        "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"AlienSmall",      "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"AlienMedium",     "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"AlienLarge",      "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"SailSmall",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"SailMedium",      "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"SailLarge",       "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"RobotSmall",      "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"RobotMedium",     "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"RobotLarge",      "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"WeaponSmall",     "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"WeaponMedium",    "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"WeaponLarge",     "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"FreighterSmall",  "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"FreighterMedium", "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"FreighterLarge",  "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"VehicleSmall",    "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"VehicleMedium",   "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"VehicleLarge",    "GcInventoryLayoutGenerationDataEntry.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"TechBounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxHeightLarge", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"WeaponSmall",  "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"WeaponMedium", "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"WeaponLarge",  "GcInventoryLayoutGenerationDataEntry.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxHeightLarge", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ChestSmall",   "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"ChestMedium",  "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"ChestLarge",   "GcInventoryLayoutGenerationDataEntry.xml"},
                                {"ChestCapsule", "GcInventoryLayoutGenerationDataEntry.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Bounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxHeightSmall",    "10"},
                                {"MaxHeightStandard", "10"},
                                {"MaxHeightLarge",    "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Suit", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"TechBounds"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxHeightSmall",    "10"},
                                {"MaxHeightStandard", "10"},
                                {"MaxHeightLarge",    "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryCostDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "0"},
                                {"B", "20"},
                                {"A", "70"},
                                {"S", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryCostDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "15"},
                                {"MinValueInMillions", "10"},
                                {"MaxSlots", "48"},
                                {"MaxValueInMillions", "120"},
                                {"CoolMultiplier", "20"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Poor"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "40"},
                                {"B", "30"},
                                {"A", "20"},
                                {"S", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Average"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "30"},
                                {"B", "40"},
                                {"A", "20"},
                                {"S", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Wealthy"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "10"},
                                {"B", "20"},
                                {"A", "30"},
                                {"S", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "20"},
                                {"Max", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "30"},
                                {"Max", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "40"},
                                {"Max", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "20"},
                                {"Max", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "30"},
                                {"Max", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "40"},
                                {"Max", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Fighter", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "20"},
                                {"Max", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "30"},
                                {"Max", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "40"},
                                {"Max", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Scientific", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "20"},
                                {"Max", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "30"},
                                {"Max", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "40"},
                                {"Max", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shuttle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "20"},
                                {"Max", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "30"},
                                {"Max", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "40"},
                                {"Max", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Sail", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "20"},
                                {"Max", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "30"},
                                {"Max", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "40"},
                                {"Max", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "50"},
                                {"Max", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pistol", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rifle", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pristine", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Royal", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "70"},
                                {"Max", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "80"},
                                {"Max", "80"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "90"},
                                {"Max", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Robot", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", "100"},
                                {"Max", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Freighter",  "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Dropship",   "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Fighter",    "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Scientific", "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Shuttle",    "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Royal",      "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Alien",      "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Sail",       "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Robot",      "GcShipInventoryMaxUpgradeCapacity.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "120"},
                                {"B", "120"},
                                {"A", "120"},
                                {"S", "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Freighter",  "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Dropship",   "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Fighter",    "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Scientific", "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Shuttle",    "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Royal",      "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Alien",      "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Sail",       "GcShipInventoryMaxUpgradeCapacity.xml"},
                                {"Robot",      "GcShipInventoryMaxUpgradeCapacity.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "99"},
                                {"B", "99"},
                                {"A", "99"},
                                {"S", "99"},
                            }
                        },
                    }
                },
            }
        }
    }
}