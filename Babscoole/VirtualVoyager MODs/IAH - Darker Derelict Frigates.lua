NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "IAH - Darker Derelict Frigates.pak",
["MOD_AUTHOR"]    = "PCMystic",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
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
                                {"Binoculars",    "GcScreenFilterData.xml"},
                                {"Surveying",     "GcScreenFilterData.xml"},
                                {"MissionSurvey", "GcScreenFilterData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", ""}
                            }
                        },
                    }
                },
            }
        }
    }
}