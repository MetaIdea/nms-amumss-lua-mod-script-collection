----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MusicPlayerMadness"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod adds music player items which can be used to play selected music tracks during gameplay"



----------------------------------------------------------------------------------------------------
-- text elements for items
----------------------------------------------------------------------------------------------------

TEXT_PACKET_N = "SUSPICIOUS PACKET (DATA)"
TEXT_PACKET_L = "Suspicious Packet (Data)"
TEXT_PACKET_S = "Unlicensed Data Depository"
TEXT_PACKET_D = "A suspicious looking parcel, acquired via an unusual transaction. The seller indicated it contained some sort of data.&#xA;&#xA;Select in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and use &lt;IMG&gt;FE_ALT1&lt;&gt; to examine the contents."

TEXT_ITEM_N = "MUSIC PLAYER: "
TEXT_ITEM_L = "Music Player: "
TEXT_ITEM_S = "Music Playback Device"

TEXT_ITEM_T = "A portable music playback device, storing an audio fragment:&#xA;&#xA;"
TEXT_ITEM_E = "A portable music playback device, storing a collection of sound effects:&#xA;&#xA;"
TEXT_ITEM_B = "PLAY"
TEXT_ITEM_C = "Start playback of the audio file"



----------------------------------------------------------------------------------------------------
-- side A - music up to 4.40 Echoes
----------------------------------------------------------------------------------------------------

TEXT_T01_N = TEXT_ITEM_N .. "SUPERMOON"
TEXT_T01_L = TEXT_ITEM_L .. "Supermoon"
TEXT_T01_D = TEXT_ITEM_T .. "Track 01 - &lt;VAL_ON&gt;Supermoon&lt;&gt; - 65daysofstatic"

TEXT_T02_N = TEXT_ITEM_N .. "ASIMOV (INTRO)"
TEXT_T02_L = TEXT_ITEM_L .. "Asimov (Intro)"
TEXT_T02_D = TEXT_ITEM_T .. "Track 02 - &lt;VAL_ON&gt;Asimov (Intro)&lt;&gt; - 65daysofstatic"

TEXT_T03_N = TEXT_ITEM_N .. "ASIMOV (OUTRO)"
TEXT_T03_L = TEXT_ITEM_L .. "Asimov (Outro)"
TEXT_T03_D = TEXT_ITEM_T .. "Track 03 - &lt;VAL_ON&gt;Asimov (Outro)&lt;&gt; - 65daysofstatic"

TEXT_T04_N = TEXT_ITEM_N .. "BLUEPRINT FOR A SLOW MACHINE"
TEXT_T04_L = TEXT_ITEM_L .. "Blueprint For A Slow Machine"
TEXT_T04_D = TEXT_ITEM_T .. "Track 04 - &lt;VAL_ON&gt;Blueprint For A Slow Machine&lt;&gt; - 65daysofstatic"

TEXT_T05_N = TEXT_ITEM_N .. "ESCAPE VELOCITY"
TEXT_T05_L = TEXT_ITEM_L .. "Escape Velocity"
TEXT_T05_D = TEXT_ITEM_T .. "Track 05 - &lt;VAL_ON&gt;Escape Velocity&lt;&gt; - 65daysofstatic"

TEXT_T06_N = TEXT_ITEM_N .. "EXPEDITIONS"
TEXT_T06_L = TEXT_ITEM_L .. "Expeditions"
TEXT_T06_D = TEXT_ITEM_T .. "Track 06 - &lt;VAL_ON&gt;Expeditions&lt;&gt; - Paul Weir"



----------------------------------------------------------------------------------------------------
-- side AB - music added with 4.40 Echoes + sound effects
----------------------------------------------------------------------------------------------------

TEXT_T07_N = TEXT_ITEM_N .. "AUTOPHAGE NOISE"
TEXT_T07_L = TEXT_ITEM_L .. "Autophage Noise"
TEXT_T07_D = TEXT_ITEM_T .. "Track 07 - &lt;VAL_ON&gt;Autophage Noise&lt;&gt;"

TEXT_T11_N = TEXT_ITEM_N .. "NEXUS MISSION"
TEXT_T11_L = TEXT_ITEM_L .. "Nexus Mission"
TEXT_T11_D = TEXT_ITEM_E .. "Effect 01 - &lt;VAL_ON&gt;Nexus Mission&lt;&gt; - 65daysofstatic"

