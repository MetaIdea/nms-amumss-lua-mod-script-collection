ModName         =   "HD_Clouds"
ModAuthor       =   "Lo2k"
LuaAuthor       =   "MrFisse, Hypn0tick"
BaseDescription =   "High-res planet clouds."
GameVersion     =   "3.99"
ModVersion      =   "1.3"

Texture_Resolution = "4k" -- Options: 2k, 4k

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = ModName.."-"..ModVersion..".pak", 
["MOD_AUTHOR"]= ModAuthor,
["NMS_VERSION"]  = GameVersion,
["MOD_DESCRIPTION"] = BaseDescription,
["MODIFICATIONS"]= {
    {
        ["MBIN_CHANGE_TABLE"] = { 
            {
                ["MBIN_FILE_SOURCE"] = "MATERIALS/ATMOSPHERE.MATERIAL.MBIN",
                ["EXML_CHANGE_TABLE"] = {
                    {
                        ["SPECIAL_KEY_WORDS"] = {"Name","gCloudMap"},
                        ["VALUE_CHANGE_TABLE"] = 
                        {
                            {"Map", "TEXTURES/SPACE/ATMOSPHERE/ATMOSPHERE."..Texture_Resolution..".DDS"},
                        }
                    }
                }
            }
        }
    }
}
}