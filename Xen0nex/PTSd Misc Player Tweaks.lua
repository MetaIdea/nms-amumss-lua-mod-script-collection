ModName = "PTSd Misc Player Tweaks"
GameVersion = "7_01"
Description = "Changes a few things about player abilities or boss encounters."

ExperienceDefeatBugQueenRewardChance =	1							--0.25		Chance of receiving the set reward for defeating the Vile Queen bossfight
GravityLaserRange =						67							--100		Distance in u that the Gravitino Coil can magnetize objects from

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	--["EXML_CREATE"] = "FALSE",
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
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