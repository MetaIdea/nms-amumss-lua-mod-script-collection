NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "HD Clouds 1.4.pak", 
["MOD_AUTHOR"]= "Lo2k",
["LUA_AUTHOR"]= "MrFisse",
["NMS_VERSION"]  = "4.40",
["MOD_DESCRIPTION"] = "High-Res planet clouds",
["MODIFICATIONS"]= 
	{
		{

		["MBIN_CHANGE_TABLE"] = 
			{ 
				{
				["MBIN_FILE_SOURCE"]  = "MATERIALS/ATMOSPHERE.MATERIAL.MBIN",
				["EXML_CHANGE_TABLE"] = 
					{
						{
						["SPECIAL_KEY_WORDS"]  = {"Name","gCloudMap"},
						["VALUE_CHANGE_TABLE"] = {{"Map", "TEXTURES/SPACE/ATMOSPHERE/ATMOSPHERE.DDS"}},
						}
					}
				}
			}
		}
	}
}