TEXT_T12_N = TEXT_ITEM_N .. "JOURNEY MILESTONES"
TEXT_T12_L = TEXT_ITEM_L .. "Journey Milestones"
TEXT_T12_D = TEXT_ITEM_E .. "Effect 02 - &lt;VAL_ON&gt;Journey Milestones&lt;&gt; - various artists"

TEXT_T13_N = TEXT_ITEM_N .. "EXPEDITION MILESTONES (SET 1)"
TEXT_T13_L = TEXT_ITEM_L .. "Expedition Milestones (Set 1)"
TEXT_T13_D = TEXT_ITEM_E .. "Effect 03 - &lt;VAL_ON&gt;Expedition Milestones (Set 1)&lt;&gt; - various artists"

TEXT_T14_N = TEXT_ITEM_N .. "EXPEDITION MILESTONES (SET 2)"
TEXT_T14_L = TEXT_ITEM_L .. "Expedition Milestones (Set 2)"
TEXT_T14_D = TEXT_ITEM_E .. "Effect 04 - &lt;VAL_ON&gt;Expedition Milestones (Set 2)&lt;&gt; - various artists"

TEXT_T15_N = TEXT_ITEM_N .. "AUTOPHAGE ALERT"
TEXT_T15_L = TEXT_ITEM_L .. "Autophage Alert"
TEXT_T15_D = TEXT_ITEM_E .. "Effect 05 - &lt;VAL_ON&gt;Autophage Alert&lt;&gt;"



----------------------------------------------------------------------------------------------------
-- property builders
----------------------------------------------------------------------------------------------------

function BuildText(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
        <Property name="English" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
    </Property>
</Property>
]]
end

