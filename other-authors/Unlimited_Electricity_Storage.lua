NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Unlimited_Electricity_Storage.pak",
    ["MOD_AUTHOR"]      = "XU YANG",
    ["NMS_VERSION"]     = "6.xx",

    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",

                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate",       "999999999"},
                                {"Storage",    "999999999"},
                                {"DependentRate","999999999"}
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate",       "999999999"},
                                {"Storage",    "999999999"},
                                {"DependentRate","999999999"}
                            }
                        },

                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rate",       "999999999"},
                                {"Storage",    "999999999"},
                                {"DependentRate","999999999"}
                            }
                        }
                    }
                }
            }
        }
    }
}