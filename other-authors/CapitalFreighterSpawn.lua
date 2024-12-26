NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CapitalFreighterSpawn.pak",
["MOD_AUTHOR"]				= "potatiustotalis, pak updated for use by Unclejuju",
["NMS_VERSION"]				= "5.29",
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