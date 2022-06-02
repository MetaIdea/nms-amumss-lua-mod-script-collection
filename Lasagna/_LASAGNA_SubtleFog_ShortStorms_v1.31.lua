NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_SubtleFog_ShortStorms_v1.31.pak",       
["MOD_AUTHOR"]				= "Lasagna",         
["NMS_VERSION"]				= "",     
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
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "FogStrength", 				"0.15" }, --Original "0.04" --tried 0.2
								{ "FogMax", 					"0.7" }, --Original "1" --tried 0.9
								{ "FogColourStrength", 			"10"   }, --Original "10"
								--{ "FogColourMax", 				"1"   }, --Original "1"
								{ "HeightFogStrength", 			"0.3" }, --Original "0.08"
								{ "HeightFogFadeOutStrength", 	"0.1" }, --Original "0.25"
								--{ "HeightFogOffset", 			"0"   }, --Original "0"
								{ "HeightFogMax", 				"0.6" }, --Original "0.8"
								{ "FogHeight", 					"128"   }, --Original "128" --too low = jarring in flight
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFlightFog" },
						["INTEGER_TO_FLOAT"]    = "FORCE",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "FogStrength", 				"0.08" }, --Original "0.04" --tried 0.2
								{ "FogMax", 					"0.7" }, --Original "1" --tried 0.9
								{ "FogColourStrength", 			"10"   }, --Original "10"
								--{ "FogColourMax", 				"1"   }, --Original "1"
								{ "HeightFogStrength", 			"0.15" }, --Original "0.08"
								{ "HeightFogFadeOutStrength", 	"0.15" }, --Original "0.25"
								--{ "HeightFogOffset", 			"0"   }, --Original "0"
								{ "HeightFogMax", 				"0.7" }, --Original "0.8"
								{ "FogHeight", 					"64"   }, --Original "128" --too low = jarring in flight
							}
						},
						{
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"] 	= 
							{	
								{ "MinStormLengthLow", 				"30" }, --Original "120"
								{ "MaxStormLengthLow", 				"45" }, --Original "180"
								{ "MinStormLengthHigh", 				"38" }, --Original "150"
								{ "MaxStormLengthHigh", 				"80" }, --Original "320"
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