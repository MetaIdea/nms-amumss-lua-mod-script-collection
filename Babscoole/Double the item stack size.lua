NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Double the item stack size.pak",
["MOD_AUTHOR"]    = "liuyueowo",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.21",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"InventoryStackLimitsOptionData", "High"},
                                {"InventoryStackLimitsOptionData", "Normal"},
                                {"InventoryStackLimitsOptionData", "Low"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", "99990"},
                                {"ProductStackLimit",   "99990"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "High", "MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "99990"},
                                {"Personal",          "99990"},
                                {"PersonalCargo",     "99990"},
                                {"Ship",              "99990"},
                                {"ShipCargo",         "99990"},
                                {"Freighter",         "99990"},
                                {"FreighterCargo",    "99990"},
                                {"Vehicle",           "99990"},
                                {"Chest",             "99990"},
                                {"BaseCapsule",       "99990"},
                                {"MaintenanceObject", "99990"},
                                {"UIPopup",           "99990"},
                                {"SeasonTransfer",    "99990"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "High", "MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "50"},
                                {"Personal",          "100"},
                                {"PersonalCargo",     "100"},
                                {"Ship",              "100"},
                                {"ShipCargo",         "100"},
                                {"Freighter",         "200"},
                                {"FreighterCargo",    "200"},
                                {"Vehicle",           "100"},
                                {"Chest",             "200"},
                                {"BaseCapsule",       "1000"},
                                {"MaintenanceObject", "100"},
                                {"UIPopup",           "10"},
                                {"SeasonTransfer",    "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Normal", "MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",             "5000"},
                                {"Personal",            "5000"},
                                {"PersonalCargo",       "5000"},
                                {"Ship",                "10000"},
                                {"ShipCargo",           "10000"},
                                {"Freighter",           "20000"},
                                {"FreighterCargo",      "20000"},
                                {"Vehicle",             "10000"},
                                {"Chest",               "10000"},
                                {"BaseCapsule",         "20000"},
                                {"MaintenanceObject",   "2500"},
                                {"UIPopup",             "2500"},
                                {"SeasonTransfer",      "99990"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Normal", "MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",             "50"},
                                {"Personal",            "100"},
                                {"PersonalCargo",       "100"},
                                {"Ship",                "100"},
                                {"ShipCargo",           "100"},
                                {"Freighter",           "100"},
                                {"FreighterCargo",      "200"},
                                {"Vehicle",             "100"},
                                {"Chest",               "200"},
                                {"BaseCapsule",         "1000"},
                                {"MaintenanceObject",   "100"},
                                {"UIPopup",             "10"},
                                {"SeasonTransfer",      "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Low", "MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",             "1500"},
                                {"Personal",            "3000"},
                                {"PersonalCargo",       "3000"},
                                {"Ship",                "3000"},
                                {"ShipCargo",           "7500"},
                                {"Freighter",           "7500"},
                                {"FreighterCargo",      "7500"},
                                {"Vehicle",             "3000"},
                                {"Chest",               "10000"},
                                {"BaseCapsule",         "12500"},
                                {"MaintenanceObject",   "1500"},
                                {"UIPopup",             "1500"},
                                {"SeasonTransfer",      "99990"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData", "Low", "MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",             "30"},
                                {"Personal",            "30"},
                                {"PersonalCargo",       "50"},
                                {"Ship",                "30"},
                                {"ShipCargo",           "50"},
                                {"Freighter",           "50"},
                                {"FreighterCargo",      "100"},
                                {"Vehicle",             "30"},
                                {"Chest",               "100"},
                                {"BaseCapsule",         "500"},
                                {"MaintenanceObject",   "50"},
                                {"UIPopup",             "10"},
                                {"SeasonTransfer",      "200"},
                            }
                        },
                    }
                }
            }
        }
    }
}