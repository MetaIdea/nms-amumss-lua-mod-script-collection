NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ScanTimesAndRangeImprove.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
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
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"BinocTimeBeforeScan",					"0.1"}, 	-- Original "0.5"
								{"BinocMinScanTime",					"0"},		-- Original "3.9"
								{"BinocScanTime",						"0"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"0"},		-- Original "3.2"
								--{"BinocularScanTargetInitialFadeTime",	"0.1"}, 	-- Original "0.5"
								--{"BinocularScanTargetFadeTime",			"0.1"}		-- Original "0.5"
								--{"TerrainResourceScanTime",				"30"},	-- Original "30"
								--{"TerrainResourceScanRange",			"1200"}, 	-- Original "1200"								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"400"},	-- Original "200"			
								{"ChargeTime",					"2"} 	-- Original "30"		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"500"},	-- Original "150"			
								{"ChargeTime",					"4"} 	-- Original "90"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"20000"},	-- Original "10000"			
								{"ChargeTime",					"2"} 		-- Original "10"							
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