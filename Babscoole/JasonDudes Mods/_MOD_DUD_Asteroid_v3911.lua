NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_MOD_DUD_Asteroid_v3911.pak", 
["MOD_AUTHOR"]      = "jasondude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.91",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AsteroidScaleVariance"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x",	"0.3"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LargeAsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x",	"0.4"},
								{"y",	"0.55"},
							},
						},
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PlanetInvalidAsteroidZone",	"40000"},
								{"AsteroidNoiseScale",	"350000"},
								{"AsteroidDetailNoiseScale",	"2500"},
								{"AsteroidNoiseOctaves",	"3"},
								{"AsteroidNoiseMinCutoff",	"-0.01"},
								{"AsteroidNoiseMaxCutoff",	"0.01"},
								{"AsteroidFadeTime",	"0.1"},
								{"AsteroidFadeRangeMin",	"4000"},
								{"AsteroidFadeRangeMax",	"6000"},
								{"AsteroidSpacing",	"1500"},
								{"LargeAsteroidFadeRangeMax",	"6000"},
								{"AsteroidSpaceStationAvoidRadius",	"10000"},
								{"AsteroidAnomalyAvoidRadius",	"10000"},
								{"AsteroidWarpInAreaAvoidRadius",	"10000"},
							},
						}					
					}
				}
			}
		}
	}	
}