Offset = 105

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Bigger Inventory Tabs Bar 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.82",
["MOD_DESCRIPTION"]			= "This mod increased inventory tabs bar size",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\PAGESELECTBARSUB.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "TABCONTAINER"},
							["MATH_OPERATION"] 		= "+",  	
							["VALUE_CHANGE_TABLE"] 	= {{"Width", Offset}}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "NEXT_PAGE"},
							["MATH_OPERATION"] 		= "+",  	
							["VALUE_CHANGE_TABLE"] 	= {{"PositionX", Offset}}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Width", "765"},
							["MATH_OPERATION"] 		= "+",  	
							["VALUE_CHANGE_TABLE"] 	= {{"Width", Offset}}
						}
					}
				}	
			}
		}
	}	
}