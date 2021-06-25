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
								{ "Lush", 		"1" }, --6 replacements	
								{ "Toxic", 		"0" }, --6 replacements	
								{ "Scorched", 	"0" }, --6 replacements	
								{ "Radioactive","0" }, --6 replacements	
								{ "Frozen", 	"0" }, --6 replacements	
								{ "Barren", 	"0" }, --6 replacements	
								{ "Dead", 		"0" }, --6 replacements	
								{ "Weird", 		"0" }, --6 replacements	
								{ "Red", 		"0" }, --8 replacements	
								{ "Green", 		"1" }, --8 replacements
								{ "Blue", 		"0" }, --8 replacements	
								{ "Test", 		"0" }, --6 replacements	
								{ "All", 		"0" } --6 replacements	
							} --84 global replacements
						}
					}
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE