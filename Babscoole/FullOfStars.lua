NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FullOfStars.pak",
["MOD_AUTHOR"]    = "darkmessenger84",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StarGenerationThreshold", "0"}, -- Original "0.68"
                            }
                        },
                    }
                },
            }
        },
    }
}
