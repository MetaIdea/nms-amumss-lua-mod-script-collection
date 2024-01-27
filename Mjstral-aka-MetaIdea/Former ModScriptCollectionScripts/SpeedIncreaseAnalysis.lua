NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpeedIncreaseAnalysis.pak",
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
								{"BinocTimeBeforeScan",					"0.2"}, 	-- Original "0.5"
								{"BinocMinScanTime",					"0.7"},		-- Original "3.9"
								{"BinocScanTime",						"0.7"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"0.7"},		-- Original "3.2"
								{"BinocularScanTargetInitialFadeTime",	"0.2"}, 	-- Original "0.5"
								{"BinocularScanTargetFadeTime",			"0.2"}		-- Original "0.5"
								--{"TerrainResourceScanTime",				"30"},	-- Original "30"
								--{"TerrainResourceScanRange",			"1200"}, 	-- Original "1200"								
							}
						}
					} --6 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
