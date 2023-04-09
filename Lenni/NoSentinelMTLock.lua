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
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\ROBOTBASE\ENTITIES\ROBOTWEAPONCRATE.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"]		= "ActivationCost",
							["REMOVE"]	= "SECTION",
						},
					}
				},
			}
		}
	}	
}