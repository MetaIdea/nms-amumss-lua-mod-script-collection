----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "ITEMS+FUNC"
METADATA_NMS_VERSION    = "452_SEC"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for gameplay items and other functionality. Modifies files in METADATA\\REALITY."



----------------------------------------------------------------------------------------------------
-- functions
----------------------------------------------------------------------------------------------------

function BuildItemProperty(name,color,legality,stack,crafting,craftable) return
[[
<Property value="GcProductData.xml">
  <Property name="ID" value="ITEM_]]..name..[[" />
  <Property name="Name" value="TEXT_ITEM_]]..name..[[_N" />
  <Property name="NameLower" value="TEXT_ITEM_]]..name..[[_L" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_ITEM_]]..name..[[_S" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_ITEM_]]..name..[[_D" />
  </Property>
  <Property name="Hint" value="" />
  <Property name="GroupID" value="" />
  <Property name="DebrisFile" value="TkModelResource.xml">
    <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="BaseValue" value="1600" />
  <Property name="Level" value="0" />
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/ITEMS/]]..name..[[.DDS" />
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
  ]]..color..[[
  <Property name="Category" value="GcRealitySubstanceCategory.xml">
    <Property name="SubstanceCategory" value="Special" />
  </Property>
  <Property name="Type" value="GcProductCategory.xml">
    <Property name="ProductCategory" value="Curiosity" />
  </Property>
  <Property name="Rarity" value="GcRarity.xml">
    <Property name="Rarity" value="Rare" />
  </Property>
  <Property name="Legality" value="GcLegality.xml">
    <Property name="Legality" value="]]..legality..[[" />
  </Property>
  <Property name="Consumable" value="True" />
  <Property name="ChargeValue" value="200" />
  <Property name="StackMultiplier" value="]]..stack..[[" />
  <Property name="DefaultCraftAmount" value="1" />
  <Property name="CraftAmountStepSize" value="1" />
  <Property name="CraftAmountMultiplier" value="1" />
  ]]..crafting..[[
  <Property name="AltRequirements" />
  <Property name="Cost" value="GcItemPriceModifiers.xml">
    <Property name="SpaceStationMarkup" value="0" />
    <Property name="LowPriceMod" value="-0.1" />
    <Property name="HighPriceMod" value="0.1" />
    <Property name="BuyBaseMarkup" value="0.2" />
    <Property name="BuyMarkupMod" value="0" />
  </Property>
  <Property name="RecipeCost" value="0" />
  <Property name="SpecificChargeOnly" value="False" />
  <Property name="NormalisedValueOnWorld" value="6.403847E-05" />
  <Property name="NormalisedValueOffWorld" value="9.608975E-05" />
  <Property name="TradeCategory" value="GcTradeCategory.xml">
    <Property name="TradeCategory" value="None" />
  </Property>
  <Property name="WikiCategory" value="Tech" />
  <Property name="IsCraftable" value="]]..craftable..[[" />
  <Property name="DeploysInto" value="" />
  <Property name="EconomyInfluenceMultiplier" value="0" />
  <Property name="PinObjective" value="" />
  <Property name="PinObjectiveTip" value="" />
  <Property name="PinObjectiveMessage" value="" />
  <Property name="PinObjectiveScannableType" value="GcScannerIconTypes.xml">
    <Property name="ScanIconType" value="None" />
  </Property>
  <Property name="PinObjectiveEasyToRefine" value="False" />
  <Property name="CookingIngredient" value="False" />
  <Property name="CookingValue" value="0" />
  <Property name="GoodForSelling" value="False" />
  <Property name="GiveRewardOnSpecialPurchase" value="" />
  <Property name="EggModifierIngredient" value="False" />
  <Property name="IsTechbox" value="False" />
  <Property name="CanSendToOtherPlayers" value="False" />
</Property>
]]
end

function BuildColorProperty(name,r,g,b) return
[[
<Property name="]]..name..[[" value="Colour.xml">
  <Property name="R" value="]]..r..[[" />
  <Property name="G" value="]]..g..[[" />
  <Property name="B" value="]]..b..[[" />
  <Property name="A" value="1" />
</Property>
]]
end

