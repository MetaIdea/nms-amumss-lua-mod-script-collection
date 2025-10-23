NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Tariff Suit Upgrades",
["MOD_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "Doubles suit upgrade costs",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"SuitUpgradePrices"},
                                {"SuitTechOnlyUpgradePrices"},
                                {"SuitCargoUpgradePrices"},
                            },
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "@*2"},
                            }
                        },
                    }
                },
            }
        },
    }
}