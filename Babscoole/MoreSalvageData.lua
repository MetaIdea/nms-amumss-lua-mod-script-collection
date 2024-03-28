Multiplier = 10

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MoreSalvageData.pak",
["MOD_DESCRIPTION"] = "Increases Salvage Data",
["MOD_AUTHOR"]      = "VelocityFTW",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.62",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BP_SALVAGE"},
                            ["MATH_OPERATION"] = "*", 
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", Multiplier},
                                {"AmountMax", Multiplier},
                            },
                        },
                    }
                }
            }
        }
    }
}