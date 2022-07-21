NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Faster Movement Speed 1.4.pak", 
["MOD_AUTHOR"]				= "ASxACE (maintained by Lo2k)",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.94",
["MOD_DESCRIPTION"]			= "This mods increases walk and run speeds",
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
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"GroundWalkSpeed", "7"},
								{"GroundWalkSpeedTeleportHmd", "7"},
								{"GroundRunSpeed", "12"},
								{"GroundWalkSpeedLowG", "3.2"},
								{"GroundRunSpeedLowG", "7"},
							},
						},
					}
				}
			}
		}
	}	
}