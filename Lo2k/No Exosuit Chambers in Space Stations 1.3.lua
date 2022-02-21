NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Exosuit Chambers in Space Stations 1.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.81",
["MOD_DESCRIPTION"]			= "This mod removes exosuit chambers in Space Stations",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SUITSHOP.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RefCryoChamber",},
							["REMOVE"] 	= "SECTION",
						},
					},
				}	
			}
		}
	}	
}