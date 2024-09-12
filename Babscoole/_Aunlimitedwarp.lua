NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Aunlimitedwarp.pak",
["MOD_AUTHOR"]    = "Leg3nd",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.11",
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
                                {"ID", "WATER_LANDER",    "StatsType", "Ship_WaterLandingJet"},
                                {"ID", "HYPERDRIVE",      "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "SHIPSCAN_ECON",   "StatsType", "Ship_Scan_EconomyFilter"},
                                {"ID", "SHIPSCAN_COMBAT", "StatsType", "Ship_Scan_ConflictFilter"},
                                {"ID", "F_SCANNER",       "StatsType", "Ship_Scan_ConflictFilter"},
                                {"ID", "F_SCANNER",       "StatsType", "Ship_Scan_EconomyFilter"},
                                {"ID", "WARP_ALIEN",      "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "SHIPSCAN_ALIEN",  "StatsType", "Ship_Scan_EconomyFilter"},
                                {"ID", "SHIPSCAN_ALIEN",  "StatsType", "Ship_Scan_ConflictFilter"},
                                {"ID", "WATERLAND_ALIEN", "StatsType", "Ship_WaterLandingJet"},
                                {"ID", "T_BOBBLE_ATLAS",  "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE_SPEC", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE_ROBO", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1E+09"},
                            }
                        },
                    }
                },
            }
        }
    }
}