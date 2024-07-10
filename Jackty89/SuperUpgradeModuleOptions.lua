-- SHIP
Ship_Inv_Slot = 10
Input_Ship_Inv_Slot = {Ship_Inv_Slot,
[[
    How many slot should the Ship Inventory module unlock?
    Default = 10  Current = >> ]] .. Ship_Inv_Slot .. [[ <<
]]}
Ship_Inv_Slot = GUIF(Input_Ship_Inv_Slot, 10)

Price_Ship_Inv_Slot = 20000000
Input_Price_Ship_Inv_Slot = {Price_Ship_Inv_Slot,
[[
    How much should the Ship Inventory module cost?
    Default = 20000000  Current = >> ]] .. Price_Ship_Inv_Slot .. [[ <<
]]}
Price_Ship_Inv_Slot = GUIF(Input_Price_Ship_Inv_Slot, 10)

-- WEAPON
Weap_Inv_Slot = 10
Input_Weap_Inv_Slot = {Weap_Inv_Slot,
[[
    How many slot should the Weapon Inventory module unlock?
    Default = 10  Current = >> ]] .. Weap_Inv_Slot .. [[ <<
]]}
Weap_Inv_Slot = GUIF(Input_Weap_Inv_Slot, 10)

Price_Weap_Inv_Slot = 5000000
Input_Price_Weap_Inv_Slot = {Price_Weap_Inv_Slot,
[[
    How much should the Weapon Inventory module cost?
    Default = 5000000  Current = >> ]] .. Price_Weap_Inv_Slot .. [[ <<
]]}
Price_Weap_Inv_Slot = GUIF(Input_Price_Weap_Inv_Slot, 10)

--SUIT
Suit_Inv_Slot = 10
Input_Suit_Inv_Slot = {Suit_Inv_Slot,
[[
    How many slot should the Suit Inventory module unlock?
    Default = 10  Current = >> ]] .. Suit_Inv_Slot .. [[ <<
]]}
Suit_Inv_Slot = GUIF(Input_Suit_Inv_Slot, 10)

Price_Suit_Inv_Slot = 20000000
Input_Price_Suit_Inv_Slot = {Price_Suit_Inv_Slot,
[[
    How much should the Suit Inventory module cost?
    Default = 20000000  Current = >> ]] .. Price_Suit_Inv_Slot .. [[ <<
]]}
Price_Suit_Inv_Slot = GUIF(Input_Price_Suit_Inv_Slot, 10)

-- upgrade weapon
Price_Up_Weap = 10000000
Input_Price_Up_Weap = {Price_Up_Weap,
[[
    How much should the Weapon Class Upgrade Module cost?
    Default = 10000000  Current = >> ]] .. Price_Up_Weap .. [[ <<
]]}
Price_Up_Weap = GUIF(Input_Price_Up_Weap, 10)

-- Upgrade Ship
Price_Up_Ship_B = 25000000
Input_Price_Up_Ship_B = {Price_Up_Ship_B,
[[
    How much should the Ship B-Class Upgrade Module cost?
    Default = 25000000  Current = >> ]] .. Price_Up_Ship_B .. [[ <<
]]}
Price_Up_Ship_B = GUIF(Input_Price_Up_Ship_B, 10)

Price_Up_Ship_A = 50000000
Input_Price_Up_Ship_A = {Price_Up_Ship_A,
[[
    How much should the Ship A-Class Upgrade Module cost?
    Default = 50000000  Current = >> ]] .. Price_Up_Ship_A .. [[ <<
]]}
Price_Up_Ship_A = GUIF(Input_Price_Up_Ship_A, 10)

