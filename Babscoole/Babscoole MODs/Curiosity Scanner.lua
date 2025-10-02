NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Curiosity Scanner",
["MOD_AUTHOR"]      = "Pyronox Omega and Babscoole",
["MOD_DESCRIPTION"] = "increase number curiosities spawn on planet surface",
["NMS_VERSION"]     = "6.00",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/PLACEMENTVALUES/SPAWNDENSITYLIST.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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