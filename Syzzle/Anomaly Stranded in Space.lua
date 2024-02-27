Author = "Syzzle"
ModName = "Anomaly Stranded in Space"
GameVersion = "4.52"
--ModVersion = "v1"
Description = "Essentialy a No Starter Ship mod, except you still have your ship, tecnically."

PELLETS  = [[
  <Property value="NMSString0x10.xml">
  <Property name="Value" value="BAIT_BASIC" />
  </Property>
]]
COMPANIONEGGREWARD  = [[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="YANSCM_EGG" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificPetEgg.xml">
              <Property name="ImmediatelyHatchable" value="True" />
              <Property name="EggData" value="GcPetData.xml">
                <Property name="Scale" value="3.45" />
                <Property name="CreatureID" value="FLOATSPIDER" />
                <Property name="Descriptors">
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_MANTIS_A" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_ARMS_1" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_BODY_2" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_NECK_BUG" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_ACC1_FINFLAPS" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_ALTH_3" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="_LEGS_2" />
                  </Property>
                  <Property value="NMSString0x20.xml">
                    <Property name="Value" value="2473535908" />
                  </Property>
                </Property>
                <Property name="CreatureSeed" value="GcSeed.xml">
                  <Property name="Seed" value="6058371320044757000" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="CreatureSecondarySeed" value="GcSeed.xml">
                  <Property name="Seed" value="2448298440362230848" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="SpeciesSeed" value="14398683541364917602" />
                <Property name="GenusSeed" value="15814795772373321052" />
                <Property name="CustomSpeciesName" value="Metroid" />
                <Property name="Predator" value="True" />
                <Property name="UA" value="14037469182589344" />
                <Property name="AllowUnmodifiedReroll" value="False" />
                <Property name="ColourBaseSeed" value="GcSeed.xml">
                  <Property name="Seed" value="-4552704647977720381" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="BoneScaleSeed" value="GcSeed.xml">
                  <Property name="Seed" value="6058371320044757000" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="HasFur" value="False" />
                <Property name="Biome" value="GcBiomeType.xml">
                  <Property name="Biome" value="Frozen" />
                </Property>
                <Property name="CreatureType" value="GcCreatureTypes.xml">
                  <Property name="CreatureType" value="Predator" />
                </Property>
                <Property name="BirthTime" value="0" />
                <Property name="LastEggTime" value="0" />
                <Property name="LastTrustIncreaseTime" value="0" />
                <Property name="LastTrustDecreaseTime" value="0" />
                <Property name="EggModified" value="False" />
                <Property name="HasBeenSummoned" value="True" />
                <Property name="CustomName" value="Unknown Lifeform" />
                <Property name="Trust" value="0.65" />
                <Property name="SenderData" value="GcDiscoveryOwner.xml">
                  <Property name="LocalID" value="" />
                  <Property name="OnlineID" value="" />
                  <Property name="Username" value="" />
                  <Property name="Platform" value="" />
                  <Property name="Timestamp" value="0" />
                </Property>
                <Property name="Traits">
                  <Property name="Helpfulness" value="0.48152" />
                  <Property name="Aggression" value="0.793563" />
                  <Property name="Independence" value="0.334773" />
                </Property>
                <Property name="Moods">
                  <Property name="Hungry" value="0.003640" />
                  <Property name="Lonely" value="0.007897" />
                </Property>
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
COMPANIONEGGPRODUCT  = [[
  <Property value="GcProductData.xml">
  <Property name="ID" value="YANSCMEGG" />
  <Property name="Name" value="CRYOGENIC POD" />
  <Property name="NameLower" value="Cryogenic Pod" />
  <Property name="Subtitle" value="VariableSizeString.xml">
    <Property name="Value" value="Decay Prevention Technology" />
  </Property>
  <Property name="Description" value="VariableSizeString.xml">
    <Property name="Value" value="An extremely cold small chamber, designed to prevent the natural decay of a lifeform.&#xA;&#xA;Status: &lt;TRADEABLE&gt;ACTIVE&lt;&gt;&#xA;Temperature: &lt;TECHNOLOGY&gt;-273.15°C (-459.67°F)&lt;&gt;&#xA;&#xA;Select in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and use &lt;IMG&gt;FE_ALT1&lt;&gt; to examine the contents." />
  </Property>
  <Property name="Hint" value="" />
  <Property name="GroupID" value="" />
  <Property name="DebrisFile" value="TkModelResource.xml">
    <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
    <Property name="ResHandle" value="GcResource.xml">
    <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="BaseValue" value="200" />
  <Property name="Level" value="0" />
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.CRYOCHAMBER.DDS" />
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
  <Property name="StackMultiplier" value="0" />
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
  <Property name="EconomyInfluenceMultiplier" value="0" />
  <Property name="PinObjective" value="UI_FIND_OBJ" />
  <Property name="PinObjectiveTip" value="" />
  <Property name="CookingIngredient" value="False" />
  <Property name="CookingValue" value="0" />
  <Property name="GoodForSelling" value="False" />
  <Property name="GiveRewardOnSpecialPurchase" value="" />
  <Property name="EggModifierIngredient" value="False" />
  <Property name="IsTechbox" value="False" />
  </Property>
]]
COMPANIONEGGCONSUMABLE  = [[
  <Property value="GcConsumableItem.xml">
  <Property name="ID" value="YANSCMEGG" />
  <Property name="RewardID" value="YANSCM_EGG" />
  <Property name="TutorialRewardID" value="" />
  <Property name="ButtonLocID" value="UI_DISMANTLE_SUSPECT" />
  <Property name="ButtonSubLocID" value="Unfreeze what is inside" />
  <Property name="CloseInventoryWhenUsed" value="False" />
  <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
    <Property name="AkEvent" value="UI_PICKUP_NITROGENPLANT" />
  </Property>
  <Property name="RewardFailedLocID" value="Cannot Open the Pod" />
  <Property name="DestroyItemWhenConsumed" value="True" />
  <Property name="AddCommunityTierClassIcon" value="False" />
  <Property name="SuppressResourceMessage" value="False" />
  <Property name="CustomOSD" value="" />
  </Property>
]]
SHIPINVENTORY  = [[
  <Property value="GcInventoryElement.xml">
  <Property name="Type" value="GcInventoryType.xml">
    <Property name="InventoryType" value="Product" />
  </Property>
  <Property name="Id" value="YANSCMEGG" />
  <Property name="Amount" value="1" />
  <Property name="MaxAmount" value="1" />
  <Property name="DamageFactor" value="0" />
  <Property name="FullyInstalled" value="True" />
  <Property name="Index" value="GcInventoryIndex.xml">
    <Property name="X" value="-1" />
    <Property name="Y" value="-1" />
  </Property>
  </Property>
  <Property value="GcInventoryElement.xml">
  <Property name="Type" value="GcInventoryType.xml">
  <Property name="InventoryType" value="Product" />
  </Property>
  <Property name="Id" value="BUILDBEACON" />
  <Property name="Amount" value="1" />
  <Property name="MaxAmount" value="1" />
  <Property name="DamageFactor" value="0" />
  <Property name="FullyInstalled" value="True" />
  <Property name="Index" value="GcInventoryIndex.xml">
  <Property name="X" value="-1" />
  <Property name="Y" value="-1" />
  </Property>
 </Property>
]]

-- STARTER SHIP TECHS
STARTERSHIPTECH  = [[
  <Property value="GcInventoryElement.xml">
  <Property name="Type" value="GcInventoryType.xml">
    <Property name="InventoryType" value="Technology" />
  </Property>
  <Property name="Id" value="PHOTONIX_CORE" />
  <Property name="Amount" value="0" />
  <Property name="MaxAmount" value="100" />
  <Property name="DamageFactor" value="1" />
  <Property name="FullyInstalled" value="True" />
  <Property name="Index" value="GcInventoryIndex.xml">
    <Property name="X" value="-1" />
    <Property name="Y" value="-1" />
  </Property>
  </Property>
    <Property value="GcInventoryElement.xml">
    <Property name="Type" value="GcInventoryType.xml">
    <Property name="InventoryType" value="Technology" />
    </Property>
    <Property name="Id" value="HYPERDRIVE_SPEC" />
    <Property name="Amount" value="0" />
    <Property name="MaxAmount" value="120" />
    <Property name="DamageFactor" value="1" />
    <Property name="FullyInstalled" value="True" />
    <Property name="Index" value="GcInventoryIndex.xml">
    <Property name="X" value="-1" />
    <Property name="Y" value="-1" />
    </Property>
  </Property>
]]

-- STARTER MULTITOOL TECHS
STARTERMULTITOOLTECH	=	[[
    <Property value="GcInventoryElement.xml">
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Technology" />
    </Property>
    <Property name="Id" value="CANNON" />
    <Property name="Amount" value="100" />
    <Property name="MaxAmount" value="100" />
    <Property name="DamageFactor" value="0" />
    <Property name="FullyInstalled" value="True" />
    <Property name="Index" value="GcInventoryIndex.xml">
      <Property name="X" value="-1" />
      <Property name="Y" value="-1" />
    </Property>
  </Property>
    <Property value="GcInventoryElement.xml">
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="Technology" />
    </Property>
    <Property name="Id" value="UT_CANNON" />
    <Property name="Amount" value="1" />
    <Property name="MaxAmount" value="1" />
    <Property name="DamageFactor" value="0" />
    <Property name="FullyInstalled" value="True" />
    <Property name="Index" value="GcInventoryIndex.xml">
      <Property name="X" value="-1" />
      <Property name="Y" value="-1" />
    </Property>
  </Property>
]]

-- LAUNCH THRUSTER IN THE TECH SHOP
LAUNCHER  = [[
  <Property value="NMSString0x10.xml">
  <Property name="Value" value="LAUNCHER" />
  </Property>
]]

-- SHIP MODEL SWAP 
METROIDMODELSWAPSCENE  = [[
    <Data template="TkSceneNodeData">
    <Property name="Name" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD" />
    <Property name="NameHash" value="4182676705" />
    <Property name="Type" value="MODEL" />
    <Property name="Transform" value="TkTransformData.xml">
      <Property name="TransX" value="0" />
      <Property name="TransY" value="0" />
      <Property name="TransZ" value="0" />
      <Property name="RotX" value="0" />
      <Property name="RotY" value="0" />
      <Property name="RotZ" value="0" />
      <Property name="ScaleX" value="1" />
      <Property name="ScaleY" value="1" />
      <Property name="ScaleZ" value="1" />
    </Property>
    <Property name="Attributes">
      <Property value="TkSceneNodeAttributeData.xml">
        <Property name="Name" value="GEOMETRY" />
        <Property name="AltID" value="" />
        <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.GEOMETRY.MBIN" />
      </Property>
      <Property value="TkSceneNodeAttributeData.xml">
        <Property name="Name" value="NUMLODS" />
        <Property name="AltID" value="" />
        <Property name="Value" value="1" />
      </Property>
    </Property>
    <Property name="Children">
      <Property value="TkSceneNodeData.xml">
        <Property name="Name" value="EngineFlare_Distant" />
        <Property name="NameHash" value="3869425187" />
        <Property name="Type" value="LOCATOR" />
        <Property name="Transform" value="TkTransformData.xml">
          <Property name="TransX" value="0" />
          <Property name="TransY" value="1.628213" />
          <Property name="TransZ" value="-3.462083" />
          <Property name="RotX" value="0" />
          <Property name="RotY" value="180" />
          <Property name="RotZ" value="0" />
          <Property name="ScaleX" value="20.890245" />
          <Property name="ScaleY" value="20.890245" />
          <Property name="ScaleZ" value="20.890245" />
        </Property>
        <Property name="Attributes" />
        <Property name="Children" />
      </Property>
      <Property value="TkSceneNodeData.xml">
        <Property name="Name" value="ProcRoot_StarShip" />
        <Property name="NameHash" value="3871606254" />
        <Property name="Type" value="LOCATOR" />
        <Property name="Transform" value="TkTransformData.xml">
          <Property name="TransX" value="0" />
          <Property name="TransY" value="0" />
          <Property name="TransZ" value="0" />
          <Property name="RotX" value="0" />
          <Property name="RotY" value="0" />
          <Property name="RotZ" value="0" />
          <Property name="ScaleX" value="1" />
          <Property name="ScaleY" value="1" />
          <Property name="ScaleZ" value="1" />
        </Property>
        <Property name="Attributes" />
        <Property name="Children">
          <Property value="TkSceneNodeData.xml">
            <Property name="Name" value="_Ship_Metroid" />
            <Property name="NameHash" value="0" />
            <Property name="Type" value="REFERENCE" />
            <Property name="Transform" value="TkTransformData.xml">
              <Property name="TransX" value="0" />
              <Property name="TransY" value="0" />
              <Property name="TransZ" value="0" />
              <Property name="RotX" value="0" />
              <Property name="RotY" value="0" />
              <Property name="RotZ" value="0" />
              <Property name="ScaleX" value="1" />
              <Property name="ScaleY" value="1" />
              <Property name="ScaleZ" value="1" />
            </Property>
            <Property name="Attributes">
              <Property value="TkSceneNodeAttributeData.xml">
                <Property name="Name" value="SCENEGRAPH" />
                <Property name="AltID" value="" />
                <Property name="Value" value="CUSTOMMODELS/METROID/METROID.SCENE.MBIN" />
              </Property>
            </Property>
            <Property name="Children">
              <Property value="TkSceneNodeData.xml">
                <Property name="Name" value="Data" />
                <Property name="NameHash" value="2810148397" />
                <Property name="Type" value="LOCATOR" />
                <Property name="Transform" value="TkTransformData.xml">
                  <Property name="TransX" value="0" />
                  <Property name="TransY" value="0" />
                  <Property name="TransZ" value="0" />
                  <Property name="RotX" value="0" />
                  <Property name="RotY" value="0" />
                  <Property name="RotZ" value="0" />
                  <Property name="ScaleX" value="1" />
                  <Property name="ScaleY" value="1" />
                  <Property name="ScaleZ" value="1" />
                </Property>
                <Property name="Attributes">
                  <Property value="TkSceneNodeAttributeData.xml">
                    <Property name="Name" value="ATTACHMENT" />
                    <Property name="AltID" value="" />
                    <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA/ENTITIES/COCKPIT_A.ENTITY.MBIN" />
                  </Property>
                </Property>
                <Property name="Children">
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="INTERACTOrigin" />
                    <Property name="NameHash" value="3066580072" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="1.8" />
                      <Property name="TransZ" value="0.7" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes" />
                    <Property name="Children" />
                  </Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="INTERACT" />
                    <Property name="NameHash" value="3698755080" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="1.8" />
                      <Property name="TransZ" value="0.7" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes" />
                    <Property name="Children" />
                  </Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="CrashEffect" />
                    <Property name="NameHash" value="1244254611" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="2.309226" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes" />
                    <Property name="Children" />
                  </Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="MaintenanceSlot1" />
                    <Property name="NameHash" value="304746222" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0.338705" />
                      <Property name="TransY" value="2.185556" />
                      <Property name="TransZ" value="-0.734243" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes" />
                    <Property name="Children" />
                  </Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="MaintenanceSlot0" />
                    <Property name="NameHash" value="1004495448" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0.338705" />
                      <Property name="TransY" value="1.328125" />
                      <Property name="TransZ" value="2.983213" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes" />
                    <Property name="Children" />
                  </Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="CUSTOM" />
                    <Property name="NameHash" value="2675539979" />
                    <Property name="Type" value="COLLISION" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="1.5" />
                      <Property name="TransZ" value="0" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes">
                      <Property value="TkSceneNodeAttributeData.xml">
                        <Property name="Name" value="TYPE" />
                        <Property name="AltID" value="" />
                        <Property name="Value" value="Box" />
                      </Property>
                      <Property value="TkSceneNodeAttributeData.xml">
                        <Property name="Name" value="WIDTH" />
                        <Property name="AltID" value="" />
                        <Property name="Value" value="1" />
                      </Property>
                      <Property value="TkSceneNodeAttributeData.xml">
                        <Property name="Name" value="HEIGHT" />
                        <Property name="AltID" value="" />
                        <Property name="Value" value="1" />
                      </Property>
                      <Property value="TkSceneNodeAttributeData.xml">
                        <Property name="Name" value="DEPTH" />
                        <Property name="AltID" value="" />
                        <Property name="Value" value="1" />
                      </Property>
                    </Property>
                    <Property name="Children" />
                  </Property>
                  <Property value="TkSceneNodeData.xml">
                    <Property name="Name" value="Cockpit" />
                    <Property name="NameHash" value="876108911" />
                    <Property name="Type" value="LOCATOR" />
                    <Property name="Transform" value="TkTransformData.xml">
                      <Property name="TransX" value="0" />
                      <Property name="TransY" value="1.8" />
                      <Property name="TransZ" value="0.7" />
                      <Property name="RotX" value="0" />
                      <Property name="RotY" value="0" />
                      <Property name="RotZ" value="0" />
                      <Property name="ScaleX" value="1" />
                      <Property name="ScaleY" value="1" />
                      <Property name="ScaleZ" value="1" />
                    </Property>
                    <Property name="Attributes" />
                    <Property name="Children">
                      <Property value="TkSceneNodeData.xml">
                        <Property name="Name" value="CockpitPos" />
                        <Property name="NameHash" value="465567180" />
                        <Property name="Type" value="LOCATOR" />
                        <Property name="Transform" value="TkTransformData.xml">
                          <Property name="TransX" value="0" />
                          <Property name="TransY" value="1.8" />
                          <Property name="TransZ" value="0.7" />
                          <Property name="RotX" value="0" />
                          <Property name="RotY" value="0" />
                          <Property name="RotZ" value="0" />
                          <Property name="ScaleX" value="1" />
                          <Property name="ScaleY" value="1" />
                          <Property name="ScaleZ" value="1" />
                        </Property>
                        <Property name="Attributes" />
                        <Property name="Children" />
                      </Property>
                      <Property value="TkSceneNodeData.xml">
                        <Property name="Name" value="Inventory" />
                        <Property name="NameHash" value="1402981485" />
                        <Property name="Type" value="LOCATOR" />
                        <Property name="Transform" value="TkTransformData.xml">
                          <Property name="TransX" value="0" />
                          <Property name="TransY" value="0" />
                          <Property name="TransZ" value="0" />
                          <Property name="RotX" value="0" />
                          <Property name="RotY" value="0" />
                          <Property name="RotZ" value="0" />
                          <Property name="ScaleX" value="1" />
                          <Property name="ScaleY" value="1" />
                          <Property name="ScaleZ" value="1" />
                        </Property>
                        <Property name="Attributes">
                          <Property value="TkSceneNodeAttributeData.xml">
                            <Property name="Name" value="ATTACHMENT" />
                            <Property name="AltID" value="" />
                            <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/ENTITIES/FIGHTERBASE.ENTITY.MBIN" />
                          </Property>
                        </Property>
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Data>
]]
METROIDMODELSWAPDESCRIPTOR  = [[
  <Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
    <Property name="TypeId" value="_SHIP_" />
    <Property name="Descriptors">
      <Property value="TkResourceDescriptorData.xml">
      <Property name="Id" value="_SHIP_METROID" />
      <Property name="Name" value="_Ship_Metroid" />
      <Property name="ReferencePaths">
        <Property value="NMSString0x80.xml">
        <Property name="Value" value="CUSTOMMODELS/METROID/METROID.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Chance" value="0" />
      <Property name="Children" />
      </Property>
    </Property>
    </Property>
  </Property>
  </Data>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          -- REMOVE LAUNCH THRUSTER AND HYPERDRIVE FROM THE STARTER SHIP AND BOTH LAUNCH THRUSTER AND HYPERDRIVE BLUEPRINT FROM THE KNOWN TECHS
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"InitialShipInventory","GcInventoryContainer.xml","Id","LAUNCHER",},
              ["REPLACE_TYPE"]  = "ALL",
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"InitialShipInventory","GcInventoryContainer.xml","Id","HYPERDRIVE",},
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"InitialKnownThings","GcKnownThingsPreset.xml","Value","LAUNCHER",},
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"InitialKnownThings","GcKnownThingsPreset.xml","Value","HYPERDRIVE",},
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"InitialKnownThings","GcKnownThingsPreset.xml",},
              ["PRECEDING_KEY_WORDS"] = {"KnownProducts","NMSString0x10.xml",},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"]  = PELLETS
            },
            -- CHANGE THE STARTER TECH FROM THE STARTER SHIP
            {
              ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory","GcInventoryContainer.xml","Id","SHIPSHIELD",},
              ["REPLACE_TYPE"]  = "ALL",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"DamageFactor", 1},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"InitialShipInventory","GcInventoryContainer.xml","Id","SHIPROCKETS",},
              ["REPLACE_TYPE"] = "ALL",
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] = STARTERSHIPTECH
            },
            -- CHANGE THE STARTER TECH FROM THE STARTER MULTITOOL
            {
              ["SPECIAL_KEY_WORDS"] = {"InitialWeaponInventory","GcInventoryContainer.xml","Id","SCAN1",},
              ["REPLACE_TYPE"] = "ALL",
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] = STARTERMULTITOOLTECH
            },
            -- TURN OFF TUTORIAL FOR EVERY DIFFICULTY BY DEFAULT
            {
              ["FOREACH_SKW_GROUP"]  = 
              {
                {"Invalid","GcDifficultySettingsData.xml",},
                {"Custom","GcDifficultySettingsData.xml",},
                {"Normal","GcDifficultySettingsData.xml",},
                {"Relaxed","GcDifficultySettingsData.xml",},
                {"Survival","GcDifficultySettingsData.xml",},
                {"Permadeath","GcDifficultySettingsData.xml",},
                {"PermadeathMinSettings","GcDifficultySettingsData.xml",},
              },
              ["REPLACE_TYPE"]    = "ALL",
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TutorialEnabled","False"},
              }
            },
          },
        },
        -- BLACK HOLE DESTINATION IS RANDOM
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/SPACE/BLACKHOLE/BLACKHOLE/ENTITIES/BLACKHOLE.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"WarpType","SpacePOI"},
              }
            },	
          }
        },
        -- REMOVE LAUNCHER FROM DEFAULT KNOWNTECH AND HYPERDRIVE FROM THE BLUEPRINT LIST WHEN USING THE SKIP TUTORIAL OPTION
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_FIRST"]  = "TRUE",
              ["PRECEDING_KEY_WORDS"]  = "KnownTech",
              ["SPECIAL_KEY_WORDS"]  = {"Value","LAUNCHER",},
              ["REMOVE"]  = "SECTION",
            },
            -- ADD CREATURE PELLETS AS KNOWN BLUEPRINT FROM THE START
            {
              ["PRECEDING_KEY_WORDS"]  = {"KnownProducts","NMSString0x10.xml"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"]  = PELLETS
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"Id","ROCKETSUB"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"]  = SHIPINVENTORY
            },
            -- CHANGE STARTER SHIP TO GOLDEN VECTOR
            {
              ["SPECIAL_KEY_WORDS"] = {"CurrentShip","GcResourceElement.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Filename","MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.MBIN"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"CurrentShip","GcResourceElement.xml","Seed","GcSeed.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Seed","8278456291068061656"} -- 2x2 Supercharge
                --{"Seed","3038360921880984581"} -- Max Stats
              }
            },
            -- CHANGE STARTER MULTITOOL TO A ROYAL
            {
              ["SPECIAL_KEY_WORDS"]		=	{"CurrentWeapon","GcExactResource.xml",},
              ["VALUE_CHANGE_TABLE"]	=
              {
                {"Filename","MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]		=	{"CurrentWeapon","GcExactResource.xml","GenerationSeed","GcSeed.xml"},
              ["VALUE_CHANGE_TABLE"]	=
              {
                {"Seed","-2830077270272486821"}
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"Id","R_SKIP_TECH","Value","HYPERDRIVE",},
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"Id","R_SKIP_INSTALL","TechId","HYPERDRIVE",},
              ["SECTION_UP"]  = 1,
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"Value","R_A1S2_HYP",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",""},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"Reward","R_A1S2_HYP",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Reward",""},
              }
            },
          }
        },
        -- REMOVED DROP POD FROM EXOCRAFT SCANS TO ENCOURAGE BUYING CHARTS, ALSO CHANGING ALIEN STRUCTURE FROM NEEDING RADAR POWER RESONATOR TO JUST RADAR AMPLIFIER
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"Value","DROPPOD",},
              ["SECTION_UP"]  = 2,
              ["REMOVE"]  = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"Name","VEHICLE_BUILDING_NPC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"RequiredTech","VEHICLE_SCAN1"},
              }
            },		
          }
        },
        -- MAKES CORE SHIP TECH REMOVABLE
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","SHIPJUMP1",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LAUNCHER",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
                {"FragmentCost",1000}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LAUNCHER","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Common"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","HYPERDRIVE",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
              }
            },
            -- CHANGE FUEL USAGE WHEN TAKING OFF
            {
              ["SPECIAL_KEY_WORDS"] = {"ID","LAUNCHER",},
              ["PRECEDING_KEY_WORDS"] = "Ship_Launcher_TakeOffCost",
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Bonus",41}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID","LAUNCHER_ALIEN",},
              ["PRECEDING_KEY_WORDS"] = "Ship_Launcher_TakeOffCost",
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Bonus",41}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC",},
              ["PRECEDING_KEY_WORDS"] = "Ship_Launcher_TakeOffCost",
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Bonus",20}
              }
            },
            -- CHANGE FUEL USAGE OF MINOTAUR TO MAKE SOLAR RECHARGE EFFECT MORE IMPORTANT
            {
              ["SPECIAL_KEY_WORDS"] = {"ID","MECH_ENGINE","StatsType","Vehicle_EngineFuelUse",},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Bonus",0.75},
              }
            },
          }
        },
        -- TECH ONLY BREAKS IF YOU TAKE DAMAGE WHILE YOUR SHIELD IS DOWN
        {
          ["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechDamageChanceShieldLevelMin",0},		-- Original "0.01"
                {"TechDamageChanceShieldLevelMax",0},		-- Original "0.75"
                {"TechDamageChanceToSelectPrimary",1},		-- Original "0.1"
              }
            },	
          }
        },
        -- COMPANION EGG REWARD TABLE
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericTable","GcGenericRewardTableEntry.xml",},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"]  = COMPANIONEGGREWARD
            },
          }
        },
        -- COMPANION EGG PRODUCT TABLE
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Table","GcProductData.xml",},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"]  = COMPANIONEGGPRODUCT
            },
            -- ION BATTERY AND LIFESUPPORT GEL RECHARGES FULL BAR
            {
              ["SPECIAL_KEY_WORDS"]  =  {"Name","POWERCELL_NAME",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ChargeValue",100},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  =  {"Name","FUELGEL3_NAME",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ChargeValue",120},
              }
            },
          }
        },
        -- COMPANION EGG CONSUMABLE ITEM
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Table","GcConsumableItem.xml",},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"]  = COMPANIONEGGCONSUMABLE
            },	
          }
        },
        -- CHANGING EGG NAME IN THE LANGUAGE FILE
        -- {
        --   ["MBIN_FILE_SOURCE"] 	= "LANGUAGE/NMS_LOC6_ENGLISH.MBIN",
        --   ["EXML_CHANGE_TABLE"] 	= 
        --   {
        --     {
        --       ["SPECIAL_KEY_WORDS"]  = {"Id","UI_PET_EGG_NAME"},
        --       ["VALUE_CHANGE_TABLE"]  =
        --       {
        --         {"Value","CREATURE EGG"},
        --       }
        --     },
        --     {
        --       ["SPECIAL_KEY_WORDS"]  = {"Id","UI_PET_EGG_NAME_L"},
        --       ["VALUE_CHANGE_TABLE"]  =
        --       {
        --         {"Value","Creature Egg"},
        --       }
        --     },
        --   }
        -- },
        -- ADD LAUNCH THRUSTER TO THE SHOP
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/DEFAULTREALITY.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["PRECEDING_FIRST"]  = "TRUE",
              ["PRECEDING_KEY_WORDS"]  = "PlanetTechShops",
              ["SPECIAL_KEY_WORDS"]  = {"Value","GROUND_SHIELD"},
              ["REPLACE_TYPE"] = "ALL",
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] = LAUNCHER
            },
          }
        },
      }
    }
  },
["ADD_FILES"]				=
  {
    {
      ["FILE_DESTINATION"] = [[MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.EXML]],
      ["FILE_CONTENT"] 	 = 	METROIDMODELSWAPSCENE
    },
    {
      ["FILE_DESTINATION"] = [[MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.DESCRIPTOR.EXML]],
      ["FILE_CONTENT"] 	 = 	METROIDMODELSWAPDESCRIPTOR
    }
  }
}