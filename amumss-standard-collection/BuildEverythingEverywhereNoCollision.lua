NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BuildEverythingEverywhereNoCollision.pak", 
["MOD_AUTHOR"]				= "snarkhunter mod of Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
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
								{ "EnableCollision", "False"},
                { "BuildableOnPlanetBase", "True"},
                { "BuildableOnSpaceBase", "True"},
								{ "BuildableOnFreighter", "True"},
								{ "BuildableOnPlanet", "True"},
								{ "BuildableOnPlanetWithProduct", "True"},
								{ "BuildableUnderwater", "True"},
								{ "BuildableAboveWater", "True"}
							}
						} --3272 global replacements
					}
				}	
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE