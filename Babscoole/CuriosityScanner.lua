NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CuriosityScanner.pak",
["MOD_AUTHOR"]    = "Pyronox Omega",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.5",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/PLACEMENTVALUES/SPAWNDENSITYLIST.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RARE3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PatchSize",   "400"},
                                {"RegionScale", "5"},
                            }
                        },
                    }
                },
            }
        }
    }
}