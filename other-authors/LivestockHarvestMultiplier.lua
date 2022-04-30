NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LivestockHarvestMultiplier.pak",
["MOD_DESCRIPTION"]			= "Fauna produce 100x more products and the harvesting cooldown time is greatly reduced.",
["MOD_AUTHOR"]				= "chickazee4",
["NMS_VERSION"]				= "3.88",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCREATUREGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"HarvestCooldownMin",				"2"},
								{"HarvestCooldownMax",				"5"},
								{"CreatureHarvestAmountSmall",		"100"},
								{"CreatureHarvestAmountMed",		"100"},
								{"CreatureHarvestAmountLarge",		"200"},
								{"CreatureHarvestAmountHuge",		"300"},		
							}
						},
					}
				}
			}
		}
	}	
}