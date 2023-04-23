STACK = 1 --can be a number (like 5) (will be converted to a string) or a string (like "5") of the right type if appropriate as a replacement
STACK_MULTIPLIER = STACK * 500 

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "StackMultiplierX500.pak",   
["MOD_AUTHOR"]				= "Hahnsolo5314",				 
["NMS_VERSION"]				= "1.00",					 
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*", 				
							["REPLACE_TYPE"] 		= "ALL",		
							["VALUE_MATCH"] 		= "", 		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StackMultiplier",	STACK_MULTIPLIER} 	
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",        		
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"StackMultiplier",	STACK_MULTIPLIER} 	
							}
						}
					}
				},		
			} 
		}
	}	
}

