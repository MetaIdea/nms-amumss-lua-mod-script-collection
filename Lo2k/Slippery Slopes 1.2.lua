NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Slippery Slopes 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "This mods makes slopes slippery",
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
								{"SlopeSlidingSpeed", "-15"},  -- original -50
								{"SlopeSlideBrake", "18.5"},  -- original 0
							},
						},
					}
				}
			}
		}
	}	
}