NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Tiny Volcano",
["MOD_DESCRIPTION"] = "Makes Volcanos very small so they do not block POI's",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "0.1"}, -- Original "2"
                                {"MaxScaleY", "0.1"}, -- Original "1"
                            }
                        }
                    }
                }
            }
        }
    }
}