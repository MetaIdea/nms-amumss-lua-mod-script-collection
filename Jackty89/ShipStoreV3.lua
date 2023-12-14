Total_Seeds_Per_Class = 10000

Input_Total_Seeds_Per_Class = {Total_Seeds_Per_Class,
[[
    How many seeds do you wish to generate per Class-Type?
    Default = 10000  Current = >> ]] .. Total_Seeds_Per_Class .. [[ <<
]]}

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

Custom_Language_Desccription_Strings =
{
    {
        ["ID"] = "CL_BFREIGH",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Freighter", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Freighter"}
        }
    },
    {
        ["ID"] = "CL_BHAUL",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Hauler", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Hauler"}
        }
    },
    {
        ["ID"] = "CL_BEXPLO",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Explorer", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Explorer"}
        }
    },
    {
        ["ID"] = "CL_BSOLAR",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Solar", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Solar"}
        }
    },
    {
        ["ID"] = "CL_BFIGHT",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Fighter", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Fighter"}
        }
    },
    {
        ["ID"] = "CL_BSHUT",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Shuttle", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Shuttle"}
        }
    },
    {
        ["ID"] = "CL_BROYAL",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Exotic", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Exotic"}
        }
    },
    {
        ["ID"] = "CL_BALIEN",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Bioship", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Bioship"}
        }
    },
    {
        ["ID"] = "CL_BROBOT",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Sentinel Ship", ["DESCRIPTION"] = "H.G. Corp. Spacecraft Dynamics Sentinel Ship"}
        }
    },
    {
        ["ID"] = "CL_STORE",
        ["LANGUAGES"] =
        {
            {["LANGUAGE"] = Languages["EN"], ["NAME"] = "H.G. Corp. Spacecraft Dynamics", ["DESCRIPTION"] = "Spacecraft constucted by H.G. Corp."}
        }
    }
}

Classes = {"C", "B", "A", "S"}
ClassesS = {"S"}
Price_Multiplier = 1


-- Add_Scientific = true
-- Add_Dropship = true
-- Add_Fighter = true
-- Add_Shuttle = true
-- Add_Royal = true
-- Add_Sail = true
-- Add_Alien = true
-- Add_Robot = true

Ship_Types =
{
    ["Scientific"] = "Scientific",
    ["Dropship"] = "Dropship",
    ["Fighter"] = "Fighter",
    ["Shuttle"] = "Shuttle",
    ["Royal"] = "Royal",
    ["Sail"] = "Sail",
    ["Alien"] = "Alien",
    ["Robot"] = "Robot",
    -- ["Freighter"] = "Freighter"
}

for Key, _Value in pairs(Ship_Types) do
    local Choice = true
    Input_Choice = {Choice,
    [[
        Would you like add ]]..Key..[[?
        Default = Y | Current = >> ]] .. (Choice and "Y" or "N") .. [[ <<
    ]]}
    Choice = GUIF(Input_Choice, 10)

    if Choice == false then
        Ship_Types[Key] = nil
    end
end

if next(Ship_Types) == nil then
    print("[WARNING][ShipStore]:Table is empty adding royal!")
    Ship_Types = {["Royal"] = "Royal"}
end

print("[ShipStore]: Chosen Shiptypes")
for Key, _Value in pairs(Ship_Types) do
    print("Ship type: ", Ship_Types[Key])
end
Class_Choice = 4

Input_Class_Choice = {Class_Choice,
[[
    What class range do you wish?
    * 4 = C -> S
    * 3 = B -> S
    * 2 = A -> S
    * 1 = S
    Default = 4 | Current = >> ]] .. Class_Choice .. [[ <<
]]}
Class_Choice = GUIF(Input_Class_Choice, 10)
if Class_Choice == 4 then
    Classes = {"C", "B", "A", "S"}
elseif Class_Choice == 3  then
    Classes = {"B", "A", "S"}
elseif Class_Choice == 2  then
    Classes = {"A", "S"}
else
    Classes = ClassesS
end

