DELAY = "0"		-- Change the delay here
SCANTIME = "0"	-- Change the scanning time here

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = "FasterScanning",
	["MOD_AUTHOR"] = "Flugelwulff",
	["LUA_AUTHOR"] = "Flugelwulff",
	["NMS_VERSION"] = "6.17",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"BinocTimeBeforeScan",		   DELAY}, -- Original "0.5"
								{"BinocMinScanTime",		SCANTIME}, -- Original "2.2"
								{"BinocScanTime",			SCANTIME}, -- Original "2.2"
								{"BinocCreatureScanTime",	SCANTIME}, -- Original "1.9"
							}
						}
					}
				}
			}
		}
	}
}