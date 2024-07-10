Recipe_Cost = 2
Nexuscost= Recipe_Cost*250
Input_Pack_Recipe_Cost = {Recipe_Cost,
[[
    How many nanites should it cost to unlock the recipes?
    Be aware that the recipe unlock price is multiplied by 250 if you want to buy it at the nexus.
    Current = >> ]] .. Recipe_Cost .. [[ x 250 => ]]..Nexuscost.. [[<<
]]}
Recipe_Cost = GUIF(Input_Pack_Recipe_Cost, 2)

Pack_Price = 1500
Input_Pack_Price= {Pack_Price,
[[
    How many credits should it cost to buy the packages?
    Current = >> ]] .. Pack_Price .. [[ <<
]]}
Pack_Price = GUIF(Input_Pack_Price, 10)


Languages =
{
    ["EN"] = "English",
    ["FR"] = "French",
    ["IT"] = "Italian",
    ["DE"] = "German",
    ["ES"] = "Spanish",
    ["RU"] = "Russian",
    ["PL"] = "Polish",
    ["NL"] = "Dutch",
    ["PT"] = "Portuguese",
    ["LA"] = "LatinAmericanSpanish",
    ["BR"] = "BrazilianPortuguese",
    ["Z1"] = "SimplifiedChinese",
    ["ZH"] = "TraditionalChinese",
    ["Z2"] = "TencentChinese",
    ["KO"] = "Korean",
    ["JA"] = "Japanese",
    ["US"] = "USEnglish"
}

Language_Data =
{
    [Languages["EN"]] =
    {
        ["HEALTH_PACK"] =
        {
            ["NAME"] = "Health Package",
            ["DESCRIPTION"] = "This health package engineered by the engineers at H.G. Corp. will restore you back to full health.",
            ["SUBTITLE"] = "Health Package"
        },
        ["SHIELD_PACK"] =
        {
            ["NAME"] = "Shield Package",
            ["DESCRIPTION"] = "This shield package engineered by the engineers at H.G. Corp. will restore your shield back to full capacity.",
            ["SUBTITLE"] = "Shield Package"
        },
        ["JET_BOOST_PACK"] =
        {
            ["NAME"] = "Jet Boost Package",
            ["DESCRIPTION"] = "This Jetboost package engineered by the engineers at H.G. Corp. will grant you a jetpack boost for &lt;TECHNOLOGY&gt; 600 seconds&lt;&gt;",
            ["SUBTITLE"] = "Jet Boost Package"
        },
        ["HAZARD_PACK"] =
        {
            ["NAME"] = "Hazard Package",
            ["DESCRIPTION"] = "This Hazard package engineered by the engineers at H.G. Corp. will restore your hazard protection battery.",
            ["SUBTITLE"] = "Hazard Package"
        },
        ["ENERGY_PACK"] =
        {
            ["NAME"] = "Energy Package",
            ["DESCRIPTION"] = "This energy package engineered by the engineers at H.G. Corp. will restore your lifesupport system.",
            ["SUBTITLE"] = "Energy Package"
        }
    },
}

Types =
{
    ["PRODUCT"] = "Product",
    ["SUBSTANCE"] = "Substance"
}

Unlocakble_Item_Trees_Parents_For_Product_Id =
{
    {
        ["PRODUCT"] = "HEALTH_PACK",
        ["PARENT"] = "PRODFUEL2",
    },
    {
        ["PRODUCT"] = "SHIELD_PACK",
        ["PARENT"] = "HEALTH_PACK",
    },
    {
        ["PRODUCT"] = "HAZARD_PACK",
        ["PARENT"] = "SHIELD_PACK",
    },
    {
        ["PRODUCT"] = "ENERGY_PACK",
        ["PARENT"] = "HAZARD_PACK",
    },
    {
        ["PRODUCT"] = "JET_BOOST_PACK",
        ["PARENT"] = "ENERGY_PACK",
    }
}

