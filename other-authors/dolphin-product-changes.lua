
							-- Use https://docs.google.com/spreadsheets/d/1J8WdrubKgo8A9hPY-hbQLq4eVrb3n3lZAgiI2J7ncAU/edit#gid=984581625
							-- to find mapping of names to IDs (credit Lo2k)
							
							
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "dolphin-product-changes.pak",
["MOD_AUTHOR"]				= "Dolphin",
["NMS_VERSION"]				= "4.34",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcProductData.xml"},
							["SPECIAL_KEY_WORDS"] = {"ID", "JELLY"},					--Di-Hydrogen Jelly
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 2
								}
						},						{
							["PRECEDING_KEY_WORDS"] = {"GcProductData.xml"},
							["SPECIAL_KEY_WORDS"] = {"ID", "CASING"},					--Metal Plating
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 2
								}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_SHARD"},				-- Radiant Shard
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 1
								}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "DRONE_SALVAGE"}, 			-- Inverted Mirror
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 1
								}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SPIDER_PROD"}, 				-- Crystallizd Heart
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 1
								}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN"}, 				-- Hyaline Brain
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 1
								}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN_CLEAN"}, 			-- Harmonic Brain
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 1
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcProductData.xml"},
							["SPECIAL_KEY_WORDS"] = {"ID", "FIENDCORE"},				-- Larval Core
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "StackMultiplier", 				"16" }, 		-- was 1
								}
						},
					},
				},
				
			
			}
			
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE