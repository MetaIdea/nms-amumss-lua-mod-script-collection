NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BetterRocketBoots.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.2",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"RocketBootsImpulse",		10},
								{"RocketBootsBoostForce",	200},
								{"RocketBootsForceDuration",	0.5},
								{"RocketBootsMinDesiredHeight",	3},
								{"RocketBootsMaxDesiredHeight",	12},
								{"RocketBootsHeightAdjustTime",		0.7},
								{"RocketBootsHeightAdjustUpStrength",	0.5},
								{"RocketBootsHeightAdjustDownStrength",	0.5},
								{"RocketBootsBoostTankDrainSpeed",	1},
								{"RocketBootsMaxSpeed",	30},
								{"RocketBootsDoubleTapTime",    0.3},
								{"RocketBootsDriftForce",		50},
								{"RocketBootsDriftEndTime",		12},
								{"RocketBootsWindUpBraking",	0.99},
								{"RocketBootsDriftBraking",	0.99},
							}
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE