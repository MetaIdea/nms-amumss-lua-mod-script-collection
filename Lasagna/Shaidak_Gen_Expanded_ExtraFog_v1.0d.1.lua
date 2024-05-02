NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Shaidak_Gen_Expanded_ExtraFog_v1.0d.1.pak",       
["MOD_AUTHOR"]				= "FjordFish",         
["NMS_VERSION"]				= "",     
["MODIFICATIONS"] 			=             
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "FogColourStrength", 			"7"   }, --Original "10"
								{ "HeightFogStrength", 			"0.3" }, --Original "0.08"
								{ "HeightFogFadeOutStrength", 	"0.1" }, --Original "0.25"
								{ "HeightFogMax", 				"0.6" }, --Original "0.8"
								{ "FogHeight", 					"10"   }, --Original "128" --too low = jarring in flight
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFlightFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "FogColourStrength", 			"7"   }, --Original "10"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogFadeOutStrength", 	"0.15" }, --Original "0.25"
								{ "HeightFogMax", 				"0.7" }, --Original "0.8"
								{ "FogHeight", 					"10"   }, --Original "128" --too low = jarring in flight
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetExtremeFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "FogColourStrength", 			"4"   }, --Original "10"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogMax", 				"0.6" }, --Original "0.8"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetStormFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "FogColourStrength", 			"4"   }, --Original "10"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogMax", 				"0.5" }, --Original "0.8"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MinStormLengthLow", 			"30" }, --Original "120"
								{ "MaxStormLengthLow", 			"45" }, --Original "180"
								{ "MinStormLengthHigh", 		"38" }, --Original "150"
								{ "MaxStormLengthHigh", 		"80" }, --Original "320"
								{ "FogColourStrength", 			"4"   }, --Original "10"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogMax", 				"0.5" }, --Original "0.8"
								{ "FogStrength", 				"0.25" }, --Original "0.04" --tried 0.2
								{ "FogMax", 					"1" }, --Original "1" --tried 0.9
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "PhotoModeVignette",
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	1},
								{"y",	1},
							}
						},
					}
				},
			}
		}
	}	
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE