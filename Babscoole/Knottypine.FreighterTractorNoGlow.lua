NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Knottypine.FreighterTractorNoGlow.pak",
["MOD_AUTHOR"]    = "Knottypine",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "1.0",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGE\ENTRANCEGLOW_MAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAMNOGLOW.DDS"}, -- Original "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAM.DDS"
                            }
                        },
                    }
                },
            }
        },
    }
}