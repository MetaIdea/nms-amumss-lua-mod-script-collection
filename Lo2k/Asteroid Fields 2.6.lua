NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Asteroid Fields 2.6.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.34",
["MOD_DESCRIPTION"]			= "This mod changes asteroid repartition",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"AsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.15"},
								{"y",	"0.2"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"LargeAsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.18"},
								{"y",	"0.3"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"RareAsteroidNoiseRangeSomeRares"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.24"},
								{"y",	"0.25"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"RareAsteroidNoiseRangeLotsOfRares"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.28"},
								{"y",	"0.25"},
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AsteroidFadeRangeMin",	"0"},
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AsteroidSpacing",	"1500"},
								{"AsteroidMaxNumGenerates", "3500"},
							},
						}					
					}
				}
			}
		}
	}	
}