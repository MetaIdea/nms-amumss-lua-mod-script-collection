NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Sentinel Cockpit No Red Circuitry View",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Removes the red glowing circuitry from the canopy",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Red1"},
                                {"Name", "Red2"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        },
    }
}