STACK = 1 
STACK_MULTIPLIER = STACK * 100 
DEFAULT_PRODUCT_LIMIT = 9999
PRODUCT_MULTIPLIER = 100

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SubstanceItemStackMultiplierX100.pak",   
["MOD_AUTHOR"]				= "Kyler45",				 
["NMS_VERSION"]				= "3.01",					 
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
								{"StackMultiplier",	STACK_MULTIPLIER} 	-- Original 1 
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
								{"StackMultiplier",	STACK_MULTIPLIER} 	-- Original 1
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",        		
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"DefaultSubstanceMaxAmount",	PRODUCT_MULTIPLIER},
								{"SubstanceMaxAmountLimit",	PRODUCT_MULTIPLIER} -- Original 9999, Will Multiple by PRODUCT_MULTIPLIER
							}
						}
					}
				},
			} 
		}
	}	
}
