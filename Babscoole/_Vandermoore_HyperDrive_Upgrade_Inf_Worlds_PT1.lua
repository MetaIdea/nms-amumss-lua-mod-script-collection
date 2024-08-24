NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Vandermoore_HyperDrive_Upgrade_Inf_No_LaunchReduction_Worlds_PT1.pak",
["MOD_AUTHOR"]    = "Vandermoore",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.05",
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
                                {"ID", "HYPERDRIVE",      "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE",      "StatsType", "Ship_Hyperdrive_JumpsPerCell"},
                                {"ID", "F_HYPERDRIVE",    "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HYPERDRIVE",    "StatsType", "Freighter_Hyperdrive_JumpsPerCell"},
                                {"ID", "F_HDRIVEBOOST1",  "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HDRIVEBOOST2",  "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HDRIVEBOOST3",  "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HACCESS1",      "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HACCESS2",      "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "F_HACCESS3",      "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "WARP_ALIEN",      "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "WARP_ALIEN",      "StatsType", "Ship_Hyperdrive_JumpsPerCell"},
                                {"ID", "T_BOBBLE_ATLAS",  "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE_SPEC", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE_SPEC", "StatsType", "Ship_Hyperdrive_JumpsPerCell"},
                                {"ID", "HYPERDRIVE_ROBO", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "HYPERDRIVE_ROBO", "StatsType", "Ship_Hyperdrive_JumpsPerCell"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "LAUNCHER",       "StatsType", "Ship_Launcher_TakeOffCost"},
                                {"ID", "UT_LAUNCHER",    "StatsType", "Ship_Launcher_TakeOffCost"},
                                {"ID", "LAUNCHER_ALIEN", "StatsType", "Ship_Launcher_TakeOffCost"},
                                {"ID", "T_BOBBLE_NADA",  "StatsType", "Ship_Launcher_TakeOffCost"},
                                {"ID", "LAUNCHER_SPEC",  "StatsType", "Ship_Launcher_TakeOffCost"},
                                {"ID", "LAUNCHER_ROBO",  "StatsType", "Ship_Launcher_TakeOffCost"},
                            },
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