MINING_RATE = 6

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zz stall's mining multiplier.pak", 
["MOD_AUTHOR"]				= "stallingblock2",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "multiplies resources gained from mining",
["MODIFICATIONS"] 			= 	
{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN", -- Location of the File
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "UT_MINER"},
								["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  MINING_RATE} --  default 1.5 or 50% - every 0.5 is 50%. example: 1 = 0%, 1.5 = 50%, 2 = 100%, 3 = 150%.
							}
						}
					}
				}
			}
		}
	}	
}