NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Reverse+Hover+Underwater+10xPulseSpeed.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",   --game version on first mod release
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["PRECEDING_KEY_WORDS"] = "",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HoverTakeoffHeight",		"45"}, 		-- Original "90"
								{"HoverMinSpeed",			"-1"},		-- Original "1"
								{"GroundHeightSmoothTime",	"1000000"},	-- Original "0"  --underwater
								{"GroundHeightSmoothTime",	"9000000"},	-- Original "0"  --underwater					
								{"MiniWarpSpeed",			"200000"},	-- Original "20000"
								{"MiniWarpChargeTime",		"0"},		-- Original "2"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "Control",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",				"-5"}, 		-- Original "0"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "ControlLight",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",				"-5"}, 		-- Original "0"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "ControlHeavy",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",				"-5"}, 		-- Original "0"
							}
						},						
					}
				},
			}
		},
	}	
}