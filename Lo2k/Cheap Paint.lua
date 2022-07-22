NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Cheap Paint.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.95",
["MOD_DESCRIPTION"]			= "This mods makes reduces cost of freighter paints",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "UI_PAINT_PROD_SUB",},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", "500"}	 
							}
						},
					}
				}	
			}
		}
	}	
}
