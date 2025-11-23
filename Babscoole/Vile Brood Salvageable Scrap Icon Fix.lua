NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Vile Brood Salvageable Scrap Icon Fix",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MOD_DESCRIPTION"] = "Fixes the Vile Brood icon on system details using the whispering egg icon, as well as the Salvageable Scrap icon using the Buried Technology Module icon",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALTY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UI_SCRAP_HINT", "Icon", "TkTextureResource"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.BURIEDRARE.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UI_BUGS_HINT", "Icon", "TkTextureResource"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.GRUB.DDS"},
                            }
                        },
                    }
                },
            }
        }
    }
}