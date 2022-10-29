NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Frigate View.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.05",
["MOD_DESCRIPTION"]			= "This mod improves Frigate View",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CT"] 	= 
			{ 
				{
					["MBIN_FS"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CT"] 	= 
					{
						{
							["VCT"] = {{"DistanceForFrigatePurchaseInteraction", 620}} 		-- original 500
						},
					}
				}	
			}
		}
	}	
}