NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoTitanWorms.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.48",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\INFESTATION.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0"},
                               
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0"},
                               
                            }
                        },
                    }
                },
            }
        },
    }
}