LOOT_MULTIPLIER = 100

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zz stall's loot percent multiplier.pak", 
["MOD_AUTHOR"]				= "stallingblock2",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "multiplies loot percentage stats",
["MODIFICATIONS"] 			= 	
{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN", -- Location of the File
					["EXML_CHANGE_TABLE"] 	= 
					{
                            ["VALUE_MATCH_OPTIONS"]     = "<",
                            ["VALUE_MATCH"]             = "100",
                            ["REPLACE_TYPE"]             = "ALL",
                            ["VALUE_CHANGE_TABLE"]         = 
                            {
                                {"PercentageChance",  "100"}
                            }
					}
				}
			}
		}
	}	
}