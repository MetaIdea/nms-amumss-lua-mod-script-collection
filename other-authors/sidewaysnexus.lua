NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Nexus_Sideways.pak",
    ["MOD_AUTHOR"]      = "Wade",
    ["NMS_VERSION"]     = "6.00",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                -- GEOMETRY edits
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/NEXUS/NEXUS.GEOMETRY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VertexCount"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"VertexCount", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IndexCount"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"IndexCount", "1"}
                            }
                        },
                    }
                },
            }
        }
    }
}
