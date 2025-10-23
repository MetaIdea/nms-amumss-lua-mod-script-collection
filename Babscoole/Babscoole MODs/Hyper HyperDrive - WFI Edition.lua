MULTIPLIER = 1000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Hyper HyperDrive - WFI Edition",
["MOD_AUTHOR"]    = "courtykat and Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = 
                            {
                                {"ID", "UP_FRHYP1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "UP_FRHYP2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "UP_FRHYP3", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "UP_FRHYP4", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                                {"ID", "UP_HYP1",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UP_HYP2",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UP_HYP3",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UP_HYP4",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UP_HYPX",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UP_HYP0",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UA_HYP1",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UA_HYP2",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UA_HYP3",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                                {"ID", "UA_HYP4",   "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ValueMin", "@*"..MULTIPLIER},
                                {"ValueMax", "@*"..MULTIPLIER},
                            }
                        },
                    }
                },
               -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    -- ["MXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST1", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Bonus", "350000"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST2", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Bonus", "350000"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST3", "StatsType", "Freighter_Hyperdrive_JumpDistance"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Bonus", "350000"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS1"},
                            -- ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Bonus", "200"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS2"},
                            -- ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Bonus", "200"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS3"},
                            -- ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Bonus", "200"},
                            -- }
                        -- },
                    -- }
                -- },
            }
        },
    }
}
