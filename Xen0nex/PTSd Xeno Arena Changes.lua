ModName = "PTSd Xeno Arena Changes"
GameVersion = "6_30"
Description = "Changes the AI diffculty and reward ID for certain types of Xeno Arena Creature Battles."

Path1 = "METADATA\SIMULATION\GAMETABLES\GAMETABLESDATATABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["EXML_CREATE"] = "FALSE",
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {Path1},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PB_GAME_LARGEBUILDING"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RewardIdWin", "R_PB_PVE_PLAC_W"},			--R_PB_PVE_HARD_W
								{"RewardIdLoss", "R_PB_PVE_PLAC_L"},		--R_PB_PVE_HARD_L
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PB_AI_SYSTEM_STANDARD"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"GameTableAIDifficulty", "Medium"},			--Easy
							}
						},
					}
				},
			}
		}
	}
}