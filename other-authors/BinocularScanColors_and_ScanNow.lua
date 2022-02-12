NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BinocularScanColors_and_ScanNow.pak",
["MOD_DESCRIPTION"]			= "For easier distinguishing change unknown flora to red, known to green and fast scanning",
["MOD_AUTHOR"]				= "Sefer",
["NMS_VERSION"]				= "3.3",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedEffect",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"BasecolourIntensity",	"2.0"},
								{"ScanlinesSeparation",	"20"},
								{"FresnelIntensity",	"-50"},
								{"GlowIntensity",	"5"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedColour",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"R",	"0"},
								{"G",	"1"},
								{"B",	"0"},
								{"A",	"1"},				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedUnknownColour",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"R",	"1"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"1"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"BinocTimeBeforeScan",					"0.1"}, 	-- Original "0.5"
								{"BinocMinScanTime",					"0.1"},		-- Original "3.9"
								{"BinocScanTime",						"0.1"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"0.1"},		-- Original "3.2"
								--{"BinocularScanTargetInitialFadeTime",	"0.1"}, 	-- Original "0.5"
								--{"BinocularScanTargetFadeTime",			"0.1"}		-- Original "0.5"
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE