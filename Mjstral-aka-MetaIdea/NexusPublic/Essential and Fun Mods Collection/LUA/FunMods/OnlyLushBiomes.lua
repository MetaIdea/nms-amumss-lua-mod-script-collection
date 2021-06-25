NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "OnlyLushBiomes.pak",
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
								{ "Toxic", 		"0" },
								{ "Scorched", 	"0" },
								{ "Radioactive","0" },
								{ "Frozen", 	"0" },
								{ "Barren", 	"0" },
								{ "Dead", 		"0" },
								{ "Weird", 		"0" },
								{ "Red", 		"0" },
								{ "Green", 		"0" },
								{ "Blue", 		"0" },
								{ "Test", 		"0" },
								{ "All", 		"0" }
							}
						}
					} --84 global replacements
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE