AmountMin = 1
AmountMax= 2

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "IncreasedSalvageVPlus.pak",
["MOD_AUTHOR"]				= "potatiustotalis",
["MOD_DESCRIPTION"]			= "Salvage Multipliers - Increases the amount of salvaged data you get from buried tech modules",
["NMS_VERSION"]				= "3.89",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=
            {
              "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
            },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"List","List","GcRewardTableItem.xml"},
							["SPECIAL_KEY_WORDS"] = {"ID","BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	AmountMin}, 	-- Original: 2 (x 1 = 2)
								{"AmountMax",	AmountMax} 		-- Original: 4 (x 2 = 8)
							}
						},
					}
				}
			}
		}
	}	
}