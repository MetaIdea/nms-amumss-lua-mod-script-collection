GameVersion = "3_81"
ModeName = "Aces Settlement Tweaks"
Author = "Acewinters and Jackty89"

SettlementGlobalsPath = "GCSETTLEMENTGLOBALS.MBIN"

ProductionValue = "100000000"

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
                    ["MBIN_FILE_SOURCE"] 	= SettlementGlobalsPath,
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Production", ProductionValue}
                            }
                        }
                    }
                }
            }
        }
    }
}