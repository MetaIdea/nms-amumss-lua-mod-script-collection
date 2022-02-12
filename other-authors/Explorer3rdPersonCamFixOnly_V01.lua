NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Explorer3rdPersonCamFixOnly_V01.pak",
["MOD_AUTHOR"]				= "Jordan_Twiggza",
["NMS_VERSION"]				= "2.62",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SCIENCE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
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