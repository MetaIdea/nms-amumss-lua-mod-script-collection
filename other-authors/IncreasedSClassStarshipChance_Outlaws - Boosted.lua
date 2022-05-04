
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "IncreasedSClassShipChanceBOOSTED.pak", 
["MOD_AUTHOR"]               = "Potatiums",
["NMS_VERSION"]              = "1.00",
["MOD_DESCRIPTION"]          = "Original mod by Skip",
["MODIFICATIONS"]            = 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Poor","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","25"},
								{"B","25"},
								{"A","25"},
								{"S","25"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Average","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","15"},
								{"B","20"},
								{"A","30"},
								{"S","35"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Wealthy","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","5"},
								{"B","10"},
								{"A","35"},
								{"S","50"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Pirate","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","5"},
								{"B","10"},
								{"A","35"},
								{"S","50"},
							},
						},
					}	
				}
			}
		}	
	}
}