NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PhotomodeCoordinates.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\PHOTOMODE\PHOTOOVERLAY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionY",						"970"},
								{"Width",							"625"},
								{"Height",							"90"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","RUNES"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PositionX",						"25"},
								{"PositionY",						"50"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Children"},
							--["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",						"False"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "URISTRING"},
							--["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",						"False"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UA_INSTRUCTIONS"},
							["VALUE_MATCH"] = "True",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",						"False"},						
							}
						}
					}
				}
			}
		}
	}	
}