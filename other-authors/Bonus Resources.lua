NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] = "BonusResourcesfor3.98a.pak", 
	["MOD_AUTHOR"]= "ripshawe",
	["LUA_AUTHOR"]= "Babscoole",
	["NMS_VERSION"]= "3.98",
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
							["SPECIAL_KEY_WORDS"] = {"ID","UT_MINER",},
							["PRECEDING_KEY_WORDS"] = {"StatBonuses",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Bonus","16"} -- Originally 1.5
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed",},							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Bonus","0.25"} -- Originally 0.85
							}
						},
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE