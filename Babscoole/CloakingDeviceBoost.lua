NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CloakDeviceBoost.pak",
["MOD_AUTHOR"]    = "Mumbles",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.43",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StealthDrainRate",    "5"},
                                {"StealthRechargeRate", "50"},
                            }
                        },
                    }
                },
            }
        },
    }
}