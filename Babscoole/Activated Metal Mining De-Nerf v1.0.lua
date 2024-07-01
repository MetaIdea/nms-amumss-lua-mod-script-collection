NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Activated Metal Mining De-Nerf v1.0.pak",
["MOD_AUTHOR"]    = "SamboNZ",
["LUA_AUTHOR"]    = "Babscoole, minor modifications by SamboNZ",
["NMS_VERSION"]   = "4.64",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_EXTRACTOR_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", "36000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", "144000"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EX_YELLOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseValue", "245"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EX_RED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseValue", "450"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EX_GREEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseValue", "696"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EX_BLUE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseValue", "949"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SubstanceId", "EX_YELLOW"},
                                {"SubstanceId", "EX_RED"},
                                {"SubstanceId", "EX_GREEN"},
                                {"SubstanceId", "EX_BLUE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountCost", "36000"}
                            }
                        },
                    }
                },
            }
        }
    }
}
