COST_MULTIPLIER = "0"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.FreeClassUpgrades.4.3.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.3",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "C_STATIONKEY"},
                                {"Id", "C_SUIT_SLOT"},
                                {"Id", "C_PET_CUSTOMISE"},
                                {"Id", "C_PET_SLOT"},
                                {"Id", "C_PET_ADOPT"},
                                {"Id", "C_PET_EGG_READY"},
                                {"Id", "C_PET_MILK"},
                                {"Id", "C_PET_RIDE"},
                                {"Id", "C_PET_TREAT"},
                                {"Id", "C_LIB_VAULT_FC"},
                                {"Id", "C_LIB_VAULT_FU"},
                                {"Id", "C_LIB_VAULT_FR"},
                                {"Id", "C_LIB_VAULT_TC"},
                                {"Id", "C_WEAP_UPGRADE"},
                                {"Id", "C_REPAIRPART"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DontCharge", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "Costs",
                            ["MATH_OPERATION"] = "*",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", COST_MULTIPLIER }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "NPC_BUILD1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CannotAffordOSDMsg", "You Broke Fool!"}, -- Original ""
                            }
                        },
                    }
                }
            }
        }
    }
}