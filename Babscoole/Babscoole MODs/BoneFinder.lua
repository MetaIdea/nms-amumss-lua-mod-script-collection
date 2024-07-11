NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BoneFinder.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.71",
["MOD_DESCRIPTION"] = "Shows Ancient Bones on scanner better",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCBONES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "14"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                            }
                        }
                    }
                }
            }
        }
    }
}