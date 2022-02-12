
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VOID_EGGS_OVER_EASY.pak",
["MOD_AUTHOR"]				= "Makto",
["NMS_VERSION"]				= "3.21",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"NeverShow","True"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NeverShow", "False"}
							}	
						},					
						{
							["SPECIAL_KEY_WORDS"] = {"Time","79200"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Time", "30"}
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