Custom_Products =
{
    {
        ["PRODUCT_ID"] = "HEALTH_PACK",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "MICROCHIP" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "100", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "FUEL2" , ["REQUIREDAMOUNT"] = "500", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        },
        ["STACKSIZE"] = "10",
        ["PRICE"] = Pack_Price,
        ["RECIPE_COST"] = Recipe_Cost,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.HEALTH.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "DRONE_LOOT", "Reward", "GcRewardHealth.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"AmountMax", 100},
                        {"AmountMin", 100}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "HEALTH_PACK"
    },
    {
        ["PRODUCT_ID"] = "SHIELD_PACK",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "MICROCHIP" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "100", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "FUEL2" , ["REQUIREDAMOUNT"] = "500", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        },
        ["STACKSIZE"] = "10",
        ["PRICE"] = Pack_Price,
        ["RECIPE_COST"] = Recipe_Cost,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.SHIELD.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "DRONE_LOOT", "Reward", "GcRewardShield.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"AmountMax", 100},
                        {"AmountMin", 100}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "SHIELD_PACK"
    },
    {
        ["PRODUCT_ID"] = "JET_BOOST_PACK",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "MICROCHIP" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "100", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "FUEL2" , ["REQUIREDAMOUNT"] = "500", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        },
        ["STACKSIZE"] = "10",
        ["PRICE"] = Pack_Price,
        ["RECIPE_COST"] = Recipe_Cost,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.FUEL.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "DE_FOOD_JETPACK", "Reward", "GcRewardJetpackBoost.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"Duration", 600}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "JET_BOOST_PACK"
    },
    {
        ["PRODUCT_ID"] = "HAZARD_PACK",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "MICROCHIP" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "100", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "FUEL2" , ["REQUIREDAMOUNT"] = "500", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        },
        ["STACKSIZE"] = "10",
        ["PRICE"] = Pack_Price,
        ["RECIPE_COST"] = Recipe_Cost,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.PROTECTION.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "MIXER_HEAL", "Reward", "GcRewardHazard.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"AmountMax", 100},
                        {"AmountMin", 100}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "HAZARD_PACK"
    },
    {
        ["PRODUCT_ID"] = "ENERGY_PACK",
        ["REQUIREMENTS"] =
        {
            {["REQUIREMENTID"] = "MICROCHIP" , ["REQUIREDAMOUNT"] = "1", ["REQUIREDTYPE"] = Types["PRODUCT"]},
            {["REQUIREMENTID"] = "ROBOT1" , ["REQUIREDAMOUNT"] = "100", ["REQUIREDTYPE"] = Types["SUBSTANCE"]},
            {["REQUIREMENTID"] = "FUEL2" , ["REQUIREDAMOUNT"] = "500", ["REQUIREDTYPE"] = Types["SUBSTANCE"]}
        },
        ["STACKSIZE"] = "10",
        ["PRICE"] = Pack_Price,
        ["RECIPE_COST"] = Recipe_Cost,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.LIFESUPPORT.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "MIXER_HEAL", "Reward", "GcRewardEnergy.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"Amount", 100}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "ENERGY_PACK"
    },
}

Custom_Language_Tag = "HEALTH"

ModName = "SupportPackets"
Author = "Jackty89"

Product_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
Reward_Table_Path = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
Consumeable_Item_Table_Path = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN"
Default_Reality_Path = "METADATA/REALITY/DEFAULTREALITY.MBIN"
English_Path = "LANGUAGE/NMS_LOC8_ENGLISH.MBIN"
Unlockable_Item_Trees_Path = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName .. ".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["ADD_FILES"] = {},
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = Product_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Reward_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Consumeable_Item_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Default_Reality_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = English_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Unlockable_Item_Trees_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] =
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..Custom_Language_Tag..[[" />
                                </Property>
                            ]]
                        }
                    }
                }
            }
        }
    }
}
local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Changes_To_Consumable_Item_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local Changes_To_Language = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]
local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]



function Create_New_Product(Product_Id, Product_Name_Id, Product_Name_LC_Id, Product_Subtitle_Id, Product_Description_Id,
    Product_Price, Product_StackSize, Product_Is_Consumable, Product_Icon, Product_Recipe_Cost, Product_Is_Craftable)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
        ["SEC_SAVE_TO"] = Product_Id.."_PRODSEC",
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = Product_Id.."_PRODSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", Product_Id},
            {"Name", Product_Name_Id},
            {"NameLower", Product_Name_LC_Id},
            {"Subtitle", Product_Subtitle_Id},
            {"Description", Product_Description_Id},
            {"BaseValue", Product_Price},
            {"RecipeCost", Product_Recipe_Cost},
            {"StackMultiplier", Product_StackSize},
            {"Consumable", Product_Is_Consumable},
            {"IsCraftable", Product_Is_Craftable}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = Product_Id.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"Cost", "GcItemPriceModifiers.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"SpaceStationMarkup", "0"},
            {"LowPriceMod", "0"},
            {"LowPriceMod", "0"},
            {"HighPriceMod", "0"},
            {"BuyBaseMarkup", "0"},
            {"BuyMarkupMod", "0"}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = Product_Id.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"Icon", "TkTextureResource.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Filename", Product_Icon},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = Product_Id.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"HeroIcon", "TkTextureResource.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Filename", Product_Icon},
        }
    }
    if Product_Is_Craftable then
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SEC_EDIT"] = Product_Id.."_PRODSEC",
            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
            ["CREATE_HOS"] = "TRUE",
            ["SEC_ADD_NAMED"] = "PRODUCT_REQ_MASTER"
        }
    end

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_SEC_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = Product_Id.."_PRODSEC"
    }
