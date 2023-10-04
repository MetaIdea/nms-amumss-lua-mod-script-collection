----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA1"
METADATA_MOD_DESC       = "ITEMS+FUNC"



----------------------------------------------------------------------------------------------------
-- shared elements
----------------------------------------------------------------------------------------------------

function BuildItemProperty(name,legality,stack,crafting,tokens,craftable) return
[[
<Property value="GcProductData.xml">
  <Property name="ID" value="ITEM_]]..name..[[" />
  <Property name="Name" value="TEXT_]]..name..[[_N" />
  <Property name="NameLower" value="TEXT_]]..name..[[_L" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_]]..name..[[_S" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_]]..name..[[_D" />
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
  <Property name="Colour" value="Colour.xml">
    <Property name="R" value="0.101960786" />
    <Property name="G" value="0.15294118" />
    <Property name="B" value="0.2" />
    <Property name="A" value="1" />
  </Property>
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
  <Property name="RecipeCost" value="]]..tokens..[[" />
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

CRAFTING_NONE = [[<Property name="Requirements" />]]

----------------------------------------------------------------------------------------------------
-- story items
----------------------------------------------------------------------------------------------------

CRAFTING_PLATING = 
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STELLAR2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="20" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="CAVE1" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="20" />
  </Property>
</Property>
]]

PROPERTY_ITEM_TOKEN = BuildItemProperty("TOKEN","Legal",2,CRAFTING_NONE,0,"False")
PROPERTY_ITEM_FRAGMENT = BuildItemProperty("FRAGMENT","Legal",0,CRAFTING_NONE,0,"False")
PROPERTY_ITEM_CIRCUIT = BuildItemProperty("CIRCUIT","Legal",0,CRAFTING_NONE,0,"False")
PROPERTY_ITEM_PLATING = BuildItemProperty("PLATING","Legal",2,CRAFTING_PLATING,0,"True")

----------------------------------------------------------------------------------------------------
-- blueprint A
---------------------------------------------------------------------------------------------------

CRAFTING_BOXA =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ITEM_PLATING" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="BP_SALVAGE" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="GAS1" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="100" />
  </Property>
</Property>
]]

CRAFTING_CRYSTAL =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="GEODE_SPACE" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="SUNGOLD" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="50" />
  </Property>
</Property>
]]

PROPERTY_CONS_BOXA = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="ITEM_BOXA" />
  <Property name="RewardID" value="R_BOXA" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_BOX_B" />
  <Property name="ButtonSubLocID" value="TEXT_BOX_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="True" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

PROPERTY_REWARD_BOXA = 
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_BOXA" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardOSDMessage.xml">
          <Property name="Time" value="0" />
          <Property name="Message" value="" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_31" />
          </Property>
          <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MessageColour" value="Colour.xml">
            <Property name="R" value="1" />
            <Property name="G" value="0.141" />
            <Property name="B" value="0.141" />
            <Property name="A" value="0.8" />
          </Property>
          <Property name="UseTimedMessage" value="False" />
        </Property>
      </Property>
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardSpecificProductRecipe.xml">
          <Property name="ID" value="ITEM_CRYSTAL" />
          <Property name="Silent" value="False" />
          <Property name="HideInSeasonRewards" value="False" />
          <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

PROPTERY_ITEM_BOXA = BuildItemProperty("BOXA","Legal",0,CRAFTING_BOXA,1,"True")
PROPERTY_ITEM_CRYSTAL = BuildItemProperty("CRYSTAL","Legal",1,CRAFTING_CRYSTAL,0,"True")

----------------------------------------------------------------------------------------------------
-- blueprint B
----------------------------------------------------------------------------------------------------

CRAFTING_BOXB =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ITEM_PLATING" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="BP_SALVAGE" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="GAS3" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="100" />
  </Property>
</Property>
]]

PROPERTY_CONS_BOXB = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="ITEM_BOXB" />
  <Property name="RewardID" value="R_BOXB" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_BOX_B" />
  <Property name="ButtonSubLocID" value="TEXT_BOX_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="True" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

PROPERTY_REWARD_BOXB = 
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_BOXB" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardOSDMessage.xml">
          <Property name="Time" value="0" />
          <Property name="Message" value="" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_31" />
          </Property>
          <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MessageColour" value="Colour.xml">
            <Property name="R" value="1" />
            <Property name="G" value="0.141" />
            <Property name="B" value="0.141" />
            <Property name="A" value="0.8" />
          </Property>
          <Property name="UseTimedMessage" value="False" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

PROPERTY_ITEM_BOXB = BuildItemProperty("BOXB","Legal",0,CRAFTING_BOXB,2,"True")

----------------------------------------------------------------------------------------------------
-- blueprint C
----------------------------------------------------------------------------------------------------

CRAFTING_BOXC =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ITEM_PLATING" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="BP_SALVAGE" />
      <Property name="Type" value="GcInventoryType.xml">
        <Property name="InventoryType" value="Product" />
      </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="GAS2" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Substance" />
    </Property>
    <Property name="Amount" value="100" />
  </Property>
</Property>
]]

CRAFTING_BYPASS =
[[
<Property name="Requirements">
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="STATION_KEY" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
  <Property value="GcTechnologyRequirement.xml">
    <Property name="ID" value="ILLEGAL_PROD6" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Product" />
    </Property>
    <Property name="Amount" value="1" />
  </Property>
</Property>
]]

PROPERTY_CONS_BOXC = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="ITEM_BOXC" />
  <Property name="RewardID" value="R_BOXC" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_BOX_B" />
  <Property name="ButtonSubLocID" value="TEXT_BOX_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="True" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

