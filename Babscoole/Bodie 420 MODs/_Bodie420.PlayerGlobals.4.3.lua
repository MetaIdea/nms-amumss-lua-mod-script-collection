NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.PlayerGlobals.4.3.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.3",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FingerButtonClickTime",          "0.02"},      --Original 0.2
                                {"HandInteractionLightTime",       "0.03"},      --Original 0.3
                                {"DoPlayerAppearInVehicleEffect",  "True"},      --Original False
                                {"HolsterOnHip",                   "True"},      --Original False
                                {"GroundWalkSpeed",                "8.8"},       --Original 4.4
                                {"GroundRunSpeed",                 "16"},        --Original 8
                                {"GroundWalkSpeedLowG",            "3.2"},       --Original 1.6
                                {"GroundRunSpeedLowG",             "7"},         --Original 3.5
                                {"JetpackUnderwaterDrainRate",     "0.00004"},   --Original 0.4
                                {"JetpackUnderwaterFillRate",      "4"},         --Original 1
                                {"UnderwaterMaxSpeed",             "8"},         --Original 4
                                {"UnderwaterMaxJetpackSpeed",      "16"},        --Original 8
                                {"FreeJetpackRange",               "90"},        --Original 3
                                {"FreeJetpackRangePrime",          "99"},        --Original 5
                                {"RocketBootsBoostTankDrainSpeed", "0.0000006"}, --Original 6
                                {"RocketBootsDriftTankDrainSpeed", "0.000001"},  --Original 1
                                {"JetpackMinLevel",                "-0.5"},      --Original 0.5
                                {"JetpackMaxSpeed",                "10"},        --Original 5
                                {"SpaceJetpackDrainRate",          "0.000003"},  --Original 0.3
                                {"UseEnergy",                      "False"},     --Original True
                                {"InventoryDamage",                "False"},     --Original True
                                {"ObjectScanTime",                 "0.01"},      --Original 3
                                {"MeleeStaminaDrain",              "0.0002"},    --Original 0.2
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["LINE_OFFSET"] = "1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "99"}, --Original "4"
                                {"IGNORE", "99"}, --Original "6"
                                {"IGNORE", "99"}, --Original "8"
                            }
                        },
                    }
                }
            }
        }
    }
}