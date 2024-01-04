NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AllShipsMaxSlots+SClass.pak",
["MOD_AUTHOR"]				= "idea by dvkkha, script by Mjjstral",
["NMS_VERSION"]				= "4+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{["MATH_OPERATION"] = "*F:MaxSlots", 		["REPLACE_TYPE"] = "ALL", 		["VALUE_CHANGE_TABLE"] = {{"MinSlots",		"1"}}},
						{["MATH_OPERATION"] = "*F:MaxTechSlots", 	["REPLACE_TYPE"] = "ALL", 		["VALUE_CHANGE_TABLE"] = {{"MinTechSlots",	"1"}}},
						
						{["MATH_OPERATION"] = "*F:MaxWidthLarge", 	["REPLACE_TYPE"] = "ALL", 		["VALUE_CHANGE_TABLE"] = {{"MaxWidthSmall",		"4"}}},
						{["MATH_OPERATION"] = "*F:MaxWidthLarge", 	["REPLACE_TYPE"] = "ALL", 		["VALUE_CHANGE_TABLE"] = {{"MaxWidthStandard",	"2"}}},
						
						{["MATH_OPERATION"] = "*F:MaxHeightLarge", 	["REPLACE_TYPE"] = "ALL", 		["VALUE_CHANGE_TABLE"] = {{"MaxHeightSmall",	"4"}}},
						{["MATH_OPERATION"] = "*F:MaxHeightLarge", 	["REPLACE_TYPE"] = "ALL", 		["VALUE_CHANGE_TABLE"] = {{"MaxHeightStandard",	"2"}}},
						{
							["PRECEDING_KEY_WORDS"] = "ClassMultiplier",
							["REPLACE_TYPE"] 		= "ALL",	
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"C",	"0"},
								{"B",	"0"},
								{"A",	"0"},
								{"S",	"100"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ClassProbabilities",
							["REPLACE_TYPE"] 		= "ALL",	
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"C",	"0"},
								{"B",	"0"},
								{"A",	"0"},
								{"S",	"100"}
							}
						}
					}
				}
			}
		}
	}	
}