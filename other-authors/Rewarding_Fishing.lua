NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Rewarding_Fishing.pak",
    ["MOD_DESCRIPTION"] = "Adjust some parameters of fishing to make it more relaxing and rewarding.",
    ["MOD_AUTHOR"] = "catandlemonade",
    ["LUA_AUTHOR"] = "catandlemonade",
    ["NMS_VERSION"] = "5.29",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFISHINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CastLaunchDelayTime", 0.5}, -- 1
                                {"FishCatchAfterBiteTime", 0.5}, -- 2
                                {"FishingRange", 100}, -- 25
                                {"MinWaitTime", 3}, -- 6.5
                                {"MaxWaitTime", 5}, -- 13.5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ChaseTimes"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Small", 0.5}, -- 1.66
                                {"Medium", 0.6}, -- 3
                                {"Large", 0.7}, -- 5
                                {"ExtraLarge", 0.8}, -- 6.5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"QualityWeights"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Junk", 60}, -- 20
                                {"Epic", 6}, -- 3
                                {"Legendary", 20}, -- 1
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LineBrightness", 2.4}, -- 1.2
                            }
                        },   
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LineColourNibble"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", 0.1}, -- 0.761
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SeaHarvesterAverageCatchTimeSeconds", 180}, -- 3600
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxSeaHarvesterCaughtFish"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Junk", 30}, -- 10
                                {"Common", 50}, -- 20
                                {"Rare", 30}, -- 6
                                {"Epic", 20}, -- 1
                                {"Legendary", 10}, -- 1                            
                            }
                        },

                    }
                }
            }
        }
    }
}