NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_NPCWarpFX_v443-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.43",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\WARPSTART\BLACK.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ParticleSize", "TkEmitterFloatProperty.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CurveStartValue",    "0"},
                                {"CurveMidValue",      "0"},
                                {"CurveEndValue",      "0"},
                                {"CurveBlendMidpoint", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourMiddle", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\WARPSTART\BLACKHOLE.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ParticleSize", "TkEmitterFloatProperty.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CurveStartValue",    "0"},
                                {"CurveMidValue",      "0"},
                                {"CurveBlendMidpoint", "0.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\WARPSTART\WARPBASE.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ParticleSize", "TkEmitterFloatProperty.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CurveStartValue", "0"},
                                {"CurveMidValue",   "0"},
                                {"CurveEndValue",   "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}