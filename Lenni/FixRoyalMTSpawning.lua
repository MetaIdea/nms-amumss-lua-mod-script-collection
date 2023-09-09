NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FixRoyalMTSpawning.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.43",
["MOD_DESCRIPTION"]			= "Adds Royal MTs back to the Sentinel Pillar spawning pool",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]	= {"Id", "R_HIVE_GUN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VCT"]	= {
							--	{"Standard", "0"},
								{"Exotic", "0.15"},
								{"Sentinel", "0"},
							--	{"Atlas", "0"},
							}
						},
					},
				},
			}
		}
	}	
}
