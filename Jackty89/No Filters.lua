NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "NoFilters",
    ["MOD_DESCRIPTION"] = "Modifies the binoculars appearance",
    ["MOD_AUTHOR"] = "Methatronc",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_ENGLISH.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_SURVEY_ENABLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Welcome Traveller"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_FRENCH.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_SURVEY_ENABLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"French", "Bienvenue Voyageur"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/SCREENFILTERS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "Binoculars",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "Surveying",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"}
                            }
                        }
                    }
                }
            }
        }
    }
}