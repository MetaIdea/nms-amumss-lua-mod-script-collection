NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BiomeForceType.pak",
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
							["VALUE_MATCH_TYPE"] 	= "number",
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
								{ "Green", 		"1" }, 
								{ "Blue", 		"0" }, 
								{ "Test", 		"0" }, 
								{ "All", 		"0" }
							}
						}
					}
				}		
			}
		}
	}	 --158 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
