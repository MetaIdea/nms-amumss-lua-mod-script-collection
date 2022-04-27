NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_InstantScan.pak", 
["MOD_AUTHOR"]				= "Fiatpax",
["NMS_VERSION"]				= "1.0.0",
["MOD_DESCRIPTION"]			= "Instantly scan unknown objects, no delay, no fuss, save time, enjoy.",
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
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan",	"0"},
								{"BinocMinScanTime",	"0"},
								{"BinocScanTime",	"0"},
								{"BinocCreatureScanTime",	"0"},
								{"BinocularScanTargetInitialFadeTime",	"0"},
								{"BinocularScanTargetFadeTime",	"0"}
							}
						}
					}
				}
			}
		}
	}	
}