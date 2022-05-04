
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "IncreasedSClassShipChanceVPLUS.pak", 
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
								{"C","60"},
								{"B","30"},
								{"A","10"},
								{"S","0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Average","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","45"},
								{"B","35"},
								{"A","15"},
								{"S","5"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Wealthy","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","20"},
								{"B","40"},
								{"A","30"},
								{"S","10"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Pirate","ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","20"},
								{"B","40"},
								{"A","30"},
								{"S","10"},
							},
						},
					}	
				}
			}
		}	
	}
}