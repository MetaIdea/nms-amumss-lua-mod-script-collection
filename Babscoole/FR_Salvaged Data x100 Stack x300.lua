NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "FR_Salvaged Data x100 Stack x300.pak",
["MOD_AUTHOR"]    = "Silver70",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["MODIFICATIONS"] = 
	{
		{

			["MBIN_CHANGE_TABLE"] = 
			{ 		
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BP_SALVAGE",},										       		
							["VALUE_CHANGE_TABLE"] = 					
							{
								{"BaseValue",       "1000"}, -- Original 50000
								{"StackMultiplier", "60"}    -- Original 3							
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BP_SALVAGE_ONLY",},										       		
							["VALUE_CHANGE_TABLE"] = 					
							{
								{"AmountMin", "100"}, -- Original 2
								{"AmountMax", "200"}  -- Original 4							
							}
						}
					}
				},				
			}
		}
	}	
}
