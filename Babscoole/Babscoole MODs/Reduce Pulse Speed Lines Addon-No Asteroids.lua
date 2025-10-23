NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Reduce Pulse Speed Lines Addon-No Asteroids",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Remove Asteroids during Pulse Jumps",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LODSettings"},
                            ["REPLACE_TYPE"] = "ALL",
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