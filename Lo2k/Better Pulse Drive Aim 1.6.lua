NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Pulse Drive Aim 1.6.pak", 
["MOD_AUTHOR"]				= "Andarius",
["LUA_AUTHOR"]				= "Andarius and Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod allows to warp closer to space markers without snapping to them",
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
								{"MiniWarpHUDArrowAttractAngle", "2"}, 			-- original 10
								{"MiniWarpHUDArrowAttractAngleStation", "4"},   -- original 5
							}
						}
					}
				}	
			}
		}
	}	
}