NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "LessUI.pak",
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
                }
            }
        },
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI/HUD/BINOCULARS/HUDBINOCSCENTRE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "XHAIR_DISTANCE"},
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "True"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI/HUD/BINOCULARS/HUDBINOCSSURVEYMIDDLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SURVEY_STATUS"},
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "True"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DOTS_R"},
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "True"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DOTS_L"},
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "True"}
                            }
                        }
                    }
                }
            }
        }
    }
}