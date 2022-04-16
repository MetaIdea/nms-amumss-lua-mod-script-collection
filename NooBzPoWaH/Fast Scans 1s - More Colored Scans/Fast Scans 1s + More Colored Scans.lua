BinocularSelectedKnownRed = 0.3					-- Original 0.588
BinocularSelectedKnownGreen = 1					-- Original 1
BinocularSelectedKnownBlue = 0.3				-- Original 0.639
BinocularSelectedKnownAlpha = 1					-- Original 1
BinocularSelectedUnknownRed = 1					-- Original 0.926
BinocularSelectedUnknownGreen = 0.1				-- Original 0.539
BinocularSelectedUnknownBlue = 0				-- Original 1
BinocularSelectedUnknownAlpha = 1				-- Original 1

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fast Scans 1s + More Colored Scans.pak",
["MOD_DESCRIPTION"]			= "Reduces the time to scan objects to 1 second & more colorful targets for scans",
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
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedColour",
							["VALUE_CHANGE_TABLE"] = {
								{"R", BinocularSelectedKnownRed},
								{"G", BinocularSelectedKnownGreen},
								{"B", BinocularSelectedKnownBlue},
								{"A", BinocularSelectedKnownAlpha}
								}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "BinocularSelectedUnknownColour",
							["VALUE_CHANGE_TABLE"] = {
								{"R", BinocularSelectedUnknownRed},
								{"G", BinocularSelectedUnknownGreen},
								{"B", BinocularSelectedUnknownBlue},
								{"A", BinocularSelectedUnknownAlpha}
								}
						},					
					}
				},				
			}
		},
	}	
}