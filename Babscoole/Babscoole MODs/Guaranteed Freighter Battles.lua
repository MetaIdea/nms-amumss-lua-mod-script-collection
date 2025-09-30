WARPS = "0"
HOURS = "0"
SPAWNRATE = "100"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Guaranteed Freighter Battles",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WarpsBetweenBattles", WARPS},
                                {"HoursBetweenBattles", HOURS},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FreighterSpawnRate", SPAWNRATE}
                            }
                        }
                    }
                },
            }
        }
    }
}