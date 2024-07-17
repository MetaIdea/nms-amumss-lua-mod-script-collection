NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "OPhotspots.pak",
["MOD_AUTHOR"]    = "ErgoTheSlayer",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.89",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/REGIONHOTSPOTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityWeighting", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"ClassWeightings"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"ClassStrengths"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "100"},
                                {"IGNORE", "200"},
                                {"IGNORE", "400"},
                                {"IGNORE", "5000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Mineral1", "GcRegionHotspotData.xml"},
                                {"Mineral2", "GcRegionHotspotData.xml"},
                                {"Mineral3", "GcRegionHotspotData.xml"},
                                {"Gas1",     "GcRegionHotspotData.xml"},
                                {"Gas2",     "GcRegionHotspotData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityWeighting", "15"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Mineral1", "GcRegionHotspotData.xml"},
                                {"Mineral2", "GcRegionHotspotData.xml"},
                                {"Mineral3", "GcRegionHotspotData.xml"},
                                {"Gas1",     "GcRegionHotspotData.xml"},
                                {"Gas2",     "GcRegionHotspotData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"ClassWeightings"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Mineral1", "GcRegionHotspotData.xml"},
                                {"Mineral2", "GcRegionHotspotData.xml"},
                                {"Mineral3", "GcRegionHotspotData.xml"},
                                {"Gas1",     "GcRegionHotspotData.xml"},
                                {"Gas2",     "GcRegionHotspotData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"ClassStrengths"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0.5"},
                                {"IGNORE", "1"},
                                {"IGNORE", "2"},
                                {"IGNORE", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RegionHotspotSubstances"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountCost",     "120000"},
                                {"SubstanceYeild", "1000"},
                            }
                        },
                    }
                },
            }
        }
    }
}