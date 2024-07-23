NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "___SupercruisePulseDrive_NoSpaceRocks.pak",
["MOD_AUTHOR"]      = "GuitarGuy7",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.00",
["MOD_DESCRIPTION"] = "Removes astroids while in pulse jump",
["MODIFICATIONS"]   =
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
                                {"MiniWarpChargeTime",       "4"},
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