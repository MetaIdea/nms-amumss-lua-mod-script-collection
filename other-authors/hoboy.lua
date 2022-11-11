Author = "Syzzle"
ModName = "Too Lazy to Save Edit Quicksilver"
GameVersion = "4.06"
ModVersion = "Game of the Year Edition"
Description = "Yes"

-- Lenni and lyravega helped me be lazy

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["FOREACH_SKW_GROUP"]  = 
							{
								{"Value","UI_SPECIAL_SHIP_SUB",},
								{"Value","UI_SPECIAL_PET_SUB",},
								{"Value","UI_SPECIAL_GUN_SUB",},
								{"Value","UI_SPECIAL_GUN_UP_SUB",},
							},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"]    = "ALL",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"BaseValue",0},
							}
						},	
					}
				},	
			}
		}
	}	
}