end

function Create_New_Consumable(Product_Id, Reward_Id)
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
        ["SEC_SAVE_TO"] = Product_Id.."_CONSSEC"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EDIT"] = Product_Id.."_CONSSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", Product_Id},
            {"RewardID", Reward_Id},
        }
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EDIT"] = "CONSUMABLE_SEC_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = Product_Id.."_CONSSEC"
    }
end

function Create_Shop_Entry(Entry_ID)
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts", "NMSString0x10.xml"},
        ["SEC_SAVE_TO"] = "SHOP_ENTRY"
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SEC_EDIT"] = "SHOP_ENTRY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", Entry_ID}
        }
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SEC_EDIT"] = "SHOP_MASTER_SEC",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SHOP_ENTRY"
    }
end

-- REWARDS
function Create_Reward_Entry(Reward_Entry_Data)
    SKW = Reward_Entry_Data["SKW"]
    PKW = Reward_Entry_Data["PKW"]
    VCT = Reward_Entry_Data["VCT"]

    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_SWIT_SHIP01"},
        ["PRECEDING_KEY_WORDS"] = {"List", "List", "GcRewardTableItem.xml"},
        ["SEC_SAVE_TO"] = "SEC_EMPTY_TABLEITEM"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "SEC_EMPTY_TABLEITEM",
        ["SPECIAL_KEY_WORDS"] = {"Reward", "GcRewardSpecificShip.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION",
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = SKW,
        ["PRECEDING_KEY_WORDS"] = PKW,
        ["SEC_SAVE_TO"] = "REWARD_ENTRY_SEC"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_ENTRY_SEC",
        ["VALUE_CHANGE_TABLE"] = VCT
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "SEC_EMPTY_TABLEITEM",
        ["SEC_ADD_NAMED"] = "REWARD_ENTRY_SEC",
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_ENTRIES_MASTER",
        ["SEC_ADD_NAMED"] = "SEC_EMPTY_TABLEITEM",
    }
end

function Create_Reward_Table_Entry(Reward_ID, Reward_Choice)
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_TABLE_ENTRY_SEC",
        ["SEC_SAVE_TO"] = Reward_ID.."_REWARD_SEC"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = Reward_ID.."_REWARD_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id", Reward_ID},
            {"RewardChoice", Reward_Choice}
        }
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = Reward_ID.."_REWARD_SEC",
        ["PRECEDING_KEY_WORDS"] = {"List", "List"},
        ["CREATE_HOS"] = "TRUE",
        ["SEC_ADD_NAMED"] = "REWARD_ENTRIES_MASTER"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_SEC_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = Reward_ID.."_REWARD_SEC"
    }
end

function Create_Reward_Table_Entry_Template()
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "DE_SENT_LOOT"},
        ["SEC_SAVE_TO"] = "REWARD_TABLE_ENTRY_SEC"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_TABLE_ENTRY_SEC",
        ["PRECEDING_KEY_WORDS"] = { "GcRewardTableItem.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
end

function Create_Empty_Entries_Master()
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EMPTY"] = "REWARD_ENTRIES_MASTER"
    }
end


function Create_Requirement(Requirement)
    local RequirementID = Requirement["REQUIREMENTID"]
    local RequirementAmount = Requirement["REQUIREDAMOUNT"]
    local RequirementInventoryType = Requirement["REQUIREDTYPE"]

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "CASING"},
        ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
        ["SEC_SAVE_TO"] = "SINGLE_REQ"
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "SINGLE_REQ",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_REQ_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SINGLE_REQ"
    }
end

function Create_Requirement_Sections(Requirements)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EMPTY"] = "PRODUCT_REQ_MASTER"
    }

    for i = 1, #Requirements do
        Create_Requirement(Requirements[i])
    end