function BuildCraftingSection(item,type,amount) return
[[
<Property value="GcTechnologyRequirement.xml">
  <Property name="ID" value="]]..item..[[" />
  <Property name="Type" value="GcInventoryType.xml">
    <Property name="InventoryType" value="]]..type..[[" />
  </Property>
  <Property name="Amount" value="]]..amount..[[" />
</Property>
]]
end

function BuildCraftingProperty(...)

  local arg = {...}

  if #arg == 3 then return
  [[<Property name="Requirements">]]..
  BuildCraftingSection(arg[1],arg[2],arg[3])..
  [[</Property>]]
  end

  if #arg == 6 then return
  [[<Property name="Requirements">]]..
  BuildCraftingSection(arg[1],arg[2],arg[3])..
  BuildCraftingSection(arg[4],arg[5],arg[6])..
  [[</Property>]]
  end

  if #arg == 9 then return
  [[<Property name="Requirements">]]..
  BuildCraftingSection(arg[1],arg[2],arg[3])..
  BuildCraftingSection(arg[4],arg[5],arg[6])..
  BuildCraftingSection(arg[7],arg[8],arg[9])..
  [[</Property>]]
  end
  
end



----------------------------------------------------------------------------------------------------
-- items
----------------------------------------------------------------------------------------------------

CRAFTING_NONE = [[<Property name="Requirements" />]]

COLOR_DARK =    BuildColorProperty("Colour",0.101960786,0.15294118,0.2)
COLOR_WHITE =   BuildColorProperty("Colour",0.8,0.8,0.8)

--------------------------------------------------
-- main quest items
--------------------------------------------------

CRAFTING_PLATING = BuildCraftingProperty(
  "STELLAR2","Substance",20,
  "CAVE1","Substance",20)

PROPERTY_ITEM_TOKEN = BuildItemProperty(
  "TOKEN",COLOR_DARK,"Legal",
  2,CRAFTING_NONE,"False")

PROPERTY_ITEM_FRAGMENT = BuildItemProperty(
  "FRAGMENT",COLOR_DARK,"Legal",
  0,CRAFTING_NONE,"False")

PROPERTY_ITEM_CIRCUIT = BuildItemProperty(
  "CIRCUIT",COLOR_DARK,"Legal",
  0,CRAFTING_NONE,"False")

PROPERTY_ITEM_PLATING = BuildItemProperty(
  "PLATING",COLOR_DARK,"Legal",
  2,CRAFTING_PLATING,"True")



----------------------------------------------------------------------------------------------------
-- items - temporal memories
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- blueprint A
--------------------------------------------------

CRAFTING_DICTIONARY = BuildCraftingProperty(
  "FARMPROD8","Product",1,
  "CAVECUBE","Product",2)

PROPERTY_ITEM_DICTIONARY = BuildItemProperty(
  "DICTIONARY",COLOR_DARK,"Legal",
  1,CRAFTING_DICTIONARY,"True")

PROPTERY_ITEM_BOXA = BuildItemProperty(
  "BOXA",COLOR_WHITE,"Legal",
  0,CRAFTING_NONE,"False")

--------------------------------------------------
-- blueprint B
--------------------------------------------------

CRAFTING_CRYSTAL = BuildCraftingProperty(
  "GEODE_SPACE","Product",1,
  "SUNGOLD","Substance",50)

PROPERTY_ITEM_CRYSTAL = BuildItemProperty(
  "CRYSTAL",COLOR_DARK,"Legal",
  1,CRAFTING_CRYSTAL,"True")

PROPERTY_ITEM_BOXB = BuildItemProperty(
  "BOXB",COLOR_WHITE,"Legal",
  0,CRAFTING_NONE,"False")

--------------------------------------------------
-- blueprint C
--------------------------------------------------

CRAFTING_BYPASS = BuildCraftingProperty(
  "STATION_KEY","Product",1,
  "ILLEGAL_PROD6","Product",1)

PROPERTY_ITEM_BYPASS = BuildItemProperty(
  "BYPASS",COLOR_DARK,"Illegal",
  0,CRAFTING_BYPASS,"True")

