NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpeedIncrease-LessFuel-FastScan-Vehicles40.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.34",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{

						{
							["SPECIAL_KEY_WORDS"] = { "Name", "BIKE" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"41"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"40"}, 	-- Original "15"

							}
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "MED_BUGGY" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"41"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"40"}, 	-- Original "15"

							}
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "TRUCK" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"41"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"40"}, 	-- Original "15"

							}
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "WHEELEDBIKE" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"41"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"40"}, 	-- Original "15"

							}
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "HOVERCRAFT" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"41"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"40"}, 	-- Original "15"

							}
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "SUBMARINE" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",				"41"}, 	-- Original "18"
								{"UnderwaterEngineMaxSpeed",	"40"}, 	-- Original "15"

							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {},
							["REPLACE_TYPE"] 		= "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"VehicleFuelRate",	"0.1"}, 	-- Original "0.4"
                                {"VehicleBoostFuelRate",	"0.1"}, 	-- Original "2"
								{"VehicleBoostRechargeTime",	"1"}, 	-- Original "20"	
								{"VehicleBoostTime",	"3"} 	-- Original "2.5"
							}
						}
					} 
				}
			}
		}
	}	 --23 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE