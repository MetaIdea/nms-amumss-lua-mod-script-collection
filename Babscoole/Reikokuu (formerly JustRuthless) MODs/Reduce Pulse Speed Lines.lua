-- Pulse Jump 1 -- (Holding Shift and Space)
PJ1_Particles = "600" -- 1000
PJ1_Radius    = "1100" -- 7000
PJ1_Length    = "1700" -- 10000
PJ1_Width     = "10" -- 500
PJ1_Alpha     = "0.5" -- 0.5
PJ1_RemoveCylinderRadius = "200" -- 2000

-- Pulse Jump 2 --
PJ2_Particles = "800" -- 2000
PJ2_Radius    = "2000" -- 20000
PJ2_Length    = "1300" -- 20000
PJ2_Width     = "25" -- 120
PJ2_Alpha     = "0.4" -- 1
PJ2_RemoveCylinderRadius = "250" -- 1000

-- Pulse Jump 3 --
PJ3_Particles = "800" -- 2000
PJ3_Radius    = "2000" -- 20000
PJ3_Length    = "1000" -- 10000
PJ3_Width     = "15" -- 370
PJ3_Alpha     = "0.4" -- 1
PJ3_RemoveCylinderRadius = "250" -- 2000

-- Pulse Jump 4 --
PJ4_Particles = "300" -- 300
PJ4_Radius    = "1000" -- 1000
PJ4_Length    = "50" -- 50
PJ4_Width     = "20" -- 20
PJ4_Alpha     = "1" -- 1
PJ4_RemoveCylinderRadius = "250" -- 2

-- Cruise 1 -- (Holding Shift)
C1_Particles = "1000" -- 5000
C1_Radius    = "400" -- 400
C1_Length    = "6" -- 6
C1_Width     = "1" -- 1
C1_Alpha     = "0.4" -- 0.4
C1_RemoveCylinderRadius = "5" -- 0

-- Cruise 2 --
C2_Particles = "800" -- 4000
C2_Radius    = "220" -- 220
C2_Length    = "3.5" -- 3.5
C2_Width     = "0.4" -- 0.4
C2_Alpha     = "0.5" -- 0.5
C2_RemoveCylinderRadius = "10" -- 5

-- Cruise Big --
CB_Particles = "500" -- 2500
CB_Radius    = "300" -- 300
CB_Length    = "4" -- 4
CB_Width     = "4" -- 4
CB_Alpha     = "0.5" -- 0.5
CB_RemoveCylinderRadius = "15" -- 10

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Reduce Pulse Speed Lines.pak",
["MOD_AUTHOR"]              = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"]         = "Reduce Speed Lines",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", PJ1_Particles},
                                {"Radius", PJ1_Radius},
                                {"Length", PJ1_Length},
                                {"Width", PJ1_Width},
                                {"Alpha", PJ1_Alpha},
                                {"RemoveCylinderRadius", PJ1_RemoveCylinderRadius},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", PJ2_Particles},
                                {"Radius", PJ2_Radius},
                                {"Length", PJ2_Length},
                                {"Width", PJ2_Width},
                                {"Alpha", PJ2_Alpha},
                                {"RemoveCylinderRadius", PJ2_RemoveCylinderRadius},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", PJ3_Particles},
                                {"Radius", PJ3_Radius},
                                {"Length", PJ3_Length},
                                {"Width", PJ3_Width},
                                {"Alpha", PJ3_Alpha},
                                {"RemoveCylinderRadius", PJ3_RemoveCylinderRadius},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", PJ4_Particles},
                                {"Radius", PJ4_Radius},
                                {"Length", PJ4_Length},
                                {"Width", PJ4_Width},
                                {"Alpha", PJ4_Alpha},
                                {"RemoveCylinderRadius", PJ4_RemoveCylinderRadius},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", C1_Particles},
                                {"Radius", C1_Radius},
                                {"Length", C1_Length},
                                {"Width", C1_Width},
                                {"Alpha", C1_Alpha},
                                {"RemoveCylinderRadius", C1_RemoveCylinderRadius},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", C2_Particles},
                                {"Radius", C2_Radius},
                                {"Length", C2_Length},
                                {"Width", C2_Width},
                                {"Alpha", C2_Alpha},
                                {"RemoveCylinderRadius", C2_RemoveCylinderRadius},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", CB_Particles},
                                {"Radius", CB_Radius},
                                {"Length", CB_Length},
                                {"Width", CB_Width},
                                {"Alpha", CB_Alpha},
                                {"RemoveCylinderRadius", CB_RemoveCylinderRadius},
                            },
                        },
                    }
                },
            }
        },
    }
}