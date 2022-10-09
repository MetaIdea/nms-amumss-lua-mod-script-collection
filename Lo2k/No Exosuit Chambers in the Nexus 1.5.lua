NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Exosuit Chambers in the Nexus 1.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "This mod removes exosuit chambers in the Nexus",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\SPACE\NEXUS\PARTS\BRIDGE\BRIDGEROOM.SCENE.MBIN"},
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