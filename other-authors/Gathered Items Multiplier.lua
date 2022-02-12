MULTIPLIER = 100

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Gathered Items Multiplier", 
["MOD_AUTHOR"]				= "Super_User",
["NMS_VERSION"]				= "3.71",
["MOD_DESCRIPTION"]			= "Multiplies Resource gathered by 100 times",
["MODIFICATIONS"] 			= 	
{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 																
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"]	= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMax", MULTIPLIER},	
								
							}
						}
					}
				}
			}
		}
	}	
}