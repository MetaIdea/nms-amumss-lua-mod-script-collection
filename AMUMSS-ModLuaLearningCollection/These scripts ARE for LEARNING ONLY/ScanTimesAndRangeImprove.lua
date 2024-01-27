NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ScanTimesAndRangeImprove.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
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
					} --9 global replacements
				},
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "400"}, -- Original "200"
                                {"ChargeTime", "2"},   -- Original "30"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "500"}, -- Original "150"
                                {"ChargeTime", "4"},   -- Original "90"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "20000"}, -- Original "10000"
                                {"ChargeTime", "2"},  -- Original "10"
                            }
                        },
                    }
                },
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
