NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "TrailRainbowToRed.pak",
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
                        {"MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTREDTRAIL.MATERIAL.MBIN", "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.MATERIAL.MBIN", "REMOVE"},
                        {"MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTREDTRAIL.SCENE.MBIN",    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.SCENE.MBIN",    "REMOVE"},
                        {"MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTTRAIL.TRAIL.MBIN",       "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.TRAIL.MBIN",    "REMOVE"},
                    },
                },
            }
        }
    }
}