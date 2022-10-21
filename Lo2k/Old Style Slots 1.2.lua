NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Old Style Slots 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.05",
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
								{"ReplaceItemBarWithNumbers", "False"},
							}
						}
					}
				}
			}
		}
	}	
}