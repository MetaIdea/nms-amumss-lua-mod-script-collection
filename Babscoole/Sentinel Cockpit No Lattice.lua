NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Sentinel Cockpit No Lattice.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.44",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","Red2",},
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        },
    }
}