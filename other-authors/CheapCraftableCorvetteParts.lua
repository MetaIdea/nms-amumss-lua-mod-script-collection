local Types =
{
    PRODUCT = "Product",
    SUBSTANCE = "Substance"
}

local CorvetteSeasonalRewardsPartsList = {
    "B_TUR_B",
    "B_WNG_P",
    "B_WNG_Q",
    "B_WNG_R",
    "B_SHL_E",
    "B_STR_AA_N",
    "B_DECO_Q_0",
    "B_DECO_R",
    "B_DECO_S",
    "B_DECO_T",
}

local FullCorvettePartsList = {
    "B_COK_A",
    "B_COK_B",
    "B_COK_D",
    "B_HAB_A",
    "B_HAB_B",
    "B_HAB_C",
    "B_HAB1_A",
    "B_HAB1_B",
    "B_HAB1_C",
    "B_LND_A",
    "B_LND_B",
    "B_LND_C",
    "B_LAN_B",
    "B_WNG_A",
    "B_WNG_A_R",
    "B_WNG_B",
    "B_WNG_B_R",
    "B_WNG_C",
    "B_WNG_C_R",
    "B_WNG_D",
    "B_WNG_D_R",
    "B_WNG_E",
    "B_WNG_E_R",
    "B_WNG_F",
    "B_WNG_F_R",
    "B_WNG_G",
    "B_WNG_G_R",
    "B_WNG_H",
    "B_WNG_H_R",
    "B_WNG_I",
    "B_WNG_I_R",
    "B_WNG_J",
    "B_WNG_J_R",
    "B_WNG_K",
    "B_WNG_K_R",
    "B_WNG_L",
    "B_WNG_L_R",
    "B_WNG_M",
    "B_WNG_M_R",
    "B_WNG_N",
    "B_WNG_N_R",
    "B_WNG_O_0",
    "B_WNG_O_0_R",
    "B_WNG_O_1",
    "B_WNG_O_1_R",
    "B_WNG_O_2",
    "B_WNG_O_2_R",
    "B_TUR_A",
    "B_TUR_C",
    "B_TUR_D",
    "B_TUR_E",
    "B_SHL_A",
    "B_SHL_B",
    "B_SHL_C",
    "B_SHL_D",
    "B_TRU_A",
    "B_TRU_B",
    "B_TRU_C",
    "B_TRU_D",
    "B_TRU_E",
    "B_TRU_F",
    "B_TRU_G",
    "B_TRU_H",
    "B_ALK_A",
    "B_ALK_Z_A",
    "B_ALK_B",
    "B_ALK_Z_B",
    "B_ALK_C",
    "B_ALK_Z_C",
    "B_STR_A_NE",
    "B_STR_A_NE1",
    "B_STR_A_NE2",
    "B_STR_A_NE3",
    "B_STR_A_Y_NE",
    "B_STR_A_Y_NE1",
    "B_STR_A_Y_NE2",
    "B_STR_A_Y_NE3",
    "B_STR_A_NW",
    "B_STR_A_NW1",
    "B_STR_A_NW2",
    "B_STR_A_NW3",
    "B_STR_A_Y_NW",
    "B_STR_A_Y_NW1",
    "B_STR_A_Y_NW2",
    "B_STR_A_Y_NW3",
    "B_STR_A_N",
    "B_STR_A_E",
    "B_STR_A_S",
    "B_STR_A_W",
    "B_STR_A_Y_N",
    "B_STR_A_Y_E",
    "B_STR_A_Y_S",
    "B_STR_A_Y_W",
    "B_STR_B_NE",
    "B_STR_B_NE1",
    "B_STR_B_NE2",
    "B_STR_B_NE3",
    "B_STR_B_Y_NE",
    "B_STR_B_Y_NE1",
    "B_STR_B_Y_NE2",
    "B_STR_B_Y_NE3",
    "B_STR_B_NW",
    "B_STR_B_NW1",
    "B_STR_B_NW2",
    "B_STR_B_NW3",
    "B_STR_B_Y_NW",
    "B_STR_B_Y_NW1",
    "B_STR_B_Y_NW2",
    "B_STR_B_Y_NW3",
    "B_STR_B_N",
    "B_STR_B_E",
    "B_STR_B_S",
    "B_STR_B_W",
    "B_STR_B_Y_N",
    "B_STR_B_Y_E",
    "B_STR_B_Y_S",
    "B_STR_B_Y_W",
    "B_STR_C_NE",
    "B_STR_C_NE1",
    "B_STR_C_NE2",
    "B_STR_C_NE3",
    "B_STR_C_Y_NE",
    "B_STR_C_Y_NE1",
    "B_STR_C_Y_NE2",
    "B_STR_C_Y_NE3",
    "B_STR_C_NW",
    "B_STR_C_NW1",
    "B_STR_C_NW2",
    "B_STR_C_NW3",
    "B_STR_C_Y_NW",
    "B_STR_C_Y_NW1",
    "B_STR_C_Y_NW2",
    "B_STR_C_Y_NW3",
    "B_STR_C_N",
    "B_STR_C_E",
    "B_STR_C_S",
    "B_STR_C_W",
    "B_STR_C_Y_N",
    "B_STR_C_Y_E",
    "B_STR_C_Y_S",
    "B_STR_C_Y_W",
    "B_STR_D_NE",
    "B_STR_D_NE1",
    "B_STR_D_NE2",
    "B_STR_D_NE3",
    "B_STR_D_Y_NE",
    "B_STR_D_Y_NE1",
    "B_STR_D_Y_NE2",
    "B_STR_D_Y_NE3",
    "B_STR_D_NW",
    "B_STR_D_NW1",
    "B_STR_D_NW2",
    "B_STR_D_NW3",
    "B_STR_D_Y_NW",
    "B_STR_D_Y_NW1",
    "B_STR_D_Y_NW2",
    "B_STR_D_Y_NW3",
    "B_STR_D_N",
    "B_STR_D_E",
    "B_STR_D_S",
    "B_STR_D_W",
    "B_STR_D_Y_N",
    "B_STR_D_Y_E",
    "B_STR_D_Y_S",
    "B_STR_D_Y_W",
    "B_STR_E_NE",
    "B_STR_E_NE1",
    "B_STR_E_NE2",
    "B_STR_E_NE3",
    "B_STR_E_Y_NE",
    "B_STR_E_Y_NE1",
    "B_STR_E_Y_NE2",
    "B_STR_E_Y_NE3",
    "B_STR_E_NW",
    "B_STR_E_NW1",
    "B_STR_E_NW2",
    "B_STR_E_NW3",
    "B_STR_E_Y_NW",
    "B_STR_E_Y_NW1",
    "B_STR_E_Y_NW2",
    "B_STR_E_Y_NW3",
    "B_STR_E_N",
    "B_STR_E_E",
    "B_STR_E_S",
    "B_STR_E_W",
    "B_STR_E_Y_N",
    "B_STR_E_Y_E",
    "B_STR_E_Y_S",
    "B_STR_E_Y_W",
    "B_STR_F_NE",
    "B_STR_F_NE1",
    "B_STR_F_NE2",
    "B_STR_F_NE3",
    "B_STR_F_Y_NE",
    "B_STR_F_Y_NE1",
    "B_STR_F_Y_NE2",
    "B_STR_F_Y_NE3",
    "B_STR_F_NW",
    "B_STR_F_NW1",
    "B_STR_F_NW2",
    "B_STR_F_NW3",
    "B_STR_F_Y_NW",
    "B_STR_F_Y_NW1",
    "B_STR_F_Y_NW2",
    "B_STR_F_Y_NW3",
    "B_STR_F_N",
    "B_STR_F_E",
    "B_STR_F_S",
    "B_STR_F_W",
    "B_STR_F_Y_N",
    "B_STR_F_Y_E",
    "B_STR_F_Y_S",
    "B_STR_F_Y_W",
    "B_STR_G_NE",
    "B_STR_G_NE1",
    "B_STR_G_NE2",
    "B_STR_G_NE3",
    "B_STR_G_Y_NE",
    "B_STR_G_Y_NE1",
    "B_STR_G_Y_NE2",
    "B_STR_G_Y_NE3",
    "B_STR_G_NW",
    "B_STR_G_NW1",
    "B_STR_G_NW2",
    "B_STR_G_NW3",
    "B_STR_G_Y_NW",
    "B_STR_G_Y_NW1",
    "B_STR_G_Y_NW2",
    "B_STR_G_Y_NW3",
    "B_STR_G_N",
    "B_STR_G_E",
    "B_STR_G_S",
    "B_STR_G_W",
    "B_STR_G_Y_N",
    "B_STR_G_Y_E",
    "B_STR_G_Y_S",
    "B_STR_G_Y_W",
    "B_STR_H_NE",
    "B_STR_H_NE1",
    "B_STR_H_NE2",
    "B_STR_H_NE3",
    "B_STR_H_Y_NE",
    "B_STR_H_Y_NE1",
    "B_STR_H_Y_NE2",
    "B_STR_H_Y_NE3",
    "B_STR_H_NW",
    "B_STR_H_NW1",
    "B_STR_H_NW2",
    "B_STR_H_NW3",
    "B_STR_H_Y_NW",
    "B_STR_H_Y_NW1",
    "B_STR_H_Y_NW2",
    "B_STR_H_Y_NW3",
    "B_STR_H_N",
    "B_STR_H_E",
    "B_STR_H_S",
    "B_STR_H_W",
    "B_STR_H_Y_N",
    "B_STR_H_Y_E",
    "B_STR_H_Y_S",
    "B_STR_H_Y_W",
    "B_STR_I_NE",
    "B_STR_I_NE1",
    "B_STR_I_NE2",
    "B_STR_I_NE3",
    "B_STR_I_Y_NE",
    "B_STR_I_Y_NE1",
    "B_STR_I_Y_NE2",
    "B_STR_I_Y_NE3",
    "B_STR_I_NW",
    "B_STR_I_NW1",
    "B_STR_I_NW2",
    "B_STR_I_NW3",
    "B_STR_I_Y_NW",
    "B_STR_I_Y_NW1",
    "B_STR_I_Y_NW2",
    "B_STR_I_Y_NW3",
    "B_STR_I_N",
    "B_STR_I_E",
    "B_STR_I_S",
    "B_STR_I_W",
    "B_STR_I_Y_N",
    "B_STR_I_Y_E",
    "B_STR_I_Y_S",
    "B_STR_I_Y_W",
    "B_STR_J_NE",
    "B_STR_J_NE1",
    "B_STR_J_NE2",
    "B_STR_J_NE3",
    "B_STR_J_Y_NE",
    "B_STR_J_Y_NE1",
    "B_STR_J_Y_NE2",
    "B_STR_J_Y_NE3",
    "B_STR_J_NW",
    "B_STR_J_NW1",
    "B_STR_J_NW2",
    "B_STR_J_NW3",
    "B_STR_J_Y_NW",
    "B_STR_J_Y_NW1",
    "B_STR_J_Y_NW2",
    "B_STR_J_Y_NW3",
    "B_STR_J_N",
    "B_STR_J_E",
    "B_STR_J_S",
    "B_STR_J_W",
    "B_STR_J_Y_N",
    "B_STR_J_Y_E",
    "B_STR_J_Y_S",
    "B_STR_J_Y_W",
    "B_STR_K_NE",
    "B_STR_K_NE1",
    "B_STR_K_NE2",
    "B_STR_K_NE3",
    "B_STR_K_Y_NE",
    "B_STR_K_Y_NE1",
    "B_STR_K_Y_NE2",
    "B_STR_K_Y_NE3",
    "B_STR_K_NW",
    "B_STR_K_NW1",
    "B_STR_K_NW2",
    "B_STR_K_NW3",
    "B_STR_K_Y_NW",
    "B_STR_K_Y_NW1",
    "B_STR_K_Y_NW2",
    "B_STR_K_Y_NW3",
    "B_STR_K_N",
    "B_STR_K_E",
    "B_STR_K_S",
    "B_STR_K_W",
    "B_STR_K_Y_N",
    "B_STR_K_Y_E",
    "B_STR_K_Y_S",
    "B_STR_K_Y_W",
    "B_STR_L_NE",
    "B_STR_L_NE1",
    "B_STR_L_NE2",
    "B_STR_L_NE3",
    "B_STR_L_Y_NE",
    "B_STR_L_Y_NE1",
    "B_STR_L_Y_NE2",
    "B_STR_L_Y_NE3",
    "B_STR_L_NW",
    "B_STR_L_NW1",
    "B_STR_L_NW2",
    "B_STR_L_NW3",
    "B_STR_L_Y_NW",
    "B_STR_L_Y_NW1",
    "B_STR_L_Y_NW2",
    "B_STR_L_Y_NW3",
    "B_STR_L_N",
    "B_STR_L_E",
    "B_STR_L_S",
    "B_STR_L_W",
    "B_STR_L_Y_N",
    "B_STR_L_Y_E",
    "B_STR_L_Y_S",
    "B_STR_L_Y_W",
    "B_STR_M_N",
    "B_STR_M_E",
    "B_STR_M_S",
    "B_STR_M_W",
    "B_STR_M_Y_N",
    "B_STR_M_Y_E",
    "B_STR_M_Y_S",
    "B_STR_M_Y_W",
    "B_STR_M_NE",
    "B_STR_M_NE1",
    "B_STR_M_NE2",
    "B_STR_M_NE3",
    "B_STR_M_Y_NE",
    "B_STR_M_Y_NE1",
    "B_STR_M_Y_NE2",
    "B_STR_M_Y_NE3",
    "B_STR_M_NW",
    "B_STR_M_NW1",
    "B_STR_M_NW2",
    "B_STR_M_NW3",
    "B_STR_M_Y_NW",
    "B_STR_M_Y_NW1",
    "B_STR_M_Y_NW2",
    "B_STR_M_Y_NW3",
    "B_STR_N_NE",
    "B_STR_N_NE1",
    "B_STR_N_NE2",
    "B_STR_N_NE3",
    "B_STR_N_Y_NE",
    "B_STR_N_Y_NE1",
    "B_STR_N_Y_NE2",
    "B_STR_N_Y_NE3",
    "B_STR_N_NW",
    "B_STR_N_NW1",
    "B_STR_N_NW2",
    "B_STR_N_NW3",
    "B_STR_N_Y_NW",
    "B_STR_N_Y_NW1",
    "B_STR_N_Y_NW2",
    "B_STR_N_Y_NW3",
    "B_STR_N_N",
    "B_STR_N_E",
    "B_STR_N_S",
    "B_STR_N_W",
    "B_STR_N_Y_N",
    "B_STR_N_Y_E",
    "B_STR_N_Y_S",
    "B_STR_N_Y_W",
    "B_STR_O_N",
    "B_STR_O_E",
    "B_STR_O_S",
    "B_STR_O_W",
    "B_STR_O_Y_N",
    "B_STR_O_Y_E",
    "B_STR_O_Y_S",
    "B_STR_O_Y_W",
    "B_STR_P_N",
    "B_STR_P_E",
    "B_STR_P_S",
    "B_STR_P_W",
    "B_STR_P_Y_N",
    "B_STR_P_Y_E",
    "B_STR_P_Y_S",
    "B_STR_P_Y_W",
    "B_STR_Q_N",
    "B_STR_Q_E",
    "B_STR_Q_S",
    "B_STR_Q_W",
    "B_STR_Q_Y_N",
    "B_STR_Q_Y_E",
    "B_STR_Q_Y_S",
    "B_STR_Q_Y_W",
    "B_STR_R_N",
    "B_STR_R_E",
    "B_STR_R_S",
    "B_STR_R_W",
    "B_STR_R_Y_N",
    "B_STR_R_Y_E",
    "B_STR_R_Y_S",
    "B_STR_R_Y_W",
    "B_STR_S_N",
    "B_STR_S_E",
    "B_STR_S_S",
    "B_STR_S_W",
    "B_STR_S_Y_N",
    "B_STR_S_Y_E",
    "B_STR_S_Y_S",
    "B_STR_S_Y_W",
    "B_STR_T_NETB",
    "B_STR_T_NETB1",
    "B_STR_T_NETB2",
    "B_STR_T_NETB3",
    "B_STR_T_NWTB",
    "B_STR_T_NWTB1",
    "B_STR_T_NWTB2",
    "B_STR_T_NWTB3",
    "B_STR_U_NETB",
    "B_STR_U_NETB1",
    "B_STR_U_NETB2",
    "B_STR_U_NETB3",
    "B_STR_U_NWTB",
    "B_STR_U_NWTB1",
    "B_STR_U_NWTB2",
    "B_STR_U_NWTB3",
    "B_STR_V_NETB",
    "B_STR_V_NETB1",
    "B_STR_V_NETB2",
    "B_STR_V_NETB3",
    "B_STR_V_NWTB",
    "B_STR_V_NWTB1",
    "B_STR_V_NWTB2",
    "B_STR_V_NWTB3",
    "B_STR_W_NETB",
    "B_STR_W_NETB1",
    "B_STR_W_NETB2",
    "B_STR_W_NETB3",
    "B_STR_W_NWTB",
    "B_STR_W_NWTB1",
    "B_STR_W_NWTB2",
    "B_STR_W_NWTB3",
    "B_STR_X_NETB",
    "B_STR_X_NETB1",
    "B_STR_X_NETB2",
    "B_STR_X_NETB3",
    "B_STR_X_NWTB",
    "B_STR_X_NWTB1",
    "B_STR_X_NWTB2",
    "B_STR_X_NWTB3",
    "B_STR_Y_NETB",
    "B_STR_Y_NETB1",
    "B_STR_Y_NETB2",
    "B_STR_Y_NETB3",
    "B_STR_Y_NWTB",
    "B_STR_Y_NWTB1",
    "B_STR_Y_NWTB2",
    "B_STR_Y_NWTB3",
    "B_GEN_0",
    "B_GEN_1",
    "B_GEN_2",
    "B_GEN_3",
    "B_CON_L_0",
    "B_CON_R_0",
    "B_CON_L_1",
    "B_CON_R_1",
    "B_CON_L_2",
    "B_CON_R_2",
    "B_CON_L_3",
    "B_CON_R_3",
    "B_CON_5",
    "B_CON_6",
    "B_CON_7",
    "B_CON_8",
    "B_CON_9",
    "B_CON_10",
    "B_CON_11",
    "B_CON_12",
    "B_CON_13",
    "B_CON_14",
    "B_CON_15",
    "B_CON2_0",
    "B_CON2_1",
    "B_CON2_2",
    "B_CON2_3",
    "B_DECO_A",
    "B_DECO_B",
    "B_DECO_C",
    "B_DECO_D",
    "B_DECO_E",
    "B_DECO_F",
    "B_DECO_G",
    "B_DECO_H",
    "B_DECO_I",
    "B_DECO_J",
    "B_DECO_K",
    "B_DECO_L",
    "B_DECO_M",
    "B_DECO_N_0",
    "B_DECO_N_1",
    "B_DECO_O",
    "B_DECO_P",
}

