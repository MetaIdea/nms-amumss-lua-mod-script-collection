NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpeedIncrease-LessFuel-FastScan-Vehicles60.pak",
["MOD_AUTHOR"]				= "MikePixelPusher",
["NMS_VERSION"]				= "3.10b",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechJetpackMaxSpeed",		"80"}, 	-- Original "20"
								{"MechJetpackMaxUpSpeed",	"50"}, 	-- Original "20"
								{"MechJetpackDrainRate",	".02"}, 	-- Original ".5"
								{"MechJetpackFillRate",		"4"}, 	-- Original ".5"
								{"MechJetpackTurnSpeed",		"6"}, 	-- Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Name", "BIKE" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"60"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"60"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Name", "MED_BUGGY" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"60"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"60"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Name", "TRUCK" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"60"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"60"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Name", "WHEELEDBIKE" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"60"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"60"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Name", "HOVERCRAFT" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"60"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"60"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Name", "SUBMARINE" },
						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"60"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"60"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"VehicleFuelRate",	"0.1"}, 	-- Original "0.4"
                                {"VehicleBoostFuelRate",	"0.2"}, 	-- Original "2"
								{"ChargeTime",	"1"}, 	-- Original "20"	
								{"VehicleBoostTime",	"3.5"},	-- Original "2.5"
								{"VehicleBoostMaxSpeed",	"40"},	-- Original "40"
								{"VehicleBoostExtraMaxSpeedAir",	"42"},	-- Original "40"
								{"VehicleBoostRechargeTime",	"1.5"},	-- Original "2"
								{"WheelMaxDecelForceBraking",	"28"}, 	-- Original "8"
							}
						}
					} 
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE