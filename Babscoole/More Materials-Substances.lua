NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "More Materials-Substances.pak",
["MOD_AUTHOR"]    = "Flugelwulff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "MinAmountOfSubstanceAvailable",
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{ "Poor",    "1500" },
								{ "Average", "3500" },
								{ "Wealthy", "6000" },
								{ "Pirate",  "2500" },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MaxAmountOfSubstanceAvailable",
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{ "Poor",    "3000" },
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