NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoAtmoNoDust.pak",
["MOD_AUTHOR"]		= "degraaaff",
["NMS_VERSION"]		= "1.9",
["MOD_DESCRIPTION"]	= "Removes flying dust (and optionally, fog) from no-atmosphere planets.",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "HeavyAir", 				"MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN" }, 		--Original ""
							}
						}
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "HeavyAir", 				"MODELS/EFFECTS/HEAVYAIR/MARS/MARS.SCENE.MBIN" }, 		--Original ""
							}
						}
					}
				}
			}
		}
	}	
}	