local VisibleCorvettePartsList = {
-- Cockpits
    {
        ProductId = "B_COK_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "FARMPROD3", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "CASING", RequiredAmount = "15", RequiredType = Types.PRODUCT},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
    },
	{
		ProductId = "B_COK_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "FARMPROD3", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "CASING", RequiredAmount = "15", RequiredType = Types.PRODUCT},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_COK_D",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "FARMPROD3", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "CASING", RequiredAmount = "15", RequiredType = Types.PRODUCT},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
	},
-- 2x1 Hab
	{
		ProductId = "B_HAB_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "16", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "16", RequiredType = Types.PRODUCT},
            {RequirementID = "CARBON_SEAL", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_HAB_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "16", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "16", RequiredType = Types.PRODUCT},
            {RequirementID = "CARBON_SEAL", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },

	},
	{
		ProductId = "B_HAB_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "16", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "16", RequiredType = Types.PRODUCT},
            {RequirementID = "CARBON_SEAL", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },

	},
-- 1x1 Hab
	{
		ProductId = "B_HAB1_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "8", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "8", RequiredType = Types.PRODUCT},
            {RequirementID = "CARBON_SEAL", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_HAB1_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "8", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "8", RequiredType = Types.PRODUCT},
            {RequirementID = "CARBON_SEAL", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_HAB1_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "8", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "8", RequiredType = Types.PRODUCT},
            {RequirementID = "CARBON_SEAL", RequiredAmount = "2", RequiredType = Types.PRODUCT}
        },
	},
    -- Landing
	{
		ProductId = "B_LND_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "10", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_LND_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_LND_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
-- Main engines
-- Heavy Boosters
    {
        ProductId = "B_WNG_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
    },
	{
		ProductId = "B_WNG_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_WNG_D",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_WNG_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
-- Sublight Thrusters
    {
		ProductId = "B_WNG_F",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_WNG_H",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_WNG_L",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
    {
		ProductId = "B_TRU_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_D",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_E",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_F",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_G",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
	{
		ProductId = "B_TRU_H",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "GRENFUEL1", RequiredAmount = "5", RequiredType = Types.PRODUCT}
        },
	},
-- Wings
	{
		ProductId = "B_WNG_O_0",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "3", RequiredType = Types.PRODUCT},
        },

	},
	{
		ProductId = "B_WNG_O_1",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "3", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_O_2",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "NANOTUBES", RequiredAmount = "3", RequiredType = Types.PRODUCT},
        },
	},
    {
		ProductId = "B_WNG_E",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_G",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_I",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_J",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_K",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_WNG_M",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "5", RequiredType = Types.PRODUCT},
        },
	},
