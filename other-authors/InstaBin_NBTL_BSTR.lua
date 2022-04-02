NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "InstaBin_NBTL_BSTR.pak",
  ["MOD_DESCRIPTION"]		= "Instant Binocular Scan & Hotspot + No Blinding Torch Light + Better Ship Transfer Range",
  ["MOD_AUTHOR"]			= "SPooCK",
  ["NMS_VERSION"]			= "1.0.2",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- Instant Binocular Scan & Hotspot
								{"BinocTimeBeforeScan",	"0"},
								{"BinocMinScanTime",	"0.5"},
								{"BinocScanTime",	"0.5"},
								{"BinocCreatureScanTime",	"0.5"},
								{"SurveyMaxDistance",	"800"},
								-- No Blinding Torch Light
								{"TorchStrength",	"2"},
								-- Better Ship Transfer Range
								{"ShipInteractRadius",	"1000000000000"}
							}	
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE