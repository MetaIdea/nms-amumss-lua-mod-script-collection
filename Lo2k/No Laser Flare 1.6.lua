NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Laser Flare 1.6.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "7.0",
["MOD_DESCRIPTION"]			= "This mod removes laser horizontal flare",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\EFFECTS\MUZZLE\LASERMUZZLE.SCENE.MBIN",
												"MODELS\EFFECTS\MUZZLE\VEHICLELASERMUZZLE.SCENE.MBIN",},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{  
							["SPECIAL_KEY_WORDS"] = {"Name", "Flare",},
							["REMOVE"] 	= "SECTION",
						},	
					}
				}	
			}
		}
	}	
}