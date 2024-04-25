GameVersion = "4_64"
ModName = "Aces Settlement Tweaks"
Author = "Acewinters and Jackty89"

SourceFilePak = "GCSETTLEMENTGLOBALS.MBIN"

ProductionValue = "100000000"
DebtReductionValue = "200000000"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
    ["MOD_DESCRIPTION"]			= ModName,
    ["MOD_AUTHOR"]				= Author,
    ["NMS_VERSION"]				= GameVersion,
    ["MODIFICATIONS"] 			=
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"] 	= SourceFilePak,
                    ["EXML_CHANGE_TABLE"] 	= {
						{
                            ["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Production", ProductionValue},
                            }
						},
						{
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DailyDebtPaymentModifier", DebtReductionValue},
                            }
						}
					}
				}
			}
		}
	}
}