Author = "Syzzle"
ModName = "Buildable Starship Outfitting Terminal - Decorated"
GameVersion = "6.04"
Description = "Allow you to build the Starship Outfitting Terminal in your base or Corvette, it comes in 2 types, the original and a decorated Autophage design."

PORTABLETERMINALUNLOCK  = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="SET_UTP_SHIPSAL" />
    <Property name="Children" />
  </Property>
]]

TERMINALUNLOCK  = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="SET_OG_SHIPSAL" />
    <Property name="Children" />
  </Property>
]]

MODELCHANGE = [[
  <Property name="Parts" value="GcBaseBuildingPart" _id="_SET_UTP_SHIPSAL">
    <Property name="ID" value="_SET_UTP_SHIPSAL" />
    <Property name="StyleModels">
      <Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
        <Property name="Style" value="GcBaseBuildingPartStyle">
          <Property name="Style" value="None" />
        </Property>
        <Property name="Model" value="TkModelResource">
          <Property name="Filename" value="MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/PARTS/UTPROBOTTERMINAL.SCENE.MBIN" />
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
  <Property name="Objects" value="GcBaseBuildingEntry" _id="SET_UTP_SHIPSAL">
    <Property name="ID" value="SET_UTP_SHIPSAL" />
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
    <Property name="SinglePartID" value="_SET_UTP_SHIPSAL" />
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
    <Property name="BuildableOnPlanet" value="true" />
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
        <Property name="Group" value="PLANET_TECH" />
        <Property name="SubGroupName" value="PLANETPORTABLE" />
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
    <Property name="EditsTerrain" value="false" />
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
  <Property name="Objects" value="GcBaseBuildingEntry" _id="SET_OG_SHIPSAL">
    <Property name="ID" value="SET_OG_SHIPSAL" />
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
    <Property name="SinglePartID" value="_SET_INT_SHIPSAL" />
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
        <Property name="SubGroupName" value="TECHTEMINALS" />
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
    <Property name="EditsTerrain" value="false" />
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
  <Property name="Table" value="GcProductData" _id="SET_UTP_SHIPSAL">
    <Property name="ID" value="SET_UTP_SHIPSAL" />
    <Property name="Name" value="PORTABLE STARSHIP MAINTENANCE MACHINE" />
    <Property name="NameLower" value="Portable Starship Maintenance Machine" />
    <Property name="Subtitle" value="Starship Maintenance Unit" />
    <Property name="Description" value="Machine used for upgrade or disassembling of Starships. Here, you can scrap unwanted vessels for money or enhance the performance of your favorite ships by upgrading its Class." />
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
      <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/FISH/PRODUCT.FISH.METALJUNK.DDS" />
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
  <Property name="Table" value="GcProductData" _id="SET_OG_SHIPSAL">
    <Property name="ID" value="SET_OG_SHIPSAL" />
    <Property name="Name" value="STARSHIP OUTFITTING TERMINAL" />
    <Property name="NameLower" value="Starship Outfitting Terminal" />
    <Property name="Subtitle" value="Starship Maintenance Unit" />
    <Property name="Description" value="Terminal used for upgrade or disassembling of Starships. Here, you can scrap unwanted vessels for money or enhance the performance of your favorite ships by upgrading its Class." />
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
              SPECIAL_KEY_WORDS = {"BaseParts","GcUnlockableItemTrees","Unlockable","BUILDSAVE"},
              PRECEDING_KEY_WORDS = {"Children"},
              CREATE_HOS  = "TRUE",
              ADD	=	PORTABLETERMINALUNLOCK,
            },
            {
              SPECIAL_KEY_WORDS = {"BaseParts","GcUnlockableItemTrees","Unlockable","HOLO_DISCO_0"},
              PRECEDING_KEY_WORDS = {"Children"},
              CREATE_HOS  = "TRUE",
              ADD	=	TERMINALUNLOCK,
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
["ADD_FILES"] 			= 
	{
		{
      ["FILE_DESTINATION"] 		= "MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/PARTS/UTPROBOTTERMINAL.SCENE.MXML",
			["FILE_CONTENT"] 	=		[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL" />
	<Property name="NameHash" value="1365534678" />
	<Property name="Type" value="MODEL" />
	<Property name="Transform" value="TkTransformData">
		<Property name="TransX" value="0.000000" />
		<Property name="TransY" value="0.000000" />
		<Property name="TransZ" value="0.000000" />
		<Property name="RotX" value="0.000000" />
		<Property name="RotY" value="0.000000" />
		<Property name="RotZ" value="0.000000" />
		<Property name="ScaleX" value="1.000000" />
		<Property name="ScaleY" value="1.000000" />
		<Property name="ScaleZ" value="1.000000" />
	</Property>
	<Property name="PlatformExclusion" value="0" />
	<Property name="Attributes">
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
			<Property name="Name" value="GEOMETRY" />
			<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL.GEOMETRY.MBIN" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
			<Property name="Name" value="LODDIST1" />
			<Property name="Value" value="50.000000" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
			<Property name="Name" value="LODDIST2" />
			<Property name="Value" value="80.000000" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
			<Property name="Name" value="LODDIST3" />
			<Property name="Value" value="150.000000" />
		</Property>
		<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
			<Property name="Name" value="NUMLODS" />
			<Property name="Value" value="4" />
		</Property>
	</Property>
	<Property name="Children">
		<Property name="Children" value="TkSceneNodeData" _index="0">
			<Property name="Name" value="StructureLOD3" />
			<Property name="NameHash" value="234413286" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="2591" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="5742" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="2591" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="48" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.194533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.220833" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.847866" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.472068" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.919546" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="2.252533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="6108730487201166236" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_HOLOCOM_MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="StructureLODShape3" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1StructureLOD3" />
					<Property name="NameHash" value="353910820" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="5742" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="2592" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="2684" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="153" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="92" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="3" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="48" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="94" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.157586" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.830201" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.813236" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-5.478355" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.850726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.924119" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="15191328479142948362" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_GLOW_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="StructureLODShape3" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="FabricLOD2" />
			<Property name="NameHash" value="2987568073" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="5895" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="2685" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="2868" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="507" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="183" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="2" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="94" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="140" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.074457" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.289969" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.774464" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.593605" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.963402" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="1.979988" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="16203205987915601838" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_CLOTHDETAILMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="FabricLODShape2" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1FabricLOD2" />
					<Property name="NameHash" value="1727416465" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="6402" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="2869" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="6140" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="18075" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="3271" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="2" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="140" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="188" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.070926" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.290736" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.761559" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-4.528845" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.964122" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="2.250938" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="9765173270404618590" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_CLOTHSHOPMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="FabricLODShape2" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="StructureLOD2" />
			<Property name="NameHash" value="464681049" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="24477" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6141" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="9635" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="8022" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="3494" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="2" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="188" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="233" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.194533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.220833" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.847866" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.472068" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.926178" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="2.252532" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="6755357272164985507" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_HOLOCOM_MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="StructureLODShape2" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1StructureLOD2" />
					<Property name="NameHash" value="66067924" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="32499" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="9636" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="9752" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="216" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="116" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="2" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="233" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="277" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.157586" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.839931" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.813236" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-5.481148" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.850726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.927583" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="10022737322746769914" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_GLOW_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="StructureLODShape2" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="FabricLOD1" />
			<Property name="NameHash" value="2752057270" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="32715" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="9753" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="10039" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="828" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="286" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="277" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="323" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.074457" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.289969" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.774464" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.593605" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.964123" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="1.979988" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="14108433560489919014" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_CLOTHDETAILMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="FabricLODShape1" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1FabricLOD1" />
					<Property name="NameHash" value="414198790" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="33543" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="10040" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="16081" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="34065" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="6041" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="1" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="323" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="371" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.070926" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.289856" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.761559" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-4.528845" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.964122" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="2.250938" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="7328615077766533957" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_CLOTHSHOPMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="FabricLODShape1" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
			<Property name="Name" value="StructureLOD1" />
			<Property name="NameHash" value="251780852" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="67608" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="16082" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="21473" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="13227" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="5391" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="371" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="416" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.194533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.220833" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.847866" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.472068" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.926178" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="2.252533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="9003318319699625438" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_HOLOCOM_MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="StructureLODShape1" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1StructureLOD1" />
					<Property name="NameHash" value="3113158927" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="80835" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="21474" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="21614" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="288" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="140" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="1" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="416" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="460" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.157586" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.839931" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.813236" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-5.487703" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.850726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.927583" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="13916412414013639248" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_GLOW_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="StructureLODShape1" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
			<Property name="Name" value="FabricLOD0" />
			<Property name="NameHash" value="221241858" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="81123" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="21615" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="21940" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="948" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="325" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="460" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="506" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.074457" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.289969" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.774464" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.593605" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.964123" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="1.979988" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="16911934472088911775" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_CLOTHDETAILMAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="FabricLOD0Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1FabricLOD0" />
					<Property name="NameHash" value="175804315" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="82071" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="21941" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="28290" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="35976" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="6349" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="506" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="554" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.070926" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.289856" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.761559" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-4.528845" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.964122" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="2.250938" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="11433242487014854064" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_CLOTHSHOPMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="FabricLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="StructureLOD0" />
			<Property name="NameHash" value="482048615" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-4.490040" />
				<Property name="TransY" value="-0.316997" />
				<Property name="TransZ" value="-7.351278" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="118047" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="28291" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="35753" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="20916" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="7462" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="554" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="599" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-9.194533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.220833" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.847866" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="-4.472068" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.926178" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="2.252533" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="5993662314789557879" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_HOLOCOM_MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="StructureLOD0Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1StructureLOD0" />
					<Property name="NameHash" value="3358467661" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="138963" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="35754" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="35915" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="360" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="161" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="599" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="643" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-9.157586" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.839931" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-2.813236" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-5.487703" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="3.850726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.927583" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="5355667779984254154" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\TKDEREF2_GLOW_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="StructureLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
			<Property name="Name" value="TerminalMesh" />
			<Property name="NameHash" value="1278973792" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="139323" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="35916" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="56735" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="43620" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="20819" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="643" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="691" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-2.541468" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.518689" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-2.253065" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="1.812215" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="3.768439" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="2.155308" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="7132524405311596219" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\RESONATORTRIM_MAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="TerminalMeshShape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1TerminalMesh" />
					<Property name="NameHash" value="4181644468" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="182943" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="56736" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="56757" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="60" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="21" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="691" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="707" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.321359" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.016114" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="1.156674" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.076982" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.336932" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="1.325980" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="15394219383783076678" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\WARNINGSCREEN_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="TerminalMeshShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="SUB2TerminalMesh" />
					<Property name="NameHash" value="2385009770" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="183003" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="56758" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="56765" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="18" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="7" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="707" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.387930" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.817818" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="1.431413" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.131417" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.867709" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="1.556646" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="6079641879895577544" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\CONSOLEDETAIL_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="TerminalMeshShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="SUB3TerminalMesh" />
					<Property name="NameHash" value="1494536476" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="183021" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="56766" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="57425" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="1056" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="659" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="746" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="0.784420" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.230563" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="0.328054" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="1.129417" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.408797" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.732540" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="14314008473743693565" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\CONTAINERCORE_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="TerminalMeshShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
			<Property name="Name" value="screenui" />
			<Property name="NameHash" value="878888677" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-0.402830" />
				<Property name="TransY" value="1.770537" />
				<Property name="TransZ" value="1.099099" />
				<Property name="RotX" value="-27.4442749" />
				<Property name="RotY" value="177.722153" />
				<Property name="RotZ" value="89.5896149" />
				<Property name="ScaleX" value="0.287454" />
				<Property name="ScaleY" value="0.195061" />
				<Property name="ScaleZ" value="0.206090" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="184077" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="57426" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="57641" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="336" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="215" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="FIRSTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="LASTSKINMAT" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LODLEVEL" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="BOUNDHULLST" />
					<Property name="Value" value="746" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="762" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.501440" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.815825" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.315895" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.405365" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.732729" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="-0.290116" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="3623404994815966491" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\SCREENTRANSPARENT_MAT2.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="screenuiShape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1screenui" />
					<Property name="NameHash" value="2550266655" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="184413" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="57642" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="57669" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="42" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="27" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="762" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="770" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.412243" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.577997" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.330360" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.357012" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.469944" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.298742" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="11605205247482907826" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\UIMISCPARTS_MAT2.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="screenuiShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="SUB2screenui" />
					<Property name="NameHash" value="1870756963" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="184455" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="57670" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="58149" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="720" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="479" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="770" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="790" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.353216" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.507452" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.346280" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.263622" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.416496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.305374" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="2419258457806213002" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\UIDULL_MAT2.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="screenuiShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="SUB3screenui" />
					<Property name="NameHash" value="3807274062" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="185175" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="58150" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="58161" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="18" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="11" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="790" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="802" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.343246" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.015877" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.329911" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.255123" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.405975" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.313125" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="1890870738868571834" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\GRAPHPANNING_MAT2.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="screenuiShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="SUB4screenui" />
					<Property name="NameHash" value="268888828" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="185193" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="58162" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="58545" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="576" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="383" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="802" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="810" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="0.043847" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.499042" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.348877" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.224165" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="-0.194227" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.345755" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="6739947116826483401" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\SCREENBUTTON_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="screenuiShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="SUB5screenui" />
					<Property name="NameHash" value="1167174828" />
					<Property name="Type" value="MESH" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="BATCHSTARTPHYSI" />
							<Property name="Value" value="185769" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="58546" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="58747" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="1059" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="201" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="FIRSTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="LASTSKINMAT" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LODLEVEL" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="810" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="818" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.465987" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.666077" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.349172" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.378638" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.564844" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.342280" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="17594064660364046489" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINAL\SCANLINE_MAT2.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="screenuiShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="9">
			<Property name="Name" value="Terminal" />
			<Property name="NameHash" value="1937015077" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="1.203582" />
				<Property name="TransZ" value="0.570006" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL\ENTITIES\SHIPSALVAGE.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\ROBOTTERMINALSMALL|collisionBox" />
					<Property name="NameHash" value="1789250802" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="NAVIGATION" />
							<Property name="Value" value="FALSE" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="TYPE" />
							<Property name="Value" value="Box" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="WIDTH" />
							<Property name="Value" value="2.832089" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="HEIGHT" />
							<Property name="Value" value="3.406981" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="DEPTH" />
							<Property name="Value" value="2.942971" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="MAINTENANCESLOT2" />
					<Property name="NameHash" value="520399011" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.025076" />
						<Property name="TransY" value="-0.055156" />
						<Property name="TransZ" value="0.766135" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="MAINTENANCESLOT1" />
					<Property name="NameHash" value="304746222" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.120598" />
						<Property name="TransY" value="0.107003" />
						<Property name="TransZ" value="0.636435" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="MAINTENANCESLOT0" />
					<Property name="NameHash" value="1004495448" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.285360" />
						<Property name="TransY" value="-0.111860" />
						<Property name="TransZ" value="0.795345" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="10">
			<Property name="Name" value="pointLight4" />
			<Property name="NameHash" value="3912134971" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="2.174382" />
				<Property name="TransY" value="2.664944" />
				<Property name="TransZ" value="0.873772" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="13312.977539" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="0.862000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.748403" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.204294" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="11">
			<Property name="Name" value="pointLight1" />
			<Property name="NameHash" value="4219409884" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-0.231843" />
				<Property name="TransY" value="1.286598" />
				<Property name="TransZ" value="1.669434" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="83.6921844" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="15877.862305" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="0.862000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.254482" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.050858" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="12">
			<Property name="Name" value="pointLight2" />
			<Property name="NameHash" value="230242896" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-2.214301" />
				<Property name="TransY" value="2.793617" />
				<Property name="TransZ" value="1.221856" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="15000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="0.862000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.748403" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.204294" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="13">
			<Property name="Name" value="pointLight3" />
			<Property name="NameHash" value="3337432249" />
			<Property name="Type" value="LIGHT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-0.700654" />
				<Property name="TransY" value="4.400090" />
				<Property name="TransZ" value="0.574883" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="126.068542" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.175207" />
				<Property name="ScaleY" value="1.175207" />
				<Property name="ScaleZ" value="1.175207" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="15000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="0.862000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.748403" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="COL_B" />
					<Property name="Value" value="0.204294" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
					<Property name="Name" value="COOKIE_IDX" />
					<Property name="Value" value="-1" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
					<Property name="Name" value="VOLUMETRIC" />
					<Property name="Value" value="0.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
					<Property name="Name" value="LIGHTLAYERS" />
					<Property name="Value" value="3" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
	</Property>
</Data>
]]
		},		
	},
}