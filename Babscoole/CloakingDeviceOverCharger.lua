NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CloakDeviceOverCharger.pak",
["MOD_AUTHOR"]    = "Mumbles",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.5",
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
                                {"StealthDrainRate",    "0"},
                                {"StealthRechargeRate", "50"},
                            }
                        },
                    }
                },
            }
        },
    }
}