NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_NoAtmoNoFog.pak",
["MOD_AUTHOR"]		= "degraaaff",
["NMS_VERSION"]		= "3.53",
["MOD_DESCRIPTION"]	= "Now with add-on to remove fog as well!",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "NoAtmosphereFogStrength", 			"0" }, 		--Original "0.3"
								{ "NoAtmosphereFogMax", 				"0" }, 		--Original "0.97"
							}
						}
					}
				}
			}
		}
	}	
}	
