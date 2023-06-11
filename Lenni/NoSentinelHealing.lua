NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoSentinelHealing.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.30",
["MOD_DESCRIPTION"]			= "Sentinels don't heal each other anymore",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCROBOTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RepairThreshold", "0"},
							}
						},
					}
				},
			}
		}
	}	
}