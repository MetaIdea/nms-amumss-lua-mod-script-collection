NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_RemoveJetpackSmoke.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.60",
    ["MOD_DESCRIPTION"] = "Remove several jetpack smoke.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\REDJETPACKFX\DARKJETPACKSMOKEMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Map", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\GREENJETPACKFX\DARKJETPACKSMOKEMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Map", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\BLUEJETPACKFX\DARKJETPACKSMOKEMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Map", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\STANDARDJETPACKFX\DARKJETPACKSMOKEMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Map", ""},
                            }
                        },
                    }
                },
            },
        },
    }
}