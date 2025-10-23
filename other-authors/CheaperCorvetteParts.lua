-- VCT for modifying prices of the ship parts
VCT_PRICE = {{"BaseValue","@/20",},}

LIST_SHIP_PARTS = {
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
	"B_WNG_A",
	"B_WNG_B",
	"B_WNG_C",
	"B_WNG_D",
	"B_WNG_E",
	"B_WNG_F",
	"B_WNG_G",
	"B_WNG_H",
	"B_WNG_I",
	"B_WNG_J",
	"B_WNG_K",
	"B_WNG_L",
	"B_WNG_M",
	"B_WNG_N",
	"B_WNG_O_0",
	"B_WNG_O_1",
	"B_WNG_O_2",
	"B_TRU_A",
	"B_TRU_B",
	"B_TRU_C",
	"B_TRU_D",
	"B_TRU_E",
	"B_TRU_F",
	"B_TRU_G",
	"B_TRU_H",
	"B_GEN_0",
	"B_GEN_1",
	"B_GEN_2",
	"B_GEN_3",
	"B_TUR_A",
	"B_TUR_C",
	"B_TUR_D",
	"B_TUR_E",
	"B_ALK_A",
	"B_ALK_B",
	"B_ALK_C",
	"B_SHL_A",
	"B_SHL_B",
	"B_SHL_C",
	"B_SHL_D",
	"B_STR_A_N",
	"B_STR_A_NE",
	"B_STR_B_NE",
	"B_STR_B_N",
	"B_STR_C_NE",
	"B_STR_C_N",
	"B_STR_D_NE",
	"B_STR_D_N",
	"B_STR_E_NE",
	"B_STR_E_N",
	"B_STR_F_NE",
	"B_STR_F_N",
	"B_STR_G_NE",
	"B_STR_G_N",
	"B_STR_H_NE",
	"B_STR_H_N",
	"B_STR_I_NE",
	"B_STR_I_N",
	"B_STR_J_NE",
	"B_STR_J_N",
	"B_STR_K_NE",
	"B_STR_K_N",
	"B_STR_L_NE",
	"B_STR_L_N",
	"B_STR_M_N",
	"B_STR_M_NE",
	"B_STR_N_N",
	"B_STR_N_NE",
	"B_STR_O_N",
	"B_STR_Q_N",
	"B_STR_P_N",
	"B_STR_R_N",
	"B_STR_S_N",
	"B_STR_T_NETB",
	"B_STR_U_NETB",
	"B_STR_V_NETB",
	"B_STR_W_NETB",
	"B_STR_X_NETB",
	"B_STR_Y_NETB",
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
	"B_CON_L_0",
	"B_CON_L_1",
	"B_CON_L_3",
	"B_CON_4",
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
	"B_CON_L_2",

}

-- FARMPROD8
-- COMPUTER
-- TECH_COMP
-- FARMPROD5
-- NANOTUBES
-- CARBON_SEAL
-- FARMPROD2
-- HYDRALIC
-- MAGNET
-- HYPERFUEL2
-- GRENFUEL1
-- HYPERFUEL1
-- EX_YELLOW
-- FUEL2
-- LAND2
-- CATALYST2
-- STELLAR2

function BuildSKWList(list)

    local SKWTable = {}

    for i=1,#list do
        SKWTable[#SKWTable+1] = {"ID",list[i],}
    end

    return SKWTable

end

----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "CheaperCorvetteParts",
    ["MOD_AUTHOR"]		    = "Aristotale",
    ["LUA_AUTHOR"]		    = "Aristotale",
    ["NMS_VERSION"]		    = "6.10",
    ["MOD_DESCRIPTION"]     = "Make Corvette parts cost less to buy",
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- product table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- modify the base value of all ship parts
                            ["SKW"] = BuildSKWList(LIST_SHIP_PARTS),
                            ["VCT"] = VCT_PRICE,
                        },
                    }
                },
            }
        }
    }
}