Input_Price_Multiplier = {Price_Multiplier,
[[
    Do you wish to change the Price multiplier?
    Default = 1 | Current = >> ]] .. Price_Multiplier .. [[ <<
]]}

Total_Seeds_Per_Class = GUIF(Input_Total_Seeds_Per_Class, 10)
Price_Multiplier = GUIF(Input_Price_Multiplier, 10)


----------------------------------------------------------------------------------------------
-------------------------------     CODE LOGIC START      ------------------------------------
----------------------------------------------------------------------------------------------
ModName = "ShipStore"
Author = "jackty89"
CustomLanguageTag = "ShipStore"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_AUTHOR"] = Author,
    ["ADD_FILES"] =
    {
    },
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                -- IF i want to use the QS store
                -- {
                --     ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/PURCHASEABLESPECIALS.MBIN",
                --     ["EXML_CHANGE_TABLE"] =
                --     {
                --     }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] =
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..CustomLanguageTag..[[" />
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
local Changes_To_Consumable_Item_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Changes_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
-- IF i want to use the QS store
-- local Changes_To_Purchasable_Specials = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]

--EDITED
function Create_New_Product(New_Product_ID, New_Product_Name, New_Product_Name_Lc, New_Product_Subtitle, New_Product_Description, New_Product_Stack_Size, New_Product_Value, New_Product_Icon)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
        ["SEC_SAVE_TO"] = New_Product_ID.."_PRODSEC",
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = New_Product_ID.."_PRODSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", New_Product_ID},
            {"Name", New_Product_Name},
            {"NameLower", New_Product_Name_Lc},
            {"BaseValue", New_Product_Value},
            {"StackMultiplier", New_Product_Stack_Size},
            -- IF i want to use the QS store
            -- {"GiveRewardOnSpecialPurchase", "R_"..New_Product_ID},
            -- {"Consumable", "False"}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = New_Product_ID.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"Subtitle", "VariableSizeString.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", New_Product_Subtitle},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = New_Product_ID.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"Description", "VariableSizeString.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", New_Product_Description},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = New_Product_ID.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"Icon", "TkTextureResource.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Filename", New_Product_Icon},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = New_Product_ID.."_PRODSEC",
        ["SPECIAL_KEY_WORDS"] = {"HeroIcon", "TkTextureResource.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Filename", New_Product_Icon},
        }
    }
    -- IF i want to use the QS store
    -- Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    -- {
    --     ["SEC_EDIT"] = New_Product_ID.."_PRODSEC",
    --     ["SPECIAL_KEY_WORDS"] = {"TradeCategory", "GcTradeCategory.xml"},
    --     ["VALUE_CHANGE_TABLE"] =
    --     {
    --         {"TradeCategory", "SpecialShop"},
    --     }
    -- }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = New_Product_ID.."_PRODSEC",
    }
end

function Create_New_Consumable(New_Product_ID, New_Product_Consumable_Reward_ID)
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
        ["SEC_SAVE_TO"] = New_Product_ID.."_CONSSEC"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EDIT"] = New_Product_ID.."_CONSSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", New_Product_ID},
            {"RewardID", New_Product_Consumable_Reward_ID},
        }
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EDIT"] = "CONSUMABLE_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BUI_SCAN2"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = New_Product_ID.."_CONSSEC"
    }
end

--This only happens once
function Create_Reward_Table_Entry_Template()
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "DE_SENT_LOOT"},
        ["SEC_SAVE_TO"] = "REWARD_ENTRY_SEC"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_ENTRY_SEC",
        ["PRECEDING_KEY_WORDS"] = { "GcRewardTableItem.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
end

--This happens for every class of every shiptype (So 4 class and 6 types + 2 Sclass types => 26 times)
function Create_Reward_Table_Entry(Reward_ID, Reward_Choice, Reward_Entries)
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_ENTRY_SEC",
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
        ["ADD"] = Reward_Entries
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_CLEAR_WANTED"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = Reward_ID.."_REWARD_SEC"
    }
end

