NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_ObjectDensityIncrease_v1.82.pak",
["MOD_AUTHOR"]				= "Mjjstral_Modified_By_Lllasagna",
["NMS_VERSION"]				= "3.68",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
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
								{"PatchSize",				"128"}, 	-- Original "64"
								{"RegionScale",				"18"}		-- Original "6"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIOMEPLANT",}, --used 2 times = cool effect/too lazy to test
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1100"}, 	-- Original "550"
								{"RegionScale",				"0.4"}		-- "0.2"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"300"}, 	-- Original "100"
								{"RegionScale",				"1.5"}		-- Original "0.75"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1180"}, 	-- Original "590"
								{"RegionScale",				"0.2"}		-- Original "0.1"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1220"}, 	-- Original "610"
								{"RegionScale",				"0.2"}		-- Original "0.1"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RARE3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"1300"}, 	-- Original "650"
								{"RegionScale",				"0.2"}		-- Original "0.1"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","UNDERGROUND",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"300"}, 	-- Original "150"
								{"RegionScale",				"2"}		-- Original "1"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SPARSECLUMP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"60"}, 	-- Original "30"
								{"RegionScale",				"10"}		-- Original "5"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BARRENROCKCLUMP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"25"}, 	-- Original "25"
								{"RegionScale",				"16"}		-- Original "8"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FLORACLUMP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"10"}, 	-- Original "5"
								{"RegionScale",				"5"}		-- Original "5"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","STORMCRYST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"440"}, 	-- Original "220"
								{"RegionScale",				"2"}		-- Original "1"
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WILDPLANTS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"240"}, 	-- Original "120"
								{"RegionScale",				"1.2"}		-- Original "0.6"
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
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE