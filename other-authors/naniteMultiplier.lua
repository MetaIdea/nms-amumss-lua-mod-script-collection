
-- Change NANITE_MULTIPLIER to your desired multiplier this means all rewards are multiplied by this value so nanites * 2
NANITE_MULTIPLIER = 4

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "naniteMultiplier.pak",
["MOD_AUTHOR"]				= "Reece5268",
["NMS_VERSION"]				= "3.90",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
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
							["SPECIAL_KEY_WORDS"] = {"Currency","Nanites",},
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",NANITE_MULTIPLIER},
								{"AmountMax",NANITE_MULTIPLIER}
							}
						}
					} 
				}
			}
		}
	}	
}