function Create_Ship_Techonlogy(Technology_Id, Amount, Max_Amount)
    return [[
        <Property value="GcInventoryElement.xml">
            <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="Technology" />
            </Property>
            <Property name="Id" value="]]..Technology_Id..[[" />
            <Property name="Amount" value="]]..Amount..[[" />
            <Property name="MaxAmount" value="]]..Max_Amount..[[" />
            <Property name="DamageFactor" value="0" />
            <Property name="FullyInstalled" value="True" />
            <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="-1" />
                <Property name="Y" value="-1" />
            </Property>
        </Property>
    ]]
end

function Get_Ship_Technologies(Ship_Type)
    local Technology_Data_For_Type = {}
    local Ship_Technologies = {}
    local Ship_Weapons =
    {
        "SHIPGUN1",
        "SHIPLAS1",
        "SHIPMINIGUN",
        "SHIPPLASMA",
        "SHIPROCKETS",
        "SHIPSHOTGUN"
    }
    Technology_Data_Freighter = {
        {["TECH"] = "F_HYPERDRIVE", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
    }
    Technology_Data_Alien = {
        {["TECH"] = "SHIPJUMP_ALIEN", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "SHIPGUN_ALIEN", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
        {["TECH"] = "SHIELD_ALIEN", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "SHIPLAS_ALIEN", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
        {["TECH"] = "LAUNCHER_ALIEN", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "WARP_ALIEN", ["AMOUNT"] = 120, ["MAXAMOUNT"] = 120}
    }
    Technology_Data_Robot = {
        {["TECH"] = "SHIPJUMP_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "SHIPSHIELD_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "LAUNCHER_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "HYPERDRIVE_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "LIFESUP_ROBO", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
        {["TECH"] = "SHIPGUN_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
    }
    Extra_Technology_Data_Sail = {["TECH"] = "SOLAR_SAIL", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
    Technology_Data_Standard_Ship =
    {
        {["TECH"] = "SHIPJUMP1", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "SHIPSHIELD", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "LAUNCHER", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
        {["TECH"] = "HYPERDRIVE", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100}
    }

    if Ship_Type == "Freighter" then
        Technology_Data_For_Type = Technology_Data_Freighter
    elseif Ship_Type == "Alien" then
        Technology_Data_For_Type = Technology_Data_Alien
    elseif Ship_Type == "Robot" then
        Technology_Data_For_Type = Technology_Data_Robot
    else
        local rand = math.random(#Ship_Weapons)

        if Ship_Type == "Sail" then
            table.insert(Technology_Data_Standard_Ship, Extra_Technology_Data_Sail)
        end
        Ship_Weapon = {["TECH"] = Ship_Weapons[rand], ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
        table.insert(Technology_Data_Standard_Ship, Ship_Weapon)
        Technology_Data_For_Type = Technology_Data_Standard_Ship
    end

    for j = 1, #Technology_Data_For_Type do
        table.insert(Ship_Technologies, Create_Ship_Techonlogy(Technology_Data_For_Type[j]["TECH"], Technology_Data_For_Type[j]["AMOUNT"], Technology_Data_For_Type[j]["MAXAMOUNT"]))
    end

    return Ship_Technologies
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
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_CLEAR_WANTED"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SHOP_ENTRY"
    }
end

-- IF i want to use the QS store
-- function Create_Specials_Listing(Entry_ID)
--     Changes_To_Purchasable_Specials[#Changes_To_Purchasable_Specials + 1] =
--     {

--         ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_BLUESYS"},
--         ["SEC_SAVE_TO"] = "SPECIAL_LISTING"
--     }
--     Changes_To_Purchasable_Specials[#Changes_To_Purchasable_Specials + 1] =
--     {
--         ["SEC_EDIT"] = "SPECIAL_LISTING",
--         ["VALUE_CHANGE_TABLE"] =
--         {
--             {"ID", Entry_ID},
--             {"ShopNumber", "23"},
--             {"MissionTier", "1"},
--             {"IsConsumable", "False"}
--         }
--     }
--     Changes_To_Purchasable_Specials[#Changes_To_Purchasable_Specials + 1] =
--     {
--         ["SEC_EDIT"] = "SPECIAL_MASTER_SEC",
--         ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CREFLY"},
--         ["ADD_OPTION"] = "ADDafterSECTION",
--         ["SEC_ADD_NAMED"] = "SPECIAL_LISTING"
--     }
-- end

--UNCHANGED
--Bases stats needed to assign Alien/robot property to specific ships
function Create_Ship_Base_Stats(ship_type)
    if ship_type == "Alien" then
        return [[
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="ALIEN_SHIP" />
                <Property name="Value" value="1" />
            </Property>
        ]]
    end
    if ship_type == "Robot" then
        return [[
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="ROBOT_SHIP" />
                <Property name="Value" value="1" />
            </Property>
        ]]
    end

    return [[]]
end

function Create_Ship_Reward_Entry(ship_model, ship_seed, ship_slots, ship_technologies, ship_class, ship_type, ship_base_stats)
    return [[
        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificShip.xml">
                <Property name="ShipResource" value="GcResourceElement.xml">
                    <Property name="Filename" value="]]..ship_model..[[" />
                    <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                    </Property>
                    <Property name="Seed" value="GcSeed.xml">
                        <Property name="Seed" value="]]..ship_seed..[[" />
                        <Property name="UseSeedValue" value="True" />
                    </Property>
                    <Property name="AltId" value="" />
                    <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
                        <Property name="Samplers" />
                    </Property>
                </Property>
                <Property name="ShipLayout" value="GcInventoryLayout.xml">
                    <Property name="Slots" value="]]..ship_slots..[[" />
                    <Property name="Seed" value="GcSeed.xml">
                        <Property name="Seed" value="1" />
                        <Property name="UseSeedValue" value="True" />
                    </Property>
                    <Property name="Level" value="1" />
                </Property>
                <Property name="ShipInventory" value="GcInventoryContainer.xml">
                    <Property name="Slots">
                        ]]..ship_technologies..[[
                    </Property>
                    <Property name="ValidSlotIndices" />
                    <Property name="Class" value="GcInventoryClass.xml">
                        <Property name="InventoryClass" value="]]..ship_class..[[" />
                    </Property>
                    <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup.xml">
                        <Property name="InventoryStackSizeGroup" value="Default" />
                    </Property>
                    <Property name="BaseStatValues">
                        ]]..ship_base_stats..[[
                    </Property>
                    <Property name="SpecialSlots" />
                    <Property name="Width" value="0" />
                    <Property name="Height" value="0" />
                    <Property name="IsCool" value="False" />
                    <Property name="Name" value="" />
                    <Property name="Version" value="0" />
                </Property>
                <Property name="CostAmount" value="0" />
                <Property name="CostCurrency" value="GcCurrency.xml">
                  <Property name="Currency" value="Units" />
                </Property>
                <Property name="ShipType" value="GcSpaceshipClasses.xml">
                    <Property name="ShipClass" value="]]..ship_type..[[" />
                </Property>
                <Property name="UseOverrideSizeType" value="False" />
                <Property name="OverrideSizeType" value="GcInventoryLayoutSizeType.xml">
                  <Property name="SizeType" value="SciSmall" />
                </Property>
                <Property name="NameOverride" value="CL_STORE_DESC" />
                <Property name="IsGift" value="True" />
                <Property name="IsRewardShip" value="True" />
                <Property name="FormatAsSeasonal" value="False" />
            </Property>
        </Property>
    ]]
end

function Get_Ship_Data(ship_type, ship_class )
    local ship_model = ""
    local custom_language_string = ""
    local price = 0;
    local base_price = 0
    local price_multiplier = 0
    -- local freighter_models =
    -- {
    --     "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",
    --     "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN",
    --     "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC.SCENE.MBIN"
    -- }
    -- local rand = math.random(1, #freighter_models)

    -- if Ship_Type == "Freighter" then
    --     Ship_Model = freighter_models[rand]
    --     base_price = 25000000 * Price_Multiplier
    --     custom_language_string = "CL_BFREIGH"
    -- else
    if ship_type == "Dropship" then
        ship_model = "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"
        base_price = 2500000 * Price_Multiplier
        custom_language_string = "CL_BHAUL"
    elseif ship_type == "Shuttle" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"
        base_price = 1000000 * Price_Multiplier
        custom_language_string = "CL_BSHUT"
    elseif ship_type == "Fighter" then
        ship_model = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"
        base_price = 2500000 * Price_Multiplier
        custom_language_string = "CL_BFIGHT"
    elseif ship_type == "Royal" then
        ship_model = "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"
        base_price = 5000000 * Price_Multiplier
        custom_language_string = "CL_BROYAL"
    elseif ship_type == "Scientific" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"
        base_price = 1000000 * Price_Multiplier
        custom_language_string = "CL_BEXPLO"
    elseif ship_type == "Sail" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN"
        base_price = 2000000 * Price_Multiplier
        custom_language_string = "CL_BSOLAR"
    elseif ship_type == "Alien" then
        ship_model = "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN"
        base_price = 2500000 * Price_Multiplier
        custom_language_string = "CL_BALIEN"
    elseif ship_type == "Robot" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN"
        base_price = 2500000 * Price_Multiplier
        custom_language_string = "CL_BROBOT"
    else
        ship_type = "Shuttle"
        ship_model = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"
        base_price = 1000000 * Price_Multiplier
        custom_language_string = "CL_BSHUT"
    end

    if ship_class == "C" then
        price_multiplier = 1;
    elseif ship_class == "B" then
        price_multiplier = 2;
    elseif ship_class == "A" then
        price_multiplier = 4;
    elseif ship_class == "S" then
        price_multiplier = 8;
    else
        ship_class = "S";
        price_multiplier = 8;
    end
    price = base_price * price_multiplier;

    return ship_type, ship_model, ship_class, price, custom_language_string
end

--NEW
function Create_Master_Sec()
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
        ["SEC_SAVE_TO"] = "PRODUCT_SEC_MASTER"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BUI_SCAN2"},
        ["SEC_SAVE_TO"] = "CONSUMABLE_SEC_MASTER"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_CLEAR_WANTED"},
        ["SEC_SAVE_TO"] = "REWARD_SEC_MASTER"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_CLEAR_WANTED"},
        ["SEC_SAVE_TO"] = "SHOP_MASTER_SEC"
    }
    -- IF i want to use the QS store
    -- Changes_To_Purchasable_Specials[#Changes_To_Purchasable_Specials + 1] =
    -- {
    --     ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CREFLY"},
    --     ["SEC_SAVE_TO"] = "SPECIAL_MASTER_SEC"
    -- }
end

function Add_Master_Sec()
    --Accumilative Add to Product_Table
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
        ["REMOVE"] = "Section"
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "PRODUCT_SEC_MASTER"
    }
    --Accumilative Add to Consumable_Item_Table
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EDIT"] = "CONSUMABLE_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BUI_SCAN2"},
        ["REMOVE"] = "Section"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "CONSUMABLE_SEC_MASTER"
    }
    --Accumilative Add to Reward_Table
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_CLEAR_WANTED"},
        ["REMOVE"] = "Section"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
        ["SEC_ADD_NAMED"] = "REWARD_SEC_MASTER"
    }
    --Accumilative Add to Default_Reality
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SEC_EDIT"] = "SHOP_MASTER_SEC",
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_CLEAR_WANTED"},
        ["REMOVE"] = "Section"
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
        ["SEC_ADD_NAMED"] = "SHOP_MASTER_SEC"
    }
    -- IF i want to use the QS store
    --Accumilative Add to Purchasable_Specials
    -- Changes_To_Purchasable_Specials[#Changes_To_Purchasable_Specials + 1] =
    -- {
    --     ["SEC_EDIT"] = "SPECIAL_MASTER_SEC",
    --     ["SPECIAL_KEY_WORDS"] = {"ID", "DECAL_CREFLY"},
    --     ["REMOVE"] = "Section"
    -- }
    -- Changes_To_Purchasable_Specials[#Changes_To_Purchasable_Specials + 1] =
    -- {
    --     ["PRECEDING_KEY_WORDS"] = {"Table"},
    --     ["SEC_ADD_NAMED"] = "SPECIAL_MASTER_SEC"
    -- }
end

function Start()
    Create_Master_Sec()
    Create_Reward_Table_Entry_Template()

    for _, Ship_Type in pairs(Ship_Types) do
        -- Create_Ship_Technolgy_Templates(Ship_Type)
        local classes = {}
        if Ship_Type == "Royal" or Ship_Type == "Alien" then
            classes = ClassesS
        else
            classes = Classes
        end

        for i = 1 , #classes do
            local Reward_Entries = {}
            local Ship_Model = ""
            local Ship_Class_String = ""
            local Price = 0
            local Custom_Language_String = ""
            local Ship_Seed = 0
            local Ship_Slots = 0
            Ship_Type, Ship_Model, Ship_Class_String, Price, Custom_Language_String = Get_Ship_Data(Ship_Type, classes[i])

            local Product_Id = string.upper(Ship_Type).."_"..string.upper(Ship_Class_String)

            local Name_Id = Custom_Language_String.."_NAME"
            local Name_LC_Id = Custom_Language_String.."_NAME_L"
            local Description_Id = Custom_Language_String.."_DESC"
            local Product_Icon = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.SHIPCLASS"..string.upper(Ship_Class_String)..".DDS";

            local Reward_Id = "R_"..Product_Id
            Create_New_Product(Product_Id, Name_Id, Name_LC_Id, Description_Id, Description_Id, 1, math.floor(Price), Product_Icon)
            Create_New_Consumable(Product_Id, Reward_Id)
            Create_Shop_Entry(Product_Id)
            -- Create_Specials_Listing(Product_Id)

            local Ship_Technologies = ""
            for _j = 1, Total_Seeds_Per_Class do
                Ship_Slots = math.random(1, 100)
                Ship_Seed =  math.random(0xFFFFFFFF)

                Ship_Technologies = table.concat(Get_Ship_Technologies(Ship_Type))
                Ship_Base_Stats = Create_Ship_Base_Stats(Ship_Type)
                table.insert(Reward_Entries, Create_Ship_Reward_Entry(Ship_Model, Ship_Seed, Ship_Slots, Ship_Technologies, Ship_Class_String, Ship_Type, Ship_Base_Stats))
            end
            Create_Reward_Table_Entry(Reward_Id, "Select", table.concat(Reward_Entries))
        end
    end
    Add_Master_Sec()
end

Start()
----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
function NewLanguagueFile(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..DescriptionEntries..
            [[
            </Property>
        </Data>
    ]]
end

function NewLanguageEntry(Language, NewDescription)
    return
    [[
        <Property name="]]..Language..[[" value="VariableSizeString.xml">
            <Property name="Value" value="]]..NewDescription..[[" />
        </Property>
    ]]
end

function NewDescriptionText(newDescId, LanguageEntries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..LanguageEntries..[[
        </Property>
    ]]
end

function FillCustomlangFile()
    local NewProductLangEntries = {}

    for i = 1, #Custom_Language_Desccription_Strings do
        local ProductID = string.upper(Custom_Language_Desccription_Strings[i]["ID"])
        local DescriptionEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}

        local LanguagesData = Custom_Language_Desccription_Strings[i]["LANGUAGES"]

        local NameID = ProductID.."_NAME"
        local NameLCID = ProductID.."_NAME_L"
        local DescID = ProductID.."_DESC"

        for j = 1, #LanguagesData do
            local Language = LanguagesData[j]["LANGUAGE"]

            local NameLC = LanguagesData[j]["NAME"]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local Name = string.upper(NameLC)
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NewDescription = LanguagesData[j]["DESCRIPTION"]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
        end

        table.insert(NewProductLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))

    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

for _Key , Language in pairs(Languages) do
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] = "LANGUAGE/NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"] = FillCustomlangFile()
    }
end