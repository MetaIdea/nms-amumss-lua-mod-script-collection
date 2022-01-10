NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "ExplorerReticleFix.pak",
["MOD_AUTHOR"]		= "jasondude7116",
["NMS_VERSION"]		= "3.75+",
["LUA_AUTHOR"]		= "Lenni",
["MOD_DESCRIPTION"]	= "Fixes the off-center reticle of certain explorers.",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/COCKPITA.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name","_Canopy_B",},
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "TransY", 							"2.435838" }, --Original "2.600616"
								{ "TransZ", 							"-0.239821" }, --Original "-0.283778"
								{ "RotX", 								"0" }, 		--Original "0.982396"
								{ "RotY", 								"0" }, 		--Original "1.017299"
								{ "RotZ", 								"0" }, 		--Original "0.999995"
							}
						}
					}
				}
			}
		}
	}	
}	
