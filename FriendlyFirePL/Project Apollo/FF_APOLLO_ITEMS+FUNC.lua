----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "ITEMS+FUNC"
METADATA_NMS_VERSION    = "448"
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

function BuildConsumableProperty(type,name,audio,fail) return
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="]]..type..[[_]]..name..[[" />
  <Property name="RewardID" value="R_]]..name..[[" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_]]..name..[[_B" />
  <Property name="ButtonSubLocID" value="TEXT_]]..name..[[_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="]]..audio..[[" />
  </Property>
  <Property name="RewardFailedLocID" value="]]..fail..[[" />
  <Property name="DestroyItemWhenConsumed" value="True" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]
end

function BuildBoxConsProperty(name) return
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="ITEM_]]..name..[[" />
  <Property name="RewardID" value="R_]]..name..[[" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_BOX_B" />
  <Property name="ButtonSubLocID" value="TEXT_BOX_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="ATLAS_CORE_ACTIVATE" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="False" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]
end

function BuildBoxRewardProperty(name) return
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_]]..name..[[" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="StartMission" />
        <Property name="Reward" value="GcRewardMissionSeeded.xml">
          <Property name="Mission" value="M_]]..name..[[" />
          <Property name="MissionNoGroundCombat" value="" />
          <Property name="MissionNoSpaceCombat" value="" />
          <Property name="InheritActiveMultiplayerMissionSeed" value="False" />
          <Property name="SelectMissionAsLocalMissionBoard" value="False" />
          <Property name="ForceUseConversationSeed" value="False" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]
end

function BuildRewardProductProperty(Name,Item,Min,Max,Special) return
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="]]..Name..[[" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardSpecificProduct.xml">
          <Property name="Default" value="GcDefaultMissionProductEnum.xml">
            <Property name="DefaultProductType" value="None" />
          </Property>
          <Property name="ID" value="]]..Item..[[" />
          <Property name="AmountMin" value="]]..Min..[[" />
          <Property name="AmountMax" value="]]..Max..[[" />
          <Property name="HideAmountInMessage" value="False" />
          <Property name="ForceSpecialMessage" value="]]..Special..[[" />
          <Property name="HideInSeasonRewards" value="False" />
          <Property name="Silent" value="False" />
          <Property name="SeasonRewardListFormat" value="" />
          <Property name="RequiresTech" value="" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]
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

PROPERTY_CONS_BOXA = BuildBoxConsProperty("BOXA")
PROPERTY_REWARD_BOXA = BuildBoxRewardProperty("BOXA")

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

PROPERTY_CONS_BOXB = BuildBoxConsProperty("BOXB")
PROPERTY_REWARD_BOXB = BuildBoxRewardProperty("BOXB")

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

PROPERTY_CONS_BOXC = BuildBoxConsProperty("BOXC")
PROPERTY_REWARD_BOXC = BuildBoxRewardProperty("BOXC")



----------------------------------------------------------------------------------------------------
-- functional modules
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- scanner interaction
--------------------------------------------------

PROPERTY_CONS_SCANNER = BuildConsumableProperty(
  "TECH","SCANNER","ATLAS_CORE_ACTIVATE","TEXT_SCANNER_F")

PROPERTY_REWARD_SCANNER = 
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_SCANNER" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="StartMission" />
        <Property name="Reward" value="GcRewardMissionSeeded.xml">
          <Property name="Mission" value="M_SCANNER" />
          <Property name="MissionNoGroundCombat" value="" />
          <Property name="MissionNoSpaceCombat" value="" />
          <Property name="InheritActiveMultiplayerMissionSeed" value="False" />
          <Property name="SelectMissionAsLocalMissionBoard" value="False" />
          <Property name="ForceUseConversationSeed" value="False" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- computer module interaction
--------------------------------------------------

PROPERTY_CONS_COMPUTER = BuildConsumableProperty(
  "TECH","COMPUTER","INVALID_EVENT","")

