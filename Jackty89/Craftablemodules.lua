local Types =
{
    PRODUCT = 'Product',
    SUBSTANCE = 'Substance'
}

local New_Requirements_Array =
{
    {
        PRODUCTID = 'BP_SALVAGE',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'COMPUTER' , REQUIREDAMOUNT = '16', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '250', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'NAV_DATA' , REQUIREDAMOUNT = '5', REQUIREDTYPE = Types.PRODUCT}
        }
    },
    {
        PRODUCTID = 'NAV_DATA',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'COMPUTER' , REQUIREDAMOUNT = '10', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '250', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'HYPERFUEL1' , REQUIREDAMOUNT = '5', REQUIREDTYPE = Types.PRODUCT}
        }
    },
    {
        PRODUCTID = 'FREI_INV_TOKEN',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'FARMPROD9' , REQUIREDAMOUNT = '1', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'ASTEROID3' , REQUIREDAMOUNT = '250', REQUIREDTYPE = Types.SUBSTANCE}
        }
    },
    {
        PRODUCTID = 'SHIP_INV_TOKEN',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'FARMPROD9' , REQUIREDAMOUNT = '1', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'ASTEROID2' , REQUIREDAMOUNT = '250', REQUIREDTYPE = Types.SUBSTANCE}
        }
    },
    {
        PRODUCTID = 'FRIG_TOKEN',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'FARMPROD9' , REQUIREDAMOUNT = '1', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'ASTEROID1' , REQUIREDAMOUNT = '250', REQUIREDTYPE = Types.SUBSTANCE}
        }
    },
    {
        PRODUCTID = 'REPAIRKIT',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'MICROCHIP' , REQUIREDAMOUNT = '1', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '100', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'FUEL2' , REQUIREDAMOUNT = '500', REQUIREDTYPE = Types.SUBSTANCE}
        }
    },
    {
        PRODUCTID = 'WEAP_INV_TOKEN',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'COMPUTER' , REQUIREDAMOUNT = '15', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'CATALYST2' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE}
        }
    },
    {
        PRODUCTID = 'SUIT_INV_TOKEN',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'FARMPROD9' , REQUIREDAMOUNT = '1', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'ROBOT1' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'CAVE2' , REQUIREDAMOUNT = '250', REQUIREDTYPE = Types.SUBSTANCE}
        }
    },
    {
        PRODUCTID = 'FACT_TOKEN',
        REQUIREMENTS =
        {
            {REQUIREMENTID = 'COMPUTER' , REQUIREDAMOUNT = '15', REQUIREDTYPE = Types.PRODUCT},
            {REQUIREMENTID = 'AF_METAL' , REQUIREDAMOUNT = '150', REQUIREDTYPE = Types.SUBSTANCE},
            {REQUIREMENTID = 'SPIDER_PROD' , REQUIREDAMOUNT = '5', REQUIREDTYPE = Types.PRODUCT}
        }
    }
}


local Unlocakble_Item_Trees_Parents_For_Product_Id =
{
    {
        PRODUCT = 'REPAIRKIT',
        PARENT = 'PRODFUEL2',
    },
    {
        PRODUCT = 'NAV_DATA',
        PARENT = 'REPAIRKIT',
    },
    {
        PRODUCT = 'BP_SALVAGE',
        PARENT = 'NAV_DATA',
    },
    {
        PRODUCT = 'FACT_TOKEN',
        PARENT = 'BP_SALVAGE',
    },
    {
        PRODUCT = 'WEAP_INV_TOKEN',
        PARENT = 'REPAIRKIT',
    },
    {
        PRODUCT = 'SUIT_INV_TOKEN',
        PARENT = 'WEAP_INV_TOKEN',
    },
    {
        PRODUCT = 'FRIG_TOKEN',
        PARENT = 'SUIT_INV_TOKEN',
    },
    {
        PRODUCT = 'SHIP_INV_TOKEN',
        PARENT = 'SUIT_INV_TOKEN',
    },
    {
        PRODUCT = 'FREI_INV_TOKEN',
        PARENT = 'SUIT_INV_TOKEN',
    }
}

