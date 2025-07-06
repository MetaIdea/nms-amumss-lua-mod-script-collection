-- Change NANITE_MULTIPLIER to your desired multiplier this means all rewards are multiplied by this value so nanites * 20
NANITE_MULTIPLIER = 20

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "20xNaniteMultiplier",
["MOD_AUTHOR"]				= "Grandirus",
["MOD_DESCRIPTION"]			= "This Mod multiply(20x) the amount of Nanites you gain.",
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