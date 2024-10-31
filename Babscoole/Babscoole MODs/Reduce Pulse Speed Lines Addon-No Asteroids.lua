NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Reduce Pulse Speed Lines Addon-No Asteroids.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.22",
["MOD_DESCRIPTION"] = "Remove Asteroids during Pulse Jumps",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAsteroidGenerationPerFramePulseJump", "0"},
                            },
                        },
                    }
                },
            }
        },
    }
}