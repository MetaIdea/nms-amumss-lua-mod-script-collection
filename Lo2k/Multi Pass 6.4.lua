NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Multi Pass 6.4.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.52",
["MOD_DESCRIPTION"]			= "This mods makes gold/silver/bronze atlas passes",
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
							["SPECIAL_KEY_WORDS"] = {"Id","ACCESS1",},
							["PRECEDING_KEY_WORDS"] = {"Icon",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.ATLASPASS1.DDS"}	 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ACCESS2",},
							["PRECEDING_KEY_WORDS"] = {"Icon",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.ATLASPASS2.DDS"}	 
							}
						}
					}
				}	
			}
		}
	}	
}
