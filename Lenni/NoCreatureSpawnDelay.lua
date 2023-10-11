NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoCreatureSpawnDelay.pak",
["MOD_AUTHOR"]    = "Lenni",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PauseBetweenCreatureSpawnRequests",    "0" },
                            }
                        },
                    }
                },
            }
        },
    },
}