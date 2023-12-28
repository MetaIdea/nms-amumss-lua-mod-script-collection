NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_NaturalSpawn_v443-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.43",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FOREST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PatchSize",   "120"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BARRENROCKCLUMP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PatchSize", "35"},
                            }
                        }
                    }
                }
            }
        },
    }
}

