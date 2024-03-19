--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_PlanetFilters_v443-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.43",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Weird4",       "GcScreenFilterData.xml"},
                                {"SepiaExtreme", "GcScreenFilterData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "200"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Weird7", "GcScreenFilterData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "600"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"HueShiftA", "GcScreenFilterData.xml"},
                                {"HueShiftB", "GcScreenFilterData.xml"},
                                {"HueShiftC", "GcScreenFilterData.xml"},
                                {"HueShiftD", "GcScreenFilterData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeDistance", "500"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"NMSRetroA", "GcScreenFilterData.xml"},
                                {"NMSRetroB", "GcScreenFilterData.xml"},
                                {"NMSRetroC", "GcScreenFilterData.xml"},
                                {"NMSRetroD", "GcScreenFilterData.xml"},
                                {"NMSRetroE", "GcScreenFilterData.xml"},
                                {"NMSRetroF", "GcScreenFilterData.xml"},
                                {"NMSRetroG", "GcScreenFilterData.xml"},
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