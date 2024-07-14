NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_NoScreenShake.pak",
["MOD_AUTHOR"]    = "DooDooDevan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.87",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCameraShakeData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime",        "0"},
                                {"DecayRate",        "0"},
                                {"StrengthScale",    "0"},
                                {"ThirdPersonDamp",  "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CapturedData", "GcCameraShakeCapturedData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",           "False"},
                                {"ShakeStrength",    "0"},
                                {"ShakeFrequency",   "0"},
                                {"VibrateStrength",  "0"},
                                {"VibrateFrequency", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechanicalData", "GcCameraShakeMechanicalData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                                {"x",      "0"},
                                {"y",      "0"},
                                {"z",      "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}