NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MicroPulseSpeedLines.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Micro Speed Lines",
    ["NMS_VERSION"]     = "5.61",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Material",             "MODELS/EFFECTS/LINES/SPEEDLINE3MATERIAL.MATERIAL.MBIN" },
                                { "Radius",               2000 },  -- 7000
                                { "Length",               5 },     -- 10000
                                { "Width",                5 },     -- 500
                                { "Alpha",                0.6 },   -- 0.5
                                { "RemoveCylinderRadius", 1800 },  -- 2000
                                { "FadeTime",             1 },     -- 2
                                { "Lifetime",             1 },     -- 1
                                { "Speed",                12000 }, -- 100000
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 400 }, -- 1000
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Radius",               1000 }, -- 20000
                                { "Length",               10 },   -- 20000
                                { "Width",                10 },   -- 120
                                { "Alpha",                0.6 },  -- 1
                                { "RemoveCylinderRadius", 200 },  -- 1000
                                { "FadeTime",             2 },    -- 2
                                { "Lifetime",             2 },    -- 1
                                { "Speed",                1300 }, -- 100000
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 20 }, -- 2000
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Radius",               20000 }, -- 20000
                                { "Length",               100 },   -- 10000
                                { "Width",                100 },   -- 370
                                { "Alpha",                0.6 },   -- 1
                                { "RemoveCylinderRadius", 8000 },  -- 2000
                                { "FadeTime",             2 },     -- 2
                                { "Lifetime",             2 },     -- 2
                                { "Speed",                80000 }, -- 100000
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 50 }, -- 2000
                            },
                        },
                    }
                },
                { -- small rocks; unused
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Alpha", 0 },
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 1 }, -- can't be zero
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Radius",               1000 }, -- 400
                                { "Length",               1 },    -- 6
                                { "Width",                1 },    -- 1
                                { "Alpha",                0.4 },  -- 0.4
                                { "RemoveCylinderRadius", 100 },  -- 0
                                { "FadeTime",             1 },    -- 2
                                { "Lifetime",             1 },    -- 10
                                { "Speed",                0 },    -- 10
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 50 }, -- 5000
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Material",             "MODELS/EFFECTS/LINES/SPEEDLINE3MATERIAL.MATERIAL.MBIN" },
                                { "Radius",               2000 }, -- 220
                                { "Length",               2 },    -- 3.5
                                { "Width",                2 },    -- 0.4
                                { "Alpha",                1 },    -- 0.5
                                { "RemoveCylinderRadius", 200 },  -- 5
                                { "FadeTime",             1 },    -- 2
                                { "Lifetime",             1 },    -- 10
                                { "Speed",                0 },    -- 10
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 40 }, -- 4000
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Radius",               4000 }, -- 300
                                { "Length",               10 },   -- 4
                                { "Width",                10 },   -- 4
                                { "Alpha",                0.5 },  -- 0.5
                                { "RemoveCylinderRadius", 600 },  -- 10
                                { "FadeTime",             1 },    -- 10
                                { "Lifetime",             1 },    -- 10
                                { "Speed",                10 },   -- 10
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Number Of Particles", 1000 }, -- 2500
                            },
                        },
                    }
                },
            }
        },
    }
}
