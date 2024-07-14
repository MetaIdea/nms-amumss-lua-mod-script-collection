NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "___ELITE_PULSE_DRIVE.pak",
["MOD_AUTHOR"]    = "GuitarGuy7",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LandingPushNoseUpFactor",  "-0.1"},
                                {"MiniWarpLinesNum",         "0"},
                                {"MiniWarpChargeTime",       "8"},
                                {"MiniWarpSpeed",            "60000"},
                                {"MiniWarpNoAsteroidRadius", "20000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN",
                        "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles",    "500"},
                                {"Radius",               "3500"},
                                {"Length",               "5000"},
                                {"RemoveCylinderRadius", "1000"},
                                {"Width",                "250"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles",    "1000"},
                                {"Radius",               "10000"},
                                {"Length",               "10000"},
                                {"RemoveCylinderRadius", "500"},
                                {"Width",                "60"},
                                {"Alpha",                "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles",    "1000"},
                                {"Radius",               "10000"},
                                {"Length",               "5000"},
                                {"RemoveCylinderRadius", "1000"},
                                {"Width",                "270"},
                                {"Alpha",                "0.5"},
                            }
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
                                {"RemoveCylinderRadius", "250"},
                            }
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
                                {"NumberOfParticles",    "2500"},
                                {"RemoveCylinderRadius", "5"},
                            }
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
                                {"NumberOfParticles",    "800"},
                                {"RemoveCylinderRadius", "10"},
                            }
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
                                {"NumberOfParticles",    "500"},
                                {"RemoveCylinderRadius", "15"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"t", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CastShadow", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"MaterialFlag", "_F48_WARPED_DIFFUSE_LIGHTING"},
                                {"MaterialFlag", "_F49_DISABLE_AMBIENT"},
                                {"MaterialFlag", "_F50_DISABLE_POSTPROCESS"},
                                {"MaterialFlag", "_F60_ACUTE_ANGLE_FADE"},
                                {"MaterialFlag", "_F29_VBCOLOUR"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F09_TRANSPARENT"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]
                        },
                    }
                },
            }
        }
    }
}