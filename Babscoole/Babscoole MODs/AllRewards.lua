NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "AllRewards.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.15",
["MOD_DESCRIPTION"] = "Test unlocking rewards via debug settings",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnlockAllSeasonRewards",   "True"},
                                {"UnlockAllTwitchRewards",   "True"},
                                {"UnlockAllPlatformRewards", "True"},
                            }
                        },
                    }
                }
            }
        }
    }
}