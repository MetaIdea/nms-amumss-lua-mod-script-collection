NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_CodenameAwesome.FasterPulse.pak", 
["MOD_AUTHOR"]				= "CodenameAwesome",
["NMS_VERSION"]				= "",
["MOD_DESCRIPTION"]			= "Increases the speed of your pulse drive. Space travel is boring.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{--FASTER PULSE SPEED (x2)
					["MBIN_FILE_SOURCE"] 	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed",	"2"},
							}	
						}
					},
				}
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE