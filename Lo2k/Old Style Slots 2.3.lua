NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Old Style Slots 2.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mods restores the old style slots",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- Flat background icons (remove the 3 lines to get vanilla shaded backgrounds again)
								{"InvSlotGradientFactorMin", "0.0"},
								{"InvSlotGradientFactor", "0.0"},
								{"InvSlotGradientTime", "0"},
								-- Bars instead of numbers
								{"ReplaceItemBarWithNumbers", "False"},
							}
						}
					}
				}
			}
		}
	}	
}