local ModName = "AllCorvettePartsForSale"
local Author = "Jackty89"

local DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"

local Special_Corvette_Parts = {
    -- Aeron
    "B_DECO_Q_0",
    "B_DECO_Q_1",
    "B_DECO_R",
    "B_DECO_S",
    "B_DECO_T",
    "B_SHL_E",
    "B_STR_AA_E",
    "B_STR_AA_S",
    "B_STR_AA_W",
    "B_STR_AA_Y_E",
    "B_STR_AA_Y_S",
    "B_STR_AA_Y_W",
    "B_WNG_P",
    "B_WNG_P_B",
    "B_WNG_P_R",
    "B_WNG_P_T",
    "B_WNG_Q",
    "B_WNG_Q_R",
    "B_WNG_R",
    "B_WNG_R_B",
    "B_WNG_R_T",
    -- Hardframe
    "B_STR_E_Y_NE",
    "B_STR_E_Y_NE1",
    "B_STR_E_Y_NE2",
    "B_STR_E_Y_NE3",
    "B_STR_E_Y_NW",
    "B_STR_E_Y_NW1",
    "B_STR_E_Y_NW2",
    "B_STR_E_Y_NW3",
    "B_STR_V_NETB",
    "B_STR_V_NETB1",
    "B_STR_V_NETB2",
    "B_STR_V_NETB3",
    "B_STR_V_NWTB",
    "B_STR_V_NWTB1",
    "B_STR_V_NWTB2",
    "B_STR_V_NWTB3",
    --Argonaut    
    "B_STR_A_E",
    "B_STR_A_N",
    "B_STR_A_NE",
    "B_STR_A_NE1",
    "B_STR_A_NE2",
    "B_STR_A_NE3",
    "B_STR_A_NW",
    "B_STR_A_NW1",
    "B_STR_A_NW2",
    "B_STR_A_NW3",
    "B_STR_A_S",
    "B_STR_A_W",
    "B_STR_A_Y_E",
    "B_STR_A_Y_N",
    "B_STR_A_Y_NE",
    "B_STR_A_Y_NE1",
    "B_STR_A_Y_NE2",
    "B_STR_A_Y_NE3",
    "B_STR_A_Y_NW",
    "B_STR_A_Y_NW1",
    "B_STR_A_Y_NW2",
    "B_STR_A_Y_NW3",
    "B_STR_A_Y_S",
    "B_STR_A_Y_W",
    "B_STR_C_NE",
    "B_STR_C_NE1",
    "B_STR_C_NE2",
    "B_STR_C_NE3",
    "B_STR_C_NW",
    "B_STR_C_NW1",
    "B_STR_C_NW2",
    "B_STR_C_NW3",
    "B_STR_C_Y_NE",
    "B_STR_C_Y_NE1",
    "B_STR_C_Y_NE2",
    "B_STR_C_Y_NE3",
    "B_STR_C_Y_NW",
    "B_STR_C_Y_NW1",
    "B_STR_C_Y_NW2",
    "B_STR_C_Y_NW3",
    "B_STR_E_N",
    "B_STR_E_S",
    "B_STR_E_W",
    "B_STR_E_Y_N",
    "B_STR_E_Y_S",
    "B_STR_E_Y_W",
    "B_STR_G_E",
    "B_STR_G_N",
    "B_STR_G_S",
    "B_STR_G_W",
    "B_STR_G_Y_E",
    "B_STR_G_Y_N",
    "B_STR_G_Y_S",
    "B_STR_G_Y_W",
    -- Albatross
    "B_STR_K_E",
    "B_STR_K_N",
    "B_STR_K_S",
    "B_STR_K_W",
    "B_STR_K_Y_E",
    "B_STR_K_Y_N",
    "B_STR_K_Y_S",
    "B_STR_K_Y_W",
    "B_STR_L_E",
    "B_STR_L_N",
    "B_STR_L_S",
    "B_STR_L_W",
    "B_STR_L_Y_E",
    "B_STR_L_Y_N",
    "B_STR_L_Y_S",
    "B_STR_L_Y_W",
    -- Supercruise 
    "B_STR_B_E",
    "B_STR_B_N",
    "B_STR_B_NE",
    "B_STR_B_NE1",
    "B_STR_B_NE2",
    "B_STR_B_NE3",
    "B_STR_B_NW",
    "B_STR_B_NW1",
    "B_STR_B_NW2",
    "B_STR_B_NW3",
    "B_STR_B_S",
    "B_STR_B_W",
    "B_STR_B_Y_E",
    "B_STR_B_Y_N",
    "B_STR_B_Y_NE",
    "B_STR_B_Y_NE1",
    "B_STR_B_Y_NE2",
    "B_STR_B_Y_NE3",
    "B_STR_B_Y_NW",
    "B_STR_B_Y_NW1",
    "B_STR_B_Y_NW2",
    "B_STR_B_Y_NW3",
    "B_STR_B_Y_S",
    "B_STR_B_Y_W",
    -- Vesper
    "B_STR_F_NE",
    "B_STR_F_NE1",
    "B_STR_F_NE2",
    "B_STR_F_NE3",
    "B_STR_F_NW",
    "B_STR_F_NW1",
    "B_STR_F_NW2",
    "B_STR_F_NW3",
    "B_STR_F_Y_NE",
    "B_STR_F_Y_NE1",
    "B_STR_F_Y_NE2",
    "B_STR_F_Y_NE3",
    "B_STR_F_Y_NW",
    "B_STR_F_Y_NW1",
    "B_STR_F_Y_NW2",
    "B_STR_F_Y_NW3",
    "B_STR_M_E",
    "B_STR_M_N",
    "B_STR_M_NE",
    "B_STR_M_NE1",
    "B_STR_M_NE2",
    "B_STR_M_NE3",
    "B_STR_M_NW",
    "B_STR_M_NW1",
    "B_STR_M_NW2",
    "B_STR_M_NW3",
    "B_STR_M_S",
    "B_STR_M_W",
    "B_STR_M_Y_E",
    "B_STR_M_Y_N",
    "B_STR_M_Y_NE",
    "B_STR_M_Y_NE1",
    "B_STR_M_Y_NE2",
    "B_STR_M_Y_NE3",
    "B_STR_M_Y_NW",
    "B_STR_M_Y_NW1",
    "B_STR_M_Y_NW2",
    "B_STR_M_Y_NW3",
    "B_STR_M_Y_S",
    "B_STR_M_Y_W",
    "B_STR_W_NETB",
    "B_STR_W_NETB1",
    "B_STR_W_NETB2",
    "B_STR_W_NETB3",
    "B_STR_W_NWTB",
    "B_STR_W_NWTB1",
    "B_STR_W_NWTB2",
    "B_STR_W_NWTB3",
    -- Dead-Eye-Cannon
    "B_TUR_B",
    -- Missing parts
    "B_CON_4",
    "B_CON_10",
    "B_CON_11",
    "B_CON_12",
    "B_CON_13",
    "B_CON_14",
    "B_CON_15",
    "B_CON_R",
    "B_CON_R1",
    "B_CON_R2",
    "B_CON_R3"
}

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = ModName,
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

    -- Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    -- {
    --     PRECEDING_KEY_WORDS = {"TradeSettings", "BiggsBarterShop", "AlwaysPresentProducts"},
    --     SEC_SAVE_TO  = "NEW_BARTER_ITEM"
    -- }

    for i = 1, #Special_Corvette_Parts do
        Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
        {
            PRECEDING_KEY_WORDS = {"TradeSettings", "BiggsBasicShop", "AlwaysPresentProducts"},
            ADD = '<Property name="AlwaysPresentProducts" value="'..Special_Corvette_Parts[i]..'" />'
        }
    end
end


Edit_Store_Entries()