PROPERTY_REWARD_COMPUTER =
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_COMPUTER" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAllSilent" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="Outpost" />
        <Property name="Reward" value="GcRewardScanEvent.xml">
          <Property name="Event" value="OUTPOST" />
          <Property name="ScanEventTable" value="Planet" />
          <Property name="DoAerialScan" value="False" />
          <Property name="UseMissionSeedForEvent" value="False" />
          <Property name="StartDelay" value="6" />
          <Property name="UseStartDelayWhenNoAerialScan" value="False" />
          <Property name="ForceSilentFailure" value="False" />
          <Property name="FailureOSD" value="TEXT_COMPUTER_F" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- locator module interaction
--------------------------------------------------

PROPERTY_CONS_LOCATOR = BuildConsumableProperty(
  "TECH","LOCATOR","INVALID_EVENT","")

PROPERTY_REWARD_LOCATOR =
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_LOCATOR" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="SelectAlways" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="50" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardScanEvent.xml">
          <Property name="Event" value="LIBRARY" />
          <Property name="ScanEventTable" value="Planet" />
          <Property name="DoAerialScan" value="False" />
          <Property name="UseMissionSeedForEvent" value="False" />
          <Property name="StartDelay" value="6" />
          <Property name="UseStartDelayWhenNoAerialScan" value="False" />
          <Property name="ForceSilentFailure" value="False" />
          <Property name="FailureOSD" value="TEXT_LOCATOR_F" />
        </Property>
      </Property>
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="50" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardScanEvent.xml">
          <Property name="Event" value="SE_PORTAL" />
          <Property name="ScanEventTable" value="Tutorial" />
          <Property name="DoAerialScan" value="False" />
          <Property name="UseMissionSeedForEvent" value="False" />
          <Property name="StartDelay" value="6" />
          <Property name="UseStartDelayWhenNoAerialScan" value="False" />
          <Property name="ForceSilentFailure" value="False" />
          <Property name="FailureOSD" value="TEXT_LOCATOR_F" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- dissonant module interaction
--------------------------------------------------

PROPERTY_CONS_DISSONANT = BuildConsumableProperty(
  "TECH","DISSONANT","INVALID_EVENT","")

PROPERTY_REWARD_DISSONANT =
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_DISSONANT" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="TryFirst_ThenSelectAlways" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="0" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardScanEvent.xml">
          <Property name="Event" value="SE_DISSONANT" />
          <Property name="ScanEventTable" value="Planet" />
          <Property name="DoAerialScan" value="True" />
          <Property name="UseMissionSeedForEvent" value="False" />
          <Property name="StartDelay" value="6" />
          <Property name="UseStartDelayWhenNoAerialScan" value="False" />
          <Property name="ForceSilentFailure" value="True" />
          <Property name="FailureOSD" value="" />
        </Property>
      </Property>
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardMissionSeeded.xml">
          <Property name="Mission" value="M_DISSONANT" />
          <Property name="MissionNoGroundCombat" value="" />
          <Property name="MissionNoSpaceCombat" value="" />
          <Property name="InheritActiveMultiplayerMissionSeed" value="False" />
          <Property name="SelectMissionAsLocalMissionBoard" value="False" />
          <Property name="ForceUseConversationSeed" value="False" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- new tech tree interaction
----------------------------------------------------------------------------------------------------

PROPERTY_REWARD_NEWTREE = 
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_SHIPTREE" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardOpenUnlockTree.xml">
          <Property name="TreeToOpen" value="GcUnlockableItemTreeGroups.xml">
            <Property name="UnlockableItemTree" value="Test" />
          </Property>
          <Property name="PageIndexOverride" value="0" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

