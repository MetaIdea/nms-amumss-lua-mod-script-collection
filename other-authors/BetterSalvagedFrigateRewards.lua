modName = "BetterSalvagedFrigateRewards"
description = "Increases the number of Salvaged Frigate Modules obtained from rewards, with a minimum and maximum so they're randomized."
gameVersion = "4.08"

rewardTablePath = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

minReward = "3" -- Minimum number that can drop from rewards, originally 1
maxReward = "5" -- Maximum number that can drop from rewards, originally 1

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = modName.. ".pak",
  ["MOD_DESCRIPTION"] = description, 
  ["MOD_AUTHOR"]      = "Hazelberry", 
  ["LUA_AUTHOR"]      = "Hazelberry", 
  ["NMS_VERSION"]     = gameVersion,
  ["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = rewardTablePath, -- Changes all single reward sources, such as from crates on derelict freighters and from mission rewards
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GenericTable",},
							["SPECIAL_KEY_WORDS"] = {"ID","FRIG_TOKEN",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", minReward},
								{"AmountMax", maxReward}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable",},
							["SPECIAL_KEY_WORDS"] = {"ID","FRIG_TOKEN",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", minReward},
								{"AmountMax", maxReward}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"MissionBoardTable",},
							["SPECIAL_KEY_WORDS"] = {"ID","FRIG_TOKEN",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", minReward},
								{"AmountMax", maxReward}
							},
						},
					}
				},
			}
		},
	}
}