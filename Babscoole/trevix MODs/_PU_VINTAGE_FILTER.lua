NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_PU_VINTAGE_FILTER.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.45",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                            }
                        },
                    }
                }
            }
        }
    }
}