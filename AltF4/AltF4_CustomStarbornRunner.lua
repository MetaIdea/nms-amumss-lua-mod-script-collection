NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_CustomStarbornRunner.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.60",
    ["MOD_DESCRIPTION"] = "Custom Starborn Runner",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WRACER\RACERPAINTMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Shader","SHADERS/UBERSHADER.SHADER.BIN"},
                                {"ShaderMillDataHash","0"},
                            }
                        },
                    }
                },
            },
        },
    }
}