NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_Brighter_Sunlight.pak",
["MOD_AUTHOR"]		= "degraaaff",
["NMS_VERSION"]		= "2.0+",
["MOD_DESCRIPTION"]	= "",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "SunLightIntensity", 					"5.5" }, 	--Original "3"
							}
						}
					}
				}
			}
		}
	}	
}	
