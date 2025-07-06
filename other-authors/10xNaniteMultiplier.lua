-- Change NANITE_MULTIPLIER to your desired multiplier this means all rewards are multiplied by this value so nanites * 10
NANITE_MULTIPLIER = 10

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "10xNaniteMultiplier",
["MOD_AUTHOR"]				= "Grandirus",
["MOD_DESCRIPTION"]			= "This Mod multiply(10x) the amount of Nanites you gain.",
["NMS_VERSION"]				= "5.64",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Currency","Nanites",},
							["PRECEDING_KEY_WORDS"] = "",
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