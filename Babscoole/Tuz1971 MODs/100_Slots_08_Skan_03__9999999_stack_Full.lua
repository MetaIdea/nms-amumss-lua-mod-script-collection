NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "100_Slots_08_Skan_03__9999999_stack_Full.pak",
["MOD_AUTHOR"]              = "Tuz1971",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
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
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BreakTechOnDamageMultipliers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "2.5"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxNumSameGroupTech",        "100"},
                                {"BinocMinScanTime",           "0.5"},
                                {"BinocScanTime",              "0.5"},
                                {"BinocCreatureScanTime",      "0.5"},
                                {"MaxResourceCrystalBlobSize", "300"},
                                {"WaypointScanTime",           "0.1"},
                                {"RareSubstanceEffectiveness", "2000"},
                                {"CommonProductEffectiveness", "2000"},
                                {"RareProductEffectiveness",   "5000"},
                                {"ResourceMinAmount",          "1000"},
                                {"ResourceMaxAmount",          "2000"},
                                {"ResourceCommonMinAmount",    "1000"},
                                {"ResourceCommonMaxAmount",    "8000"},
                                {"ResourceDirtMinAmount",      "1000"},
                                {"ResourceDirtMaxAmount",      "8000"},
                                {"ShipInteractRadius",         "500000"},
                                {"ScannerAnalyzeFXRate",       "0.01"},
                                {"ScannerTuningA",             "0.01"},
                                {"ScannerTuningB",             "0.01"},
                                {"ScannerTuningC",             "0.01"},
                                {"TorchStrength",              "5"},
                                {"PulseEncounterStopSpeed",    "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "ScannerRechargeMultipliers",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VeryFast", "100"},
                                {"Fast",     "50"},
                                {"Normal",   "10.66"},
                                {"Slow",     "10"},
                            }
                        },
                    }
                }
            }
        }
    }
}