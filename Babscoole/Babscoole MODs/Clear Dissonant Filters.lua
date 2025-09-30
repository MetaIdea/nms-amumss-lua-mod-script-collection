NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Clear Dissonant Filters",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.52",
["MOD_DESCRIPTION"] = "Removes disonant planet filter",
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
                            ["SPECIAL_KEY_WORDS"] = {"CorruptSentinels", "GcScreenFilterData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"}
                            }
                        },
                    }
                },
            }
        },
    }
}