function BuildItem(name) return
[[
<Property value="GcProductData.xml">
    <Property name="ID" value="ITEM_]]..name..[[" />
    <Property name="Name" value="TEXT_]]..name..[[_N" />
    <Property name="NameLower" value="TEXT_]]..name..[[_L" />
    <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="TEXT_ITEM_S" />
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
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.BYTEBEATCASSETTE.DDS" />
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
        <Property name="Legality" value="Legal" />
    </Property>
    <Property name="Consumable" value="True" />
    <Property name="ChargeValue" value="0" />
    <Property name="StackMultiplier" value="4" />
    <Property name="DefaultCraftAmount" value="1" />
    <Property name="CraftAmountStepSize" value="1" />
    <Property name="CraftAmountMultiplier" value="1" />
    <Property name="Requirements" />
    <Property name="AltRequirements" />
    <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
    </Property>
    <Property name="RecipeCost" value="1" />
    <Property name="SpecificChargeOnly" value="False" />
    <Property name="NormalisedValueOnWorld" value="9.871795E-07" />
    <Property name="NormalisedValueOffWorld" value="9.871795E-07" />
    <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
    </Property>
    <Property name="WikiCategory" value="NotEnabled" />
    <Property name="IsCraftable" value="False" />
    <Property name="DeploysInto" value="" />
    <Property name="EconomyInfluenceMultiplier" value="0.25" />
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

function BuildConsumable(name,audio) return
[[
<Property value="GcConsumableItem.xml">
    <Property name="ID" value="ITEM_]]..name..[[" />
    <Property name="RewardID" value="" />
    <Property name="TutorialRewardID" value="" />
    <Property name="ButtonLocID" value="TEXT_ITEM_B" />
    <Property name="ButtonSubLocID" value="TEXT_ITEM_C" />
    <Property name="CloseInventoryWhenUsed" value="True" />
    <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="]]..audio..[[" />
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



----------------------------------------------------------------------------------------------------
-- suspicious packet
----------------------------------------------------------------------------------------------------

PROPERTY_ITEM_PACKET = 
[[
<Property value="GcProductData.xml">
    <Property name="ID" value="ITEM_PACKET" />
    <Property name="Name" value="TEXT_PACKET_N" />
    <Property name="NameLower" value="TEXT_PACKET_L" />
    <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_PACKET_S" />
    </Property>
    <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="TEXT_PACKET_D" />
    </Property>
    <Property name="Hint" value="" />
    <Property name="GroupID" value="" />
    <Property name="DebrisFile" value="TkModelResource.xml">
    <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
    <Property name="ResHandle" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
    </Property>
    </Property>
    <Property name="BaseValue" value="150" />
    <Property name="Level" value="0" />
    <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.SCRAP.GOODS.DDS" />
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
    <Property name="Legality" value="Legal" />
    </Property>
    <Property name="Consumable" value="True" />
    <Property name="ChargeValue" value="0" />
    <Property name="StackMultiplier" value="5" />
    <Property name="DefaultCraftAmount" value="1" />
    <Property name="CraftAmountStepSize" value="1" />
    <Property name="CraftAmountMultiplier" value="1" />
    <Property name="Requirements" />
    <Property name="AltRequirements" />
    <Property name="Cost" value="GcItemPriceModifiers.xml">
    <Property name="SpaceStationMarkup" value="300" />
    <Property name="LowPriceMod" value="0" />
    <Property name="HighPriceMod" value="0.05" />
    <Property name="BuyBaseMarkup" value="0.2" />
    <Property name="BuyMarkupMod" value="0" />
    </Property>
    <Property name="RecipeCost" value="1" />
    <Property name="SpecificChargeOnly" value="False" />
    <Property name="NormalisedValueOnWorld" value="0.008278528" />
    <Property name="NormalisedValueOffWorld" value="0.008278528" />
    <Property name="TradeCategory" value="GcTradeCategory.xml">
    <Property name="TradeCategory" value="None" />
    </Property>
    <Property name="WikiCategory" value="NotEnabled" />
    <Property name="IsCraftable" value="False" />
    <Property name="DeploysInto" value="" />
    <Property name="EconomyInfluenceMultiplier" value="0.25" />
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

PROPERTY_CONS_PACKET =
[[
<Property value="GcConsumableItem.xml">
    <Property name="ID" value="ITEM_PACKET" />
    <Property name="RewardID" value="R_PACKET" />
    <Property name="TutorialRewardID" value="" />
    <Property name="ButtonLocID" value="UI_DISMANTLE_SUSPECT" />
    <Property name="ButtonSubLocID" value="UI_DISMANTLE_SUSPECT_SUB" />
    <Property name="CloseInventoryWhenUsed" value="False" />
    <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="UI_PICKUP_NITROGENPLANT" />
    </Property>
    <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
    <Property name="DestroyItemWhenConsumed" value="True" />
    <Property name="AddCommunityTierClassIcon" value="False" />
    <Property name="SuppressResourceMessage" value="False" />
    <Property name="CustomOSD" value="" />
    <Property name="RequiresMissionActive" value="" />
</Property>
]]

PROPERTY_RWRD_PACKET =
[[
<Property value="GcGenericRewardTableEntry.xml">
    <Property name="Id" value="R_PACKET" />
    <Property name="List" value="GcRewardTableItemList.xml">
      <Property name="RewardChoice" value="SelectAlways" />
      <Property name="OverrideZeroSeed" value="True" />
      <Property name="UseInventoryChoiceOverride" value="False" />
      <Property name="IncrementStat" value="" />
      <Property name="List">

        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="LabelID" value="" />
          <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
              <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T01" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
          </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="LabelID" value="" />
          <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
              <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T02" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
          </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T03" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T04" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T05" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>
        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T06" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T07" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">        
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T11" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">        
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T12" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">        
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T13" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">        
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T14" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
            </Property>
        </Property>

        <Property value="GcRewardTableItem.xml">        
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
            <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="ITEM_T15" />
            <Property name="AmountMin" value="1" />
            <Property name="AmountMax" value="1" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
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

PROPERTY_SHOP_PACKET =
[[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="ITEM_PACKET" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- lists of properties to be added
----------------------------------------------------------------------------------------------------

LIST_ITEMS = 
{
    PROPERTY_ITEM_PACKET,

    BuildItem("T01"),BuildItem("T02"),
    BuildItem("T03"),BuildItem("T04"),
    BuildItem("T05"),BuildItem("T06"),
    BuildItem("T07"),

    BuildItem("T11"),BuildItem("T12"),
    BuildItem("T13"),BuildItem("T14"),
    BuildItem("T15"),
}

LIST_CONSUMABLES =
{
    PROPERTY_CONS_PACKET,

    BuildConsumable("T01","MUS_ENDING"),
    BuildConsumable("T02","MUS_FIRSTTIMEWARP"),
    BuildConsumable("T03","MUS_FIRSTTIMESPACESTATION"),
    BuildConsumable("T04","MUS_SPACEVIRGIN"),
    BuildConsumable("T05","MUS_ATLASSTATION"),
    BuildConsumable("T06","MUS_EXPEDITION_START"),
    BuildConsumable("T07","MUS_CORRUPTED_STING_LONG"),

    BuildConsumable("T11","MUS_STATUS_UPDATE"),
    BuildConsumable("T12","MUS_LEVEL_UP"),
    BuildConsumable("T13","MUS_MILESTONE_COMPLETE"),
    BuildConsumable("T14","MUS_MILESTONE_REWARDS"),
    BuildConsumable("T15","MUS_CORRUPTED_MUSICCUE"),
}



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_LANGUAGE =             "LANGUAGE\\NMS_LOC5_ENGLISH.MBIN"
FILE_PRODUCTTABLE =         "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"
FILE_CONSUMABLES =          "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"
FILE_REWARDTABLE =          "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
FILE_DEFAULTREALITY =       "METADATA\\REALITY\\DEFAULTREALITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_LANGUAGE,
                    ["EXML_CHANGE_TABLE"] = {},
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Table",
                            ["ADD"] = LIST_ITEMS,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_CONSUMABLES,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Table",
                            ["ADD"] = LIST_CONSUMABLES,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "GenericTable",
                            ["ADD"] = PROPERTY_RWRD_PACKET,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"SmugglerStation","GcTradeData.xml",},
                            ["PKW"] = "OptionalProducts",
                            ["ADD"] = PROPERTY_SHOP_PACKET,
                        },
                    },
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- adding new text elements to localization file
----------------------------------------------------------------------------------------------------

local LANG_EXML = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

function ModifyEXML(exml)
  local change =
  {
    ["PKW"] = "Table",
    ["ADD"] =
    {
        BuildText("TEXT_PACKET_N",TEXT_PACKET_N),
        BuildText("TEXT_PACKET_L",TEXT_PACKET_L),
        BuildText("TEXT_PACKET_S",TEXT_PACKET_S),
        BuildText("TEXT_PACKET_D",TEXT_PACKET_D),
        BuildText("TEXT_ITEM_S",TEXT_ITEM_S),
        BuildText("TEXT_ITEM_B",TEXT_ITEM_B),
        BuildText("TEXT_ITEM_C",TEXT_ITEM_C),

        BuildText("TEXT_T01_N",TEXT_T01_N),
        BuildText("TEXT_T01_L",TEXT_T01_L),
        BuildText("TEXT_T01_D",TEXT_T01_D),
        BuildText("TEXT_T02_N",TEXT_T02_N),
        BuildText("TEXT_T02_L",TEXT_T02_L),
        BuildText("TEXT_T02_D",TEXT_T02_D),
        BuildText("TEXT_T03_N",TEXT_T03_N),
        BuildText("TEXT_T03_L",TEXT_T03_L),
        BuildText("TEXT_T03_D",TEXT_T03_D),
        BuildText("TEXT_T04_N",TEXT_T04_N),
        BuildText("TEXT_T04_L",TEXT_T04_L),
        BuildText("TEXT_T04_D",TEXT_T04_D),
        BuildText("TEXT_T05_N",TEXT_T05_N),
        BuildText("TEXT_T05_L",TEXT_T05_L),
        BuildText("TEXT_T05_D",TEXT_T05_D),
        BuildText("TEXT_T06_N",TEXT_T06_N),
        BuildText("TEXT_T06_L",TEXT_T06_L),
        BuildText("TEXT_T06_D",TEXT_T06_D),
        BuildText("TEXT_T07_N",TEXT_T07_N),
        BuildText("TEXT_T07_L",TEXT_T07_L),
        BuildText("TEXT_T07_D",TEXT_T07_D),

        BuildText("TEXT_T11_N",TEXT_T11_N),
        BuildText("TEXT_T11_L",TEXT_T11_L),
        BuildText("TEXT_T11_D",TEXT_T11_D),
        BuildText("TEXT_T12_N",TEXT_T12_N),
        BuildText("TEXT_T12_L",TEXT_T12_L),
        BuildText("TEXT_T12_D",TEXT_T12_D),
        BuildText("TEXT_T13_N",TEXT_T13_N),
        BuildText("TEXT_T13_L",TEXT_T13_L),
        BuildText("TEXT_T13_D",TEXT_T13_D),
        BuildText("TEXT_T14_N",TEXT_T14_N),
        BuildText("TEXT_T14_L",TEXT_T14_L),
        BuildText("TEXT_T14_D",TEXT_T14_D),
        BuildText("TEXT_T15_N",TEXT_T15_N),
        BuildText("TEXT_T15_L",TEXT_T15_L),
        BuildText("TEXT_T15_D",TEXT_T15_D),
    },
  }

  exml[#exml+1] = change
end

ModifyEXML(LANG_EXML)