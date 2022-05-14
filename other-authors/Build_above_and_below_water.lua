NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Build Above and Below Water.pak", 
["MOD_AUTHOR"]				= "Biostar Ten",
["NMS_VERSION"]				= "3.87",
["MOD_DESCRIPTION"]		"Build Underwater Items on land
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
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
								{ "BuildableUnderwater", "True"},
								{ "BuildableAboveWater", "True"}
							}
						} --a few global replacements
					}
				}	
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE