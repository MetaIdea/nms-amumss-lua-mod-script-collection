NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "IntroLogoScreensSkip.pak",
["MOD_AUTHOR"]				= "CamDev,Babscoole,FriendlyFirePL",
["NMS_VERSION"]				= "4.65_(org_2.09)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\BOOTLOGOPC.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["PRECEDING_KEY_WORDS"] = "NMSString0x100.xml",
							["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {{"Value","",},},
                        },

						{
                            ["PRECEDING_KEY_WORDS"] = "DisplayTime",
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"}, -- Original "3"
                                {"IGNORE", "0"}, -- Original "2"
                                {"IGNORE", "0"}, -- Original "1"
                                {"IGNORE", "0"}, -- Original "1"
                            }
                        },
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE