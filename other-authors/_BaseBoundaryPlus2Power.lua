NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_BaseBoundaryPlus2Power.pak", 
["MOD_AUTHOR"]				= "Spiritz",
["NMS_VERSION"]				= "2.24",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{													
					    	["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{ 
      							{"MinRadiusForBases", 		 	 "3000"},
								{"BaseRadiusExtension", 		 "500"},
								{"MaxRadiusForBases", "10000"}
							}
						}
					} --3 global replacements
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Rate",	               "1"}, 		-- Original "-1"	
                                {"DependentRateRate",	"50000"} 		-- Original "50"
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
