Multiplier = 45

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "one_hour_protection.pak",
["MOD_AUTHOR"]    = "deadmanundead",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.23",
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
                                {"ID", "T_UNW"},
                                {"ID", "T_RAD"},
                                {"ID", "T_TOX"},
                                {"ID", "T_COLDPROT"},
                                {"ID", "T_HOTPROT"},
                            },
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeAmount",     Multiplier},
                                {"ChargeMultiplier", Multiplier},
                            }
                        },
                    }
                },
            }
        }
    }
}