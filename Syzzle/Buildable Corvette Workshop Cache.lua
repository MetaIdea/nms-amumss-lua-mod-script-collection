Author = "Syzzle"
ModName = "Buildable Corvette Workshop Cache"
GameVersion = "6.20"
Description = "Allow you to build the Corvette Workshop Cache in your base or Corvette."

CORVETTEBOXUNLOCK  = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="CV_S_BOX" />
    <Property name="Children" />
  </Property>
]]

MODELCHANGE = [[
  <Property name="Parts" value="GcBaseBuildingPart" _id="_CV_S_BOX">
    <Property name="ID" value="_CV_S_BOX" />
    <Property name="StyleModels">
      <Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
        <Property name="Style" value="GcBaseBuildingPartStyle">
          <Property name="Style" value="None" />
        </Property>
        <Property name="Model" value="TkModelResource">
          <Property name="Filename" value="S/SCENE/SCORVETTESTORAGEBOX.SCENE.MBIN" />
          <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="0" />
        </Property>
        <Property name="Inactive" value="TkModelResource">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="0" />
        </Property>
      </Property>
    </Property>
  </Property>
]]

BASEBUILDINGOBJECT  = [[
  <Property name="Objects" value="GcBaseBuildingEntry" _id="CV_S_BOX">
    <Property name="ID" value="CV_S_BOX" />
    <Property name="IsTemporary" value="false" />
    <Property name="IsFromModFolder" value="false" />
    <Property name="Style" value="GcBaseBuildingPartStyle">
      <Property name="Style" value="None" />
    </Property>
    <Property name="PlacementScene" value="TkModelResource">
      <Property name="Filename" value="" />
      <Property name="ResHandle" value="GcResource">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="Seed" value="0" />
    </Property>
    <Property name="SinglePartID" value="_CV_S_BOX" />
    <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
      <Property name="BaseBuildingDecorationType" value="Normal" />
    </Property>
    <Property name="IsPlaceable" value="true" />
    <Property name="IsDecoration" value="true" />
    <Property name="Biome" value="GcBiomeType">
      <Property name="Biome" value="Lush" />
    </Property>
    <Property name="BuildableOnPlanetBase" value="true" />
    <Property name="BuildableOnSpaceBase" value="false" />
    <Property name="BuildableOnFreighter" value="true" />
    <Property name="BuildableInShipStructural" value="false" />
    <Property name="BuildableInShipDecorative" value="true" />
    <Property name="BuildableOnPlanet" value="false" />
    <Property name="BuildableOnPlanetWithProduct" value="false" />
    <Property name="BuildableUnderwater" value="true" />
    <Property name="BuildableAboveWater" value="true" />
    <Property name="PlanetLimit" value="0" />
    <Property name="RegionLimit" value="0" />
    <Property name="PlanetBaseLimit" value="0" />
    <Property name="FreighterBaseLimit" value="0" />
    <Property name="CheckPlaceholderCollision" value="false" />
    <Property name="CheckPlayerCollision" value="true" />
    <Property name="CanStack" value="true" />
    <Property name="SnapRotateBlocked" value="false" />
    <Property name="CanRotate3D" value="false" />
    <Property name="CanScale" value="false" />
    <Property name="Groups">
      <Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
        <Property name="Group" value="BASE_TECH" />
        <Property name="SubGroupName" value="TECHSTORAGE" />
        <Property name="SubGroup" value="0" />
      </Property>
      <Property name="Groups" value="GcBaseBuildingEntryGroup" _index="1">
        <Property name="Group" value="FREIGHTER_TECH" />
        <Property name="SubGroupName" value="FRE_TECH_OTHER" />
        <Property name="SubGroup" value="0" />
      </Property>
    </Property>
    <Property name="StorageContainerIndex" value="-1" />
    <Property name="ColourPaletteGroupId" value="LEGACY" />
    <Property name="DefaultColourPaletteId" value="" />
    <Property name="MaterialGroupId" value="ALL" />
    <Property name="DefaultMaterialId" value="" />
    <Property name="CanChangeColour" value="true" />
    <Property name="CanChangeMaterial" value="true" />
    <Property name="CanPickUp" value="false" />
    <Property name="ShowInBuildMenu" value="true" />
    <Property name="CompositePartObjectIDs" />
    <Property name="FamilyIDs" />
    <Property name="BuildEffectAccelerator" value="1.000000" />
    <Property name="IconOverrideProductID" value="" />
    <Property name="RemovesAttachedDecoration" value="true" />
    <Property name="RemovesWhenUnsnapped" value="false" />
    <Property name="EditsTerrain" value="true" />
    <Property name="BaseTerrainEditShape" value="Cube" />
    <Property name="MinimumDeleteDistance" value="1.000000" />
    <Property name="IsSealed" value="false" />
    <Property name="CloseMenuAfterBuild" value="false" />
    <Property name="Tag" value="" />
    <Property name="LinkGridData" value="GcBaseLinkGridData">
      <Property name="Connection" value="GcBaseLinkGridConnectionData">
        <Property name="Network" value="GcLinkNetworkTypes">
          <Property name="LinkNetworkType" value="Power" />
        </Property>
        <Property name="NetworkSubGroup" value="0" />
        <Property name="NetworkMask" value="0" />
        <Property name="ConnectionDistance" value="0.100000" />
        <Property name="UseMinDistance" value="false" />
        <Property name="LinkSocketPositions" />
        <Property name="LinkSocketSubGroups" />
      </Property>
      <Property name="Rate" value="0" />
      <Property name="Storage" value="0" />
      <Property name="DependsOnEnvironment" value="None" />
      <Property name="DependsOnHotspots" value="None" />
      <Property name="DependentConnections" />
    </Property>
    <Property name="GhostsCountOverride" value="0" />
    <Property name="ShowGhosts" value="true" />
    <Property name="SnappingDistanceOverride" value="0.000000" />
    <Property name="RegionSpawnLOD" value="1" />
    <Property name="NPCInteractionScene" value="TkModelResource">
      <Property name="Filename" value="" />
      <Property name="ResHandle" value="GcResource">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="Seed" value="0" />
    </Property>
    <Property name="IsModularCustomisation" value="false" />
    <Property name="ModularCustomisationBaseID" value="" />
    <Property name="HasDescriptor" value="false" />
    <Property name="DescriptorID" value="" />
    <Property name="UseProductIDOverride" value="false" />
    <Property name="OverrideProductID" value="" />
    <Property name="FossilDisplayID" value="" />
  </Property>
]]

