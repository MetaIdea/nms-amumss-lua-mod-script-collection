GameVersion = "3_68"
ModeName = "SettlementTimerReduction"
Author = "Jackty89"

Multiplier = "0.1"

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 			= ModeName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= ModeName,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
                {
					["MBIN_FILE_SOURCE"] 	= "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
                        {
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildingUpgradeTimeInSeconds", Multiplier},
                                {"BuildingFreeUpgradeTimeInSeconds", Multiplier},
                                {"JudgementWaitTimeMin", Multiplier},
                                {"JudgementWaitTimeMax", Multiplier},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"SettlementMiniExpeditionSuccessChance", "0.999999"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone", Multiplier},
                                {"Settlement_Bar", Multiplier},
                                {"Settlement_Tower", Multiplier},
                                {"Settlement_Market", Multiplier},
                                {"Settlement_Small", Multiplier},
                                {"Settlement_SmallIndustrial", Multiplier},
                                {"Settlement_Medium", Multiplier},
                                {"Settlement_Large", Multiplier},
                                {"Settlement_Monument", Multiplier},
                                {"Settlement_SheriffsOffice", Multiplier},
                                {"Settlement_Double", Multiplier},
                                {"Settlement_Farm", Multiplier},
                                {"Settlement_Factory", Multiplier},
                                {"Settlement_Clump", Multiplier}
                            }
                        }
                    }
				}
            }
        }
    }
}