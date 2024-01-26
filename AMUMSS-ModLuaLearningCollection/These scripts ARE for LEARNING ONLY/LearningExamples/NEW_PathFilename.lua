NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NEW_PathFilename.pak",
["MOD_AUTHOR"]				= "Wbertro",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ -- Let us create a new file based on a NMS file AND modify the NMS file
					["MBIN_FILE_SOURCE"] 	= {{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN","NEWPATH\temp1\temp2\My.GLOBALS.MBIN"},},
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
								{"RegionScale",				"0.1"}		-- Original "0.2"
							}
						} --6 replacements
					}
				},
				{ --let us now modify the newly create file
					["MBIN_FILE_SOURCE"] 	= {"NEWPATH\temp1\temp2\My.GLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","FOREST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"120"}, 	-- Original "64"
								{"RegionScale",				"6"}		-- Original "6"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GRASS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"115"}, 	-- Original "100"
								{"RegionScale",				"5"}		-- Original "5"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIOMEPLANT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PatchSize",				"650"}, 	-- Original "550"
								{"RegionScale",				"0.1"}		-- Original "0.2"
							}
						} --6 replacements
					}
				},
			}
		}, --12 global replacements
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE