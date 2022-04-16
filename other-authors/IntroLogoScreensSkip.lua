NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "IntroLogoScreensSkip.pak",
["MOD_AUTHOR"]				= "CamDev",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\BOOTLOGOPC.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DisplayTime1",				"0"}, 	-- Original "3"
								{"DisplayTime2",				"0"}, 	-- Original "2"
								{"DisplayTime3",				"0"}, 	-- Original "1"
								{"DisplayTime4",				"0"} 	-- Original "1"
							}
						}
					} --4 replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE