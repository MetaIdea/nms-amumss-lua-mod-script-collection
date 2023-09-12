NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "InstantBin.pak",
  ["MOD_DESCRIPTION"]		= "Instant Binocular Scan",
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
								{"BinocTimeBeforeScan",	"1"},
								{"BinocMinScanTime",	"0.5"},
								{"BinocScanTime",	"0.5"},
								{"BinocCreatureScanTime",	"0.5"},
								{"WaypointScanTime",	"0.5"},
								{"SurveyMaxDistance",	"800"},
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