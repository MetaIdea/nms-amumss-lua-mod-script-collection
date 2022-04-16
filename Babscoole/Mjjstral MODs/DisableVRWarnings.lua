NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Disable-VR-Warnings.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_MAINTENANCE"]			= "Babscoole",
["NMS_VERSION"]				= "3.84",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDVRWARNING.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",						"True"}, 	-- Original "False"								
							}
						}
					}
				}
			}
		}
	}	
}