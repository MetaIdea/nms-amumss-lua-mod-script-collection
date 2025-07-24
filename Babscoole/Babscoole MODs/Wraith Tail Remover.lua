NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Wraith Tail Remover",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.75",
["MOD_DESCRIPTION"] = "Removes Wraith Tail",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOFIGHTER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                              {"Name", "TailALOD0"},
                              {"Name", "TailALOD1"},
                              {"Name", "TailALOD2"},
                              {"Name", "TailALOD3"},
                              {"Name", "TailBLOD0"},
                              {"Name", "TailBLOD1"},
                              {"Name", "TailBLOD2"},
                              {"Name", "TailBLOD3"},
                            },
                            ["REMOVE"] = "SECTION"
                        }
                    }
                },
            }
        }
    }
}