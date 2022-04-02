NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_BetterLandings.pak",
["MOD_AUTHOR"]		= "degraaaff",
["NMS_VERSION"]		= "1.9",
["MOD_DESCRIPTION"]	= "This mod improves the way that spaceships land by reducing the height at which they drop down to the ground. They will also descend a bit more flat.",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "LandingHoverOffset", 				"0" }, 		--Original "3"
								{ "HoverSpeedFactor", 					"10" }, 	--Original "20"
								{ "HoverLandReachedDistance", 			"4" }, 		--Original "10"
								{ "LandingPushNoseUpFactor", 			"-0.05" }, 	--Original "0.15"
								{ "Curve", 								"SlowOut" }, --Original "ReallySlowOut"
							}
						}
					}
				}
			}
		}
	}	
}	
