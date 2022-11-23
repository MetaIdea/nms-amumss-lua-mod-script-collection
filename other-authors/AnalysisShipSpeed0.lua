NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AnalysisShipSpeed0.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "4.0+ Build ID 9964564",
["MOD_DESCRIPTION"]			= "Target scanning trigger time mimimized, Sandworm",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocsDisplayUnknownCreatures",		"True"},	-- WayPoint "False" Shows distant spawn point for creatures
								{"BinocularScanTargetMinHeight",		"4"},		-- WayPoint "5" Tessting
								{"BinocularScanTargetHeightRange",		"1"},		-- WayPoint "0" 
								{"BinocTimeBeforeScan",					"0.0"}, 	-- WayPoint "0.5"
								{"BinocMinScanTime",					"0.0"},		-- WayPoint "2.2"
								{"BinocScanTime",						"0.0"}, 	-- WayPoint "2.2"
								{"BinocCreatureScanTime",				"0"},		-- WayPoint "1.9"
								{"BinocularScanTargetInitialFadeTime",	"0.0"}, 	-- WayPoint "0.5"
								-- {"BinocularScanTargetScale",			"0.5"},		-- WayPoint "0.8"
								{"BinocularScanTargetLineWidth",		"2"},		-- WayPoint "1"
								{"BinocularScanTargetFadeTime",			"0.0"}		-- WayPoint "0.5"								
							}
						}
					} --10 global replacements
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						    ["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						    ["VALUE_CHANGE_TABLE"] 	= 
							{
								
								 {"MinSpeed", 							"0" }, 		--The minimum speed of standard thrusters. Setting to 0 for space will allow full-stops and reversing; for planets it allows hovering. [Default "20"]
							}
						},
						{
						    ["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						    ["VALUE_CHANGE_TABLE"] 	= 
							{
								
								{ "MinSpeed", 							"0" }, 		--The minimum speed of standard thrusters. Setting to 0 for space will allow full-stops and reversing; for planets it allows hovering. [Default "20"]
							}
						},
						{
						    ["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						    ["VALUE_CHANGE_TABLE"] 	= 
							{
								
								{ "MinSpeed", 							"0" }, 		--The minimum speed of standard thrusters. Setting to 0 for space will allow full-stops and reversing; for planets it allows hovering. [Default "20"]
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