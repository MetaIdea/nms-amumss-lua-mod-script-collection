NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Exo's Quick Scan & Better Binoc Scan Colors.pak",
["MOD_AUTHOR"]              = "Exosolar & Lo2k",
["LUA_AUTHOR"]              = "Lo2k & Babscoole",
["NMS_VERSION"]             = "4.30",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SurveyMaxDistance",           "1000"},  -- Original "400"
                                {"TerrainResourceScanRange",    "2000"},  -- Original "1200"
                                {"TerrainResourceCompassRange", "200"},   -- Original "120"
                                {"BinocTimeBeforeScan",         "0.01"},  -- Original "0.5"
                                {"BinocMinScanTime",            "0.333"}, -- Original "3.9"
                                {"BinocScanTime",               "0.333"}, -- Original "3.9"
                                {"BinocCreatureScanTime",       "0.333"}, -- Original "3.2"
                                {"CreatureMinScanTime",         "0.01"},  -- Original "0.8"
                                {"NewDiscoveryDisplayTime",     "5"},     -- Original "2"
                                {"BuildingBeamDistance",        "1200"},  -- Original "800"
                                {"WaypointScanTime",            "2"},     -- Original "3"
                                {"PainTime",                    "1"},     -- Original "1.5"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "None"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScanDistance", "20"}, -- Original "10"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "75"}, -- Original "70"
                                {"MaxScanDistance", "50"}, -- Original "25"
                                {"WalkSpeed",       "1"},  -- Original "0.5"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "30"},  -- Original "40"
                                {"MinScanDistance", "0"},   -- Original "5"
                                {"MaxScanDistance", "150"}, -- Original "70"
                                {"WalkSpeed",       "1"},   -- Original "0.4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "15"},   -- Original "20"
                                {"MinScanDistance", "0"},    -- Original "20"
                                {"MaxScanDistance", "1000"}, -- Original "500"
                                {"WalkSpeed",       "1"},    -- Original "0.3"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BinocularSelectedColour"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R",    "0"},
                                {"G",    "1"},
                                {"B",    "0"},
                                {"A",    "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BinocularSelectedUnknownColour"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R",    "1"},
                                {"G",    "0"},
                                {"B",    "0"},
                                {"A",    "1"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "300"}, -- Original "200"
                                {"ChargeTime", "1"},   -- Original "30"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "225"}, -- Original "150"
                                {"ChargeTime", "5"},   -- Original "90"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "7500"}, -- Original "5000"
                                {"PulseTime",  "0.5"},  -- Original "4"
                                {"ChargeTime", "0.5"},  -- Original "4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "7500"}, -- Original "5000"
                                {"PulseTime",  "0.5"},  -- Original "8"
                                {"ChargeTime", "0.5"},  -- Original "4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "150000"}, -- Original "100000"
                                {"PulseTime",  "0.5"},    -- Original "8"
                                {"ChargeTime", "0.5"},    -- Original "4"
                            }
                            },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "OBSERVATORY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "150000"}, -- Original "100000"
                                {"PulseTime",  "0.5"},    -- Original "8"
                                {"ChargeTime", "0.5"},    -- Original "4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DISTRESS_SIGNAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "150000"}, -- Original "100000"
                                {"PulseTime",  "0.5"},    -- Original "8"
                                {"ChargeTime", "0.5"},    -- Original "4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DEBUG_PLANET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "1500000"}, -- Original "100000"
                                {"PulseTime",  "0.5"},     -- Original "5"
                                {"ChargeTime", "0.25"},    -- Original "4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DEBUG_SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "1500000"}, -- Original "100000"
                                {"PulseTime",  "0.5"},     -- Original "5"
                                {"ChargeTime", "0.25"},    -- Original "4"
                            }
                            },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "15000"}, -- Original "10000"
                                {"PulseTime",  "0.5"},   -- Original "3"
                                {"ChargeTime", "0.25"},  -- Original "10"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VISUAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "15000"}, -- Original "10000"
                                {"PulseTime",  "0.5"},   -- Original "8"
                                {"ChargeTime", "0.25"},  -- Original "4"
                            }
                        },
                    }
                },
            }
        }
    }
}