NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "stackmod.pak",
["MOD_AUTHOR"]    = "GrandTickler",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
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
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Default",           "9999"},
                                {"Personal",          "9999"},
                                {"PersonalCargo",     "9999"},
                                {"Ship",              "9999"},
                                {"ShipCargo",         "9999"},
                                {"Freighter",         "9999"},
                                {"FreighterCargo",    "9999"},
                                {"Vehicle",           "9999"},
                                {"Chest",             "9999"},
                                {"BaseCapsule",       "9999"},
                                {"MaintenanceObject", "9999"},
                                {"UIPopup",           "9999"},
                                {"SeasonTransfer",    "9999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Freighter", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Default",           "9999"},
                                {"Personal",          "9999"},
                                {"PersonalCargo",     "9999"},
                                {"Ship",              "9999"},
                                {"ShipCargo",         "9999"},
                                {"Freighter",         "9999"},
                                {"FreighterCargo",    "9999"},
                                {"Vehicle",           "9999"},
                                {"Chest",             "9999"},
                                {"BaseCapsule",       "9999"},
                                {"MaintenanceObject", "9999"},
                                {"UIPopup",           "9999"},
                                {"SeasonTransfer",    "9999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Default",           "5"},
                                {"Personal",          "10"},
                                {"PersonalCargo",     "10"},
                                {"Ship",              "10"},
                                {"ShipCargo",         "10"},
                                {"Freighter",         "20"},
                                {"FreighterCargo",    "20"},
                                {"Vehicle",           "10"},
                                {"Chest",             "20"},
                                {"BaseCapsule",       "100"},
                                {"MaintenanceObject", "10"},
				{"UIPopup", "1"},
				{"SeasonTransfer", "20"},
                    } 
                }
            }
        }
    }   
}