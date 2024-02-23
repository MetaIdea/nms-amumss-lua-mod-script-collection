NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Shorter Arrival Messages 4.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mods reduces hang time when arriving at a new location",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DiscoverPlanetTotalTime",	"5"}, -- original 10
								{"DiscoverPlanetMessageWait",	"0"},  -- original 1
								{"DiscoverPlanetMessageTime",	"3"},  --original 7
							}
						}
					}
				}
			}
		}
	}	
}