NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_NPCWarpFX_v558-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.58",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\WARPSTART\BLACK.PARTICLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ParticleSize", "TkParticleSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CurveStartValue",    "0.000000"},
                                {"CurveMidValue",      "0.000000"},
                                {"CurveEndValue",      "0.000000"},
                                {"CurveBlendMidpoint", "0.200000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourMiddle"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1.000000"},
                                {"G", "1.000000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\WARPSTART\BLACKHOLE.PARTICLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ParticleSize", "TkParticleSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CurveStartValue",    "0.000000"},
                                {"CurveMidValue",      "0.000000"},
                                {"CurveBlendMidpoint", "0.400000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\WARPSTART\WARPBASE.PARTICLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ParticleSize", "TkParticleSize"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CurveStartValue", "0.000000"},
                                {"CurveMidValue",   "0.000000"},
                                {"CurveEndValue",   "0.000000"},
                            }
                        },
                    }
                },
            }
        },
    }
}