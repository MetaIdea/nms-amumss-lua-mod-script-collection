NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Peaceful Settlements.pak",
    ["MOD_DESCRIPTION"] = "Increases time between settlement attacks",
    ["MOD_AUTHOR"]      = "Babscoole",
    ["NMS_VERSION"]     = "5.22",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlertCycleDurationInSeconds", "720000"},  --original 2600
                            }
                        }
                    }
                }
            }
        }
    }
}