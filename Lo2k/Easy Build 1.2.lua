NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Easy Build 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "This mods reduces snapping distance",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildingPlacementDefaultMinDistance",	"-2.0"}, -- original 3.0, -3.0 to place items at your feet
								{"BuildingPlacementDefaultMinDistanceVR",	"-2.0"},  -- original 0.0
							}
						}
					}
				}
			}
		}
	}	
}