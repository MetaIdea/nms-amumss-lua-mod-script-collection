NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Water No Foam 1.0.pak",
["MOD_AUTHOR"]      = "justylefty",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"]	= "minimize foam",
["NMS_VERSION"]     = "4.45",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\TERRAIN\WATER.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "gFoamHeightMap"},
                                {"Name", "gFoamMap"},
                                {"Name", "gFoamNormalMap"},
                                {"Name", "gBuffer1Map"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        }
    }
}