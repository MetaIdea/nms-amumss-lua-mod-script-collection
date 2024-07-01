NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NMSRemoveRNGMaxStatsUpgrades.pak",
["MOD_AUTHOR"]    = "vdmJohan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.64",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "*F:ValueMax",
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*F:NumStatsMax",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumStatsMin", "1"}
                            }
                        },
                        -- {
                            -- ["MATH_OPERATION"] = "*F:MaxAmount",
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Time", "1"}
                            -- }
                        -- },
                        -- {
                            -- ["MATH_OPERATION"] = "*F:MaxAmount",
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Time", "1"}
                            -- }
                        -- },
                    }
                },
            }
        }
    }
}