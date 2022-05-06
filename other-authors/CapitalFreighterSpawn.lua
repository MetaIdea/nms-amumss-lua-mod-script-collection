NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CapitalFreighterSpawn.pak",
["MOD_AUTHOR"]				= "potatiustotalis",
["NMS_VERSION"]				= "3.89",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WarpIn",		"True"}, 	-- Original "False"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","Role"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AIShipRole",		"CapitalFreighter"}, 	-- Original "Freighter"			
							}
						}
					} 
				}
			}
		}
	}	
}
