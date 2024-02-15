NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Increased Stack Size.pak",
["MOD_AUTHOR"]    = "JamesDude420",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.50",
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
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", "9999999"},
                                {"ProductStackLimit",   "9999999"},
                                {"Default",             "9999999"},
                                {"Personal",            "9999999"},
                                {"PersonalCargo",       "9999999"},
                                {"Ship",                "9999999"},
                                {"ShipCargo",           "9999999"},
                                {"Freighter",           "9999999"},
                                {"FreighterCargo",      "9999999"},
                                {"Vehicle",             "9999999"},
                                {"Chest",               "9999999"},
                                {"BaseCapsule",         "9999999"},
                                {"MaintenanceObject",   "9999999"},
                                {"UIPopup",             "9999999"},
                                {"SeasonTransfer",      "9999999"},
                            }
                        },
                    }
                }
            }
        }
    }
}