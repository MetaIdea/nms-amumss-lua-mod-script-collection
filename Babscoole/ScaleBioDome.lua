NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ScaleBioDome.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.84",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BIOROOM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanScale", "True"},
                            }
                        },
                    }
                },
            }
        },
    }
}