end

function Add_Product_To_Unlockable_Item_Tree(Product_Id, Parent_Id)

    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Unlockable", "T_WALL_H"},
        ["PRECEDING_KEY_WORDS"] = {"GcUnlockableItemTreeNode.xml"},
        ["SEC_SAVE_TO"] = "ITEM_TREE_SEC"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "ITEM_TREE_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", Product_Id}
        }
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Unlockable", Parent_Id},
        ["CREATE_HOS"] = true,
        ["PRECEDING_KEY_WORDS"] = {"Children"},
        ["SEC_ADD_NAMED"] = "ITEM_TREE_SEC"
    }
end

-- MASTERS
function Create_Master_Sec()
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EMPTY"] = "PRODUCT_SEC_MASTER"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EMPTY"] = "CONSUMABLE_SEC_MASTER"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EMPTY"] = "REWARD_SEC_MASTER"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EMPTY"] = "SHOP_MASTER_SEC"
    }
end

function Add_Master_Sec()
    --Accumilative Add to Product_Table
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "PRODUCT_SEC_MASTER"
    }
    --Accumilative Add to Consumable_Item_Table
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "CONSUMABLE_SEC_MASTER"
    }
    --Accumilative Add to Reward_Table
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
        ["SEC_ADD_NAMED"] = "REWARD_SEC_MASTER"
    }
    --Accumilative Add to Default_Reality
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
        ["SEC_ADD_NAMED"] = "SHOP_MASTER_SEC"
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Shop", "AlwaysPresentProducts"},
        ["SEC_ADD_NAMED"] = "SHOP_MASTER_SEC"
    }
end



function Start()
    Create_Master_Sec()
    Create_Reward_Table_Entry_Template()

    for i = 1 , #Custom_Products do
        Create_Empty_Entries_Master()
        Product_Id = Custom_Products[i]["PRODUCT_ID"]
        Product_Requirements = Custom_Products[i]["REQUIREMENTS"]
        Product_StackSize = Custom_Products[i]["STACKSIZE"]
        Product_Price = Custom_Products[i]["PRICE"]
        Product_Recipe_Cost = Custom_Products[i]["RECIPE_COST"]
        -- Product_Price_Type = Custom_Products[i]["PRICE_TYPE"]
        Product_Icon = Custom_Products[i]["ICON"]
        Product_Reward_data = Custom_Products[i]["REWARD_DATA"]
        Product_Add_To_Store = Custom_Products[i]["ADD_TO_STORE"]
        Product_Langauge_Base = Custom_Products[i]["LANUAGE_BASE"]

        Product_Name_Id = string.upper(Product_Langauge_Base).."_NAME"
        Product_Name_LC_Id = Product_Langauge_Base.."_NAME_LC"
        Product_Description_Id = Product_Langauge_Base.."_DESC"
        Product_Subtitle_Id = Product_Langauge_Base.."_SUB"

        Product_Is_Consumable = false
        if #Product_Reward_data["REWARD_ENTRIES"] > 0 then
            Product_Is_Consumable = true
        end

        Product_Is_Craftable = false
        if #Product_Requirements > 0 then
            Create_Requirement_Sections(Product_Requirements)
            Product_Is_Craftable = true
        end

        Create_New_Product(Product_Id, Product_Name_Id, Product_Name_LC_Id, Product_Subtitle_Id, Product_Description_Id,
                            Product_Price, Product_StackSize, Product_Is_Consumable, Product_Icon, Product_Recipe_Cost,
                            Product_Is_Craftable)

        if Product_Is_Consumable then
            Reward_Id = "R_"..Product_Id
            Create_New_Consumable(Product_Id, Reward_Id)
            Reward_Choice = Product_Reward_data["REWARD_CHOICE"]
            for j = 1 , #Product_Reward_data["REWARD_ENTRIES"] do
                Reward_Item = Product_Reward_data["REWARD_ENTRIES"][j]
                Create_Reward_Entry(Reward_Item)
            end
            Create_Reward_Table_Entry(Reward_Id, Reward_Choice)
        end

        if Product_Add_To_Store then
            Create_Shop_Entry(Product_Id)
        end


    end
    Add_Master_Sec()


    for k = 1, #Unlocakble_Item_Trees_Parents_For_Product_Id do
        Product = Unlocakble_Item_Trees_Parents_For_Product_Id[k]["PRODUCT"]
        Parent = Unlocakble_Item_Trees_Parents_For_Product_Id[k]["PARENT"]
        Add_Product_To_Unlockable_Item_Tree(Product, Parent)
    end
