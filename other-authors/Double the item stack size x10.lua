STACK_LIMIT_MULTIPLICATOR = 10

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "Double the item stack size x10.pak",
["MOD_AUTHOR"]              = "liuyueowo",
["LUA_AUTHOR"]				= "X00LA",
["NMS_VERSION"]             = "5.12",
["MODIFICATIONS"]           =
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"] = "InventoryStackLimitsOptionData",
              ["SKW"] = "",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", STACK_LIMIT_MULTIPLICATOR},
							}
						},
					}
				},
			}
		},
	}	
}
