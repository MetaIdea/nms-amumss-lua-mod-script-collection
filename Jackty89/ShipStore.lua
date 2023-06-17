-- Choose one of these fe. english would be Languages[1], french Languages[2] ...
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
PriceMultiplier = 1

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

ClassChoice = 4
InputClassChoice = {ClassChoice,
[[
    What class range do you wish?
    * 4 = C -> S
    * 3 = B -> S
    * 2 = A -> S
    * 1 = S
    Default = 4 | Current = >> ]] .. ClassChoice .. [[ <<
]]}


if ClassChoice == 4 then
    Classes = {"C", "B", "A", "S"}
elseif ClassChoice == 3  then
    Classes = {"B", "A", "S"}
elseif ClassChoice == 2  then
    Classes = {"A", "S"}
else
    Classes = ClassesS
end

InputPriceMultiplier = {PriceMultiplier,
[[
    Do you wish to cahnge the price multiplier?
    Default = 1 | Current = >> ]] .. PriceMultiplier .. [[ <<
]]}

Total_Seeds_Per_Class = GUIF(Input_Total_Seeds_Per_Class, 10)
ExtraChanges = GUIF(InputClassChoice, 10)
PriceMultiplier = GUIF(InputPriceMultiplier, 10)


----------------------------------------------------------------------------------------------
-------------------------------     CODE LOGIC START      ------------------------------------
----------------------------------------------------------------------------------------------
ModName = "ShipStore"
Author = "jackty89"
ModDescription = "template mod for consumable products that offer currency rewards"
CustomLanguageTag = "ShipStore"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModDescription,
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

function Create_New_Product(NewProductID, NewProductName, NewProductNameLc, NewProductSub, NewProductDesc, NewProductStackSize, NewProductValue, NewProductIcon)
    local result =
    [[
        <Property value="GcProductData.xml">
            <Property name="ID" value="]]..NewProductID..[[" />
            <Property name="Name" value="]]..NewProductName..[[" />
            <Property name="NameLower" value="]]..NewProductNameLc..[[" />
            <Property name="Subtitle" value="VariableSizeString.xml">
                <Property name="Value" value="]]..NewProductSub..[[" />
            </Property>
            <Property name="Description" value="VariableSizeString.xml">
                <Property name="Value" value="]]..NewProductDesc..[[" />
            </Property>
            <Property name="Hint" value="" />
            <Property name="GroupID" value="" />
            <Property name="DebrisFile" value="TkModelResource.xml">
                <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
                <Property name="ResHandle" value="GcResource.xml">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="BaseValue" value="]]..NewProductValue..[[" />
            <Property name="Level" value="0" />
            <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="]]..NewProductIcon..[[" />
                <Property name="ResHandle" value="GcResource.xml">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="HeroIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="Colour" value="Colour.xml">
                <Property name="R" value="0.3019608" />
                <Property name="G" value="0.16078432" />
                <Property name="B" value="0.34117648" />
                <Property name="A" value="1" />
            </Property>
            <Property name="Category" value="GcRealitySubstanceCategory.xml">
                <Property name="SubstanceCategory" value="Special" />
            </Property>
            <Property name="Type" value="GcProductCategory.xml">
                <Property name="ProductCategory" value="Component" />
            </Property>
            <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Uncommon" />
            </Property>
            <Property name="Legality" value="GcLegality.xml">
                <Property name="Legality" value="Legal" />
            </Property>
            <Property name="Consumable" value="True" />
            <Property name="ChargeValue" value="0" />
            <Property name="StackMultiplier" value="]]..NewProductStackSize..[[" />
            <Property name="DefaultCraftAmount" value="1" />
            <Property name="CraftAmountStepSize" value="1" />
            <Property name="CraftAmountMultiplier" value="1" />
            <Property name="Requirements" />
            <Property name="AltRequirements" />
            <Property name="Cost" value="GcItemPriceModifiers.xml">
                <Property name="SpaceStationMarkup" value="0" />
                <Property name="LowPriceMod" value="-0.1" />
                <Property name="HighPriceMod" value="0.1" />
                <Property name="BuyBaseMarkup" value="5" />
                <Property name="BuyMarkupMod" value="0" />
            </Property>
            <Property name="RecipeCost" value="1" />
            <Property name="SpecificChargeOnly" value="False" />
            <Property name="NormalisedValueOnWorld" value="0.0001922436" />
            <Property name="NormalisedValueOffWorld" value="0.0001922436" />
            <Property name="TradeCategory" value="GcTradeCategory.xml">
                <Property name="TradeCategory" value="None" />
            </Property>
            <Property name="WikiCategory" value="Curio" />
            <Property name="IsCraftable" value="False" />
            <Property name="DeploysInto" value="" />
            <Property name="EconomyInfluenceMultiplier" value="0.25" />
            <Property name="PinObjective" value="" />
            <Property name="PinObjectiveTip" value="" />
            <Property name="CookingIngredient" value="False" />
            <Property name="CookingValue" value="0" />
            <Property name="GoodForSelling" value="False" />
            <Property name="GiveRewardOnSpecialPurchase" value="" />
            <Property name="EggModifierIngredient" value="False" />
            <Property name="IsTechbox" value="False" />
        </Property>
    ]]

    return result
