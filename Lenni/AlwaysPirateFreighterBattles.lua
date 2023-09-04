Poor = 1							--0
Medium = 1							--0
Rich = 1							--0.1
Pirate = 1							--0.2

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "AlwaysPirateFreighterBattles.pak",
	["MOD_DESCRIPTION"]	= "Pirate Freighter Battles always appear after warp",
	["MOD_AUTHOR"]		= "Lenni",
	["NMS_VERSION"]		= "4.43",
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
					}
				},
			}
		},
	}
}