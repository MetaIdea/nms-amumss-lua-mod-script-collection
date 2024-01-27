NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AllShipsMaxSlots+SClass.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "idea by dvkkha, script by Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{			
							["MATH_OPERATION"] 		= "*F:MaxSlots",  			
							["REPLACE_TYPE"] 		= "ALL", --44 actions
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		"1"}
							}
						},
						{				
							["MATH_OPERATION"] 		= "*F:MaxTechSlots",  			
							["REPLACE_TYPE"] 		= "ALL", --31 actions
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinTechSlots",	"1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ClassMultiplier",						
							["REPLACE_TYPE"] 		= "ALL", --13*4=52 actions			
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
