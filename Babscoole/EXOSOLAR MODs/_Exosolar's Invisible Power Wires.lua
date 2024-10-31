NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Exosolar's Invisible Power Wires.pak",
["MOD_AUTHOR"]              = "Exosolar & Babscoole",
["MOD_DESCRIPTION"]         = "Makes powered wires invisible",
["NMS_VERSION"]             = "5.22",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERLINE\WIREON_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERLINE\WIREOFF_MAT.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"t", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map",                ""},
                                {"Shader",             "SHADERS/HADERMILLUBER.SHADER.BIN"},
                                {"Class",              "Transparent"},
                                {"ShaderMillDataHash", "0"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERLINE\WIRE_MAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", "Transparent"},
                                -- {"Shader", ""},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"t", "0"},
                            }
                        },
                    },
                },
            },
        },
    },
}