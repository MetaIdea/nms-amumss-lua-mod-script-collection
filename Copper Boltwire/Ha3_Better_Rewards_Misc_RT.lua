
--[[ Summery Description:
In as few words as i can explain what this monstrosity of a mod does...
It increases the gain with mining drill on plants, the rewards from completing missions, or opening boxes/containers
It increases how much salvage data devices you get when you find one.
The majority of this mod increases said gain/bounty/rewards by 10 times!

However, this WAS made for a slightly older version of NMS, so some plants, rocks and other items aren't effected.
Toxic biomes/worlds are the least effected. Not much i can do with my current skills. -Copper B.

Copper B. - Decreasing grinding since 1997 -- Seriously, i started to seriously mod games back then too :D
]]--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Ha3_Better_Rewards_Misc_RT.pak",
    ["MOD_AUTHOR"]      = "MrTrack and Copper B.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    --["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {   -- Multiplys the amount of quicksilver you get
                            ["SPECIAL_KEY_WORDS"]   = {"Currency", "Specials"},  -- QUICKSILVER
                            ["SECTION_UP_SPECIAL"]  = 1,
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {   -- Multiplys the amount of nanites you get
                            ["SPECIAL_KEY_WORDS"]   = {"Currency", "Nanites"},  -- NANITES
                            ["SECTION_UP_SPECIAL"]  = 1,
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {   -- Multiplys the amount of units you get of terminals and other unit sources that have really low unit rewards
                            -- (from 90-2000 Units) are multiplied by this number on top of the regular unit multiplier (so by default = 5 * 10 = 50x multiplier)
                            ["SPECIAL_KEY_WORDS"]   = {"Currency", "Units"},  -- UNITS (Money / Cash / Credits / What ever you like to call 'em...)
                            ["SECTION_UP_SPECIAL"]  = 1,
                            ["VALUE_MATCH"]         = "2000",
                            ["VALUE_MATCH_OPTIONS"] = "<=",
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        {   -- Multiplys the amount of units you get 
                            ["SPECIAL_KEY_WORDS"]   = {"Currency", "Units"},  -- UNITS (Money / Cash / Credits / What ever you like to call 'em...)
                            ["SECTION_UP_SPECIAL"]  = 1,
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        {   -- Multiplys the reward value (in nanites) for each milestone tier at Nada (in the Space Anomaly)
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "R_NADA_JM"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AmountPerStat",    10}
                            }
                        },
                        
                        {   -- Multiplys the amount of salvaged data you mine and get in Nexus Missions -- I have set these to default values since you can craft them...
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "BP_SALVAGE"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"AmountMin",    1},
                                {"AmountMax",    1}
                            }
                        },
---------------------------------------------------------------------------------------------------------------
---------------------------- Miscellaneous -----------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
                        --[[
                        {   
                            ["SPECIAL_KEY_WORDS"]    = {"ID", "xxxxxxxxxxxxxxxxxxxxxxxxxx"},  -- xxxxxxxxxxxxxxxxxxxxxxxxxxxx
                            ["MATH_OPERATION"]         = "*",
                            ["REPLACE_TYPE"]         = "ALL",
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AmountMin",    10},
                                {"AmountMax",    13}
                            }
                        },
                        
                        
                        id -- name

                        QUICKSILVER -- QUICKSILVER -- could also be referred as: name="Currency" value="Specials"
                        TECHFRAG -- NANITE CLUSTER
                        TECHFRAG_R -- NANITES
                        UNITS -- UNITS ?? Money??
                        
                        ]]--
                        
                    }
                }
            }
        }
    }
}








-- BOO!