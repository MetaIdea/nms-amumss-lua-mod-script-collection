NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]             = "___JE_SmallerVolcano.pak",
["MOD_AUTHOR"]                = "Jaggid Edje",
["NMS_VERSION"]                = "4.20",
["MODIFICATIONS"]             =
    {
        {
            ["MBIN_CHANGE_TABLE"]     =
            {
                {
                    ["MBIN_FILE_SOURCE"]     = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"MaxScale",            "0.1"},     -- Original "2"
                                {"MaxScaleY",            "0.1"},    -- Original "1"
                            }
                        }
                    }
                }
            }
        }
    }    
}