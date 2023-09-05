NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FixCreatureBloodpHWonder.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.43",
["MOD_DESCRIPTION"]			= "Fixes the creature blood pH counter",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]	= {"LocID", "WONDER_CREAT_TOX"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"WonderCategoryComparisonType", "Min"},
							}
						},
					}
				},
			}
		}
	}	
}