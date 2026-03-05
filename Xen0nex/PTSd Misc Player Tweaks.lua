ModName = "PTSd Misc Player Tweaks"
GameVersion = "5_00"
Description = "Changes a few things about player abilities or boss encounters."

Path1 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

ExperienceDefeatBugQueenRewardChance =	1							--0.25		Chance of receiving the set reward for defeating the Vile Queen bossfight
GravityLaserRange =						50							--100		Distance in u that the Gravitino Coil can magnetize objects from

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
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ExperienceDefeatBugQueenRewardChance", ExperienceDefeatBugQueenRewardChance},
								{"GravityLaserRange", GravityLaserRange},
							}
						},
					}
				},
			}
		}
	}
}