end

function Create_New_Consumable(NewProductID, NewProductConsumeRewardID)
    return
    [[
        <Property value="GcConsumableItem.xml">
            <Property name="ID" value="]]..NewProductID..[[" />
            <Property name="RewardID" value="]]..NewProductConsumeRewardID..[[" />
            <Property name="TutorialRewardID" value="" />
            <Property name="ButtonLocID" value="UI_OPEN_SENT" />
            <Property name="ButtonSubLocID" value="UI_OPEN_SENT_SUB" />
            <Property name="CloseInventoryWhenUsed" value="True" />
            <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
            <Property name="DestroyItemWhenConsumed" value="True" />
            <Property name="AddCommunityTierClassIcon" value="False" />
            <Property name="SuppressResourceMessage" value="False" />
            <Property name="CustomOSD" value="" />
        </Property>
    ]]
end

function CreateRewardEntry(NewId, RewardChoice, Rewards)
    return [[
        <Property value="GcGenericRewardTableEntry.xml">
            <Property name="Id" value="]]..NewId..[[" />
            <Property name="List" value="GcRewardTableItemList.xml">
                <Property name="RewardChoice" value="]]..RewardChoice..[[" />
                <Property name="OverrideZeroSeed" value="True" />
                <Property name="UseInventoryChoiceOverride" value="True" />
                <Property name="List">
                    ]]..Rewards..[[
                </Property>
            </Property>
        </Property>
    ]]
end

function Create_Ship_Techonlogy(technology_id, amount, max_amount)
    return [[
        <Property value="GcInventoryElement.xml">
            <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="Technology" />
            </Property>
            <Property name="Id" value="]]..technology_id..[[" />
            <Property name="Amount" value="]]..amount..[[" />
            <Property name="MaxAmount" value="]]..max_amount..[[" />
            <Property name="DamageFactor" value="0" />
            <Property name="FullyInstalled" value="True" />
            <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="-1" />
                <Property name="Y" value="-1" />
            </Property>
        </Property>
    ]]
end

function Create_Ship_Base_Stats(ship_type)
    if ship_type == "Alien" then
        return [[
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="SHIP_DAMAGE" />
                <Property name="Value" value="1" />
            </Property>
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="SHIP_SHIELD" />
                <Property name="Value" value="1" />
            </Property>
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                <Property name="Value" value="1" />
            </Property>
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="ALIEN_SHIP" />
                <Property name="Value" value="1" />
            </Property>
        ]]
    end
    if ship_type == "Robot" then
        return [[
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="SHIP_DAMAGE" />
                <Property name="Value" value="1" />
            </Property>
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="SHIP_SHIELD" />
                <Property name="Value" value="1" />
            </Property>
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                <Property name="Value" value="1" />
            </Property>
            <Property value="GcInventoryBaseStatEntry.xml">
                <Property name="BaseStatID" value="ROBOT_SHIP" />
                <Property name="Value" value="1" />
            </Property>
        ]]
    end

    return [[
        <Property value="GcInventoryBaseStatEntry.xml">
            <Property name="BaseStatID" value="SHIP_DAMAGE" />
            <Property name="Value" value="1" />
        </Property>
        <Property value="GcInventoryBaseStatEntry.xml">
            <Property name="BaseStatID" value="SHIP_SHIELD" />
            <Property name="Value" value="1" />
        </Property>
        <Property value="GcInventoryBaseStatEntry.xml">
            <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
            <Property name="Value" value="1" />
        </Property>
    ]]
