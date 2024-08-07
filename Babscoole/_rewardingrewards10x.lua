NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_rewardingrewards10x.pak",
["MOD_AUTHOR"]    = "zernot1984",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "@*10"},
                            }
						},							
					}
				},	                
			}
		}
	}	
}