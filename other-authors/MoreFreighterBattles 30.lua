--Frighter battle settings
SPAWNCHANCE = "40" --original 40
WARPS = "0"			--original 5
HOURS = "0"			--original 3
LOW = "0" --original 0
DEFAULT = "0.1" --original 0
HIGH = "0.2" --original 0.1
PIRATE = "0.3" --original 0.2

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "MoreFreighterBattles 30.pak",
    ["MOD_AUTHOR"] = "TwistedViking",
	["LUA_AUTHOR"] = "Ray Khouri, mrgamemafia, and Bladehawke",
    ["NMS_VERSION"] = "5+",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"FreighterSpawnRate", SPAWNCHANCE}
                            }
                        }
                    }
                },
				{
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"WarpsBetweenBattles", WARPS},
                                {"HoursBetweenBattles", HOURS}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
							["SPECIAL_KEY_WORDS"] = {"ChanceOfPirateFreighterBattleOnWarpToSystem", "IGNORE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Low", LOW},
								{"Default", DEFAULT},
								{"High", HIGH},
								{"Pirate", PIRATE}
							}
                        }
                    }
                }
            }
        }
    }
}