local Unlockable_Item_Trees_Path = 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN'
local Product_Table_Path = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'


NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = 'CraftableModules',
    MOD_DESCRIPTION = 'Allows you to craft Rapair Kits, the Salvaged Frigate Module, the Cargo Bulkhead and the Storage Augmentation',
    LUA_AUTHOR = 'Jackty89',
    MOD_AUTHOR = 'Methatronc/Maintained and edited by Jackty89',
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = Product_Table_Path,
                    EXML_CHANGE_TABLE =
                    {
                        {
                            SPECIAL_KEY_WORDS  = {'ID', 'REPAIRKIT'},
                            VALUE_CHANGE_TABLE =
                            {
                                {'RecipeCost', '1'}
                            }
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = Unlockable_Item_Trees_Path,
                    EXML_CHANGE_TABLE = {}
                }
            }
        }
    }
}

local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].EXML_CHANGE_TABLE
local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].EXML_CHANGE_TABLE
-- local Changes_To_Language = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[4].EXML_CHANGE_TABLE

----------------------------------------------------------------------------------------------
-------------------------------     Edit Product Table     -----------------------------------
----------------------------------------------------------------------------------------------
function Create_Requirement(Requirement)
    local RequirementID = Requirement.REQUIREMENTID
    local RequirementAmount = Requirement.REQUIREDAMOUNT
    local RequirementInventoryType = Requirement.REQUIREDTYPE

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "CASING", "Requirements", "GcTechnologyRequirement"},
        SEC_SAVE_TO = "SINGLE_REQ"
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = "SINGLE_REQ",
        VALUE_CHANGE_TABLE =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = "PRODUCT_REQ_MASTER",
        ADD_OPTION = "ADDafterSECTION",
        SEC_ADD_NAMED = "SINGLE_REQ"
    }
end

function Create_Requirement_Sections(Requirements)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EMPTY = "PRODUCT_REQ_MASTER"
    }

    for i = 1, #Requirements do
        Create_Requirement(Requirements[i])
    end
end

function Change_Product_Requirement_And_Set_Craftable()
    for i = 1, #New_Requirements_Array do
        local ProductId = New_Requirements_Array[i].PRODUCTID
        local Requirements = New_Requirements_Array[i].REQUIREMENTS
        Create_Requirement_Sections(Requirements)
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", ProductId},
            VALUE_CHANGE_TABLE =
            {
                {"IsCraftable", "True"}
            }
        }
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", ProductId, "CraftAmountMultiplier", "1"},
            PRECEDING_KEY_WORDS = {"Requirements"},
            CREATE_HOS = "TRUE",
            SEC_ADD_NAMED = "PRODUCT_REQ_MASTER"
        }
    end
end
-- ----------------------------------------------------------------------------------------------
-------------------------------     Edit Unlockable Item Tree     ----------------------------
----------------------------------------------------------------------------------------------
function Add_Product_To_Unlockable_Item_Tree(Product_Id, Parent_Id)
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SPECIAL_KEY_WORDS = {'Unlockable', 'T_WALL_Q_H'},
        SEC_SAVE_TO = "ITEM_TREE_SEC"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SEC_EDIT = 'ITEM_TREE_SEC',
        VALUE_CHANGE_TABLE =
        {
            {'Unlockable', Product_Id}
        }
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SPECIAL_KEY_WORDS = {'Unlockable', Parent_Id},
        CREATE_HOS = true,
        PRECEDING_KEY_WORDS = {'Children'},
        SEC_ADD_NAMED = 'ITEM_TREE_SEC'
    }
end

function Add_New_Items_To_Unlockable_Item_Tree()
    for key, _value in pairs(Unlocakble_Item_Trees_Parents_For_Product_Id) do
        Product = Unlocakble_Item_Trees_Parents_For_Product_Id[key].PRODUCT
        Parent = Unlocakble_Item_Trees_Parents_For_Product_Id[key].PARENT
        Add_Product_To_Unlockable_Item_Tree(Product, Parent)
    end
end


Change_Product_Requirement_And_Set_Craftable()
Add_New_Items_To_Unlockable_Item_Tree()