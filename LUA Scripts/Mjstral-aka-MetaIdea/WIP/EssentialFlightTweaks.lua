NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EssentialFlightTweaks.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "3.21+",
["DESCRIPTION"]				= "Reverse+Hover+Underwater+10xPulseSpeed",
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
								{"ApplyHeightForce", 			"False"},
								{"ApplyHeightAlign", 			"False"},
								{"DoPreCollision", 				"False"},
								{"GroundHeightSoftForce", 		"1"},
								{"GroundHeightSoft", 			"1"},
								{"GroundHeightSoftHorizontal", 	"1"},
								{"GroundHeightPostCollisionMultiplier", 	"0.1"},
								{"GroundHeightPostCollisionMultiplierTime", "1"},  
								{"PostWarpSlowDownTime", 					"1"},
								{"PulseDrivePlanetApproachHeight", 			"2000"}, -- Original "6000"

								{"HoverTakeoffHeight",		"45"}, 		-- Original "90"
								{"HoverMinSpeed",			"-1"},		-- Original "1" 	--reverse flight
								--{"GroundHeightSmoothTime",	"9000000"},-- Original "0"  --underwater					
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