NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_CC_PulsedriveX8.pak", 
["MOD_AUTHOR"]				= "ClearanceClarence",
["NMS_VERSION"]				= "3.62",
["MOD_DESCRIPTION"]			= "This Mod enables your Pulse Drive to be faster.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed",	"240000"}  --Original "30000"
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE