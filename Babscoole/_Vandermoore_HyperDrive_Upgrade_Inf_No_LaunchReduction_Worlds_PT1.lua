NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Vandermoore_HyperDrive_Upgrade_Inf_No_LaunchReduction_Worlds_PT1.pak",
["MOD_AUTHOR"]    = "Vandermoore",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Camera", "GcGalaxyCameraData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FreePanSpeed",      "5"},
                                {"FreePanSpeedTurbo", "10"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "WATER_LANDER",    "StatsType", "Ship_WaterLandingJet"},
                                {"ID", "HYPERDRIVE",      "StatsType", "Ship_Hyperdrive"},
                                {"ID", "HDRIVEBOOST1",    "StatsType", "Ship_Hyperdrive"},
                                {"ID", "HDRIVEBOOST2",    "StatsType", "Ship_Hyperdrive"},
                                {"ID", "HDRIVEBOOST3",    "StatsType", "Ship_Hyperdrive"},
                                {"ID", "F_HYPERDRIVE",    "StatsType", "Freighter_Hyperdrive"},
                                {"ID", "WARP_ALIEN",      "StatsType", "Ship_Hyperdrive"},
                                {"ID", "HYPERDRIVE_SPEC", "StatsType", "Ship_Hyperdrive"},
                                {"ID", "HYPERDRIVE_ROBO", "StatsType", "Ship_Hyperdrive"},
                                {"ID", "SHIPSCAN_COMBAT", "StatsType", "Ship_Scan_ConflictFilter"},
                                {"ID", "F_SCANNER",       "StatsType", "Ship_Scan_ConflictFilter"},
                                {"ID", "SHIPSCAN_ALIEN",  "StatsType", "Ship_Scan_ConflictFilter"},
                                {"ID", "WATERLAND_ALIEN", "StatsType", "Ship_WaterLandingJet"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_QUICKWARP", "StatsType", "Ship_Hyperdrive_QuickWarp"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}