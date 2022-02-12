Amount = 120

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__MoreSalvageX10.pak",
["MOD_AUTHOR"]				= "DeathRider",
["MOD_DESCRIPTION"]			= "This Mod gives you 24 salvage every time",
["NMS_VERSION"]				= "3.65",
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
							["SPECIAL_KEY_WORDS"]  = {"ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Amount},
								{"AmountMax",	Amount}
							}
						}
					}
				}
			}
		}
	}	
}