NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fast Scans 1s.pak",
["MOD_DESCRIPTION"]			= "Reduces the time to scan objects to 1 second",
["MOD_AUTHOR"]				= "Danatael",
["NMS_VERSION"]				= "3.+",
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
								{"BinocTimeBeforeScan",	 	"0.5"}, 	-- Original "0.5"
								{"BinocMinScanTime",	 	"1"}, 		-- Original "3.9"
								{"BinocScanTime", 	 	"1"},		-- Original "3.9"
								{"BinocCreatureScanTime",	"1"}, 		-- Original "3.2"
							}
						},
					}
				},				
			}
		},
	}	
}