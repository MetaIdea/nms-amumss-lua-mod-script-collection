NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Analysis.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "v4.25.0.1",
["MOD_DESCRIPTION"]			= "Target scanning trigger time mimimized",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak", 
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"BinocsDisplayUnknownCreatures",		"True"},	-- Fractal "False" Shows distant spawn point for creatures deprecated
								{"BinocularScanTargetMinHeight",		"4"},		-- WayPoint "5" Tessting
								{"BinocularScanTargetHeightRange",		"1"},		-- WayPoint "0" 
								{"BinocTimeBeforeScan",					"0.0"}, 	-- WayPoint "0.5"
								{"BinocMinScanTime",					"0.0"},		-- WayPoint "2.2"
								{"BinocScanTime",						"0.0"}, 	-- WayPoint "2.2"
								{"BinocCreatureScanTime",				"0"},		-- WayPoint "1.9"
								{"BinocularScanTargetInitialFadeTime",	"0.0"}, 	-- WayPoint "0.5"
								-- {"BinocularScanTargetScale",			"0.5"},		-- WayPoint "0.8"
								{"BinocularScanTargetLineWidth",		"2"},		-- WayPoint "1"
								{"BinocularScanTargetFadeTime",			"0.0"}		-- WayPoint "0.5"								
							}
						}
					} --9 global replacements
				}
		    }
	    }	
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE