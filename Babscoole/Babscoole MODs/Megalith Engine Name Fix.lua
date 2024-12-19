NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Megalith Engine Name Fix.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.29",
["MOD_DESCRIPTION"] = "Fixes S-Wing Megalith Engine displaying as F-Wing Megalith Engine",
["MODIFICATIONS"]   =
    {
        {

            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DROPS_ENGIAB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameLower", "UI_DROPSHIP_ENGI_AB_NAME_L"}
                            }
                        },
                    }
                },
            }
        }
    }
}