PROPERTY_REWARD_BOXC = 
[[
<Property value="GcGenericRewardTableEntry.xml">
  <Property name="Id" value="R_BOXC" />
  <Property name="List" value="GcRewardTableItemList.xml">
    <Property name="RewardChoice" value="GiveAll" />
    <Property name="OverrideZeroSeed" value="False" />
    <Property name="UseInventoryChoiceOverride" value="False" />
    <Property name="List">
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardOSDMessage.xml">
          <Property name="Time" value="0" />
          <Property name="Message" value="" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_31" />
          </Property>
          <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MessageColour" value="Colour.xml">
            <Property name="R" value="1" />
            <Property name="G" value="0.141" />
            <Property name="B" value="0.141" />
            <Property name="A" value="0.8" />
          </Property>
          <Property name="UseTimedMessage" value="False" />
        </Property>
      </Property>
      <Property value="GcRewardTableItem.xml">
        <Property name="PercentageChance" value="100" />
        <Property name="LabelID" value="" />
        <Property name="Reward" value="GcRewardSpecificProductRecipe.xml">
          <Property name="ID" value="ITEM_BYPASS" />
          <Property name="Silent" value="False" />
          <Property name="HideInSeasonRewards" value="False" />
          <Property name="SeasonRewardFormat" value="UI_BLUEPRINT_REWARD_FORMAT" />
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

PROPERTY_ITEM_BOXC = BuildItemProperty("BOXC","Legal",0,CRAFTING_BOXC,5,"True")
PROPERTY_ITEM_BYPASS = BuildItemProperty("BYPASS","Illegal",0,CRAFTING_BYPASS,0,"True")

----------------------------------------------------------------------------------------------------
-- scanner interaction
----------------------------------------------------------------------------------------------------

PROPERTY_CONS_SCANNER = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="TECH_SCANNER" />
  <Property name="RewardID" value="R_SCANNER" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_SCANNER_B" />
  <Property name="ButtonSubLocID" value="TEXT_SCANNER_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="ATLAS_CORE_ACTIVATE" />
  </Property>
  <Property name="RewardFailedLocID" value="TEXT_SCANNER_F" />
  <Property name="DestroyItemWhenConsumed" value="True" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

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

----------------------------------------------------------------------------------------------------
-- computer module interaction
----------------------------------------------------------------------------------------------------

PROPERTY_CONS_COMPUTER = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="TECH_COMPUTER" />
  <Property name="RewardID" value="R_COMPUTER" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_COMPUTER_B" />
  <Property name="ButtonSubLocID" value="TEXT_COMPUTER_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="False" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

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

----------------------------------------------------------------------------------------------------
-- locator module interaction
----------------------------------------------------------------------------------------------------

PROPERTY_CONS_LOCATOR = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="TECH_LOCATOR" />
  <Property name="RewardID" value="R_LOCATOR" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_LOCATOR_B" />
  <Property name="ButtonSubLocID" value="TEXT_LOCATOR_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="False" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

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

----------------------------------------------------------------------------------------------------
-- dissonant module interaction
----------------------------------------------------------------------------------------------------

PROPERTY_CONS_DISSONANT = 
[[
<Property value="GcConsumableItem.xml">
  <Property name="ID" value="TECH_DISSONANT" />
  <Property name="RewardID" value="R_DISSONANT" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="TEXT_DISSONANT_B" />
  <Property name="ButtonSubLocID" value="TEXT_DISSONANT_U" />
  <Property name="CloseInventoryWhenUsed" value="True" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="INVALID_EVENT" />
  </Property>
  <Property name="RewardFailedLocID" value="" />
  <Property name="DestroyItemWhenConsumed" value="False" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  <Property name="RequiresMissionActive" value="" />
</Property>
]]

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
-- cost options for police assisstance
----------------------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------------------
-- cost options for ship class upgrade
----------------------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------------------
-- images for fancy notifications
----------------------------------------------------------------------------------------------------

PROPERTY_BANNER_TECH = 
[[
<Property value="GcRealityIcon.xml">
  <Property name="ID" value="BANNER_TECH" />
  <Property name="Texture" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/OTHER/TECHS.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
</Property>
]]

----------------------------------------------------------------------------------------------------
-- tech tree properties
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
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_DEFAULTREALITY =       "METADATA\\REALITY\\DEFAULTREALITY.MBIN"
FILE_REWARDTABLE =          "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
FILE_COSTTABLE =            "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"
FILE_PUZZLETABLE =          "METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FILE_CONSUMABLE =           "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"
FILE_PRODUCTTABLE =         "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"



NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","UI_STORMCRYSTAL_NAME",},
                            ["VCT"] = {{"ChargeValue","1",},},
                        },

                        {
                            ["PKW"] = "Table",
                            ["ADD"] =
                            {
                                PROPERTY_ITEM_TOKEN,
                                PROPERTY_ITEM_PLATING,
                                PROPERTY_ITEM_FRAGMENT,
                                PROPERTY_ITEM_CIRCUIT,
                                PROPTERY_ITEM_BOXA,
                                PROPERTY_ITEM_BOXB,
                                PROPERTY_ITEM_BOXC,
                                PROPERTY_ITEM_CRYSTAL,
                                PROPERTY_ITEM_BYPASS,
                            },
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "GenericTable",
                            ["ADD"] =
                            {
                                PROPERTY_REWARD_NEWTREE,
                                PROPERTY_REWARD_SCANNER,
                                PROPERTY_REWARD_COMPUTER,
                                PROPERTY_REWARD_LOCATOR,
                                PROPERTY_REWARD_DISSONANT,
                                PROPERTY_REWARD_BOXA,
                                PROPERTY_REWARD_BOXB,
                                PROPERTY_REWARD_BOXC,
                            },
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_COSTTABLE,
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
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Id","EXOTIC5_WAIT",},
                            ["PKW"] = "Options",
                            ["ADD"] = PROPERTY_DIALOGUE_TREE,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_CONSUMABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Table",
                            ["ADD"] = 
                            {
                                PROPERTY_CONS_SCANNER,
                                PROPERTY_CONS_COMPUTER,
                                PROPERTY_CONS_LOCATOR,
                                PROPERTY_CONS_DISSONANT,
                                PROPERTY_CONS_BOXA,
                                PROPERTY_CONS_BOXB,
                                PROPERTY_CONS_BOXC,
                            },
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "MissionDetailIcons",
                            ["ADD"] = PROPERTY_BANNER_TECH,
                        },
                    },
                }



            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------