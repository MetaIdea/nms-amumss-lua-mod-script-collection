NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoAsteroids.pak",
["MOD_AUTHOR"]		= "Wombi",
["NMS_VERSION"]		= "3.53+",
["MOD_DESCRIPTION"]	= "Disables all Asteroids",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "AsteroidsEnabled", 					"False" }, 	--Original "True"
							}
						}
					}
				}
			}
		}
	}	
}	
