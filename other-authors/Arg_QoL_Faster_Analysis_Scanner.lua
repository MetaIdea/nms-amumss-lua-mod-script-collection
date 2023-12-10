--[[

	Name:
		Argual's Quality of Life Analysis Scanner

	Description:
		Analysis scanner reactivity improvements.
			Greatly reduces scanning time (from ~3 sec to ~1 sec).
			Reduces the initial delay before the scanner starts scanning.

	Modified files:
		GCGAMEPLAYGLOBALS.GLOBAL.MBIN

--]]


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_Faster_Analysis_Scanner.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
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
							["PRECEDING_KEY_WORDS"] = { },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan",						0.2},	-- Original: 0.5
								{"BinocMinScanTime",						0.9},	-- Original: 3.9
								{"BinocScanTime",							0.9},	-- Original: 3.9
								{"BinocCreatureScanTime",					0.9},	-- Original: 3.2
								{"BinocularScanTargetInitialFadeTime",		0.2},	-- Original: 0.5
								{"BinocularScanTargetFadeTime",				0.2},	-- Original: 0.5
							}	
						},
					}
				},
			}
		},
	}
}
