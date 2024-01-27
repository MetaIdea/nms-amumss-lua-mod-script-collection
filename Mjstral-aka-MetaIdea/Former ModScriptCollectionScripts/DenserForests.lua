NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DenserForests.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FOREST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"320"}, 	-- Original "64"
								{"RegionScale",				"6"}		-- Original "6"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GRASS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"100"}, 	-- Original "100"
								{"RegionScale",				"5"}		-- Original "5"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIOMEPLANT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"550"}, 	-- Original "550"
								{"RegionScale",				"0.1"}		-- Original "0.1"
							}
						} --6 global replacements
					}
				}
			}
		}
	}	
}
