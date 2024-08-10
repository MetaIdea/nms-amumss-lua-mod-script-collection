NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_Flashlight_v503-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceSpeedReadoutMultiplier",     "1"},
                                {"CombatSpeedReadoutMultiplier",    "1"},
                                {"TorchFoV",                        "50"},
                                {"TorchStrength",                   "9"},
                                {"TorchDimFoV",                     "25"},
                                {"UndergroundTorchFoV",             "50"},
                                {"UndergroundTorchStrength",        "8"},
                                {"TorchOffsetX",                    "0"},
                                {"TorchOffsetZMin",                 "0.05"},
                                {"TorchOffsetZ",                    "-0.75"},
                                {"TorchStaffOffsetY",               "-0.5"},
                                {"TorchStaffOffsetZMin",            "0.05"},
                                {"TorchStaffOffsetZ",               "-0.75"},
                                {"TorchFollowCameraTime",           "0.1"},
                                {"PlayerAmbientSpotLightIntensity", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FlybyTimers", "High"},
                                {"FlybyTimers", "Normal"},
                                {"FlybyTimers", "Low"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "@*2"},
                            }
                        },
                    },
                },
            },
        },
    },
}