end

function Create_Ship_Reward_Entry(ship_model, ship_seed, ship_slots, ship_technologies, ship_class, ship_base_stats, ship_type)
    return [[
        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
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
                <Property name="ShipType" value="GcSpaceshipClasses.xml">
                    <Property name="ShipClass" value="]]..ship_type..[[" />
                </Property>
                <Property name="NameOverride" value="CL_STORE_DESC" />
                <Property name="IsGift" value="True" />
                <Property name="IsRewardShip" value="True" />
                <Property name="FormatAsSeasonal" value="False" />
            </Property>
            <Property name="LabelID" value="" />
        </Property>
    ]]
end

function Get_Ship_Technologies(ship_type)
    local ship_technologies = {}
    local technology_list = {}
    local ship_weapons =
    {
        "SHIPGUN1",
        "SHIPLAS1",
        "SHIPMINIGUN",
        "SHIPPLASMA",
        "SHIPROCKETS",
        "SHIPSHOTGUN"
    }
    local rand = math.random(1, 4)
    if ship_type == "Freighter" then
        technology_list = {
            {["TECH"] = "F_HYPERDRIVE", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
        }
    elseif ship_type == "Alien" then
        technology_list = {
            {["TECH"] = "SHIPJUMP_ALIEN", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "SHIPGUN_ALIEN", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = "SHIELD_ALIEN", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "SHIPLAS_ALIEN", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = "LAUNCHER_ALIEN", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "WARP_ALIEN", ["AMOUNT"] = 120, ["MAXAMOUNT"] = 120}

        }
    elseif ship_type == "Sail" then
        technology_list = {
            {["TECH"] = "SHIPJUMP1", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "SOLAR_SAIL", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "SHIPSHIELD", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = "LAUNCHER", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "HYPERDRIVE", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = ship_weapons[rand], ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
        }
    elseif ship_type == "Robot" then
        technology_list = {
            {["TECH"] = "SHIPJUMP_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "SHIPSHIELD_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "LAUNCHER_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "HYPERDRIVE_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "LIFESUP_ROBO", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = "SHIPGUN_ROBO", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
        }
    else
        technology_list = {
            {["TECH"] = "SHIPJUMP1", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "SHIPSHIELD", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = "LAUNCHER", ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200},
            {["TECH"] = "HYPERDRIVE", ["AMOUNT"] = 100, ["MAXAMOUNT"] = 100},
            {["TECH"] = ship_weapons[rand], ["AMOUNT"] = 200, ["MAXAMOUNT"] = 200}
        }
    end

    for i = 1, #technology_list do
        table.insert(ship_technologies, Create_Ship_Techonlogy(technology_list[i]["TECH"], technology_list[i]["AMOUNT"], technology_list[i]["MAXAMOUNT"]))
    end

    return ship_technologies
end

function Create_Shop_Entry(NewId)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..NewId..[[" />
        </Property>
    ]]
end

function Get_Ship_Data(ship_type, ship_class )
    local ship_model = ""
    local custom_language_string = ""
    local price = 0;
    local base_price = 0
    local price_multiplier = 0
    local freighter_models =
    {
        "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",
        "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN",
        "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC.SCENE.MBIN"
    }
    local rand = math.random(1, #freighter_models)

    if ship_type == "Freighter" then
        ship_model = freighter_models[rand]
        base_price = 25000000 * PriceMultiplier
        custom_language_string = "CL_BFREIGH"
    elseif ship_type == "Dropship" then
        ship_model = "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"
        base_price = 2500000 * PriceMultiplier
        custom_language_string = "CL_BHAUL"
    elseif ship_type == "Shuttle" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"
        base_price = 1000000 * PriceMultiplier
        custom_language_string = "CL_BSHUT"
    elseif ship_type == "Fighter" then
        ship_model = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"
        base_price = 2500000 * PriceMultiplier
        custom_language_string = "CL_BFIGHT"
    elseif ship_type == "Royal" then
        ship_model = "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"
        base_price = 5000000 * PriceMultiplier
        custom_language_string = "CL_BROYAL"
    elseif ship_type == "Scientific" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"
        base_price = 1000000 * PriceMultiplier
        custom_language_string = "CL_BEXPLO"
    elseif ship_type == "Sail" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN"
        base_price = 2000000 * PriceMultiplier
        custom_language_string = "CL_BSOLAR"
    elseif ship_type == "Alien" then
        ship_model = "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN"
        base_price = 2500000 * PriceMultiplier
        custom_language_string = "CL_BALIEN"
    elseif ship_type == "Robot" then
        ship_model = "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN"
        base_price = 2500000 * PriceMultiplier
        custom_language_string = "CL_BROBOT"
    else
        ship_type = "Shuttle"
        ship_model = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"
        base_price = 1000000 * PriceMultiplier
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
local Add_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Add_To_Consumable_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Add_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local Add_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local Generic_Table_Entry = {}

for _, ship_type in pairs(Ship_Types) do
    local classes = {}
    if ship_type == "Royal" or ship_type == "Alien" then
        classes = ClassesS
    else
        classes = Classes
    end

    for i =1 , #classes do
        local reward_entries = {}
        local ship_model = ""
        local ship_class_string = ""
        local price = 0
        local custom_language_string = ""
        local ship_seed = 0
        local ship_slots = 0

        ship_type, ship_model, ship_class_string, price, custom_language_string = Get_Ship_Data(ship_type, classes[i])

        local product_id = string.upper(ship_type).."_"..string.upper(ship_class_string)

        local name_id = custom_language_string.."_NAME"
        local name_LC_id = custom_language_string.."_NAME_L"
        local desc_id = custom_language_string.."_DESC"
        local product_icon = "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.SHIPCLASS"..string.upper(ship_class_string)..".DDS";

        Add_To_Product_Table[#Add_To_Product_Table + 1]  =
        {
            ["PRECEDING_KEY_WORDS"] = {"Table"},
            ["ADD"] = Create_New_Product(product_id, name_id, name_LC_id, desc_id, desc_id, 1, math.floor(price), product_icon)
        }
        Add_To_Consumable_Table[#Add_To_Consumable_Table + 1] =
        {
            ["PRECEDING_KEY_WORDS"] = {"Table"},
            ["ADD"] = Create_New_Consumable(product_id, "R_"..product_id)
        }
        local shop_entry = Create_Shop_Entry(product_id)
        Add_To_Default_Reality[#Add_To_Default_Reality + 1]  =
        {
            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
            ["ADD"] = shop_entry
        }

        local count = 1
        repeat
            ship_slots = math.random(1, 100)
            ship_seed =  math.random(0xFFFFFFFF)
            table.insert(reward_entries, Create_Ship_Reward_Entry(ship_model, ship_seed, ship_slots, table.concat(Get_Ship_Technologies(ship_type)), ship_class_string, Create_Ship_Base_Stats(ship_type), ship_type))
            count = count +1
        until count > Total_Seeds_Per_Class -- (count >= Total_Seeds_Per_Class) fuck you selene
        table.insert(Generic_Table_Entry,CreateRewardEntry("R_"..product_id, "Select", table.concat(reward_entries)))
    end
end

table.insert(Add_To_Reward_Table,
{
    ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
    ["ADD"] = table.concat(Generic_Table_Entry)
})
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

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for _Key , Language in pairs(Languages) do
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] = "LANGUAGE/NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"] = FillCustomlangFile()
    }
end