PROPERTY_DIALOGUE_TREE =
[[
<Property value="GcAlienPuzzleOption.xml">
  <Property name="Name" value="TEXT_DIALOGUE_RESEARCH" />
  <Property name="Text" value="" />
  <Property name="IsAlien" value="False" />
  <Property name="Cost" value="" />
  <Property name="Rewards">
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="R_SHIPTREE" />
    </Property>
  </Property>
  <Property name="Mood" value="GcAlienMood.xml">
    <Property name="Mood" value="Neutral" />
  </Property>
  <Property name="Prop" value="GcNPCPropType.xml">
    <Property name="NPCProp" value="DontCare" />
  </Property>
  <Property name="OverrideWithAlienWord" value="False" />
  <Property name="ReseedInteractionOnUse" value="False" />
  <Property name="KeepOpen" value="False" />
  <Property name="DisplayCost" value="True" />
  <Property name="TruncateCost" value="False" />
  <Property name="MarkInteractionComplete" value="True" />
  <Property name="NextInteraction" value="" />
  <Property name="SelectedOnBackOut" value="False" />
  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="TitleOverride" value="" />
  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="EnablingConditions" />
  <Property name="EnablingConditionId" value="" />
  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
    <Property name="wordcategorytableEnum" value="MISC" />
  </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- exchanging memories interaction
----------------------------------------------------------------------------------------------------

PROPERTY_DIALOGUE_MEMORY =
[[
<Property value="GcAlienPuzzleOption.xml">
  <Property name="Name" value="TEXT_DIALOGUE_MEMORY" />
  <Property name="Text" value="TEXT_REACTION_MEMORY" />
  <Property name="IsAlien" value="True" />
  <Property name="Cost" value="C_MEMORY" />
  <Property name="Rewards">
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="R_MEMORY" />
    </Property>
  </Property>
  <Property name="Mood" value="GcAlienMood.xml">
    <Property name="Mood" value="Positive" />
  </Property>
  <Property name="Prop" value="GcNPCPropType.xml">
    <Property name="NPCProp" value="DontCare" />
  </Property>
  <Property name="OverrideWithAlienWord" value="False" />
  <Property name="ReseedInteractionOnUse" value="True" />
  <Property name="KeepOpen" value="False" />
  <Property name="DisplayCost" value="True" />
  <Property name="TruncateCost" value="False" />
  <Property name="MarkInteractionComplete" value="True" />
  <Property name="NextInteraction" value="" />
  <Property name="SelectedOnBackOut" value="False" />
  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="TitleOverride" value="" />
  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="EnablingConditions" />
  <Property name="EnablingConditionId" value="" />
  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
    <Property name="wordcategorytableEnum" value="MISC" />
  </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- other objects / functions
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
-- cost: lexicon
--------------------------------------------------

PROPERTY_COST_DICTIONARY =
[[
<Property value="GcCostTableEntry.xml">
  <Property name="Id" value="C_DICT" />
  <Property name="DisplayCost" value="True" />
  <Property name="DontCharge" value="False" />
  <Property name="HideOptionAndDisplayCostOnly" value="False" />
  <Property name="DisplayOnlyCostIfCantAfford" value="False" />
  <Property name="HideCostStringIfCanAfford" value="False" />
  <Property name="RemoveOptionIfCantAfford" value="False" />
  <Property name="InvertCanAffordOutcome" value="False" />
  <Property name="MustAffordInCreative" value="False" />
  <Property name="CommunityContributionValue" value="0" />
  <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
  <Property name="CannotAffordOSDMsg" value="" />
  <Property name="MissionMessageWhenCharged" value="" />
  <Property name="Cost" value="GcCostProduct.xml">
    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
      <Property name="DefaultProductType" value="None" />
    </Property>
    <Property name="Id" value="ITEM_DICTIONARY" />
    <Property name="Amount" value="1" />
    <Property name="UseDefaultAmount" value="False" />
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
-- image: fancy quest notification
--------------------------------------------------

PROPERTY_BANNER_TECH = 
[[
<Property value="GcRealityIcon.xml">
  <Property name="ID" value="BANNER_TECH" />
  <Property name="Texture" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/BANNER_TECH.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
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



--------------------------------------------------
-- reward: debug emotes
--------------------------------------------------

PROPERTY_REWARD_DEBUG_PLATING = BuildRewardProductProperty(
  "RD_PLATING","ITEM_PLATING",4,4,"False")

PROPERTY_REWARD_DEBUG_FRAGMENT = BuildRewardProductProperty(
  "RD_FRAGMENT","ITEM_FRAGMENT",1,1,"False")

PROPERTY_REWARD_DEBUG_CIRCUIT = BuildRewardProductProperty(
  "RD_CIRCUIT","ITEM_CIRCUIT",1,1,"False")



--------------------------------------------------
-- dialogue option for plaques
--------------------------------------------------

PROPERTY_DIALOGUE_DICTIONARY =
[[
<Property value="GcAlienPuzzleOption.xml">
  <Property name="Name" value="ALL_REQUEST_STD_LOW" />
  <Property name="Text" value="" />
  <Property name="IsAlien" value="False" />
  <Property name="Cost" value="C_DICT" />
  <Property name="Rewards">
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="R_DICT" />
    </Property>
  </Property>
  <Property name="Mood" value="GcAlienMood.xml">
    <Property name="Mood" value="Neutral" />
  </Property>
  <Property name="Prop" value="GcNPCPropType.xml">
    <Property name="NPCProp" value="DontCare" />
  </Property>
  <Property name="OverrideWithAlienWord" value="False" />
  <Property name="ReseedInteractionOnUse" value="False" />
  <Property name="KeepOpen" value="False" />
  <Property name="DisplayCost" value="True" />
  <Property name="TruncateCost" value="False" />
  <Property name="MarkInteractionComplete" value="True" />
  <Property name="NextInteraction" value="" />
  <Property name="SelectedOnBackOut" value="False" />
  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="TitleOverride" value="" />
  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="EnablingConditions" />
  <Property name="EnablingConditionId" value="" />
  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
    <Property name="wordcategorytableEnum" value="MISC" />
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
    PROPERTY_REWARD_NEWTREE,PROPERTY_REWARD_DICTIONARY,PROPERTY_REWARD_MEMORY,
    PROPERTY_REWARD_BOXA,PROPERTY_REWARD_BOXB,PROPERTY_REWARD_BOXC,
    PROPERTY_REWARD_SCANNER,PROPERTY_REWARD_COMPUTER,PROPERTY_REWARD_LOCATOR,PROPERTY_REWARD_DISSONANT,
    PROPERTY_REWARD_DEBUG_PLATING,PROPERTY_REWARD_DEBUG_FRAGMENT,PROPERTY_REWARD_DEBUG_CIRCUIT,
}

LIST_CONSUMABLES =
{
    PROPERTY_CONS_SCANNER,
    PROPERTY_CONS_COMPUTER,PROPERTY_CONS_LOCATOR,PROPERTY_CONS_DISSONANT,
    PROPERTY_CONS_BOXA,PROPERTY_CONS_BOXB,PROPERTY_CONS_BOXC,
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
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","UI_STORMCRYSTAL_NAME",},
                            ["VCT"] = {{"ChargeValue","1",},},
                        },

                        {
                            ["PKW"] = "Table",
                            ["ADD"] = LIST_ITEMS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "GenericTable",
                            ["ADD"] = LIST_REWARDS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_COSTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Id","C_CLASS_UPGRADE","Cost","GcCostMoneyList.xml",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            ["SKW"] = {"Id","C_CLASS_UPGRADE",},
                            ["ADD"] = PROPERTY_COST_UPGRADE,
                        },

                        {
                            ["SKW"] = {"Id","POLICE_SUMMON","Cost","GcCostProduct.xml",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            ["SKW"] = {"Id","POLICE_SUMMON",},
                            ["ADD"] = PROPERTY_COST_POLICE,
                        },

                        {
                            ["PKW"] = "ItemCostsTable",
                            ["ADD"] = PROPERTY_COST_DICTIONARY,
                        },

                        {
                            ["PKW"] = "InteractionTable",
                            ["ADD"] = PROPERTY_COST_MEMORY,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Id","EXOTIC5_WAIT",},
                            ["PKW"] = "Options",
                            ["ADD"] = 
                            {
                                PROPERTY_DIALOGUE_TREE,
                                PROPERTY_DIALOGUE_MEMORY,
                            },
                        },

                        {
                            ["SKW"] = {"Name","UI_RUINS_SEEK_TREASURE",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_DIALOGUE_DICTIONARY,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_CONSUMABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Table",
                            ["ADD"] = LIST_CONSUMABLES,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "MissionDetailIcons",
                            ["ADD"] = PROPERTY_BANNER_TECH,
                        },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------