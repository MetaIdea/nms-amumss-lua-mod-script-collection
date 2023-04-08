NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoSentinelMTLock.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.21",
["MOD_DESCRIPTION"]			= "Removes Sentinel MT Cabinet Lock",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
												"METADATA/REALITY/TABLES/COSTTABLE.MBIN",
											},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]		= {"Id", "C_ROBOGUN_OPEN"},
							["VCT"]		=
							{
								{"InteractionMissionState", "Unused"},
							}
						},
					}
				},
			}
		}
	}	
}