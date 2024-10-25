NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 		= "_Merged_MOD_MTR_+_LMF_Always-SClass-MaxStats.pak",
["MOD_DESCRIPTION"] 		= "Reduced Mission Timer for Base Computer, Living Ship, Scientist, Settlement and Fleet plus Frigates spawn with best initial stats and always as S class",
["MOD_AUTHOR"] 			= "NooBzPoWaH & ll62518475TheSecond",
["LUA_AUTHOR"] 			= "Babscoole",
["NMS_VERSION"] 		= "5.+",
["MODIFICATIONS"] 		=
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {    -- This section is for Base Computer Timers
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\BASECOMPUTERMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BASEFLAG_COOLDOWN_MSG"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "0"},
                            }
                        },
                    }
                },
                {    -- This section is for Living Ship Timers
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\SPACEPOIMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FOREACH_SKW_GROUP"]   =
                            {
                                {"Message","UI_BIO_SHIP_MISSION1_MSG3",},
                                {"Message","UI_BIO_SHIP_MISSION2_MSG3",},
                                {"Message","UI_BIO_SHIP_MISSION3_MSG3",},
                                {"Message","UI_BIO_SHIP_MISSION4_MSG3",},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "0"},
                            }
                        },
                    }
                },
                {    -- This section is for the Scientist Timers
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\MISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWaitRealTime.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "60",
                            ["VALUE_MATCH_OPTIONS"] = ">=",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "0"}
                            }
                        },
                    }
                },
                {    -- This section is for the Settlement Timers
                    ["MBIN_FILE_SOURCE"]     = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"BuildingUpgradeTimeInSeconds", 		"30"},  -- original value is "7200" whihc is 2 hrs
                                {"JudgementWaitTimeMin", 				"20"}, -- original value is "900" which is 15 mins
                                {"JudgementWaitTimeMax", 				"30"}, -- original value is "7200" which is 2 hrs
                                {"Settlement_LandingZone", 				"30"},  -- original value is "14400" which is 4 hrs
                                {"Settlement_Bar", 						"30"},  -- original value is "3600" which is 1 hr
                                {"Settlement_Tower", 					"30"},  -- original value is "14400" which is 4 hrs
                                {"Settlement_Market", 					"30"},  -- original value is "7200" which is 2 hrs
                                {"Settlement_Small", 					"30"},  -- original value is "1200" which is 20 mins
                                {"Settlement_SmallIndustrial", 			"30"},  -- original value is "1200" which is 20 mins
                                {"Settlement_Medium", 					"30"},  -- original value is "2800" which is 46 mins and 39 secs
                                {"Settlement_Large", 					"30"},  -- original value is "7200" which is 2 hrs
                                {"Settlement_SheriffsOffice", 			"30"},  -- original value is "90"
                                {"Settlement_Double", 					"30"},  -- original value is "3600" which is 1 hr
                                {"Settlement_Farm", 					"30"},  -- original value is "5600" which is 1 hr 30 mins and 20 secs
                                {"Settlement_Factory", 					"30"},  -- original value is "5600" which is 1 hr 30 mins and 20 secs
                            }
                        },
                    }
                },
                {    -- This section is for Fleet Timers and Stats
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentChangeOfFrigateBeingPurchasable",       "100"}, -- Original 60
                                --{"MinFrigateStatValue",                          "50"},  -- Original -10
                                {"PercentChanceOfFrigateAdditionalSpawnedTrait", "600"}, -- Original 55
                                {"LowDamageNumberOfExpeditions",                 "1"},   -- Original 3
                                {"RampDamageNumberOfExpeditions",                "5"},   -- Original 10
                                {"TimeTakenForExpeditionEvent_Easy",             "120"}, -- Original 900
                                {"TimeTakenForExpeditionEvent",                  "600"}, -- Original 5400
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomacy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 2
                                {"Maximum", 2}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 1
                                {"Maximum", 5}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Support","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","ExtraLoot"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                                {"Maximum", 2}, -- Original 0
                            },
                        }, 
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normandy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 8
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normandy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","ExtraLoot"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                                {"Maximum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normandy","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpace","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 8
                            },
                        }, 
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DeepSpaceCommon","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                                {"Maximum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 5}, -- Original 1
                                {"Maximum", 6}, -- Original 5
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 8
                                {"Maximum", 3}, -- Original 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Pirate","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                                {"Maximum", 4}, -- Original 0
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Combat"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                                {"Maximum", 5}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Exploration"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Mining"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Diplomatic"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelBurnRate"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                                {"Maximum", 2}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","FuelCapacity"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Speed"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 3}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","ExtraLoot"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 2}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Repair"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 0}, -- Original 0
                                {"Maximum", 0}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Invulnerable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 1}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GhostShip","GcFrigateStats.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"Stats","Stealth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4}, -- Original 0
                                {"Maximum", 4}, -- Original 4
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"ID","FUEL_BAD_1",},
                                {"ID","FUEL_BAD_2",},
                                {"ID","FUEL_BAD_3",},
                                {"ID","FUEL_BAD_4",},
                                {"ID","FUEL_BAD_5",},
                                {"ID","COMBAT_BAD_1",},
                                {"ID","COMBAT_BAD_2",},
                                {"ID","COMBAT_BAD_3",},
                                {"ID","COMBAT_BAD_4",},
                                {"ID","COMBAT_BAD_5",},
                                {"ID","MINING_BAD_1",},
                                {"ID","MINING_BAD_2",},
                                {"ID","MINING_BAD_3",},
                                {"ID","MINING_BAD_4",},
                                {"ID","MINING_BAD_5",},
                                {"ID","TRADING_BAD_1",},
                                {"ID","TRADING_BAD_2",},
                                {"ID","TRADING_BAD_3",},
                                {"ID","TRADING_BAD_4",},
                                {"ID","TRADING_BAD_5",},
                                {"ID","EXPLORE_BAD_1",},
                                {"ID","EXPLORE_BAD_2",},
                                {"ID","EXPLORE_BAD_3",},
                                {"ID","EXPLORE_BAD_4",},
                                {"ID","EXPLORE_BAD_5",},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Combat",          "0"},
                                {"Exploration",     "0"},
                                {"Mining",          "0"},
                                {"Diplomacy",       "0"},
                                {"Support",         "0"},
                                {"Normandy",        "0"},
                                {"DeepSpace",       "0"},
                                {"DeepSpaceCommon", "0"},
                                {"Pirate",          "0"},
				{"GhostShip",       "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}