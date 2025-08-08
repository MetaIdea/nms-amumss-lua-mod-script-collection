NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JE_TinyVolcano",
["MOD_DESCRIPTION"] = "Makes Volcanos very small so they do not block POI's",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "5.75",
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
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