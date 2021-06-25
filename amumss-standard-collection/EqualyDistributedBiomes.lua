NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EqualyDistributedBiomes.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Lush", 		"1" },
								{ "Toxic", 		"1" },
								{ "Scorched", 	"1" },
								{ "Radioactive","1" },
								{ "Frozen", 	"1" },
								{ "Barren", 	"1" },
								{ "Dead", 		"1" },
								{ "Weird", 		"1" },
								{ "Red", 		"1" },
								{ "Green", 		"1" },
								{ "Blue", 		"1" },
								{ "Test", 		"0" },
								{ "All", 		"0" }
							}
						} --84 global replacements
					}
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE