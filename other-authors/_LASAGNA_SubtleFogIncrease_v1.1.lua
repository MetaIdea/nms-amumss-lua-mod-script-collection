NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_SubtleFogIncrease_v1.1.pak",       
["MOD_AUTHOR"]				= "Lllasagna",         
["NMS_VERSION"]				= "3.68",     
["MODIFICATIONS"] 			=             
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --globals
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["INTEGER_TO_FLOAT"]    = "FORCE",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
						["PRECEDING_KEY_WORDS"] = { "PlanetProperties", "PlanetFog" },
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
					}
				},
				--{
					--["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN", --this conflicts with objectsizeincrease
					--["EXML_CHANGE_TABLE"] 	= 
					--{
						--{
							--["VALUE_CHANGE_TABLE"] 		= 
							--{	
								--{ "FoliageSaturationMin", 			"0.8" }, 		--Original "0.6"
								--{ "FoliageSaturationMax", 			"0.9" }, 		--Original "0.8"
								--{ "GrassSaturationMin", 			"0.8" }, 		--Original "0.6"
								--{ "GrassSaturationMax", 			"0.9" }, 		--Original "0.7"
								--{ "SkySaturationMin", 				"0.8" }, 		--Original "0.7"
								--{ "SkySaturationMax", 				"0.9" }, 		--Original "0.8"
								--{ "WaterSaturation", 				"0.9" }, 		--Original "0.8"
							--}
						--}
					--}
				--},
			}
		}
	}	
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE