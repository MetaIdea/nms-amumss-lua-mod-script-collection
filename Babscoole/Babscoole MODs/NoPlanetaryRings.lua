NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoPlanetaryRings",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Removes planetary rings",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetRingProbability", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"PlanetRingsMin", "GcPlanetRingData"},
                                {"PlanetRingsMax", "GcPlanetRingData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeScale1", "0"},
                                {"LargeScale2", "0"},
                                {"MidScale",    "0"},
                                {"SmallScale",  "0"},
                                {"Depth",       "0"},
                            }
                        },
                    }
                }
            }
        }
    }
}