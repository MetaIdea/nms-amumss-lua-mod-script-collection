ModName = "PTSd Boss Encounter Tweaks"
GameVersion = "5_00"
Description = "Changes certain aspects of some boss encounters."

Path1 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

ExperienceDefeatBugQueenRewardChance = 1								--0.25		Chance of receiving the set reward for defeating the Vile Queen bossfight

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {Path1},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ExperienceDefeatBugQueenRewardChance", ExperienceDefeatBugQueenRewardChance},
							}
						},
					}
				},
			}
		}
	}
}