-- Reactors
	{
		ProductId = "B_GEN_0",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYPERFUEL1", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_GEN_1",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYPERFUEL1", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_GEN_2",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYPERFUEL1", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_GEN_3",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "MAGNET", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYPERFUEL1", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
-- Weapons
	{
		ProductId = "B_DECO_I",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "YELLOW2", RequiredAmount = "200", RequiredType = Types.SUBSTANCE},
            {RequirementID = "FUEL2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_TUR_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "LAND2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "CATALYST2", RequiredAmount = "60", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_TUR_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "ROCKETSUB", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "FUEL2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_TUR_D",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "COLD1", RequiredAmount = "200", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_TUR_E",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "HOT1", RequiredAmount = "200", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
-- Access hatches
	{
		ProductId = "B_ALK_A",
                Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "10", RequiredType = Types.PRODUCT},
        },

	},
	{
		ProductId = "B_ALK_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "10", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_ALK_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "6", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "10", RequiredType = Types.PRODUCT},
        },
	},
-- Shields
	{
		ProductId = "B_SHL_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "STELLAR2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "CATALYST2", RequiredAmount = "25", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_SHL_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "STELLAR2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "CATALYST2", RequiredAmount = "25", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_SHL_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "STELLAR2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "CATALYST2", RequiredAmount = "25", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_SHL_D",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "STELLAR2", RequiredAmount = "100", RequiredType = Types.SUBSTANCE},
            {RequirementID = "CATALYST2", RequiredAmount = "25", RequiredType = Types.SUBSTANCE},
            {RequirementID = "TECH_COMP", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
-- Hull parts
	{
		ProductId = "B_STR_A_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_A_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_B_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_B_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_C_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_C_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_D_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_D_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_E_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_E_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_F_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_F_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_G_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_G_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_H_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_H_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_I_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_I_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_J_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_J_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_K_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_K_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_L_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_L_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_M_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_M_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_N_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_O_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_Q_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_P_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_R_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_S_N",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_A",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_B",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_N_NE",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_T_NETB",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_U_NETB",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_V_NETB",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_W_NETB",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_X_NETB",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_STR_Y_NETB",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
-- Attachments
	{
		ProductId = "B_DECO_C",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_D",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_E",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_F",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_G",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_H",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_J",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_K",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_L",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_M",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_N_0",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_N_1",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_O",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_DECO_P",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "5", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "1", RequiredType = Types.PRODUCT},
        },
	},
-- Hull connectors
	{
		ProductId = "B_CON_L_0",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_L_1",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_L_3",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_4",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_5",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_6",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_7",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_8",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_9",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_10",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_11",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_12",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_13",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_14",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_15",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON2_0",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON_L_2",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON2_1",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON2_2",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
	{
		ProductId = "B_CON2_3",
        IsGrouped = false,
        GroupedIds = {},
        Requirements =
        {
            {RequirementID = "CASING", RequiredAmount = "10", RequiredType = Types.PRODUCT},
            {RequirementID = "HYDRALIC", RequiredAmount = "2", RequiredType = Types.PRODUCT},
        },
	},
}

local CorvetteExpeditionPartsList = {
    {
        ProductId = "B_TUR_B",
        IsGrouped = false,
    },
    {
        ProductId = "B_WNG_P",
        IsGrouped = false,
    },
    {
        ProductId = "B_WNG_Q",
        IsGrouped = false,
    },
    {
        ProductId = "B_WNG_R",
        IsGrouped = false,
    },
    {
        ProductId = "B_SHL_E",
        IsGrouped = false,
    },
    {
        ProductId = "B_STR_AA_N",
        IsGrouped = false,
    },
    {
        ProductId = "B_DECO_Q_0",
        IsGrouped = false,
    },
    {
        ProductId = "B_DECO_R",
        IsGrouped = false,
    },
    {
        ProductId = "B_DECO_S",
        IsGrouped = false,
    },
    {
        ProductId = "B_DECO_T",
        IsGrouped = false,
    },
}

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "CheapCraftableCorvetteParts",
    ["MOD_AUTHOR"]		    = "Aristotale",
    ["LUA_AUTHOR"]		    = "Aristotale",
    ["NMS_VERSION"]		    = "6.x",
    ["MOD_DESCRIPTION"]     = "Make Corvette parts craftable after the first purchase",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                {"ID","ALIEN_INV_TOKEN",}
                            },
                            ["SEC_SAVE_TO"] = "CorvettePartsConsume",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
            }
        }
    }
}

local DifficultyConfigTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
local ProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
local ConsumablesTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
local RewardsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]
local BaseBuildingObjectsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["MXML_CHANGE_TABLE"]
local BiggsStoreTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["MXML_CHANGE_TABLE"]

function BuildDifficultyConfigSKWList(list)
    local SKWTable = {}
    for i=1,#list do
        SKWTable[#SKWTable+1] = {"StartWithAllItemsKnownDisabledData","GcDifficultyStartWithAllItemsKnownOptionData","InitialKnownThings","GcKnownThingsPreset","KnownProducts",list[i],}
    end
    return SKWTable
end

function BuildBaseObjectsSKWList(list)
    local SKWTable = {}
    for i=1,#list do
        SKWTable[#SKWTable+1] = {"Id",list[i],}
    end
    return SKWTable
end

function CreateRequirement(Requirement)
    local RequirementID = Requirement.RequirementID
    local RequirementAmount = Requirement.RequiredAmount
    local RequirementInventoryType = Requirement.RequiredType

    ProductTable[#ProductTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "CASING", "Requirements", "GcTechnologyRequirement"},
        SEC_SAVE_TO = "SINGLE_REQ"
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "SINGLE_REQ",
        VALUE_CHANGE_TABLE =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "PRODUCT_REQ_MASTER",
        ADD_OPTION = "ADDafterSECTION",
        SEC_ADD_NAMED = "SINGLE_REQ"
    }
end

function CreateRequirementSections(Requirements)
    ProductTable[#ProductTable + 1] =
    {
        SEC_EMPTY = "PRODUCT_REQ_MASTER"
    }

    for i = 1, #Requirements do
        CreateRequirement(Requirements[i])
    end
end

function CreateCraftableProducts()

    ProductTable[#ProductTable + 1] =
    {
        SPECIAL_KEY_WORDS = BuildBaseObjectsSKWList(CorvetteSeasonalRewardsPartsList),
        VALUE_CHANGE_TABLE =
        {
            {"BaseValue","@/20.000000",},
            {"BuyMarkupMod","20.000000"},
        }
    }
    for i = 1, #CorvetteSeasonalRewardsPartsList do
        ProductTable[#ProductTable + 1] =
        {
            SPECIAL_KEY_WORDS = {"ID", CorvetteSeasonalRewardsPartsList[i],"TradeCategory","GcTradeCategory", },
            PRECEDING_KEY_WORDS = {"TradeCategory"},
            VALUE_CHANGE_TABLE =
            {
                {"TradeCategory","None",}
            }
        }
        
    end
    for i = 1, #VisibleCorvettePartsList do
        local ProductId = VisibleCorvettePartsList[i].ProductId
        local Requirements = VisibleCorvettePartsList[i].Requirements
        CreateRequirementSections(Requirements)

        ProductTable[#ProductTable + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", ProductId},
            VALUE_CHANGE_TABLE =
            {
                {"IsCraftable", "True"},
                {"BaseValue","@/20.000000",},
                {"BuyBaseMarkup","20.000000"},
            }
        }
        ProductTable[#ProductTable + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", ProductId, "CraftAmountMultiplier", "1"},
            PRECEDING_KEY_WORDS = {"Requirements"},
            CREATE_HOS = "TRUE",
            SEC_ADD_NAMED = "PRODUCT_REQ_MASTER"
        }
        if VisibleCorvettePartsList[i].IsGrouped == true then
            local GroupedIds = VisibleCorvettePartsList[i].GroupedIds
            for j = 1, #GroupedIds do
                ProductTable[#ProductTable + 1] =
                {
                    SPECIAL_KEY_WORDS = {"Id", GroupedIds[j]},
                    VALUE_CHANGE_TABLE =
                    {
                        {"IsCraftable", "True"},
                    }
                }
                ProductTable[#ProductTable + 1] =
                {
                    SPECIAL_KEY_WORDS = {"Id", GroupedIds[j], "CraftAmountMultiplier", "1"},
                    PRECEDING_KEY_WORDS = {"Requirements"},
                    CREATE_HOS = "TRUE",
                    SEC_ADD_NAMED = "PRODUCT_REQ_MASTER"
                }
            end
        end
    end
end
function RemoveCorvetteKnownProducts()
    DifficultyConfigTable[#DifficultyConfigTable+1] = 
    {
        -- modify the base value of all ship parts
        ["SKW"] = BuildDifficultyConfigSKWList(FullCorvettePartsList),
        ["REMOVE"] = "LINE",
    }
end
function MakeCorvettePartsPickable()
    BaseBuildingObjectsTable[#BaseBuildingObjectsTable+1] =
    {
        -- modify the base value of all ship parts
        ["SKW"] = BuildBaseObjectsSKWList(FullCorvettePartsList),
        ["VCT"] = {
            {"CanPickUp", true},
        },
    }
    BaseBuildingObjectsTable[#BaseBuildingObjectsTable+1] =
    {
        -- also include the seasonal rewards
        ["SKW"] = BuildBaseObjectsSKWList(CorvetteSeasonalRewardsPartsList),
        ["VCT"] = {
            {"CanPickUp", true},
        },
    }
end
function CreateConsumables(PartsList)
    for i = 1, #PartsList do
        ConsumablesTable[#ConsumablesTable+1] = 
        {
            ["SEC_EDIT"] = "CorvettePartsConsume",
            ["VALUE_CHANGE_TABLE"] = {
                {"ID", PartsList[i].ProductId},
                {"RewardID", "R_" .. PartsList[i].ProductId},
                {"ButtonLocID", "Learn Blueprint"},
                {"ButtonSubLocID", "Learn Blueprint"},
            }
        }
        ConsumablesTable[#ConsumablesTable+1] = 
        {
            ["SPECIAL_KEY_WORDS"] = {"Table","GcConsumableItem",},
            ["ADD_OPTION"] = "ADDafterSECTION",
            ["SEC_ADD_NAMED"] = "CorvettePartsConsume"
        }
    end
end

function CreateRewards(PartsList)
    for i = 1, #PartsList do
    local Reward = [[
        <Property name="GenericTable" value="GcGenericRewardTableEntry" _id="R_]] .. PartsList[i].ProductId .. [[">
            <Property name="Id" value="R_]] .. PartsList[i].ProductId .. [[" />
            <Property name="List" value="GcRewardTableItemList">
                <Property name="RewardChoice" value="GiveAll" />
                <Property name="OverrideZeroSeed" value="false" />
                <Property name="UseInventoryChoiceOverride" value="false" />
                <Property name="IncrementStat" value="" />
                <Property name="List">
                    <Property name="List" value="GcRewardTableItem">
                        <Property name="PercentageChance" value="100.000000" />
                        <Property name="LabelID" value="" />
                        <Property name="Reward" value="GcRewardSpecificProductRecipe">
                            <Property name="GcRewardSpecificProductRecipe">
                                <Property name="ID" value="]] .. PartsList[i].ProductId .. [[" />
                                <Property name="Silent" value="false" />
                                <Property name="HideInSeasonRewards" value="true" />
                                <Property name="SeasonRewardFormat" value="" />
                            </Property>
                        </Property>
                    </Property>
                ]]
        if PartsList[i].IsGrouped == true then
            local GroupedIds = PartsList[i].GroupedIds
            for j = 1, #GroupedIds do
                Reward = Reward .. [[
                    <Property name="List" value="GcRewardTableItem">
                        <Property name="PercentageChance" value="100.000000" />
                        <Property name="LabelID" value="" />
                        <Property name="Reward" value="GcRewardSpecificProductRecipe">
                            <Property name="GcRewardSpecificProductRecipe">
                                <Property name="ID" value="]] .. GroupedIds[j] .. [[" />
                                <Property name="Silent" value="true" />
                                <Property name="HideInSeasonRewards" value="true" />
                                <Property name="SeasonRewardFormat" value="" />
                            </Property>
                        </Property>
                    </Property>
                ]]
            end
        end
        Reward = Reward .. [[
                </Property>
            </Property>
        </Property>
        ]]

    RewardsTable[#RewardsTable+1] =
    {
        ["PKW"] = {"GenericTable"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["ADD"] = Reward,
    }
    end
end

function CreateNewBiggsList(PartsList, indexStart)
    local PresentProductsList = ""
    for i = 1, #PartsList do
        PresentProductsList = PresentProductsList .. [[
            <Property name="AlwaysPresentProducts" value="]] .. PartsList[i].ProductId .. [[" _index="]] .. indexStart .. [[" />
        ]]
        indexStart = indexStart + 1
    end
    return PresentProductsList
end

function UpdateBiggsBasicProducts(PresentProductsList)
    BiggsStoreTable[#BiggsStoreTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"BiggsBasicShop","GcTradeData",},
        PRECEDING_KEY_WORDS = {"AlwaysPresentProducts"},
        ADD = PresentProductsList,
    }
end

RemoveCorvetteKnownProducts()
MakeCorvettePartsPickable()
CreateCraftableProducts()

CreateRewards(VisibleCorvettePartsList)
CreateConsumables(VisibleCorvettePartsList)
CreateRewards(CorvetteExpeditionPartsList)
CreateConsumables(CorvetteExpeditionPartsList)

local BuyableParts = ""
BuyableParts = BuyableParts .. CreateNewBiggsList(VisibleCorvettePartsList, 0) .. CreateNewBiggsList(CorvetteExpeditionPartsList, 200)
UpdateBiggsBasicProducts(BuyableParts)
