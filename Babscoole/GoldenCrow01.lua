NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "GoldenCrow01.pak",
["MOD_AUTHOR"]    = "CrimsonEagle",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.04",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", "99999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "99999"},
                                {"Personal",          "99999"},
                                {"PersonalCargo",     "99999"},
                                {"Ship",              "99999"},
                                {"ShipCargo",         "99999"},
                                {"Freighter",         "99999"},
                                {"FreighterCargo",    "99999"},
                                {"Vehicle",           "99999"},
                                {"Chest",             "99999"},
                                {"BaseCapsule",       "99999"},
                                {"MaintenanceObject", "4000"},
                                {"UIPopup",           "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "100"},
                                {"Personal",          "100"},
                                {"PersonalCargo",     "100"},
                                {"Ship",              "100"},
                                {"ShipCargo",         "100"},
                                {"Freighter",         "200"},
                                {"FreighterCargo",    "200"},
                                {"Vehicle",           "100"},
                                {"Chest",             "100"},
                                {"MaintenanceObject", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", "99999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "99999"},
                                {"Personal",          "99999"},
                                {"PersonalCargo",     "99999"},
                                {"Ship",              "99999"},
                                {"ShipCargo",         "99999"},
                                {"Freighter",         "99999"},
                                {"FreighterCargo",    "99999"},
                                {"Vehicle",           "99999"},
                                {"Chest",             "99999"},
                                {"BaseCapsule",       "99999"},
                                {"MaintenanceObject", "4000"},
                                {"UIPopup",           "4000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default",           "100"},
                                {"Personal",          "100"},
                                {"PersonalCargo",     "100"},
                                {"Ship",              "100"},
                                {"ShipCargo",         "100"},
                                {"Freighter",         "200"},
                                {"FreighterCargo",    "200"},
                                {"Vehicle",           "100"},
                                {"Chest",             "100"},
                                {"MaintenanceObject", "100"},
                            }
                        },
                        {
                            ["PRECEDINGKEY_WORDS"] = {"BreakTechOnDamageMultipliers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "2"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechDamageChanceShielded",           "0.25"},
                                {"BinocTimeBeforeScan",                "0"},
                                {"BinocMinScanTime",                   "0"},
                                {"BinocScanTime",                      "0"},
                                {"BinocCreatureScanTime",              "0"},
                                {"CreatureMinScanTime",                "0.01"},
                                {"BinocularScanTargetInitialFadeTime", "0"},
                                {"BinocularScanTargetFadeTime",        "0"},
                            }
                        },
                    }
                }
            }
        }
    }
}