NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "E3_Like_Scanner.pak",
["MOD_AUTHOR"]    = "Kuborr",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
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
                            ["SPECIAL_KEY_WORDS"] = {"ScannerColour1", "Colour.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},   -- Original "0.3"
                                {"G", "0.3"}, -- Original "0.9"
                                {"B", "0"},   -- Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScannerColour2", "Colour.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.8869"}, -- Original "0.5"
                                {"B", "0"},      -- Original "0.2"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "500"}, -- Original "200"
                                {"PulseTime",  "50"},   -- Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "600"}, -- Original "150"
                                {"PulseTime",  "50"},   -- Original "1"
                            }
                        },
                    }
                },
            }
        }
    }
}