Price_Up_Ship_S = 75000000
Input_Price_Up_Ship_S = {Price_Up_Ship_S,
[[
    How much should the Ship S-Class Upgrade Module cost?
    Default = 75000000  Current = >> ]] .. Price_Up_Ship_S .. [[ <<
]]}
Price_Up_Ship_S = GUIF(Input_Price_Up_Ship_S, 10)

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
        ["CL_UPWEAP"] =
        {
            ["NAME"] = "Weapon Class Upgrade Module",
            ["DESCRIPTION"] = "This weapon module created by the engineers of H.G. Corp. will let you upgrade your weapon's class.",
            ["SUBTITLE"] = "Weapon Class Upgrade Module"
        },
        ["CL_UPSHIPB"] =
        {
            ["NAME"] = "Ship B-Class Upgrade Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you upgrade your ship's class.",
            ["SUBTITLE"] = "hip B-Class Upgrade Module"
        },
        ["CL_UPSHIPA"] =
        {
            ["NAME"] = "Ship A-Class Upgrade Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you upgrade your ship's class.",
            ["SUBTITLE"] = "Ship A-Class Upgrade Module"
        },
        ["CL_UPSHIPS"] =
        {
            ["NAME"] = "Ship S-Class Upgrade Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you upgrade your ship's class.",
            ["SUBTITLE"] = "Ship S-Class Upgrade Module"
        },
        ["CL_UPINVSHIP"] =
        {
            ["NAME"] = "Ship Inventory Expansion Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you expand your ship slots.&#xA;This will add "..Ship_Inv_Slot.." slots onto your ship cargo capacity.",
            ["SUBTITLE"] = "Ship Inventory Expansion Module"
        },
        ["CL_UPINVSUIT"] =
        {
            ["NAME"] = "Suit Inventory Expansion Module",
            ["DESCRIPTION"] = "This suit module created by the engineers of H.G. Corp. will let you expand your suit slots.&#xA;This will add "..Suit_Inv_Slot.." slots onto your suit cargo capacity.",
            ["SUBTITLE"] = "This suit module created by the engineers of H.G. Corp. will let you expand your suit slots."
        },
        ["CL_UPINVWEAP"] =
        {
            ["NAME"] = "Weapon Inventory Expansion Module",
            ["DESCRIPTION"] = "This weapon module created by the engineers of H.G. Corp. will let you expand your weapon slots.&#xA;This will add "..Weap_Inv_Slot.." slots for your current weapon.",
            ["SUBTITLE"] = "Weapon Inventory Expansion Module"
        }
    },
    [Languages["US"]] =
    {
        ["CL_UPWEAP"] =
        {
            ["NAME"] = "Weapon Class Upgrade Module",
            ["DESCRIPTION"] = "This weapon module created by the engineers of H.G. Corp. will let you upgrade your weapon's class.",
            ["SUBTITLE"] = "Weapon Class Upgrade Module"
        },
        ["CL_UPSHIPB"] =
        {
            ["NAME"] = "Ship B-Class Upgrade Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you upgrade your ship's class.",
            ["SUBTITLE"] = "hip B-Class Upgrade Module"
        },
        ["CL_UPSHIPA"] =
        {
            ["NAME"] = "Ship A-Class Upgrade Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you upgrade your ship's class.",
            ["SUBTITLE"] = "Ship A-Class Upgrade Module"
        },
        ["CL_UPSHIPS"] =
        {
            ["NAME"] = "Ship S-Class Upgrade Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you upgrade your ship's class.",
            ["SUBTITLE"] = "Ship S-Class Upgrade Module"
        },
        ["CL_UPINVSHIP"] =
        {
            ["NAME"] = "Ship Inventory Expansion Module",
            ["DESCRIPTION"] = "This ship module created by the engineers of H.G. Corp. will let you expand your ship slots.&#xA;This will add 10 slots onto your ship cargo capacity.",
            ["SUBTITLE"] = "Ship Inventory Expansion Module"
        },
        ["CL_UPINVSUIT"] =
        {
            ["NAME"] = "Suit Inventory Expansion Module",
            ["DESCRIPTION"] = "This suit module created by the engineers of H.G. Corp. will let you expand your suit slots.&#xA;This will add 10 slots onto your suit cargo capacity.",
            ["SUBTITLE"] = "This suit module created by the engineers of H.G. Corp. will let you expand your suit slots."
        },
        ["CL_UPINVWEAP"] =
        {
            ["NAME"] = "Weapon Inventory Expansion Module",
            ["DESCRIPTION"] = "This weapon module created by the engineers of H.G. Corp. will let you expand your weapon slots.&#xA;This will add 10 slots for your current weapon.",
            ["SUBTITLE"] = "Weapon Inventory Expansion Module"
        }
    },
    [Languages["RU"]] =
    {
        ["CL_UPWEAP"] =
        {
            ["NAME"] = "Модуль улучшения класса мультитула",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам повысить класс вашего мультитула.",
            ["SUBTITLE"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам повысить класс вашего мультитула."
        },
        ["CL_UPSHIPB"] =
        {
            ["NAME"] = "Модуль улучшения звездолета B-класса",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам повысить класс вашего звездолета до B-класса.",
            ["SUBTITLE"] = "Повышает класс вашего звездолета до B-класса."
        },
        ["CL_UPSHIPA"] =
        {
            ["NAME"] = "Модуль улучшения звездолета A-класса",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам повысить класс вашего звездолета до A-класса.",
            ["SUBTITLE"] = "Повышает класс вашего звездолета до A-класса."
        },
        ["CL_UPSHIPS"] =
        {
            ["NAME"] = "Модуль улучшения звездолета S-класса",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам повысить класс вашего звездолета до S-класса.",
            ["SUBTITLE"] = "Повышает класс вашего звездолета до S-класса."
        },
        ["CL_UPINVSHIP"] =
        {
            ["NAME"] = "Модуль расширения инвентаря звездолета",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам расширить слоты вашего звездолета. Модуль добавит "..Ship_Inv_Slot.." слотов к вашему звездолету.",
            ["SUBTITLE"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам расширить слоты вашего звездолета."
        },
        ["CL_UPINVSUIT"] =
        {
            ["NAME"] = "Модуль расширения инвентаря экзокостюма",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам расширить слоты вашего костюма. Модуль добавит "..Suit_Inv_Slot.." слотов к вашему костюму.",
            ["SUBTITLE"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам расширить слоты вашего костюма."
        },
        ["CL_UPINVWEAP"] =
        {
            ["NAME"] = "Модуль расширения инвентаря мультитула",
            ["DESCRIPTION"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам расширить слоты вашего мультитула. Модуль добавит "..Weap_Inv_Slot.." слотов к вашему мультитулу.",
            ["SUBTITLE"] = "Этот модуль, созданный инженерами H.G. Corp., позволит вам расширить слоты вашего мультитула."
        }
    }
}

-- ship clas will upgrade to next levewl even when it is to S even when you buy C
Custom_Products =
{
    {
        ["PRODUCT_ID"] = "UP_WEAPON",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Up_Weap,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.COUNTERFIRE.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S13_S2M3", "Reward", "GcRewardUpgradeWeaponClass.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"SilentlyMoveOnAtMaxClass", "False"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPWEAP"
    },
    {
        ["PRODUCT_ID"] = "UP_SHIP_B",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Up_Ship_B,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.MILESTONE.1.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll", --RewardChoice - not sure how it works but well, look it up and test it
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S13_S4M5", "Reward", "GcRewardUpgradeShipClass.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"InventoryClass", "S"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPSHIPB"
    },
    {
        ["PRODUCT_ID"] = "UP_SHIP_A",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Up_Ship_A,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.MILESTONE.2.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S13_S4M5", "Reward", "GcRewardUpgradeShipClass.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"InventoryClass", "A"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPSHIPA"
    },
    {
        ["PRODUCT_ID"] = "UP_SHIP_S",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Up_Ship_S,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.MILESTONE.3.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S13_S4M5", "Reward", "GcRewardUpgradeShipClass.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"InventoryClass", "S"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPSHIPS"
    },
    {
        ["PRODUCT_ID"] = "UP_INV_SHIP",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Ship_Inv_Slot,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.RESEARCH.SHIP.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S16_S1M2", "Reward", "GcRewardMultiSpecificItems.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"MultiItemRewardType", "InventorySlotShip"},
                        {"Id", ""},
                        {"Amount", Ship_Inv_Slot},
                        {"AlsoTeachTechBoxRecipe", "False"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPINVSHIP"
    },
    {
        ["PRODUCT_ID"] = "UP_INV_SUIT",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Suit_Inv_Slot,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.RESEARCH.EXOSUIT.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S16_S1M2", "Reward", "GcRewardMultiSpecificItems.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"MultiItemRewardType", "InventorySlot"},
                        {"Id", ""},
                        {"Amount", Suit_Inv_Slot},
                        {"AlsoTeachTechBoxRecipe", "False"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPINVSUIT"
    },
    {
        ["PRODUCT_ID"] = "UP_INV_WEAP",
        ["REQUIREMENTS"] = {},
        ["STACKSIZE"] = "10",
        ["PRICE"] = Price_Weap_Inv_Slot,
        ["PRICE_TYPE"] = "UNITS",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.RESEARCH.MULITTOOL.DDS",
        ["ADD_TO_STORE"] = true,
        ["REWARD_DATA"] =
        {
            ["REWARD_CHOICE"] = "GiveAll",
            ["REWARD_ENTRIES"] =
            {
                {
                    ["SKW"] = {"Id", "RS_S16_S1M2", "Reward", "GcRewardMultiSpecificItems.xml"},
                    ["PKW"] = {},
                    ["VCT"] = {
                        {"MultiItemRewardType", "InventorySlotWeapon"},
                        {"Id", ""},
                        {"Amount", Weap_Inv_Slot},
                        {"AlsoTeachTechBoxRecipe", "False"}
                    }
                }
            }
        },
        ["LANUAGE_BASE"] = "CL_UPINVWEAP"
    }
}

Custom_Language_Tag = "SUMOLANG"

ModName = "SuperUpgradeModuleOptions"
Author = "Jackty89"

Product_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
Reward_Table_Path = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
Consumeable_Item_Table_Path = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN"
Default_Reality_Path = "METADATA/REALITY/DEFAULTREALITY.MBIN"
English_Path = "LANGUAGE/NMS_LOC8_ENGLISH.MBIN"

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

function Create_New_Product(Product_Id, Product_Name_Id, Product_Name_LC_Id, Product_Subtitle_Id, Product_Description_Id,
    Product_Price, Product_StackSize, Product_Is_Consumable, Product_Icon)
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
            {"StackMultiplier", Product_StackSize},
            {"Consumable", Product_Is_Consumable}
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
    -- Changes_To_Language[#Changes_To_Language + 1] =
    -- {
    --     ["SEC_EMPTY"] = "LANGUAGE_MASTER"
    -- }
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
end

function Start()
    Create_Master_Sec()
    Create_Reward_Table_Entry_Template()

    for i = 1 , #Custom_Products do
        Create_Empty_Entries_Master()
        Product_Id = Custom_Products[i]["PRODUCT_ID"]
        -- Product_Requirements = Custom_Products["REQUIREMENTS"]
        Product_StackSize = Custom_Products[i]["STACKSIZE"]
        Product_Price = Custom_Products[i]["PRICE"]
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

        Create_New_Product(Product_Id, Product_Name_Id, Product_Name_LC_Id, Product_Subtitle_Id, Product_Description_Id,
                            Product_Price, Product_StackSize, Product_Is_Consumable, Product_Icon)

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