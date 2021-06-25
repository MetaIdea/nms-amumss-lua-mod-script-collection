NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AllShipsMaxSlots+SClass.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "idea by dvkkha, script by Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*F:MaxSlots",  			
							["REPLACE_TYPE"] 		= "ALL", --44 actions
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		"1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*F:MaxExtraTech",  			
							["REPLACE_TYPE"] 		= "ALL", --31 actions
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinExtraTech",	"1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ClassMultiplier",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL", --13*4=52 actions			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"C",	"0"},
								{"B",	"0"},
								{"A",	"0"},
								{"S",	"100"}
							}
						} --127 global replacements	
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE