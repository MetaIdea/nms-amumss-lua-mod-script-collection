NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "HideAllNotifications.pak",
["MOD_AUTHOR"]				= "Mjjstral and idea by LazMonk",
["NMS_VERSION"]				= "2.06",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "UI\HUD\HUDINDICATORS.MBIN", "UI\HUD\HUDLINES.MBIN" },
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
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE