NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "rocketboots.pak",
["MOD_DESCRIPTION"]			= "Rocket Boots mod",
["MOD_AUTHOR"]				= "max188",
["NMS_VERSION"]				= "23.22",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RocketBootsDoubleTapTime",					".3"}, 	-- Original ".2"
								{"RocketBootsDriftForce",					"50"}, 	-- Original "30"
								{"RocketBootsMinDesiredHeight",				"4"}, 	-- Original "2"
								{"RocketBootsDriftEndTime",				"20"}, 	-- Original "2"	
								{"RocketBootsBoostTankDrainSpeed",				"2"}, 	-- Original "6"
								{"RocketBootsDriftTankDrainSpeed",				".75"}, -- Original "1"
							}	
						}						
					} --6 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE