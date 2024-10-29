COST_MULTIPLIER = "0.1"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "because-cheap.pak", 
["MOD_AUTHOR"]				= "tomcart",
["NMS_VERSION"]				= "3.5.3",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{

						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","C_CLASS_UPGRADE",},
							["PRECEDING_KEY_WORDS"] =  {"Cost","GcCostMoneyList.xml"},  --GcCostMoney.xml
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_MATCH_TYPE"] 	= "number",
							-- ["LINE_OFFSET"] = "-1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"10000",	COST_MULTIPLIER },
								{"25000",	COST_MULTIPLIER },
								{"50000",	COST_MULTIPLIER },
							}
						},
					}
				},	
			}
		}, --209 global replacements
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE