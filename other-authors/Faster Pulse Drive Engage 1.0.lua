NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Faster Pulse Drive Engage 1.0.pak", 
["MOD_AUTHOR"]				= "asoFF",
["LUA_AUTHOR"]				= "asoFF",
["NMS_VERSION"]				= "4.45",
["MOD_DESCRIPTION"]			= "A simple mod that cuts the time it takes to go into pulse drive in half",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CT"] 	= 
			{ 
				{
					["MBIN_FS"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CT"] 	= 
					{
						{
							["VCT"] 	= 
							{
								{"MiniWarpChargeTime", "1"}, 	-- original 2
							}
						}
					}
				}	
			}
		}
	}	
}