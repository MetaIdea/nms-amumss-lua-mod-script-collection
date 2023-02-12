NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "No Filters.pak",
["MOD_DESCRIPTION"]         = "Modifies the binoculars appearance",
["MOD_AUTHOR"]              = "Methatronc",
["MODIFICATIONS"]           = 
    {
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.86055253.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "Binoculars",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "Surveying",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "MissionSurvey",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
                            }
                        }
                    }
                }
            }
        }
    }   
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE