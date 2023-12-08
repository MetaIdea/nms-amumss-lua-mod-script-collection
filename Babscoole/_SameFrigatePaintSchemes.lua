NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_SameFrigatePaintSchemes.pak",
["MOD_AUTHOR"]    = "TheCoolest7248",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "TEXTURES\COMMON\SPACECRAFT\FRIGATES\SURFDETAIL.TEXTURE.MBIN",
                        "TEXTURES\COMMON\SPACECRAFT\FRIGATES\WARRIORTILED.TEXTURE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "OVERLAY4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ColourAlt", "Alternative2"},
                            }
                        },
                    }
                },
            }
        },
    }
}
