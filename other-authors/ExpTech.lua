NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "ExpTech",
    ["MOD_AUTHOR"] = "Jyin",
    ["MOD_DESCRIPTION"] = "Add some expedition only technologies to unlock",
    ["LUA_AUTHOR"]    = "Jyin",
    ["NMS_VERSION"]   = "6.x",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Children","GcUnlockableItemTreeNode","Unlockable", "T_WALLDIAGONAL"},
                            ["SEC_SAVE_TO"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "S9_SUITTREE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "S9_WEAPONTREE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "AM_EXOCRAFTTREE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "S9_SHIPTREE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "S9_BUILDERTREE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDSAVE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },

                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "S19_TP"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "UI_PRODUCT_TREE", "Unlockable", "PRODFUEL2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"S9ShipTech","GcUnlockableItemTrees", "Title", "UI_SHIP_TECH_TREE", "Unlockable", "SHIPJUMP1"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },

                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "SHIPJUMP_SPEC"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShipTech","GcUnlockableItemTrees", "Title", "UI_SHIP_TECH_TREE", "Unlockable", "UT_PULSESPEED"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"S9ShipTech","GcUnlockableItemTrees", "Title", "UI_SHIP_TECH_TREE", "Unlockable", "UT_PULSESPEED"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SEC_EDIT"] = "ITEM_TREE_SEC",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Unlockable", "PHOTONIX_CORE"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShipTech","GcUnlockableItemTrees", "Title", "UI_SHIP_TECH_TREE", "Unlockable", "UT_PULSESPEED"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"S9ShipTech","GcUnlockableItemTrees", "Title", "UI_SHIP_TECH_TREE", "Unlockable", "UT_PULSESPEED"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
                        },

                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"ID", "S9_SUITTREE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildableOnFreighter", "true"},
                                {"BuildableOnSpaceBase", "true"},
                                {"BuildableInShipDecorative", "true"},
                                {"BuildableOnPlanet", "true"},
                                {"DoesNotCountTowardsComplexity", "true"},
                            }
                        },
                        {
                            ["SKW"] = {"ID", "S9_WEAPONTREE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildableOnFreighter", "true"},
                                {"BuildableOnSpaceBase", "true"},
                                {"BuildableInShipDecorative", "true"},
                                {"BuildableOnPlanet", "true"},
                                {"DoesNotCountTowardsComplexity", "true"},
                            }
                        },
                        {
                            ["SKW"] = {"ID", "AM_EXOCRAFTTREE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildableOnFreighter", "true"},
                                {"BuildableOnSpaceBase", "true"},
                                {"BuildableInShipDecorative", "true"},
                                {"BuildableOnPlanet", "true"},
                                {"DoesNotCountTowardsComplexity", "true"},
                            }
                        },
                        {
                            ["SKW"] = {"ID", "S9_SHIPTREE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildableOnFreighter", "true"},
                                {"BuildableOnSpaceBase", "true"},
                                {"BuildableInShipDecorative", "true"},
                                {"BuildableOnPlanet", "true"},
                                {"DoesNotCountTowardsComplexity", "true"},
                            }
                        },
                        {
                            ["SKW"] = {"ID", "S9_BUILDERTREE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BuildableOnFreighter", "true"},
                                {"BuildableOnSpaceBase", "true"},
                                {"BuildableInShipDecorative", "true"},
                                {"BuildableOnPlanet", "true"},
                                {"DoesNotCountTowardsComplexity", "true"},
                            }
                        },
                    }
                },
            }
        }
    }
}