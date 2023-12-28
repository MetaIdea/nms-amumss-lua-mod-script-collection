NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "HarmonicBrainStack.pak",
["MOD_AUTHOR"]    = "AltF4 and Lo2k",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.37",
["MODIFICATIONS"] =
    {
        {

            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN_CLEAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StackMultiplier", "5"}
                            }
                        },
                    }
                },
            }
        }
    }
}
