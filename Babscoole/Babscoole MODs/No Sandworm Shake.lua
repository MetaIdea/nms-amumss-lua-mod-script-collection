NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "No Sandworm Shake",
["MOD_DESCRIPTION"] = "No Sandworm Shaking",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.75",
["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SANDWORMEMERGE"},
                                {"Name", "SANDWORMSHAKE"},
                                {"Name", "WORMGRNDEMERGE"},
                                {"Name", "WORMGRNDROAR"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "false"},
                            }
                        },
                    }
                }
            }
        }
    }
}