PROPERTY_ITEM_BOXC = BuildItemProperty(
  "BOXC",COLOR_WHITE,"Legal",
  0,CRAFTING_NONE,"False")



----------------------------------------------------------------------------------------------------
-- other objects
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- cost: system authority assistance
--------------------------------------------------

PROPERTY_COST_POLICE = 
[[
<Property name="Cost" value="GcCostGroup.xml">
  <Property name="Text" value="TEXT_COST_POLICE" />
  <Property name="TakeTextFromIndex" value="-1" />
  <Property name="HideOptionIfCantAffordIndex" value="-1" />
  <Property name="Test" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyTrue" />
  </Property>
  <Property name="Costs">
    <Property value="GcCostProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="POLICE_TOKEN" />
      <Property name="Amount" value="1" />
      <Property name="UseDefaultAmount" value="False" />
    </Property>
    <Property value="GcCostInstalledTech.xml">
      <Property name="Id" value="TECH_POLICE" />
      <Property name="InventoryToCheck" value="Ship" />
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- cost: ship class upgrade
--------------------------------------------------

PROPERTY_COST_UPGRADE =
[[
<Property name="Cost" value="GcCostGroup.xml">
  <Property name="Text" value="TEXT_COST_UPGRADE" />
  <Property name="TakeTextFromIndex" value="-1" />
  <Property name="HideOptionIfCantAffordIndex" value="-1" />
  <Property name="Test" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyTrue" />
  </Property>
  <Property name="Costs">
    <Property value="GcCostMoneyList.xml">
      <Property name="Costs">
        <Property value="10000" />
        <Property value="25000" />
        <Property value="50000" />
      </Property>
      <Property name="CostCurrency" value="GcCurrency.xml">
        <Property name="Currency" value="Nanites" />
      </Property>
      <Property name="AssertIfOutOfBounds" value="False" />
      <Property name="OutOfBoundsBehaviour" value="UseLast" />
      <Property name="IndexProvider" value="ShipClass" />
    </Property>
    <Property value="GcCostProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="ITEM_BYPASS" />
      <Property name="Amount" value="1" />
      <Property name="UseDefaultAmount" value="False" />
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- cost: exchanging memories with Hesperus
--------------------------------------------------

PROPERTY_COST_MEMORY =
[[
<Property value="GcCostTableEntry.xml">
  <Property name="Id" value="C_MEMORY" />
  <Property name="DisplayCost" value="False" />
  <Property name="DontCharge" value="False" />
  <Property name="HideOptionAndDisplayCostOnly" value="False" />
  <Property name="DisplayOnlyCostIfCantAfford" value="False" />
  <Property name="HideCostStringIfCanAfford" value="False" />
  <Property name="RemoveOptionIfCantAfford" value="True" />
  <Property name="InvertCanAffordOutcome" value="False" />
  <Property name="MustAffordInCreative" value="True" />
  <Property name="CommunityContributionValue" value="0" />
  <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
  <Property name="CannotAffordOSDMsg" value="" />
  <Property name="MissionMessageWhenCharged" value="" />
  <Property name="Cost" value="GcCostGroup.xml">
    <Property name="Text" value="" />
    <Property name="TakeTextFromIndex" value="-1" />
    <Property name="HideOptionIfCantAffordIndex" value="-1" />
    <Property name="Test" value="GcMissionConditionTest.xml">
      <Property name="ConditionTest" value="AnyTrue" />
    </Property>
    <Property name="Costs">
      <Property value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ITEM_BOXA" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
      <Property value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ITEM_BOXB" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
      <Property value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ITEM_BOXC" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- reward: lexicon
--------------------------------------------------

PROPERTY_REWARD_DICTIONARY =
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_DICT" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="IncrementStat" value="" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardTeachWord.xml">
          <Property name="Race" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="UseCategory" value="False" />
          <Property name="Category" value="GcWordCategoryTableEnum.xml">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
          <Property name="AmountMin" value="10" />
          <Property name="AmountMax" value="12" />
        </Property>
      </Property>
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardOSDMessage.xml">
          <Property name="Time" value="6" />
          <Property name="Message" value="TEXT_DICTIONARY_O" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/REWARD.WORDS.DDS" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MessageColour" value="Colour.xml">
            <Property name="R" value="0.086" />
            <Property name="G" value="0.68" />
            <Property name="B" value="1" />
            <Property name="A" value="1" />
          </Property>
          <Property name="UseTimedMessage" value="False" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- reward: exchanging memories with Hesperus
--------------------------------------------------

PROPERTY_REWARD_MEMORY =
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_MEMORY" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="SelectAlways" />
    <Property name="OverrideZeroSeed" value="True" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="IncrementStat" value="" />
    <Property name="List">

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPJUMP_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="LAUNCHER_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="ION1_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPSHIELD_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPGUN1_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPLAS1_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPSHOTGUN_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPMINIGUN_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardProcTechProduct.xml">
          <Property name="Group" value="SHIPBLOB_NAME_L" />
          <Property name="WeightedChanceNormal" value="0" />
          <Property name="WeightedChanceRare" value="0" />
          <Property name="WeightedChanceEpic" value="0" />
          <Property name="WeightedChanceLegendary" value="100" />
          <Property name="ForceRelevant" value="False" />
          <Property name="ForceQualityRelevant" value="False" />
        </Property>
      </Property>

    </Property>
  </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_REALITY_DEFAULTREALITY =         "METADATA\\REALITY\\DEFAULTREALITY.MBIN"
FILE_REALITY_REWARDTABLE =            "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
FILE_REALITY_COSTTABLE =              "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"
FILE_REALITY_PUZZLETABLE =            "METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FILE_REALITY_CONSUMABLE =             "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"
FILE_REALITY_PRODUCTTABLE =           "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

--------------------------------------------------
-- lists of stuff to be added
--------------------------------------------------

LIST_ITEMS =
{
    PROPERTY_ITEM_TOKEN,
    PROPERTY_ITEM_PLATING,PROPERTY_ITEM_FRAGMENT,PROPERTY_ITEM_CIRCUIT,
    PROPTERY_ITEM_BOXA,PROPERTY_ITEM_DICTIONARY,
    PROPERTY_ITEM_BOXB,PROPERTY_ITEM_CRYSTAL,
    PROPERTY_ITEM_BOXC,PROPERTY_ITEM_BYPASS,
}

LIST_REWARDS =
{
    PROPERTY_REWARD_DICTIONARY,
    PROPERTY_REWARD_MEMORY,
}



--------------------------------------------------
-- mod container
--------------------------------------------------

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
                    --------------------------------------------------
                    -- product table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add charge value to Storm Crystals for multitool scanner
                        {   ["SKW"] = {"Name","UI_STORMCRYSTAL_NAME",},   ["VCT"] = {{"ChargeValue","1",},},    },
                        
                        -- add all the custom items
                        {   ["PKW"] = "Table",    ["ADD"] = LIST_ITEMS,   },
                    },
                },

                {
                    --------------------------------------------------
                    -- reward table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
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
                        
                        -- reward: debug emote fpr plating
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

                        -- add remaining rewards
                        {   ["PKW"] = "GenericTable",   ["ADD"] = LIST_REWARDS,   },
                    },
                },

                {
                    --------------------------------------------------
                    -- cost table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_COSTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- cost object: dictionary
                        {   ["SKW"] = {"Id","C_REP_TOKEN",},    ["SEC_SAVE_TO"] = "SEC_COST_ITEM",                                                    },
                        {   ["SEC_EDIT"] = "SEC_COST_ITEM",     ["VCT"] = {{"Id","C_DICT",},},                                                        },
                        {   ["SEC_EDIT"] = "SEC_COST_ITEM",     ["SKW"] = {"Cost","GcCostProduct.xml",},    ["VCT"] = {{"Id","ITEM_DICTIONARY",},},   },
                        {   ["PKW"] = "ItemCostsTable",         ["SEC_ADD_NAMED"] = "SEC_COST_ITEM",                                                  },

                        -- cost object: ship class upgrade - remove only nanites, add combination nanites OR bypass item
                        {   ["SKW"] = {"Id","C_CLASS_UPGRADE","Cost","GcCostMoneyList.xml",},   ["REMOVE"] = "SECTION",   },
                        {   ["SKW"] = {"Id","C_CLASS_UPGRADE",},    ["ADD"] = PROPERTY_COST_UPGRADE,                      },
                            
                        -- cost object: sentinel support - remove only token, add combination token OR antenna tech installed
                        {   ["SKW"] = {"Id","POLICE_SUMMON","Cost","GcCostProduct.xml",},   ["REMOVE"] = "SECTION",   },
                        {   ["SKW"] = {"Id","POLICE_SUMMON",},    ["ADD"] = PROPERTY_COST_POLICE,   },

                        -- cost object: exchanging memories with Hesperus
                        {   ["PKW"] = "InteractionTable",   ["ADD"] = PROPERTY_COST_MEMORY,   },
                    },
                },

                {
                    --------------------------------------------------
                    -- alien puzzle table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- Hesperus dialogue: exchanging temporal memory
                        {   ["SKW"] = {"Id","?EXOTIC5C","Name","ALL_REQUEST_LEAVE",},   ["SEC_SAVE_TO"] = "SEC_PUZZLE_MEMORY",                                                      },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_MEMORY",   ["VCT"] = {{"Name","TEXT_DIALOGUE_MEMORY",},{"Text","TEXT_REACTION_MEMORY",},{"IsAlien","True",},
                                                                  {"Cost","C_MEMORY",},{"Value","R_MEMORY",},{"ReseedInteractionOnUse","True",},{"SelectedOnBackOut","False",},},   },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_MEMORY",   ["SKW"] = {"Mood","GcAlienMood.xml",},     ["LINE_OFFSET"] = 1,    ["VCT"] = {{"Mood","Positive",},},             },
                        {   ["SKW"] = {"Id","EXOTIC5_WAIT",},     ["PKW"] = "Options",    ["SEC_ADD_NAMED"] = "SEC_PUZZLE_MEMORY",                                                  },
                          
                        -- Hesperus dialogue: open research tree
                        {   ["SKW"] = {"Id","?EXOTIC5C","Name","ALL_REQUEST_LEAVE",},   ["SEC_SAVE_TO"] = "SEC_PUZZLE_TREE",                                                }, 
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_TREE",   ["VCT"] = { {"Name","TEXT_DIALOGUE_RESEARCH",},{"Value","R_SHIPTREE",},{"SelectedOnBackOut","False",},},    },    
                        {   ["SKW"] = {"Id","EXOTIC5_WAIT",},   ["PKW"] = "Options",    ["SEC_ADD_NAMED"] = "SEC_PUZZLE_TREE",                                              },

                        -- plaque: dialogue for dictionary item
                        {   ["SKW"] = {"Name","UI_RUINS_SEEK_TREASURE",},   ["SEC_SAVE_TO"] = "SEC_PUZZLE_PLAQUE",                                                                        },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_PLAQUE",   ["VCT"] = {{"Name","ALL_REQUEST_STD_LOW",},{"Cost","C_DICT",},{"Value","R_DICT",},},                                    },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_PLAQUE",   ["SKW"] = {"Mood","GcAlienMood.xml",},    ["LINE_OFFSET"] = 1,    ["VCT"] = {{"Mood","Positive",},},                    },
                        {   ["SKW"] = {"Name","UI_RUINS_SEEK_TREASURE",},   ["REPLACE_TYPE"] = "ALL",   ["ADD_OPTION"] = "ADDafterSECTION",   ["SEC_ADD_NAMED"] = "SEC_PUZZLE_PLAQUE",    },
                    },
                },

                {
                    --------------------------------------------------
                    -- consumable items table
                    --------------------------------------------------
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

                {
                    --------------------------------------------------
                    -- default reality table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- adding new banner image
                        {   ["SKW"] = {"ID","STATION_DETAIL",},   ["SEC_SAVE_TO"] = "SEC_BANNER",                                                 },
                        {   ["SEC_EDIT"] = "SEC_BANNER",          ["VCT"] = {{"ID","BANNER_TECH",},{"Filename","TEXTURES/BANNER_TECH.DDS",},},    },
                        {   ["PKW"] = "MissionDetailIcons",       ["SEC_ADD_NAMED"] = "SEC_BANNER",                                               },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------