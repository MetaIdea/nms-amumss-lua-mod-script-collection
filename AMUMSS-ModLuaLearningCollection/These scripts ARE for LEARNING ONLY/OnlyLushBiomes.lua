NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "OnlyLushBiomes.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
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
							["REPLACE_TYPE"] 		= "ALL",			
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
