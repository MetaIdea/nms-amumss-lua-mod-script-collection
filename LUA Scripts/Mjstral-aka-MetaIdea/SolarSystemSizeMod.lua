NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SolarSystemSizeMod.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.24",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "SolarSystemSize",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "x", "8388608" },
								{ "y", "524288" },
								{ "z", "8388608" },
								{ "t", "0" },
							}
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "SolarSystemMaximumRadius", 			"500000" },
								{ "SolarSystemMaximumRadiusMassive", 	"1000000" },
								{ "GenerateMaximumSolarSystem", 		"False" },
								{ "GenerateForcedNumberPlanets", 		"0" },
							}
						}
					} 
				}
			}
		}
	}	
}
