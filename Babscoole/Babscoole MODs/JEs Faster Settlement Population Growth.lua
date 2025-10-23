NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Faster Settlement Population Growth",
["MOD_DESCRIPTION"] = "Increases population gain from Settlement events",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues", "MaxPopulation", "PositiveWide"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 5}, -- 1
                                {"AmountMax", 12} -- 5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues", "MaxPopulation", "PositiveLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 10}, -- 3
                                {"AmountMax", 12}  -- 5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues", "MaxPopulation", "PositiveMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 8}, -- 2
                                {"AmountMax", 9}  -- 3
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues", "MaxPopulation", "PositiveSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 5}, -- 1
                                {"AmountMax", 5}  -- 1
                            }
                        }
                    }
                }
            }
        }
    }
}