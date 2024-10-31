NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] = "BonusResourcesfor5.21a.pak", 
	["MOD_AUTHOR"]= "ripshawe",
	["LUA_AUTHOR"]= "Babscoole",
	["NMS_VERSION"]= "5.21",
	["MOD_DESCRIPTION"]= "Modifies the Optical Drill and Advanced Mining Laser Tech to mine faster and get more resources.",
	["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UT_MINER"},
							["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Bonus","8"} -- Originally 1.5
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER",},
							["PRECEDING_KEY_WORDS"] = {"StatBonuses",},							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Bonus","1"},-- Originally 1 Leave the first bonus the same
								{"Bonus","0.25"} -- Originally 0.85
							}
						},
					}
				}
			}
		}
	}
}