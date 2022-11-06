NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TestMod.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",				"1.0"}, -- Original "0.62"
								{"MaxNightFade",				"1.0"}	-- Original ""0.68"
							}
						} 
					}
				} ,
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
								{"GroundHeightSmoothTime",	"9999999"},-- Original "0"  --underwater					
								{"MiniWarpSpeed",			"200000"},	-- Original "20000"
								{"MiniWarpChargeTime",		"0"}		-- Original "2"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "Control",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",				"-5"} 		-- Original "0"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "ControlLight",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",				"-5"} 		-- Original "0"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "ControlHeavy",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",				"-5"} 		-- Original "0"
							}
						}						
					}
				}
			}
		} ,
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = "Ship_Hyperdrive_JumpDistance",
              ["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"9999999"} 	-- Original "100"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","JET1",},
							["PRECEDING_KEY_WORDS"] = "Suit_Jetpack_Tank",
              ["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"9999999"}		-- Original "2.75"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","LAUNCHER",},
							["PRECEDING_KEY_WORDS"] = "Ship_Launcher_TakeOffCost",
              ["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"0"}		-- Original "50"
							}
						},
					}
				},
			}
		}, --13 global replacements		
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE


