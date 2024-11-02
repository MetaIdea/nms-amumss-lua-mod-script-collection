--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_UIHazardFX_v522-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureDistanceAlpha",        "0"},
                                {"HazardWarningPulseStrength",   "1.2"},
                                {"HazardPainPulseStrength",      "1.3"},
                                {"AlwaysOnHazardThreshold",      "0"},
                                {"AlwaysOnHazardStrengthHeat",   "0.8"},
                                {"AlwaysOnHazardStrengthCold",   "1.15"},
                                {"AlwaysOnHazardMultiplierHeat", "1.2"},
                                {"AlwaysOnHazardMultiplierCold", "1.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HazardNormalMaps",   "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml"},
                                {"HazardNormalMapsVR", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.NORMAL.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardHeightmaps", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.REFRACTION.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardHeightmapsVR", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml", "VariableSizeString.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.REFRACT.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardDistortionParams", "Vector4f.xml", "Vector4f.xml", "Vector4f.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "7"},
                                {"y", "0.6"},
                                {"z", "0.005"},
                                {"t", "1"},
                            }
                        },
                    }
                },
            }
        },
    }
}