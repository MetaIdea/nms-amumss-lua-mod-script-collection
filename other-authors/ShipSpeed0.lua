NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipSpeed0.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "v4.34.0.1",
["MOD_DESCRIPTION"]			= "Ship Hover Zero Speed",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE", 
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak", 
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