Poor = 0.2							--0
Medium = 0.3						--0
Rich = 0.4							--0.1
Pirate = 0.5						--0.2

Warps = 999999999					--5
Hours = 999999999					--3

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "MorePirateFreighterBattles.pak",
	["MOD_DESCRIPTION"]	= "Pirate Freighter Battles appear more often",
	["MOD_AUTHOR"]		= "Lenni",
	["NMS_VERSION"]		= "4.48",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PKW"] = "ChanceOfPirateFreighterBattleOnWarpToSystem",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"Low", Poor},
								{"Default", Medium},
								{"High", Rich},
								{"Pirate", Pirate},
							}
						},
						{
							["VALUE_CHANGE_TABLE"] = {
								{"WarpsBetweenBattles", Warps},
								{"HoursBetweenBattles", Hours},
							}
						},
					}
				},
			}
		},
	}
}