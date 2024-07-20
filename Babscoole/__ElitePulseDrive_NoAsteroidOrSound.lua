NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "__ElitePulseDrive_NoAsteroidOrSound.pak",
["MOD_AUTHOR"]    = "GuitarGuy7",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
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
                                {"MiniWarpChargeTime",       "8"},
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