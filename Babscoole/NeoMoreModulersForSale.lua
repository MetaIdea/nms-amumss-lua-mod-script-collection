NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NeoMoreModulersForSale.pak",
["MOD_AUTHOR"]      = "Neo6891",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.08",
["MOD_DESCRIPTION"] = "Merchants will have more modules for sale",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ShipTechSpecialist",  "GcTradeData.xml"},
                                {"SuitTechSpecialist",  "GcTradeData.xml"},
                                {"WeapTechSpecialist",  "GcTradeData.xml"},
                                {"NexusTechSpecialist", "GcTradeData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"ShipTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "40"},
                                {"MaxItemsForSale", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "40"},
                                {"MaxItemsForSale", "40"},
                            }
                        },
                    }
                },
            }
        }
    }
}