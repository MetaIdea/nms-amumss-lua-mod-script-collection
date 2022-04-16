NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ScanNow.pak",
["MOD_AUTHOR"]				= "SnapperBait",
["NMS_VERSION"]				= "3.02",
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
								{"BinocMinScanTime",					"0.1"},		-- Original "3.9"
								{"BinocScanTime",						"0.1"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"0.1"},		-- Original "3.2"
								--{"BinocularScanTargetInitialFadeTime",	"0.1"}, 	-- Original "0.5"
								--{"BinocularScanTargetFadeTime",			"0.1"}		-- Original "0.5"
							}
						},
					}
				},
			} 
		},
	} --3 global replacements}
}