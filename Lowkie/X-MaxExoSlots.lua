NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "X-MaxExoSlots.pak",
    ["MOD_DESCRIPTION"] = "Makes all Exo craft have 38 slots",
    ["MOD_AUTHOR"] = "Lowkie",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleSmall", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "48"},
                                {"MaxSlots", "48"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleMedium", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "48"},
                                {"MaxSlots", "48"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleLarge", "GcInventoryLayoutGenerationDataEntry.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", "48"},
                                {"MaxSlots", "48"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"]	= "ClassProbabilityData",
                            ["REPLACE_TYPE"]		= "ALL",
                            ["VALUE_CHANGE_TABLE"]	= {
                                {"C", 0},
                                {"B", 0},
                                {"A", 0},
                                {"S", 100},
                            }
                        },
                    }
                }
            }
        }
    }
}