end

Start()

----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
local Changes_To_Mbin_Change_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

function Create_Langauge_Masters()
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TkLocalisationEntry.xml"},
        ["SEC_SAVE_TO"] = "EMPTY_LOCAL_ENTRY_MASTER"
    }
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        ["SEC_EDIT"] = "EMPTY_LOCAL_ENTRY_MASTER",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"English", ""}
        }
    }
end

function New_Empty_Language_File(New_Language_File_Name)
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        ["MBIN_FILE_SOURCE"] =
        {
            {"LANGUAGE/NMS_LOC8_ENGLISH.MBIN", New_Language_File_Name}
        }
    }
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        ["MBIN_FILE_SOURCE"] = New_Language_File_Name,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = {"Table"},
                ["REMOVE"] = "SECTION"
            }
        }
    }
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        ["MBIN_FILE_SOURCE"] = New_Language_File_Name,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["LINE_OFFSET"] = {3},
                ["ADD"] = [[<Property name="Table"></Property>]]
            }
        }
    }
end

function New_Empty_Langauge_Entries(Language)
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        ["SEC_EMPTY"] = Language.."_ENTRIES"
    }
end

function Fill_Custom_Language_File(Language, Language_Values)
    for Language_Base, Language_Texts in pairs(Language_Values) do
        Language_Name_Lc_Id = Language_Base.."_NAME_LC"
        Language_Name_Id = Language_Base.."_NAME"
        Language_Desc_Id = Language_Base.."_DESC"
        Language_Sub_Id = Language_Base.."_SUB"

        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = "EMPTY_LOCAL_ENTRY_MASTER",
            ["SEC_SAVE_TO"] = Language_Name_Lc_Id.."_ENTRY"
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = "EMPTY_LOCAL_ENTRY_MASTER",
            ["SEC_SAVE_TO"] = Language_Name_Id.."_ENTRY"
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = "EMPTY_LOCAL_ENTRY_MASTER",
            ["SEC_SAVE_TO"] = Language_Desc_Id.."_ENTRY"
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = "EMPTY_LOCAL_ENTRY_MASTER",
            ["SEC_SAVE_TO"] = Language_Sub_Id.."_ENTRY"
        }
        --change data inside empty tkloc
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language_Name_Lc_Id.."_ENTRY",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Id", Language_Name_Lc_Id},
                {Language, Language_Texts["NAME"]}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language_Name_Id.."_ENTRY",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Id", Language_Name_Id},
                {Language, string.upper(Language_Texts["NAME"])}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language_Desc_Id.."_ENTRY",
            ["VALUE_CHANGE_TABLE"] = 
            {
                {"Id", Language_Desc_Id},
                {Language, Language_Texts["DESCRIPTION"]}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language_Sub_Id.."_ENTRY",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"Id", Language_Sub_Id},
                {Language, Language_Texts["SUBTITLE"]}
            }
        }
        -- Add singular entry to entries
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language.."_ENTRIES",
            ["SEC_ADD_NAMED"] = Language_Name_Lc_Id.."_ENTRY"
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language.."_ENTRIES",
            ["SEC_ADD_NAMED"] = Language_Name_Id.."_ENTRY"
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language.."_ENTRIES",
            ["SEC_ADD_NAMED"] = Language_Desc_Id.."_ENTRY"
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            ["SEC_EDIT"] = Language.."_ENTRIES",
            ["SEC_ADD_NAMED"] = Language_Sub_Id.."_ENTRY"
        }
    end
end

function Add_Custom_Language_String()
    Create_Langauge_Masters()
    for Language , Language_Values in pairs(Language_Data) do
        New_Language_File_Name = "LANGUAGE/NMS_"..string.upper(Custom_Language_Tag).."_"..string.upper(Language)..".MBIN"
        New_Empty_Language_File(New_Language_File_Name)
        New_Empty_Langauge_Entries(Language)
        Fill_Custom_Language_File(Language, Language_Values)

        Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
        {
            ["MBIN_FILE_SOURCE"] = New_Language_File_Name,
            ["EXML_CHANGE_TABLE"] =
            {
                {
                    ["PRECEDING_KEY_WORDS"] = {"Table"},
                    ["SEC_ADD_NAMED"] = Language.."_ENTRIES"
                }
            }
        }
    end
end

Add_Custom_Language_String()