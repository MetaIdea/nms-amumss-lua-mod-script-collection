COST_MULTIPLIER = "0.5"
PRICE_MULTIPLIER = "0.5"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TradeCostReduction.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\TRADINGCOSTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Cost",			COST_MULTIPLIER },
								{"MinCost",			COST_MULTIPLIER },
								{"MaxCost",			COST_MULTIPLIER },
								{"ChangePerSale",	"1" }								-- * 1 == no change
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\TRADINGCLASSDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSellingPriceMultiplier",	PRICE_MULTIPLIER },
								{"MaxSellingPriceMultiplier",	PRICE_MULTIPLIER },
								{"MinBuyingPriceMultiplier",	PRICE_MULTIPLIER },
								{"MaxBuyingPriceMultiplier",	PRICE_MULTIPLIER }								
							}
						}
					}
				}					
			}
		} --1064 global replacements
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
