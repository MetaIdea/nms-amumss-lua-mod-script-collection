NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Ship Transfer Range 3.9.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "This mods increases default ship transfer range from 50 to 200m",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipInteractRadius",	"200"}
							}
						}
					}
				}
			}
		}
	}	
}