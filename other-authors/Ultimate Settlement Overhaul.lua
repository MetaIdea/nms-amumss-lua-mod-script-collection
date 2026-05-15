GameVersion = "6_x"
ModName = "Ultimate Settlement Overhaul"
Author = "Jamboslice83"

ProductionValue = "100000000"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Ultimate Settlement Overhaul.pak",
    ["MOD_DESCRIPTION"] = "100M production, zero upkeep, instant settlement timers",
    ["MOD_AUTHOR"]      = Author,
    ["NMS_VERSION"]     = GameVersion,

    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",

                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildingUpgradeTimeInSeconds", "0"},
                                {"BuildingFreeUpgradeTimeInSeconds", "0"},
                                {"JudgementWaitTimeMin", "0"},
                                {"JudgementWaitTimeMax", "0"},
                                {"DailyDebtPaymentModifier", "0"},
                            }
                        },

                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatsMinValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Upkeep", "0"},
                            }
                        },

                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Production", ProductionValue},
                            }
                        },
                    }
                },
            }
        }
    }
}