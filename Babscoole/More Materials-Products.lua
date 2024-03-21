NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MoreProducts.pak",
["MOD_AUTHOR"]				= "Flugelwulff",
["LUA_AUTHOR"]				= "Babscoole/Flugelwulff",
["NMS_VERSION"]				= "4.47",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "MinAmountOfProductAvailable",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Poor", 	 "100"},
								{"Average", "400"},
								{"Wealthy", "800"},
								{"Pirate",  "400"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxAmountOfProductAvailable",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Poor", 	 "400"},
								{"Average", "800"},
								{"Wealthy", "1800"},
								{"Pirate",  "800"},
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable", "MinAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Poor", 	 "100"},
								{"Average", "400"},
								{"Wealthy", "800"},
								{"Pirate",  "400"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable", "MaxAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Poor", 	 "400"},
								{"Average", "800"},
								{"Wealthy", "1800"},
								{"Pirate",  "800"},
							}
						},					
					} 
				}
			}
		}
	}	
}