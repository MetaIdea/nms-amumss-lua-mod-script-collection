NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Exosolar's Subtle Unpowered Wires.pak",
["MOD_AUTHOR"]      = "Exosolar",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "Makes unpowered wires much more subtle",
["NMS_VERSION"]     = "4.00",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERLINE\WIREOFF_MAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"t", "0.5"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\POWERLINE\WIRE_MAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Uniforms"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.067"},
                                {"y", "0.067"},
                                {"z", "0.067"},
                                {"t", "0"},
                            }
                        },
                    },
                },
            },
        },
    },
}