NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "InfiniteCloak.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "RedFalcons-MDX",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.88",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StealthMinLevel",     "0"},     --Original 0.15
                                {"StealthDrainRate",    "0"},     --Original 15
                                {"StealthRechargeRate", "10000"}, --Original 12
                            }
                        },
                    }
                }
            }
        }
    }
}