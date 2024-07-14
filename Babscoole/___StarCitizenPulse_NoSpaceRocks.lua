NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "___StarCitizenPulse_NoSpaceRocks.pak",
["MOD_AUTHOR"]    = "GuitarGuy7",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MiniWarpCooldownTime",     "3"},
                                {"MiniWarpNoAsteroidRadius", "30000"},
                                {"BoostNoAsteroidRadius",    "1500"},
                            }
                        },
                    }
                },
            }
        }
    }
}