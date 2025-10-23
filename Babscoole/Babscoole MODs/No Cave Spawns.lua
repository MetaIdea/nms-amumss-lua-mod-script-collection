NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "No Cave Spawns",
["MOD_AUTHOR"]    = "courtykat and Babscoole",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\CAVE\CAVETABLECOMMON.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityOfBeingEnabled", "0"},
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                    }
                },
            }
        },
    }
}