NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "100_Slots_08_Skan_03__9999999_stack_Full.pak",
["MOD_AUTHOR"]              = "Tuz1971",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.15",
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
                            ["SPECIAL_KEY_WORDS"] = {"Normal","GcDifficultySettingsData.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InventoriesAlwaysInRange",       "True"},
                                {"AllSlotsUnlocked",               "True"},
                                {"WarpDriveRequirements",          "False"},
                                {"CraftingIsFree",                 "True"},
                                {"TutorialEnabled",                "False"},
                                {"StartWithAllItemsKnown",         "True"},
                                {"BaseAutoPower",                  "True"},
                                {"DeathConsequencesDifficulty",    "None"},
                                {"HazardDrainDifficulty",          "Slow"},
                                {"EnergyDrainDifficulty",          "Slow"},
                                {"SubstanceCollectionDifficulty",  "High"},
                                {"ChargingRequirementsDifficulty", "None"},
                                {"FuelUseDifficulty",              "Free"},
                                {"LaunchFuelCostDifficulty",       "Free"},
                                {"ItemShopAvailabilityDifficulty", "High"},
                                {"ScannerRechargeDifficulty",      "Fast"},
                                {"ReputationGainDifficulty",       "Fast"},
                                {"SprintingCostDifficulty",        "Free"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData",},
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
                            ["PRECEDING_KEY_WORDS"] = {"BreakTechOnDamageMultipliers",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "2"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxNumSameGroupTech",        "100"},
                                {"BinocMinScanTime",           "0.8"},
                                {"BinocScanTime",              "0.8"},
                                {"BinocCreatureScanTime",      "0.8"},
                                {"MaxResourceCrystalBlobSize", "300"},
                                {"WaypointScanTime",           "0.1"},
                                {"RareSubstanceEffectiveness", "2000"},
                                {"CommonProductEffectiveness", "200"},
                                {"RareProductEffectiveness",   "5000"},
                                {"ResourceMinAmount",          "100"},
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
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "ToolScan",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "WaypointScan",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "1"},
                                {"ChargeTime", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "VisualScan",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "0.1"}, 
                            }
                        },
                    }
                }
            }
        }
    }
}