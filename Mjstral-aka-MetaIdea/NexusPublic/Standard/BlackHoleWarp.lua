WarpTunnelFile = "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BlackHoleWarpTunnel.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSIMULATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WarpTunnelFile", 			WarpTunnelFile},
								{"BlackHoleTunnelFile",		WarpTunnelFile},
								{"TeleportTunnelFile", 		WarpTunnelFile},
								{"PortalTunnelFile", 		WarpTunnelFile},
								{"PortalStoryTunnelFile", 	WarpTunnelFile}
							}
						}
					}
				}
			}
		}			
	}
}