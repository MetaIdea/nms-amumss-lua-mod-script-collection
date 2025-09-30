NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Super Ship Teleporter",
["MOD_AUTHOR"]      = "Exosolar & Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Increase range of ship inventory teleporter",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1005"}
                            }
                        }
                    }
                }
            }
        }
    }
}