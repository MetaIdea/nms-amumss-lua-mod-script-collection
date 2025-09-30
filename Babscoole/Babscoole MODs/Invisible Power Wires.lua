NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Invisible Power Wires",
["MOD_AUTHOR"]              = "Exosolar & Babscoole",
["MOD_DESCRIPTION"]         = "Makes powered wires invisible",
["NMS_VERSION"]             = "6.00",
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
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"W", "0.000000"},
                            }
                        },
                        {
                            ["INTEGER_TO_FLOAT"] = "PRESERVE",
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
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", "Transparent"},
                                -- {"Shader", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"W", "0.000000"},
                            }
                        },
                    },
                },
            },
        },
    },
}