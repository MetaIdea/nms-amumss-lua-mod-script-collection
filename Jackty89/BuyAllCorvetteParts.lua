ModName = "BuyAllCorvetteParts"
Author = "Jackty89"

DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"


NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = ModName,
    MOD_AUTHOR = "DerangedTeddy",
    LUA_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = DefaultRealityPath,
                    MXML_CHANGE_TABLE =
                    {
                        -- {
                        --     PRECEDING_KEY_WORDS = {"TradeSettings", "BiggsBasicShop"},
                        --     VALUE_CHANGE_TABLE =
                        --     {
                        --         -- should check if i can do thos wihtout hardcoding
                        --         {"MinItemsForSale", 114},
                        --         {"MaxItemsForSale", 114}
                        --     }
                        -- }
                    }
                }
            }
        }
    }
}

local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].MXML_CHANGE_TABLE

function Edit_Store_Entries()
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        PRECEDING_KEY_WORDS = {"TradeSettings", "BiggsBarterShop", "AlwaysPresentProducts"},
        SEC_SAVE_TO  = "BARTER_ITEMS"
    }

    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        PRECEDING_KEY_WORDS = {"TradeSettings", "BiggsBasicShop", "AlwaysPresentProducts"},
        REMOVE = "HBOS",
        SEC_ADD_NAMED = "BARTER_ITEMS"
    }
end


Edit_Store_Entries()