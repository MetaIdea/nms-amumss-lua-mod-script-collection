NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BetterHotspots.pak",
["MOD_AUTHOR"]    = "Sypheren",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.84",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Power",    "GcRegionHotspotData.xml"},
                                {"Mineral1", "GcRegionHotspotData.xml"},
                                {"Mineral2", "GcRegionHotspotData.xml"},
                                {"Mineral3", "GcRegionHotspotData.xml"},
                                {"Gas1",     "GcRegionHotspotData.xml"},
                                {"Gas2",     "GcRegionHotspotData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"ClassWeightings"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1"},
                                {"IGNORE", "2"},
                                {"IGNORE", "6"},
                                {"IGNORE", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Power", "GcRegionHotspotData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"ClassStrengths"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "450"},
                                {"IGNORE", "660"},
                                {"IGNORE", "750"},
                                {"IGNORE", "900"},
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
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"},
                                {"IGNORE", "4.5"},
                                {"IGNORE", "6"},
                                {"IGNORE", "7.5"},
                            }
                        },
                    }
                },
            }
        },
    }
}