NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "ClearPhotoModeFilter.pak",
["MOD_AUTHOR"]      = "Pervicacius",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
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
                            ["SPECIAL_KEY_WORDS"] = {"SpaceStation", "GcScreenFilterData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LocText",               "UI_BB_HOVER_CLEAR"},
                                {"SelectableInPhotoMode", "true"}
                            }
                        },
                    }
                }
            }
        }
    }
}