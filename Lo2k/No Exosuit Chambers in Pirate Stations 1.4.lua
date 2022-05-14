NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Exosuit Chambers in Pirate Stations 1.4.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.89",
["MOD_DESCRIPTION"]			= "This mod removes exosuit chambers in Pirate Stations",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_PIRATE.SCENE.MBIN"},
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