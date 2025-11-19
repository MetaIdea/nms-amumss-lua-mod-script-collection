NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]   = "Hyper HyperDrive",
["MOD_AUTHOR"]     = "courtykat and Babscoole",
["NMS_VERSION"]    = "6.16",
["MODIFICATIONS"]  =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"}, -- Original "100"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WARP_ALIEN", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"}, -- Original "100"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HYPERDRIVE", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"}, -- Original "100"
                            }
                        },
                    }
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Free Pan Speed",             "1.25"}, -- Original "0.8"
                                {"Free Pan Speed Turbo",       "275"},  -- Original "2.75"
                            }
                        },
                    }
                },
            }
        },
    }
}