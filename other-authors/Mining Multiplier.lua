RESOURCEMULTIPLIER = "2" -- Total resource multiplier applied when the Optical Drill upgrade is installed; Original is 1.5 for 50% more

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = "MiningMultiplier",
	["MOD_AUTHOR"] = "Flugelwulff",
	["LUA_AUTHOR"] = "Flugelwulff",
	["NMS_VERSION"] = "6.17",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UT_MINER"},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Bonus", RESOURCEMULTIPLIER}
							}
						}
					}
				}
			}
		}
	}
}