SIZE_MULTIPLIER = 0.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Condensed Systems.pak", 
["MOD_AUTHOR"]				= "CodenameAwesome",
["NMS_VERSION"]				= "2.33",
["MOD_DESCRIPTION"]			= "Makes planets spawn closer together.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"SolarSystemMaximumRadius",SIZE_MULTIPLIER},
								{"SolarSystemMaximumRadiusMassive",SIZE_MULTIPLIER}
							}
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED 
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE