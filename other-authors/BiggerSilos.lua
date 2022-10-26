SiloStorage = 7000000       --Original 1400000 which equals to 1k

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "BiggerSilos.pak",
    ["MOD_AUTHOR"]      = "MusicManiac",
    ["NMS_VERSION"]     = "4.05",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",SiloStorage},
                            }
                        }
                    },
                }
            },
        }
    }
}