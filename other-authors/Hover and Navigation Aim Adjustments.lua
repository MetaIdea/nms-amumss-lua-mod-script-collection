Speed = 0.001 --Value for minimal Ship speed


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Hover and Navigation Aim Adjustments.pak",
["MOD_AUTHOR"]				= "MysticViruZ",
["NMS_VERSION"]				= "3.35",
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
								{ "MinSpeed", 							 Speed}, 		--Original "20"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed", 							 Speed}, 		--Original "20"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed", 							  Speed}, 		--Original "20"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = "",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MiniWarpHUDArrowAttractAngle", 							"3" }, 		--Original "10"
							}
						},
					}
				},				
			}
		},
	}	 --4 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE