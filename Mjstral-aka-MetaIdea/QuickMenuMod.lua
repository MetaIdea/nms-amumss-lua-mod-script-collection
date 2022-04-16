NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "QuickMenuMod.pak",
["MOD_AUTHOR"]				= "",
["NMS_VERSION"]				= "2.0+",
["DESCRIPTION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\UI\WORLD\UI_QUICKMENU.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",				"2"},
								{"TransY",				"2"},
								{"TransZ",				"2"},
							}
						}
					}
				}
			}
		}			
	}
}