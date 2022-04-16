NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BiomePerStarTypeChange.pak",
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
							["PRECEDING_KEY_WORDS"] = "Yellow",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Lush", 		"1" }, -- Original"2"
								{ "Toxic", 		"0" }, -- Original"1"
								{ "Scorched", 	"0" }, -- Original"1"
								{ "Radioactive","0" }, -- Original"1"
								{ "Frozen", 	"0" }, -- Original"1"
								{ "Barren", 	"0" }, -- Original"1"
								{ "Dead", 		"0" }, -- Original"2"
								{ "Weird", 		"0" }, -- Original"0"
								{ "Red", 		"0" }, -- Original"0"
								{ "Green", 		"1" }, -- Original"0"
								{ "Blue", 		"0" }, -- Original"0"
								{ "Test", 		"0" }, -- Original"0"
								{ "All", 		"0" }  -- Original"0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Green",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Lush", "0" }, --Original "1"
								{ "Toxic", "0" }, --Original "1"
								{ "Scorched", "0" }, --Original "1"
								{ "Radioactive", "0" }, --Original "1"
								{ "Frozen", "0" }, --Original "1"
								{ "Barren", "0" }, --Original "1"
								{ "Dead", "0" }, --Original "2"
								{ "Weird", "0" }, --Original "1"
								{ "Red", "0" }, --Original "0"
								{ "Green", "0" }, --Original "1"
								{ "Blue", "0" }, --Original "0"
								{ "Test", "0" }, --Original "0"
								{ "All", "0" } --Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Blue",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Lush", "0" }, --Original "1"
								{ "Toxic", "0" }, --Original "1"
								{ "Scorched", "0" }, --Original "1"
								{ "Radioactive", "0" }, --Original "1"
								{ "Frozen", "0" }, --Original "1"
								{ "Barren", "0" }, --Original "1"
								{ "Dead", "0" }, --Original "2"
								{ "Weird", "0" }, --Original "2"
								{ "Red", "0" }, --Original "0"
								{ "Green", "0" }, --Original "0"
								{ "Blue", "0" }, --Original "1"
								{ "Test", "0" }, --Original "0"
								{ "All", "0" } --Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Red",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{ "Lush", "0" }, --Original "1"
								{ "Toxic", "0" }, --Original "1"
								{ "Scorched", "0" }, --Original "1"
								{ "Radioactive", "0" }, --Original "1"
								{ "Frozen", "0" }, --Original "1"
								{ "Barren", "0" }, --Original "1"
								{ "Dead", "0" }, --Original "2"
								{ "Weird", "0" }, --Original "3"
								{ "Red", "0" }, --Original "1"
								{ "Green", "0" }, --Original "0"
								{ "Blue", "0" }, --Original "0"
								{ "Test", "0" }, --Original "0"
								{ "All", "0" }, --Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "LushYellow",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
							  { "Lush", "0" }, --Original "4"
							  { "Toxic", "0" }, --Original "1"
							  { "Scorched", "0" }, --Original "1"
							  { "Radioactive", "0" }, --Original "1"
							  { "Frozen", "0" }, --Original "1"
							  { "Barren", "0" }, --Original "1"
							  { "Dead", "0" }, --Original "0.5"
							  { "Weird", "0" }, --Original "1"
							  { "Red", "0" }, --Original "0"
							  { "Green", "0" }, --Original "0"
							  { "Blue", "0" }, --Original "0"
							  { "Test", "0" }, --Original "0"
							  { "All", "0" }, --Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "AbandonedYellow",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
							  { "Lush", "0" }, --Original "1"
							  { "Toxic", "0" }, --Original "1"
							  { "Scorched", "0" }, --Original "1"
							  { "Radioactive", "0" }, --Original "1"
							  { "Frozen", "0" }, --Original "1"
							  { "Barren", "0" }, --Original "1"
							  { "Dead", "0" }, --Original "4"
							  { "Weird", "0" }, --Original "1"
							  { "Red", "0" }, --Original "0"
							  { "Green", "0" }, --Original "0"
							  { "Blue", "0" }, --Original "0"
							  { "Test", "0" }, --Original "0"
							  { "All", "0" }, --Original "0"
							}	
						} --78 global replacements
					}
				}		
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE