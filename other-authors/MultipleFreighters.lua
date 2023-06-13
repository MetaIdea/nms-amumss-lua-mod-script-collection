NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MultipleFreighters.pak",
["MOD_DESCRIPTION"]			= "MultipleFreighters",
["MOD_AUTHOR"]				= "Gobi42",
["NMS_VERSION"]				= "4.23",
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
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MultiplePlayerFreightersInASystem", "True"},
							}
						}
					}
				}
			}
		}
	}	
}