NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AlwaysDay.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",				"1.0"}, -- Original "0.62"
								{"MaxNightFade",				"1.0"},	-- Original "0.68"
							}
						},
					}
				},
			}
		},
	}	
}
