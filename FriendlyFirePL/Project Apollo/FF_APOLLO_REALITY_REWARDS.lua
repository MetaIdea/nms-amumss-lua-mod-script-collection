----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_REWARDS"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for reward table functionality. Modifies METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_REWARDTABLE = "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- reward: multitool scanner blueprint silent
                        {   ["SKW"] = {"Id","R_BOBBLE_APOLLO",},    ["SEC_SAVE_TO"] = "SEC_REWARD_BPS",                                 },
                        {   ["SEC_EDIT"] = "SEC_REWARD_BPS",        ["VCT"] = {{"Id","RD_BLUEPRINT",},{"TechId","TECH_SCANNER",},},     },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_BPS",                               },
                        
                        -- reward: open new research tree
                        {   ["SKW"] = {"Id","TREE_BASICS",},        ["SEC_SAVE_TO"] = "SEC_REWARD_TREE",                                },
                        {   ["SEC_EDIT"] = "SEC_REWARD_TREE",       ["VCT"] = {{"Id","R_SHIPTREE",},{"UnlockableItemTree","Test",},},   },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_TREE",                              },

                        -- reward: start mission from scanner interaction
                        {   ["SKW"] = {"Id","BEGIN_SALVAGE",},      ["SEC_SAVE_TO"] = "SEC_REWARD_SCANNER",                       },
                        {   ["SEC_EDIT"] = "SEC_REWARD_SCANNER",    ["VCT"] = {{"Id","R_SCANNER",},{"Mission","M_SCANNER",},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_SCANNER",                     },
                            
                        -- reward: computer tech interaction (single scan event)
                        {   ["SKW"] = {"Id","R_CHART_ROBOT",},      ["SEC_SAVE_TO"] = "SEC_REWARD_COMPUTER",                                                                              },
                        {   ["SEC_EDIT"] = "SEC_REWARD_COMPUTER",   ["VCT"] = {{"Id","R_COMPUTER",},{"Event","OUTPOST",},{"DoAerialScan","False",},{"FailureOSD","TEXT_COMPUTER_F",},},   },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_COMPUTER",                                                                            },
                            
                        -- reward: locator tech interaction (double scan event)
                        {   ["SKW"] = {"Id","SEC_CRASHEDSHIP",},    ["SEC_SAVE_TO"] = "SEC_REWARD_LOCATOR",                                                                                                   },
                        {   ["SEC_EDIT"] = "SEC_REWARD_LOCATOR",    ["VCT"] = {{"Id","R_LOCATOR",},},                                                                                                         },
                        {   ["SEC_EDIT"] = "SEC_REWARD_LOCATOR",    ["PKW"] = "GcRewardTableItem.xml",    ["SECTION_ACTIVE"] = 1,   ["VCT"] = {{"Event","SE_LIBRARY",},{"FailureOSD","TEXT_LOCATOR_F",},},    },
                        {   ["SEC_EDIT"] = "SEC_REWARD_LOCATOR",    ["PKW"] = "GcRewardTableItem.xml",    ["SECTION_ACTIVE"] = 2,   ["VCT"] = {{"Event","SE_PORTAL",},{"FailureOSD","TEXT_LOCATOR_F",},},     },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_LOCATOR",                                                                                                 },
                            
                        -- reward: dissonant tech interaction (scan event or mission)
                        {   ["SKW"] = {"Id","R_SCANSENTCRASH",},    ["SEC_SAVE_TO"] = "SEC_REWARD_DISSONANT",                                                 },
                        {   ["SEC_EDIT"] = "SEC_REWARD_DISSONANT",  ["VCT"] = {{"Id","R_DISSONANT",},{"Event","SE_DISSONANT",},{"Mission","M_DISSONANT",},},  },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_DISSONANT",                                               },

                        -- reward: start mission from memory A
                        {   ["SKW"] = {"Id","BEGIN_SALVAGE",},      ["SEC_SAVE_TO"] = "SEC_REWARD_BOXA",                    },
                        {   ["SEC_EDIT"] = "SEC_REWARD_BOXA",       ["VCT"] = {{"Id","R_BOXA",},{"Mission","M_BOXA",},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_BOXA",                  },

                        -- reward: start mission from memory B
                        {   ["SKW"] = {"Id","BEGIN_SALVAGE",},      ["SEC_SAVE_TO"] = "SEC_REWARD_BOXB",                    },
                        {   ["SEC_EDIT"] = "SEC_REWARD_BOXB",       ["VCT"] = {{"Id","R_BOXB",},{"Mission","M_BOXB",},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_BOXB",                  },

                        -- reward: start mission from memory C
                        {   ["SKW"] = {"Id","BEGIN_SALVAGE",},      ["SEC_SAVE_TO"] = "SEC_REWARD_BOXC",                    },
                        {   ["SEC_EDIT"] = "SEC_REWARD_BOXC",       ["VCT"] = {{"Id","R_BOXC",},{"Mission","M_BOXC",},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_BOXC",                  },
                        
                        -- reward: debug emote for plating
                        {   ["SKW"] = {"Id","WEAP_TOKEN",},         ["SEC_SAVE_TO"] = "SEC_DEBUG_PLATING",                                                                          },
                        {   ["SEC_EDIT"] = "SEC_DEBUG_PLATING",     ["VCT"] = {{"Id","RD_PLATING",},},                                                                              },
                        {   ["SEC_EDIT"] = "SEC_DEBUG_PLATING",     ["PKW"] = "GcRewardTableItem.xml",    ["VCT"] = {{"ID","ITEM_PLATING",},{"AmountMin",4,},{"AmountMax",4,},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_DEBUG_PLATING",                                                                        },

                        -- reward: debug emote for fragment
                        {   ["SKW"] = {"Id","WEAP_TOKEN",},         ["SEC_SAVE_TO"] = "SEC_DEBUG_FRAGMENT",                                                                          },
                        {   ["SEC_EDIT"] = "SEC_DEBUG_FRAGMENT",    ["VCT"] = {{"Id","RD_FRAGMENT",},},                                                                              },
                        {   ["SEC_EDIT"] = "SEC_DEBUG_FRAGMENT",    ["PKW"] = "GcRewardTableItem.xml",    ["VCT"] = {{"ID","ITEM_FRAGMENT",},{"AmountMin",1,},{"AmountMax",1,},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_DEBUG_FRAGMENT",                                                                        },

                        -- reward: debug emote for circuit
                        {   ["SKW"] = {"Id","WEAP_TOKEN",},         ["SEC_SAVE_TO"] = "SEC_DEBUG_CIRCUIT",                                                                          },
                        {   ["SEC_EDIT"] = "SEC_DEBUG_CIRCUIT",     ["VCT"] = {{"Id","RD_CIRCUIT",},},                                                                              },
                        {   ["SEC_EDIT"] = "SEC_DEBUG_CIRCUIT",     ["PKW"] = "GcRewardTableItem.xml",    ["VCT"] = {{"ID","ITEM_CIRCUIT",},{"AmountMin",1,},{"AmountMax",1,},},    },
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_DEBUG_CIRCUIT",                                                                        },
                        
                        -- reward: offering the lexicon
                        {   ["SKW"] = {"Reward","GcRewardOSDMessage.xml",},   ["SECTION_UP_SPECIAL"] = 1,   ["SEC_SAVE_TO"] = "SEC_REWARD_OSD",                                     },
                        {   ["SEC_EDIT"] = "SEC_REWARD_OSD",        ["ITF"] = "FORCE",    ["VCT"] = {{"Message","TEXT_DICTIONARY_O",},
                                                                    {"Filename","TEXTURES/UI/FRONTEND/ICONS/REWARD.WORDS.DDS",},{"R",0.086,},{"G",0.68,},{"B",1,},{"A",1,},},       },
                        {   ["SKW"] = {"Id","WORD",},               ["SEC_SAVE_TO"] = "SEC_REWARD_LEXICON",                                                                         },
                        {   ["SEC_EDIT"] = "SEC_REWARD_LEXICON",    ["VCT"] = {{"Id","R_DICT",},{"AmountMin",10,},{"AmountMax",12,},},                                              },
                        {   ["SEC_EDIT"] = "SEC_REWARD_LEXICON",    ["PKW"] = "GcRewardTableItem.xml",  ["ADD_OPTION"] = "ADDafterSECTION", ["SEC_ADD_NAMED"] = "SEC_REWARD_OSD",   }, 
                        {   ["PKW"] = "GenericTable",               ["SEC_ADD_NAMED"] = "SEC_REWARD_LEXICON",                                                                       },

                        -- reward: offering memories to Hesperus
                        {   ["SKW"] = {"Id","POOPLOOT",},           ["SEC_SAVE_TO"] = "SEC_REWARD_MEMORY",                                                                  },
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["VCT"] = {{"Id","R_MEMORY",},{"OverrideZeroSeed","True",},},                                           },
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["PKW"] = "GcRewardTableItem.xml",    ["REMOVE"] = "SECTION",                                           },
                        {   ["SKW"] = {"Id","RS_S3_S5M6","Reward","GcRewardProcTechProduct.xml"},   ["SECTION_UP_SPECIAL"] = 1,   ["SEC_SAVE_TO"] = "SEC_REWARD_SCLASS",    },

                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPBLOB_NAME_L",},},                                                              },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },
                        
                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPMINIGUN_NAME_L",},},                                                           },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },
                        
                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPSHOTGUN_NAME_L",},},                                                           },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },
                        
                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPLAS1_NAME_L",},},                                                              },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },

                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPGUN1_NAME_L",},},                                                              },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },

                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPSHIELD_NAME_L",},},                                                            },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },

                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","ION1_NAME_L",},},                                                                  },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },

                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","LAUNCHER_NAME_L",},},                                                              },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },

                        {   ["SEC_EDIT"] = "SEC_REWARD_SCLASS",     ["VCT"] = {{"Group","SHIPJUMP_NAME_L",},},                                                              },     
                        {   ["SEC_EDIT"] = "SEC_REWARD_MEMORY",     ["SKW"] = {"OverrideZeroSeed","True",},   ["PKW"] = "List",   ["SEC_ADD_NAMED"] = "SEC_REWARD_SCLASS",  },

                        {   ["PKW"] = "GenericTable",   ["SEC_ADD_NAMED"] = "SEC_REWARD_MEMORY",    },
                    },
                }
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------