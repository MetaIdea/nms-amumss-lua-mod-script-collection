NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Pet Slot Cost Reduction 3.99.pak", 
["MOD_AUTHOR"]				= "Cubittus",
["NMS_VERSION"]				= "3.99",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT"},
							["PRECEDING_KEY_WORDS"] = {"Cost","Costs"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH_TYPE"] 	= "number",
							["VALUE_CHANGE_TABLE"] 	= {
								{"500","50" },
								{"1000","50" },
								{"5000","50" },
								{"10000","50" },
								{"20000","50" },
							}
						},
					}
				},	
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
