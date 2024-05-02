----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_CONSUMABLE"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for consumable items and tech functionality. Modifies METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_CONSUMABLE = "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_CONSUMABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- interaction: computer tech
                        {   ["SKW"] = {"ID","PIRATE_MAPWHOLE",},    ["SEC_SAVE_TO"] = "SEC_CONS_COMPUTER",                                                                                                      },
                        {   ["SEC_EDIT"] = "SEC_CONS_COMPUTER",     ["VCT"] = {{"ID","TECH_COMPUTER",},{"RewardID","R_COMPUTER",},{"ButtonLocID","TEXT_COMPUTER_B",},{"ButtonSubLocID","TEXT_COMPUTER_U",},},   },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_COMPUTER",                                                                                                    },

                        -- interaction: locator tech
                        {   ["SKW"] = {"ID","PIRATE_MAPWHOLE",},    ["SEC_SAVE_TO"] = "SEC_CONS_LOCATOR",                                                                                                   },
                        {   ["SEC_EDIT"] = "SEC_CONS_LOCATOR",      ["VCT"] = {{"ID","TECH_LOCATOR",},{"RewardID","R_LOCATOR",},{"ButtonLocID","TEXT_LOCATOR_B",},{"ButtonSubLocID","TEXT_LOCATOR_U",},},   },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_LOCATOR",                                                                                                 },

                        -- interaction: dissonant tech
                        {   ["SKW"] = {"ID","PIRATE_MAPWHOLE",},    ["SEC_SAVE_TO"] = "SEC_CONS_DISSONANT",                                                                                                         },
                        {   ["SEC_EDIT"] = "SEC_CONS_DISSONANT",    ["VCT"] = {{"ID","TECH_DISSONANT",},{"RewardID","R_DISSONANT",},{"ButtonLocID","TEXT_DISSONANT_B",},{"ButtonSubLocID","TEXT_DISSONANT_U",},},   },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_DISSONANT",                                                                                                       },

                        -- interaction: multitool scanner
                        {   ["SKW"] = {"ID","PIRATE_MAPWHOLE",},    ["SEC_SAVE_TO"] = "SEC_CONS_SCANNER",                                                                                 },
                        {   ["SEC_EDIT"] = "SEC_CONS_SCANNER",      ["VCT"] = {{"ID","TECH_SCANNER",},{"RewardID","R_SCANNER",},{"ButtonLocID","TEXT_SCANNER_B",},
                                                                    {"ButtonSubLocID","TEXT_SCANNER_U",},{"AkEvent","ATLAS_CORE_ACTIVATE",},{"RewardFailedLocID","TEXT_SCANNER_F",},},    },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_SCANNER",                                                                               },

                        -- interaction: memory A
                        {   ["SKW"] = {"ID","DRONE_FRIEND_X",},     ["SEC_SAVE_TO"] = "SEC_CONS_MEMORY_A",                                                                                                                        },
                        {   ["SEC_EDIT"] = "SEC_CONS_MEMORY_A",     ["VCT"] = {{"ID","ITEM_BOXA",},{"RewardID","R_BOXA",},{"ButtonLocID","TEXT_BOX_B",},{"ButtonSubLocID","TEXT_BOX_U",},{"AkEvent","ATLAS_CORE_ACTIVATE",},},    },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_MEMORY_A",                                                                                                                      },

                        -- interaction: memory B
                        {   ["SKW"] = {"ID","DRONE_FRIEND_X",},     ["SEC_SAVE_TO"] = "SEC_CONS_MEMORY_B",                                                                                                                        },
                        {   ["SEC_EDIT"] = "SEC_CONS_MEMORY_B",     ["VCT"] = {{"ID","ITEM_BOXB",},{"RewardID","R_BOXB",},{"ButtonLocID","TEXT_BOX_B",},{"ButtonSubLocID","TEXT_BOX_U",},{"AkEvent","ATLAS_CORE_ACTIVATE",},},    },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_MEMORY_B",                                                                                                                      },

                        -- interaction: memory C
                        {   ["SKW"] = {"ID","DRONE_FRIEND_X",},     ["SEC_SAVE_TO"] = "SEC_CONS_MEMORY_C",                                                                                                                        },
                        {   ["SEC_EDIT"] = "SEC_CONS_MEMORY_C",     ["VCT"] = {{"ID","ITEM_BOXC",},{"RewardID","R_BOXC",},{"ButtonLocID","TEXT_BOX_B",},{"ButtonSubLocID","TEXT_BOX_U",},{"AkEvent","ATLAS_CORE_ACTIVATE",},},    },
                        {   ["PKW"] = "Table",                      ["SEC_ADD_NAMED"] = "SEC_CONS_MEMORY_C",                                                                                                                      },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------