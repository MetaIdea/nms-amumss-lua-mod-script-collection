
--[[ Summery Description:
There is now a 100% chance to get things from things. Example: Getting crystal fragments is now 100% chance when ever breaking Di-Hydrogen crystals on the ground.
You can get rich from Storm Crystals.
With this mod 50 Storm Crystals is worth roughly 6,7 million.
So hunt those Di-Hydrogen crystals.
50k Di-Hydrogen is worth roughly 1.3 Million. Sooo... 8 total million. Good hunting sport.

Changes other percent chances to 100% throughout the game.
]]--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Ha1_Reward_Percentage_100_RT.pak", 
    ["MOD_AUTHOR"]      = "Mjjstral+Gumsk",
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
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "100",
                            ["VALUE_MATCH_OPTIONS"] = "<", -- Apparently there was a few that was higher than 100, so we change only those that are 99 or less to 100.
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PercentageChance",    "100"}
                            }
                        }
                    }
                }
            }
        }
    }
}