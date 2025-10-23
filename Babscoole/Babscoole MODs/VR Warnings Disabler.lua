NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR Warnings Disabler",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "6.10",
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