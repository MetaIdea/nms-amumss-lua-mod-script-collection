NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DisableSaving.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DisableSaving",				"True"} 	-- Original "False"
							}
						}
					}
				}
			}
		}
	}	
}
