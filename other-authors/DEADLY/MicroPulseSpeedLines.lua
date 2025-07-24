NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MicroPulseSpeedLines.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Micro Speed Lines",
    ["NMS_VERSION"]     = "5.74",
    ["EXML_CREATE"]     = "true",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Material",             "MODELS/EFFECTS/LINES/SPEEDLINE3MATERIAL.MATERIAL.MBIN" },
                                { "Number Of Particles",  2000 },
                                { "Radius",               20000.0 },
                                { "RemoveCylinderRadius", 10000.0 },
                                { "Length",               28.0 },
                                { "Width",                56.0 },
                                { "Alpha",                0.5 }, -- (0.4)
                                { "FadeTime",             2.0 },
                                { "Lifetime",             2.0 },
                                { "Speed",                20000.0 },
                            },
                        },
                    }
                },
                { -- MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles",  1000 },
                                { "Radius",               10000.0 },
                                { "RemoveCylinderRadius", 7000.0 },
                                { "Length",               18.0 },
                                { "Width",                36.0 },
                                { "Alpha",                0.5 }, -- (0.4)
                                { "FadeTime",             5.0 },
                                { "Lifetime",             5.0 },
                                { "Speed",                10000.0 },
                            },
                        },
                    }
                },
                { -- MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles",  500 },
                                { "Radius",               5000.0 },
                                { "RemoveCylinderRadius", 3500.0 },
                                { "Length",               9.0 },
                                { "Width",                18.0 },
                                { "Alpha",                0.5 }, -- (0.4)
                                { "FadeTime",             2.0 },
                                { "Lifetime",             2.0 },
                                { "Speed",                10000.0 },
                            },
                        },
                    }
                },
                { -- small rocks; unused by the mod
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Alpha",               0.0 },
                                { "Number Of Particles", 1 }, -- can't be zero
                            },
                        },
                    }
                },
                { -- MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles",  500 },
                                { "Radius",               800.0 },
                                { "Length",               1.0 },
                                { "Width",                1.0 },
                                { "Alpha",                0.4 }, -- (0.4)
                                { "RemoveCylinderRadius", 400.0 },
                                { "FadeTime",             1.0 },
                                { "Lifetime",             1.0 },
                                { "Speed",                1.0 },
                                { "MinVisibleSpeed",      2.0 },
                                { "MaxVisibleSpeed",      9.0 },
                            },
                        },
                    }
                },
                { -- MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Material",             "MODELS/EFFECTS/LINES/SPEEDLINE3MATERIAL.MATERIAL.MBIN" },
                                { "Number Of Particles",  1000 },
                                { "Radius",               2000.0 },
                                { "Length",               1.0 },
                                { "Width",                4.0 },
                                { "Alpha",                0.4 }, -- (0.4)
                                { "RemoveCylinderRadius", 1000.0 },
                                { "FadeTime",             2.0 },
                                { "Lifetime",             2.0 },
                                { "Speed",                1.0 },
                                { "MinVisibleSpeed",      2.0 },
                                { "MaxVisibleSpeed",      9.0 },
                            },
                        },
                    }
                },
                { -- MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles",  2000 },
                                { "Radius",               5000.0 },
                                { "Length",               1.0 },
                                { "Width",                10.0 },
                                { "Alpha",                0.4 }, -- (0.4)
                                { "RemoveCylinderRadius", 3000.0 },
                                { "FadeTime",             5.0 },
                                { "Lifetime",             5.0 },
                                { "Speed",                1.0 },
                                { "MinVisibleSpeed",      2.0 },
                                { "MaxVisibleSpeed",      9.0 },
                            },
                        },
                    }
                },
            }
        },
    }
}
