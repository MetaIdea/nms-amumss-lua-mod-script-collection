NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BetterFlight-LOW+FAST+REVERSE+10xPulseSpeed+ZeroPulseDelay.pak",
["MOD_AUTHOR"]				= "based on Darconizers DarcFlight and converted and modified by Mjjstral",
["NMS_VERSION"]				= "1.77",
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
								{"MiniWarpSpeed",				"200000"},	-- Original v1.24 "20000", 	Original v1.77 ""
								{"MiniWarpChargeTime",			"0"},		-- Original v1.24 "2", 		Original v1.77 ""
								{"GroundHeightSmoothTime",		"10000000"},-- Original v1.24 "0.4", 	Original v1.77 "0"  --underwater	--THIS WILL GENERATE A WARNING
								{"GroundHeightSmoothTime",		"9000000"},-- Original v1.24 "0.4", 	Original v1.77 "0"  --underwater
								{"CollisionSpeedDamageAmount",	"1"},		-- Original v1.24 "", 		Original v1.77 "1"		
								{"CollisionDistanceGround",		"10"},		-- Original v1.24 "30", 		Original v1.77 "10"										
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",				"9999"}, 	-- Original v1.24 "150", 	Original v1.77 "80"
								{"MinSpeed",				"-5"},		-- Original v1.24 "50", 		Original v1.77 "0"
								{"BoostMaxSpeed",			"9999"},	-- Original v1.24 "1500", 	Original v1.77 "1200"			
								{"BoostFalloff",			"0"},		-- Original v1.24 "0.7", 	Original v1.77 "0.7"
								{"BoostingTurnDamp",		"0.5"},		-- Original v1.24 "0.1", 	Original v1.77 "0.1"	
								{"DirectionBrakeMin",		"0.5"},		-- Original v1.24 "1", 		Original v1.77 "1"			
								{"DirectionBrake",			"1"},		-- Original v1.24 "2", 		Original v1.77 "2"							
								{"OverspeedBrake",			"0.2"},		-- Original v1.24 "3", 		Original v1.77 "3"							
								{"TurnBrakeMin",			"0.5"},		-- Original v1.24 "1", 		Original v1.77 "1"							
								{"TurnBrakeMax",			"1"},		-- Original v1.24 "4", 		Original v1.77 "4"		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"ThrustForce",				"40"},		-- Original v1.24 "10", 		Original v1.77 "20"	
								{"MaxSpeed",				"400"}, 	-- Original v1.24 "125", 	Original v1.77 "125"
								{"MinSpeed",				"-5"},		-- Original v1.24 "35", 		Original v1.77 "20"								
								{"BoostThrustForce",		"200"},		-- Original v1.24 "50", 		Original v1.77 "100"		
								{"BoostMaxSpeed",			"500"},		-- Original v1.24 "150", 	Original v1.77 "155"				
								{"LowSpeedTurnDamper",		"1"},		-- Original v1.24 "0.3", 	Original v1.77 "0.25"	
								{"TurnBrakeMin",			"0.2"},		-- Original v1.24 "0.8", 	Original v1.77 "2"	
								{"TurnBrakeMax",			"5"},		-- Original v1.24 "6", 		Original v1.77 "3"	
								{"TurnStrength",			"10"},		-- Original v1.24 "5", 		Original v1.77 "1"
							}
						},						
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",				"9999"}, 	-- Original v1.24 "150", 	Original v1.77 "80"
								{"MinSpeed",				"-5"},		-- Original v1.24 "50", 		Original v1.77 "0"
								{"BoostMaxSpeed",			"9999"},	-- Original v1.24 "1500", 	Original v1.77 "1300"			
								{"BoostFalloff",			"0"},		-- Original v1.24 "0.7", 	Original v1.77 "0.7"
								{"BoostingTurnDamp",		"0.5"},		-- Original v1.24 "0.1", 	Original v1.77 "0.1"	
								{"DirectionBrakeMin",		"0.5"},		-- Original v1.24 "1", 		Original v1.77 "1"			
								{"DirectionBrake",			"1"},		-- Original v1.24 "2", 		Original v1.77 "1.5"							
								{"OverspeedBrake",			"0.2"},		-- Original v1.24 "3", 		Original v1.77 "3"							
								{"TurnBrakeMin",			"0.5"},		-- Original v1.24 "1", 		Original v1.77 "1"							
								{"TurnBrakeMax",			"1"},		-- Original v1.24 "4", 		Original v1.77 "4"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"ThrustForce",				"40"},		-- Original v1.24 "10", 		Original v1.77 "40"	
								{"MaxSpeed",				"400"}, 	-- Original v1.24 "125", 	Original v1.77 "125"
								{"MinSpeed",				"-5"},		-- Original v1.24 "35", 		Original v1.77 "20"								
								{"BoostThrustForce",		"200"},		-- Original v1.24 "50", 		Original v1.77 "200"		
								{"BoostMaxSpeed",			"500"},		-- Original v1.24 "150", 	Original v1.77 "155"				
								{"LowSpeedTurnDamper",		"1"},		-- Original v1.24 "0.3", 	Original v1.77 "0.25"	
								{"TurnBrakeMin",			"0.2"},		-- Original v1.24 "0.8", 	Original v1.77 "3"	
								{"TurnBrakeMax",			"5"},		-- Original v1.24 "6", 		Original v1.77 "4"	
								{"TurnStrength",			"10"},		-- Original v1.24 "5", 		Original v1.77 "1.65"
							}
						},						
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",				"9999"}, 	-- Original v1.24 "150", 	Original v1.77 "80"
								{"MinSpeed",				"-5"},		-- Original v1.24 "50", 		Original v1.77 "0"
								{"BoostMaxSpeed",			"9999"},	-- Original v1.24 "1500", 	Original v1.77 "1100"			
								{"BoostFalloff",			"0"},		-- Original v1.24 "0.7", 	Original v1.77 "0.7"
								{"BoostingTurnDamp",		"0.5"},		-- Original v1.24 "0.1", 	Original v1.77 "0.1"	
								{"DirectionBrakeMin",		"0.5"},		-- Original v1.24 "1", 		Original v1.77 "1"			
								{"DirectionBrake",			"1"},		-- Original v1.24 "2", 		Original v1.77 "2"							
								{"OverspeedBrake",			"0.2"},		-- Original v1.24 "3", 		Original v1.77 "3"							
								{"TurnBrakeMin",			"0.5"},		-- Original v1.24 "1", 		Original v1.77 "1"							
								{"TurnBrakeMax",			"1"},		-- Original v1.24 "4", 		Original v1.77 "4"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"ThrustForce",				"40"},		-- Original v1.24 "10", 		Original v1.77 "40"	
								{"MaxSpeed",				"400"}, 	-- Original v1.24 "125", 	Original v1.77 "80"
								{"MinSpeed",				"-5"},		-- Original v1.24 "35", 		Original v1.77 "0"								
								{"BoostThrustForce",		"200"},		-- Original v1.24 "50", 		Original v1.77 "500"		
								{"BoostMaxSpeed",			"500"},		-- Original v1.24 "150", 	Original v1.77 "1100"				
								{"LowSpeedTurnDamper",		"1"},		-- Original v1.24 "0.3", 	Original v1.77 "0.01"	
								{"TurnBrakeMin",			"0.2"},		-- Original v1.24 "0.8", 	Original v1.77 "1"	
								{"TurnBrakeMax",			"5"},		-- Original v1.24 "6", 		Original v1.77 "4"	
								{"TurnStrength",			"10"},		-- Original v1.24 "5", 		Original v1.77 "0.6"
							}
						}, --63 global replacements						
					}
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE