NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_PhotoFilterAdd_v1651.pak",
["MOD_AUTHOR"]    = "JasonDude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "1.65",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC1_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PHOTO_FILTER_2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Default Storm"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PHOTO_FILTER_3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Frozen Storm"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PHOTO_FILTER_4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Toxic Storm"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PHOTO_FILTER_5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Radioactive Storm"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PHOTO_FILTER_6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Scorched Storm"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PHOTO_FILTER_9"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"English", "Barren Storm"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultStorm", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_2"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrozenStorm", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_3"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ToxicStorm", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_4"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RadioactiveStorm", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_5"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScorchedStorm", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_6"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BarrenStorm", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "PHOTO_FILTER_9"},
                                {"SelectableInPhotoMode", "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}