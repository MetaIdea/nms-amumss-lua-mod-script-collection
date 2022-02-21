NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Exotic Booster.pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.81",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{		
							["PRECEDING_KEY_WORDS"] 		= "Green",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Green", 	"1000000" }, 
							}
						},
						{		
							["PRECEDING_KEY_WORDS"] 		= "Blue",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Blue", 	"1000000" }, 
							}
						},
						{		
							["PRECEDING_KEY_WORDS"] 		= "Red",			
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Red", 	"1000000" }, 
							}
						},						
					}
				}		
			}
		}
	}	
}