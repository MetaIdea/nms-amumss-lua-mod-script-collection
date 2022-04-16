NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "No Auto Ladder.pak",
["MOD_DESCRIPTION"]         = "Disable the ladder auto-mount feature",
["MOD_AUTHOR"]              = "Methatronc",
["MODIFICATIONS"]           = 
    {
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.59B126E2.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"LadderDistanceToAutoMount",				"-1"},
                            }
                        },
                    },
                },
            },
        },
    }   
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE