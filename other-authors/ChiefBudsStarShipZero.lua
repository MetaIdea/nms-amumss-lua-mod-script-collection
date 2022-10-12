NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ChiefBudsStarShipZero.pak",
["MOD_AUTHOR"]				= "CHIEF_BUD",
["NMS_VERSION"]				= "4.0.0",
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
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								-- { "MaxSpeed", 							"600" }, 	--The maximum speed the standard thrusters will reach. [Default "125"]
								{ "MinSpeed", 							"0" }, 		--The minimum speed of standard thrusters. Setting to 0 for space will allow full-stops and reversing; for planets it allows hovering. [Default "20"]
								-- { "Falloff", 							"0" }, 		--Determines how fast the speed from the standard thrusters will fall over time when not in use [Default "0.5"]
								-- { "BoostMaxSpeed", 						"600" }, 	--The maximum speed the Boost will reach. [Default "155]
								-- { "BoostFalloff", 						"0" }, 		--Determines how fast the Boost speed will fall over time when not in use [Default "0.7"]
								-- { "OverspeedBrake", 					"0" } 		--Not entirely known. Possibly the brake applied when exceeding the MaxSpeed setting. [Default "3"]
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								-- { "MaxSpeed", 							"600" }, 	--The maximum speed the standard thrusters will reach. [Default "125"]
								{ "MinSpeed", 							"0" }, 		--The minimum speed of standard thrusters. Setting to 0 for space will allow full-stops and reversing; for planets it allows hovering. [Default "20"]
								-- { "Falloff", 							"0" }, 		--Determines how fast the speed from the standard thrusters will fall over time when not in use [Default "0.5"]
								-- { "BoostMaxSpeed", 						"600" }, 	--The maximum speed the Boost will reach. [Default "155]
								-- { "BoostFalloff", 						"0" }, 		--Determines how fast the Boost speed will fall over time when not in use [Default "0.7"]
								-- { "OverspeedBrake", 					"0" } 		--Not entirely known. Possibly the brake applied when exceeding the MaxSpeed setting. [Default "3"]
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								-- { "MaxSpeed", 							"600" }, 	--The maximum speed the standard thrusters will reach. [Default "125"]
								{ "MinSpeed", 							"0" }, 		--The minimum speed of standard thrusters. Setting to 0 for space will allow full-stops and reversing; for planets it allows hovering. [Default "20"]
								-- { "Falloff", 							"0" }, 		--Determines how fast the speed from the standard thrusters will fall over time when not in use [Default "0.5"]
								-- { "BoostMaxSpeed", 						"600" }, 	--The maximum speed the Boost will reach. [Default "155]
								-- { "BoostFalloff", 						"0" }, 		--Determines how fast the Boost speed will fall over time when not in use [Default "0.7"]
								-- { "OverspeedBrake", 					"0" } 		--Not entirely known. Possibly the brake applied when exceeding the MaxSpeed setting. [Default "3"]
							}
						},
					}
				},				
			}
		},
	}	
}