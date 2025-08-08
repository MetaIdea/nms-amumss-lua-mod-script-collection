NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JE_FrigateFuel",
["MOD_DESCRIPTION"] = "Adjusts frigate fuel useage maximums to be the same as minimum for all frigate types",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "5.75",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {

                        {
                            ["PRECEDING_KEY_WORDS"] = {"FuelBurnRate",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Maximum", 8} -- 12
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","Support","Stats","FuelBurnRate",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Maximum", 2} -- 5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","DeepSpace","Stats","FuelBurnRate",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 4},
                                {"Maximum", 4} -- 8
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","DeepSpaceCommon","Stats","FuelBurnRate",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
                                {"Maximum", 6} -- 12
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","Normandy","Stats","FuelBurnRate",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
                                {"Maximum", 6} -- 12
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","Pirate","Stats","FuelBurnRate",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
                                {"Maximum", 8} -- 12
                            }
                        },
                    }
                }
            }
        }
    }
}