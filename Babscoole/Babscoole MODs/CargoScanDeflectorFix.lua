NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "CargoScanDeflectorFix.pak",
["MOD_AUTHOR"]    = "lMonk and Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CargoShieldStrength", "0.75"},  -- Original "0.5"
                            }
                        },
                    }
                }
            }
        }
    }
}