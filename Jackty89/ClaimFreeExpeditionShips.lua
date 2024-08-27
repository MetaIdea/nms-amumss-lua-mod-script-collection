ModName = "ClaimFreeExpeditionShips"
Author = "Jackty89"

Reward_Table_Path = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
-- SHIP_REWARD_IDS = {"RS_S1_SHIP", "RS_S9_SHIP", "RS_S12_SHIP", "RS_S13_SHIP"} -- change this to a regex (RS_S.*_SHIP)

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = Reward_Table_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- {
                            -- WISS =  {
                            -- { "IGNORE", "RS_S.*_SHIP" },
                              -- -- { "RS_S1_SHIP", "IGNORE" },
                              -- -- { "RS_S9_SHIP", "IGNORE" },
                              -- -- { "RS_S12_SHIP", "IGNORE" },
                              -- -- { "RS_S13_SHIP", "IGNORE" },
                            -- },
                            -- WISUBSEC_OPTION = "ALL",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"CostAmount", 0},
                                -- {"Currency", "Units"},
                            -- },
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "^RS_S.-_SHIP$"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CostAmount", 0},
                                {"Currency", "Units"},
                            },
                        }, 
                    },
                },
            },
        },
    },
}

-- local Changes_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
-- function ChangeCostOfExpeditionShips()
    -- for i = 1, #SHIP_REWARD_IDS do
        -- Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
        -- {
            -- -- ["VALUE_MATCH"] = "{^RS_%s+_SHIP}",
            -- ["SPECIAL_KEY_WORDS"] = {"Id", SHIP_REWARD_IDS[i]},
            -- ["VALUE_CHANGE_TABLE"] =
            -- {
                -- {"CostAmount", 0},
                -- {"Currency", "Units"}
            -- }
        -- }
    -- end
-- end

-- ChangeCostOfExpeditionShips()