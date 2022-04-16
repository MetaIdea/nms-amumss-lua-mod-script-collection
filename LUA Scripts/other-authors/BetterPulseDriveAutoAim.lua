NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Pulse Drive Auto-Aim.pak",
["MOD_AUTHOR"]				= "Andarius",
["NMS_VERSION"]				= "3.10",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MiniWarpHUDArrowAttractAngle", 							"2" }, 		--Original "10"
								}
						},
					}
				},				
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE