NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoSpaceAtmos.pak",
["MOD_AUTHOR"]		= "SoulNMS",
["LUA_AUTHOR"]		= "saa044",
["MOD_DESCRIPTION"]	= "Removes the halo effect around planets.",
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
								{ "SpaceAtmosphereThickness", 			"0" }, 		--Original "0.4"
							}
						},
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							["PRECEDING_KEY_WORDS"] 	= "SpaceSkyMin",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "AtmosphereThickness", 				"0" }, 		--Original "0.28"
							}
						},
						{

							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							["PRECEDING_KEY_WORDS"] 	= "SpaceSkyMax",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "AtmosphereThickness", 				"0.32" }, 	--Original "0.28"
							}
						}
					}
				}
			}
		}
	}	
}	
