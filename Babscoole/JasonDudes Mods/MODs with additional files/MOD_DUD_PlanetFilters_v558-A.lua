--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_PlanetFilters_v558-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.58",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Weird4",       "GcScreenFilterData"},
                                {"SepiaExtreme", "GcScreenFilterData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "200"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Weird7", "GcScreenFilterData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "600"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"HueShiftA", "GcScreenFilterData"},
                                {"HueShiftB", "GcScreenFilterData"},
                                {"HueShiftC", "GcScreenFilterData"},
                                {"HueShiftD", "GcScreenFilterData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "500"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"NMSRetroA", "GcScreenFilterData"},
                                {"NMSRetroB", "GcScreenFilterData"},
                                {"NMSRetroC", "GcScreenFilterData"},
                                {"NMSRetroD", "GcScreenFilterData"},
                                {"NMSRetroE", "GcScreenFilterData"},
                                {"NMSRetroF", "GcScreenFilterData"},
                                {"NMSRetroG", "GcScreenFilterData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "300"}
                            }
                        },
                    }
                },
            }
        },
    }
}