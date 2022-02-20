NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "S76_BeyondMod_PlanetaryDataIcons.pak",
["MOD_DESCRIPTION"] = "Add distinct icons for the different types of planetary charts",
["MOD_AUTHOR"] = "Strudo76",
["NMS_VERSION"] = "2.12",
["MODIFICATIONS"] = 
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "STARCHART_A"},
							["PRECEDING_KEY_WORDS"] = "Icon",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Filename", "TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.SECURE.DDS"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "STARCHART_B"},
							["PRECEDING_KEY_WORDS"] = "Icon",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Filename", "TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.DISTRESS.DDS"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "STARCHART_C"},
							["PRECEDING_KEY_WORDS"] = "Icon",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Filename", "TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.HABITABLE.DDS"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "STARCHART_D"},
							["PRECEDING_KEY_WORDS"] = "Icon",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Filename", "TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.ALIEN.DDS"}
							}
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE