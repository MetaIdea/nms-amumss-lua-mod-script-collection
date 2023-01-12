SIZE_MULTIPLIER = 10

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Extended Systems.pak", 
["MOD_AUTHOR"]				= "AsteroidsEntity",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "Makes planets spawn further apart.",
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