NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "Shop.pak",
["MOD_AUTHOR"]			= "AcThPaU",
["NMS_VERSION"]			= "4.00",
["MOD_DESCRIPTION"]     = "Shops only sell S class proc tech, massively increase the amount of product and substance shop sells",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ -- S class only
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["REGEXBEFORE"] =
					{
						{"(U_[[:alpha:]_]*)([[:digit:]]{1})","\14"},
					},
					["EXML_CHANGE_TABLE"] 	= 
					{	
						{	
							["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 	= "U_UNW4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "U_UNW3"},
							}
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 	= "U_RAD4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "U_RAD3"},
							}
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 	= "U_TOX4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "U_TOX3"},
							}
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 	= "U_COLDPROT4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "U_COLDPROT3"},
							}
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 	= "U_HOTPROT4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "U_HOTPROT3"},
							}
						},
						{	
							["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 	= "U_ENERGY4",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "U_ENERGY3"},
							}
						},
---------------------------------------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "2"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "2"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_MATCH"] 	= "1999",
							["VALUE_MATCH_OPTIONS"] 	= "<=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_MATCH"] 	= "999",
							["VALUE_MATCH_OPTIONS"] 	= "<=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "10"},
							}
						},
						{
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinItemsForSale", "2"},
								{"MaxItemsForSale", "2"},
							}
						},
					}
				},				
			}
		},
	}	
}