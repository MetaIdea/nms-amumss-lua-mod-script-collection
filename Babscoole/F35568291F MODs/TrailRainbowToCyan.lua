NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "TrailRainbowToCyan.pak",
["MOD_AUTHOR"]    = "F35568291F",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.28",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTCYANTRAIL.MATERIAL.MBIN", "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.MATERIAL.MBIN", "REMOVE"},
                        {"MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTCYANTRAIL.SCENE.MBIN",    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.SCENE.MBIN",    "REMOVE"},
                        {"MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTTRAIL.TRAIL.MBIN",          "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.TRAIL.MBIN",    "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "HotTrail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", "Translucent"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMinPixelSize_Glow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "5"}
                            }
                        },
                    }
                },
            }
        }
    }
}