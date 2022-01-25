NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "1hr-Days.pak",
["MOD_AUTHOR"]				= "Florian B.",
["NMS_VERSION"]				= "3.68",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --globals
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DayLength",		"3600"},
							}
						},
					}
				},
			}
		},
	}	
}