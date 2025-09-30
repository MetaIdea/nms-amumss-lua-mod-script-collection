NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Clear Filters",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.51",
["MOD_DESCRIPTION"] = "Removes many hazard planet filters",
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
                            ["SPECIAL_KEY_WORDS"] = {"Frozen", "GcScreenFilterData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_3"},
                                {"Filename",              "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Toxic",       "GcScreenFilterData"},
                                {"Radioactive", "GcScreenFilterData"},
                                {"Scorched",    "GcScreenFilterData"},
                                {"Barren",      "GcScreenFilterData"},
                                {"Weird1",      "GcScreenFilterData"},
                                {"Weird2",      "GcScreenFilterData"},
                                {"Weird3",      "GcScreenFilterData"},
                                {"Weird4",      "GcScreenFilterData"},
                                {"Weird5",      "GcScreenFilterData"},
                                {"Weird6",      "GcScreenFilterData"},
                                {"Weird7",      "GcScreenFilterData"},
                                {"Weird8",      "GcScreenFilterData"},
                            },
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