NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CleanerCockpit 1.3.pak",
["MOD_AUTHOR"]    = "Phoenixdive",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.23",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CT"] =
            {
                {
                    ["MBIN_FS"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
                    ["EXML_CT"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB1Cards5"},
                                {"Name", "MonFrontCables"},
                                {"Name", "CableSpinnerL"},
                                {"Name", "CableSpinnerR"},
                                {"Name", "SentinelCableL"},
                                {"Name", "SentinelCableR"},
                                {"Name", "HijackCables"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FS"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\COCKPITCHAIR.SCENE.MBIN",
                    ["EXML_CT"] =
                    {
                        {
                            ["SKW"] = {"Name", "dables2"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        }
    }
}