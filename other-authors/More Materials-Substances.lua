NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MoreSubstances.pak",
["MOD_AUTHOR"]				= "Flugelwulff",
["LUA_AUTHOR"]				= "Babscoole/Flugelwulff",
["NMS_VERSION"]				= "4.10",
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
							["PRECEDING_KEY_WORDS"] = "MinAmountOfSubstanceAvailable",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Poor", 	 "1500" },
								{ "Average", "3500" },
								{ "Wealthy", "6000" },
								{ "Pirate",  "2500" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxAmountOfSubstanceAvailable",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Poor", 	 "3000" },
								{ "Average", "7500" },
								{ "Wealthy", "9000" },
								{ "Pirate",  "5000" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable", "MinAmountOfSubstanceAvailable"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Poor", 	 "1500" },
								{ "Average", "3500" },
								{ "Wealthy", "6000" },
								{ "Pirate",  "2500" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable", "MaxAmountOfSubstanceAvailable"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Poor", 	 "3000" },
								{ "Average", "7500" },
								{ "Wealthy", "9000" },
								{ "Pirate",  "5000" },
							}
						},
					} 
				}
			}
		}
	}	
}