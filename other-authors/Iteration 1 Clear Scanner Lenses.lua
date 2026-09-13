NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Iteration 1 Clear Scanner Lenses.pak",
    ["MOD_DESCRIPTION"] = "Removes colour filters from all on-foot scanner and survey modes.",
    ["NMS_VERSION"]     = "7.01",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA/EFFECTS/SCREENFILTERS.MBIN",
                    },

                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Binoculars", "GcScreenFilterData",
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    "FilenameSdr",
                                    "TEXTURES/LUT/FILTERS/DEFAULT.DDS",
                                },
                                {
                                    "FilenameHdr",
                                    "TEXTURES/LUT/FILTERSHDR/DEFAULT.DDS",
                                },
                            },
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Surveying", "GcScreenFilterData",
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    "FilenameSdr",
                                    "TEXTURES/LUT/FILTERS/DEFAULT.DDS",
                                },
                                {
                                    "FilenameHdr",
                                    "TEXTURES/LUT/FILTERSHDR/DEFAULT.DDS",
                                },
                            },
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "PetSurvey", "GcScreenFilterData",
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    "FilenameSdr",
                                    "TEXTURES/LUT/FILTERS/DEFAULT.DDS",
                                },
                                {
                                    "FilenameHdr",
                                    "TEXTURES/LUT/FILTERSHDR/DEFAULT.DDS",
                                },
                            },
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "MissionSurvey", "GcScreenFilterData",
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    "FilenameSdr",
                                    "TEXTURES/LUT/FILTERS/DEFAULT.DDS",
                                },
                                {
                                    "FilenameHdr",
                                    "TEXTURES/LUT/FILTERSHDR/DEFAULT.DDS",
                                },
                            },
                        },
                    },
                },
            },
        },
    },
}