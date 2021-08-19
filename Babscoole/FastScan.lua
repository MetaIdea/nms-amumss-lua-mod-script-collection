NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FastScan.pak",
["MOD_AUTHOR"]				= "Osher",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.53",
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
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocMinScanTime",					"1"},		-- Original "3.9"
								{"BinocScanTime",						"1"}, 		-- Original "3.9"
								{"BinocCreatureScanTime",				"1"},		-- Original "3.2"							
							}
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE