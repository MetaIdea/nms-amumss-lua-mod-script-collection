NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TurnRainstormsIntoRain.pak",
["MOD_AUTHOR"]				= "Florian B.",
["NMS_VERSION"]				= "3.8",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- Weather
								{"ForceStormStrength",			0},
								{"MaxCloudCover",			5},
								{"StormAudioLevel",			0},
								{"InFlightStormStrength",		0},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetStormFog","HeavyAir"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Thickness",		"0"}, -- Original "1"
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "PlanetStormFog",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FogStrength",		"0"}, -- Original "1.5"
							}	
						},
					}
				},
			}
		},
	}	
}