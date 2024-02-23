NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Slippery Slopes 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
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
								{"SlopeSlidingSpeed", "-50"},  -- original -15
								{"SlopeSlideBrake", "0"},  -- original 18.5
							},
						},
					}
				}
			}
		}
	}	
}