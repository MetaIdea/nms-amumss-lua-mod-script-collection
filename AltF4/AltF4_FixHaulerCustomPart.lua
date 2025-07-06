local AddHaulerWingProduct = [[
        <Property name="Table" value="GcProductData">
            <Property name="ID" value="DROPS_WINGCDD" />
            <Property name="Name" value="UI_DROPSHIP_WING_CDD_NAME" />
            <Property name="NameLower" value="UI_DROPSHIP_WING_CDD_NAME_L" />
            <Property name="Subtitle" value="UI_DROPSHIP_PART_SUB" />
            <Property name="Description" value="UI_DROPSHIP_WING_DESC" />
            <Property name="Hint" value="" />
            <Property name="GroupID" value="" />
            <Property name="DebrisFile" value="TkModelResource">
                <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
                <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                </Property>
                <Property name="Seed" value="0" />
            </Property>
            <Property name="BaseValue" value="310000" />
            <Property name="Level" value="0" />
            <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/SHIPPARTS.DROPSHIPWINGS.CDD.DDS" />
                <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="HeroIcon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="Colour" value="Colour">
                <Property name="R" value="0.172549024" />
                <Property name="G" value="0.486274511" />
                <Property name="B" value="0.623529434" />
                <Property name="A" value="1.000000" />
            </Property>
            <Property name="Category" value="GcRealitySubstanceCategory">
                <Property name="SubstanceCategory" value="Special" />
            </Property>
            <Property name="Type" value="GcProductCategory">
                <Property name="ProductCategory" value="CustomisationPart" />
            </Property>
            <Property name="Rarity" value="GcRarity">
                <Property name="Rarity" value="Rare" />
            </Property>
            <Property name="Legality" value="GcLegality">
                <Property name="Legality" value="Legal" />
            </Property>
            <Property name="Consumable" value="false" />
            <Property name="ChargeValue" value="0" />
            <Property name="StackMultiplier" value="1" />
            <Property name="DefaultCraftAmount" value="1" />
            <Property name="CraftAmountStepSize" value="1" />
            <Property name="CraftAmountMultiplier" value="1" />
            <Property name="Requirements" />
            <Property name="AltRequirements" />
            <Property name="Cost" value="GcItemPriceModifiers">
                <Property name="SpaceStationMarkup" value="0.000000" />
                <Property name="LowPriceMod" value="0.000000" />
                <Property name="HighPriceMod" value="0.000000" />
                <Property name="BuyBaseMarkup" value="0.000000" />
                <Property name="BuyMarkupMod" value="0.000000" />
            </Property>
            <Property name="RecipeCost" value="1" />
            <Property name="SpecificChargeOnly" value="false" />
            <Property name="NormalisedValueOnWorld" value="0.000000" />
            <Property name="NormalisedValueOffWorld" value="0.000000" />
            <Property name="TradeCategory" value="GcTradeCategory">
                <Property name="TradeCategory" value="None" />
            </Property>
            <Property name="WikiCategory" value="NotEnabled" />
            <Property name="IsCraftable" value="false" />
            <Property name="DeploysInto" value="" />
            <Property name="EconomyInfluenceMultiplier" value="0.250000" />
            <Property name="PinObjective" value="UI_FIND_BUY_OBJ" />
            <Property name="PinObjectiveTip" value="" />
            <Property name="PinObjectiveMessage" value="" />
            <Property name="PinObjectiveScannableType" value="GcScannerIconTypes">
                <Property name="ScanIconType" value="None" />
            </Property>
            <Property name="PinObjectiveEasyToRefine" value="false" />
            <Property name="NeverPinnable" value="false" />
            <Property name="CookingIngredient" value="false" />
            <Property name="CookingValue" value="0.000000" />
            <Property name="FoodBonusStat" value="GcStatsTypes">
                <Property name="StatsType" value="Unspecified" />
            </Property>
            <Property name="FoodBonusStatAmount" value="0.000000" />
            <Property name="GoodForSelling" value="false" />
            <Property name="GiveRewardOnSpecialPurchase" value="" />
            <Property name="EggModifierIngredient" value="false" />
            <Property name="IsTechbox" value="false" />
            <Property name="CanSendToOtherPlayers" value="true" />
        </Property>
]]

local AddPart = false

inputPrompts = {
    ChangeScriptSettings = {false,
[[  Would you like to change the script's setting?
    The default setting will not add this ship part to space station shop. 
    You can enable this modification through this selection.
    Press ENTER for default value.
    Default: N
]]},
    AddShipCustomPart = {AddPart,
[[  Do you want to add this ship part to space station shop?
    Default: N | Current: >> ]] .. (AddPart and "Y" or "N") .. [[ <<
]]},
}

if GUIF(inputPrompts.ChangeScriptSettings,10) then
    AddPart = GUIF(inputPrompts.AddShipCustomPart,10)
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_FixHaulerCustomPart",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.60",
    ["MOD_DESCRIPTION"] = "Fix Hauler Custom Part.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {

                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_MODULARCUSTOMISATIONPRODUCTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD"] = AddHaulerWingProduct
                        },
                    }
                },
            },
        },
    }
}

if AddPart then
    local ShipPartID = {
        "DROPS_WINGCDD"
    }

    local function CreateShopID(NewID)
        return [[
                <Property name="AlwaysPresentProducts" value="]] .. NewID .. [[" />
        ]]
    end

    local ADDShipPartID = {}
    for i=1,#ShipPartID do
        ADDShipPartID[#ADDShipPartID + 1] = CreateShopID(ShipPartID[i])
    end

    local ADDShipPartID = table.concat(ADDShipPartID,"\n")

    local addMBINChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
    addMBINChangeTable[#addMBINChangeTable + 1] = {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
                            ["ADD"] = ADDShipPartID
                        },
                    }
                }
end