BASEPARTPRODUCT = [[
  <Property name="Table" value="GcProductData" _id="CV_S_BOX">
    <Property name="ID" value="CV_S_BOX" />
    <Property name="Name" value="CV_S_BOX_NAME" />
    <Property name="NameLower" value="CV_S_BOX_NAME_L" />
    <Property name="Subtitle" value="CV_S_BOX_SUB" />
    <Property name="Description" value="CV_S_BOX_DESC" />
    <Property name="AltDescription" value="" />
    <Property name="Hint" value="" />
    <Property name="BuildableShipTechID" value="" />
    <Property name="GroupID" value="" />
    <Property name="DebrisFile" value="TkModelResource">
      <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
      <Property name="ResHandle" value="GcResource">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="Seed" value="0" />
    </Property>
    <Property name="BaseValue" value="1" />
    <Property name="Level" value="0" />
    <Property name="Icon" value="TkTextureResource">
      <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/STATIONPARTS/BUILDABLE.STATIONCRATE.DDS" />
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
    <Property name="Colour">
      <Property name="R" value="0.172549024" />
      <Property name="G" value="0.486274511" />
      <Property name="B" value="0.623529434" />
      <Property name="A" value="1.000000" />
    </Property>
    <Property name="Category" value="GcRealitySubstanceCategory">
      <Property name="SubstanceCategory" value="BuildingPart" />
    </Property>
    <Property name="Type" value="GcProductCategory">
      <Property name="ProductCategory" value="BuildingPart" />
    </Property>
    <Property name="Rarity" value="GcRarity">
      <Property name="Rarity" value="Common" />
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
		<Property name="Requirements">
			<Property name="Requirements" value="GcTechnologyRequirement" _id="LAND3">
				<Property name="ID" value="LAND3" />
				<Property name="Type" value="GcInventoryType">
					<Property name="InventoryType" value="Substance" />
				</Property>
				<Property name="Amount" value="35" />
			</Property>
			<Property name="Requirements" value="GcTechnologyRequirement" _id="CATALYST1">
				<Property name="ID" value="CATALYST1" />
				<Property name="Type" value="GcInventoryType">
					<Property name="InventoryType" value="Substance" />
				</Property>
				<Property name="Amount" value="20" />
			</Property>
		</Property>
    <Property name="AltRequirements" />
    <Property name="Cost" value="GcItemPriceModifiers">
      <Property name="SpaceStationMarkup" value="0.000000" />
      <Property name="LowPriceMod" value="0.000000" />
      <Property name="HighPriceMod" value="0.000000" />
      <Property name="BuyBaseMarkup" value="0.000000" />
      <Property name="BuyMarkupMod" value="0.000000" />
    </Property>
    <Property name="RecipeCost" value="10" />
    <Property name="SpecificChargeOnly" value="false" />
    <Property name="NormalisedValueOnWorld" value="0.000000" />
    <Property name="NormalisedValueOffWorld" value="0.000000" />
    <Property name="TradeCategory" value="GcTradeCategory">
      <Property name="TradeCategory" value="None" />
    </Property>
    <Property name="WikiCategory" value="NotEnabled" />
    <Property name="FossilCategory" value="GcFossilCategory">
      <Property name="FossilCategory" value="None" />
    </Property>
    <Property name="CorvettePartCategory" value="GcCorvettePartCategory">
      <Property name="CorvettePartCategory" value="None" />
    </Property>
    <Property name="IsCraftable" value="true" />
    <Property name="DeploysInto" value="" />
    <Property name="EconomyInfluenceMultiplier" value="0.000000" />
    <Property name="PinObjective" value="" />
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
  <Property name="Table" value="GcProductData" _id="SET_OG_SHIPSAL">
    <Property name="ID" value="SET_OG_SHIPSAL" />
    <Property name="Name" value="OG_SHIPSAL_NAME" />
    <Property name="NameLower" value="OG_SHIPSAL_NAME_L" />
    <Property name="Subtitle" value="OG_SHIPSAL_SUB" />
    <Property name="Description" value="OG_SHIPSAL_DESC" />
    <Property name="AltDescription" value="" />
    <Property name="Hint" value="" />
    <Property name="BuildableShipTechID" value="" />
    <Property name="GroupID" value="" />
    <Property name="DebrisFile" value="TkModelResource">
      <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
      <Property name="ResHandle" value="GcResource">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="Seed" value="0" />
    </Property>
    <Property name="BaseValue" value="1" />
    <Property name="Level" value="0" />
    <Property name="Icon" value="TkTextureResource">
      <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.S_POSTER30.DDS" />
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
    <Property name="Colour">
      <Property name="R" value="0.172549024" />
      <Property name="G" value="0.486274511" />
      <Property name="B" value="0.623529434" />
      <Property name="A" value="1.000000" />
    </Property>
    <Property name="Category" value="GcRealitySubstanceCategory">
      <Property name="SubstanceCategory" value="BuildingPart" />
    </Property>
    <Property name="Type" value="GcProductCategory">
      <Property name="ProductCategory" value="BuildingPart" />
    </Property>
    <Property name="Rarity" value="GcRarity">
      <Property name="Rarity" value="Common" />
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
    <Property name="Requirements">
      <Property name="Requirements" value="GcTechnologyRequirement" _id="STELLAR2">
        <Property name="ID" value="STELLAR2" />
        <Property name="Type" value="GcInventoryType">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="40" />
      </Property>
      <Property name="Requirements" value="GcTechnologyRequirement" _id="LAND2">
        <Property name="ID" value="LAND2" />
        <Property name="Type" value="GcInventoryType">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="25" />
      </Property>
    </Property>
    <Property name="AltRequirements" />
    <Property name="Cost" value="GcItemPriceModifiers">
      <Property name="SpaceStationMarkup" value="0.000000" />
      <Property name="LowPriceMod" value="0.000000" />
      <Property name="HighPriceMod" value="0.000000" />
      <Property name="BuyBaseMarkup" value="0.000000" />
      <Property name="BuyMarkupMod" value="0.000000" />
    </Property>
    <Property name="RecipeCost" value="7" />
    <Property name="SpecificChargeOnly" value="false" />
    <Property name="NormalisedValueOnWorld" value="0.000000" />
    <Property name="NormalisedValueOffWorld" value="0.000000" />
    <Property name="TradeCategory" value="GcTradeCategory">
      <Property name="TradeCategory" value="None" />
    </Property>
    <Property name="WikiCategory" value="NotEnabled" />
    <Property name="FossilCategory" value="GcFossilCategory">
      <Property name="FossilCategory" value="None" />
    </Property>
    <Property name="CorvettePartCategory" value="GcCorvettePartCategory">
      <Property name="CorvettePartCategory" value="None" />
    </Property>
    <Property name="IsCraftable" value="true" />
    <Property name="DeploysInto" value="" />
    <Property name="EconomyInfluenceMultiplier" value="0.000000" />
    <Property name="PinObjective" value="" />
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

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description, 
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          MBIN_FILE_SOURCE 	= 
          {
            {"MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/CORVETTESTORAGEBOX.SCENE.MBIN","S/SCENE/SCORVETTESTORAGEBOX.SCENE.MBIN"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"ID","SET_INT_SHIPSAL"},
              ADD_OPTION  = "ADDafterSECTION",
              ADD	=	BASEPARTPRODUCT,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"ID","SET_INT_SHIPSAL"},
              ADD_OPTION  = "ADDafterSECTION",
              ADD	=	BASEBUILDINGOBJECT,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"BaseParts","GcUnlockableItemTrees","Unlockable","CONTAINER0"},
              PRECEDING_KEY_WORDS = {"Children"},
              CREATE_HOS  = "TRUE",
              ADD	=	CORVETTEBOXUNLOCK,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"ID","_SET_INT_SHIPSAL"},
              ADD_OPTION  = "ADDafterSECTION",
              ADD	=	MODELCHANGE,
            },
          }
        },
      }
    }
  },
}