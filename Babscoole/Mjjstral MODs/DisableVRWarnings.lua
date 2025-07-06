NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Disable-VR-Warnings",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "5.73",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDVRWARNING.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "true"}, -- Original "false"
                            }
                        }
                    }
                }
            }
        }
    }
}