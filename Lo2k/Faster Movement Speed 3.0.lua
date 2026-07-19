NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Faster Movement Speed 3.0", 
["MOD_AUTHOR"]				= "ASxACE (maintained by Lo2k)",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "5.20",
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
								{"GroundWalkSpeed", "7.000000"},  -- original 4.4
								{"GroundWalkSpeedTeleportHmd", "7.000000"},	-- original 4.4
								{"GroundRunSpeed", "12.000000"},	-- original 8
								{"GroundWalkSpeedLowG", "3.200000"},	-- original 1.6
								{"GroundRunSpeedLowG", "7.000000"},	-- original 3.5
							},
						},
					}
				}
			}
		}
	}	
}