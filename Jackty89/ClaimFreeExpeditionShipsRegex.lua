ModName = "ClaimFreeExpeditionShipsRegex"
Author = "Jackty89"

Reward_Table_Path = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

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
                        {
                            SKW = { "Id", "^RS_S.-_SHIP$" }, -- Note: can also use "RS_S.-_SHIP"
                            REPLACE_TYPE = "ALL",
                            VALUE_CHANGE_TABLE =
                            {
                                {"CostAmount", 0},
                                {"Currency", "Units"},
                            }
                        }
                    }
                }
            }
        }
    }
}