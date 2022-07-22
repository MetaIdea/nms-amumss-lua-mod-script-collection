NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Speed Halo 2.0 - Almost.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.94",
["MOD_DESCRIPTION"]			= "This mods greatly reduces ship speed effect",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMaterialColourVec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"t",	"0.06"}  -- Set to 1 for Vanilla or 0 for No Effect
							}	
						}
					}
				}
			}
		}
	}	
}