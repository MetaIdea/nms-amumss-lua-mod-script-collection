NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Infinite Stack Size",
["MOD_AUTHOR"]    = "literally dozens",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.16",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", "9999999"},
                                {"ProductStackLimit",   "9999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "99999999"},
                                {"Personal",          "99999999"},
                                {"PersonalCargo",     "99999999"},
                                {"Ship",              "99999999"},
                                {"ShipCargo",         "99999999"},
                                {"Freighter",         "99999999"},
                                {"FreighterCargo",    "99999999"},
                                {"Vehicle",           "99999999"},
                                {"Chest",             "99999999"},
                                {"BaseCapsule",       "99999999"},
                                {"MaintenanceObject", "99999999"},
                                {"UIPopup",           "99999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "99999999"},
                                {"Personal",          "99999999"},
                                {"PersonalCargo",     "99999999"},
                                {"Ship",              "99999999"},
                                {"ShipCargo",         "99999999"},
                                {"Freighter",         "99999999"},
                                {"FreighterCargo",    "99999999"},
                                {"Vehicle",           "99999999"},
                                {"Chest",             "99999999"},
                                {"BaseCapsule",       "99999999"},
                                {"MaintenanceObject", "99999999"},
                                {"UIPopup",           "99999999"},
                            }
                        },
                    }
                },
            }
        }
    }
}