NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PeacefulAdjustments.pak",
["MOD_DESCRIPTION"] = "altered version of my GlobalAdjustments mod, but without stronger enemies.",
["MOD_AUTHOR"]      = "Wombi",
["lUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.47",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AggressiveSentinelProbabilitySurvival", "0.5"},
                                {"DeathMoneyPenalty",                     "1000000"},
                                {"TorchFollowCameraTime",                 "0.0"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCPLAYERGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HealthRechargeMinTimeSinceDamage", "30"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCSKYGLOBALS.GLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinTimeBetweenStormsHigh",            "5"},
                                {"MaxTimeBetweenStormsHigh",            "10"},
                                {"MinTimeBetweenStormsExtremeFallback", "5"},
                                {"MaxTimeBetweenStormsExtremeFallback", "10"},
                                {"MinStormLengthHigh",                  "1500"},
                                {"MaxStormLengthHigh",                  "3200"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AbandonedFreighterFogColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.0"},
                                {"G", "0.046"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCUIGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SkipShopIntro", "False"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShopNumber", "34"},
                                {"ShopTier",   "3"},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SuitStartingSlotLayout",         "GcInventoryLayout.xml"},
                                {"SuitTechOnlyStartingSlotLayout", "GcInventoryLayout.xml"},
                                {"SuitCargoStartingSlotLayout",    "GcInventoryLayout.xml"},
                                {"ShipTechOnlyStartingLayout",     "GcInventoryLayout.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Slots", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SuitUpgradePrices"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "500000"},
                                {"IGNORE", "1000000"},
                                {"IGNORE", "2000000"},
                                {"IGNORE", "3000000"},
                                {"IGNORE", "4000000"},
                                {"IGNORE", "5000000"},
                                {"IGNORE", "6000000"},
                                {"IGNORE", "7000000"},
                                {"IGNORE", "8000000"},
                                {"IGNORE", "9000000"},
                                {"IGNORE", "10000000"},
                                {"IGNORE", "11000000"},
                                {"IGNORE", "12000000"},
                                {"IGNORE", "13000000"},
                                {"IGNORE", "14000000"},
                                {"IGNORE", "15000000"},
                                {"IGNORE", "16000000"},
                                {"IGNORE", "17000000"},
                                {"IGNORE", "18000000"},
                                {"IGNORE", "19000000"},
                                {"IGNORE", "20000000"},
                                {"IGNORE", "21000000"},
                                {"IGNORE", "22000000"},
                                {"IGNORE", "23000000"},
                                {"IGNORE", "24000000"},
                                {"IGNORE", "25000000"},
                                {"IGNORE", "26000000"},
                                {"IGNORE", "27000000"},
                                {"IGNORE", "28000000"},
                                {"IGNORE", "29000000"},
                                {"IGNORE", "30000000"},
                                {"IGNORE", "31000000"},
                                {"IGNORE", "32000000"},
                                {"IGNORE", "33000000"},
                                {"IGNORE", "34000000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyUpgradePrices"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "100000"},
                                {"IGNORE", "500000"},
                                {"IGNORE", "1000000"},
                                {"IGNORE", "3000000"},
                                {"IGNORE", "6000000"},
                                {"IGNORE", "10000000"},
                                {"IGNORE", "20000000"},
                                {"IGNORE", "35000000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SuitCargoUpgradePrices"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "500000"},
                                {"IGNORE", "50000000"},
                                {"IGNORE", "10000000"},
                                {"IGNORE", "20000000"},
                                {"IGNORE", "25000000"},
                                {"IGNORE", "30000000"},
                                {"IGNORE", "35000000"},
                                {"IGNORE", "40000000"},
                                {"IGNORE", "45000000"},
                                {"IGNORE", "50000000"},
                                {"IGNORE", "55000000"},
                                {"IGNORE", "60000000"},
                                {"IGNORE", "65000000"},
                                {"IGNORE", "70000000"},
                                {"IGNORE", "80000000"},
                                {"IGNORE", "85000000"},
                                {"IGNORE", "90000000"},
                                {"IGNORE", "95000000"},
                                {"IGNORE", "100000000"},
                            },
                        },
                    },
                },
            }
        }
    }
}