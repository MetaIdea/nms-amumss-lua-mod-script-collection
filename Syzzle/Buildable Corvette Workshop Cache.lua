Author = "Syzzle"
ModName = "Buildable Corvette Workshop Cache"
GameVersion = "6.05"
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
          <Property name="Filename" value="MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/SCORVETTESTORAGEBOX.SCENE.MBIN" />
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
["ADD_FILES"] 			= 
	{
		{
      ["FILE_DESTINATION"] 		= "MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/SCORVETTESTORAGEBOX.SCENE.MXML",
			["FILE_CONTENT"] 	=		[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
	<Property name="Name" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX" />
	<Property name="NameHash" value="792710597" />
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
			<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX.GEOMETRY.MBIN" />
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
			<Property name="Name" value="HoloScreens" />
			<Property name="NameHash" value="1077415054" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="-1.494477" />
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
					<Property name="Value" value="36" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="24" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="137" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="324" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="113" />
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
					<Property name="Value" value="8" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="32" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.457296" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="1.088131" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="1.844414" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="1.003806" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="1.858311" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="2.265635" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="8478070171430241288" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\HOLOSCROLL_MAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="HoloScreensShape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1HoloScreens" />
					<Property name="NameHash" value="2290357214" />
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
							<Property name="Value" value="360" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="138" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="365" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="648" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="227" />
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
							<Property name="Value" value="32" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="56" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.460264" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.089559" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="1.847762" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="1.009221" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.861092" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="2.271536" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="13653917304424971479" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\HOLOSTATIC_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="HoloScreensShape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="1">
			<Property name="Name" value="HoloDisplay1" />
			<Property name="NameHash" value="43922995" />
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
					<Property name="Value" value="1008" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="366" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="593" />
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
					<Property name="Value" value="227" />
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
					<Property name="Value" value="56" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="87" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.648200" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="1.184668" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="0.310559" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.958220" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="1.809021" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.612893" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="16986596837730599540" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\HOLOSCROLL_MAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="HoloDisplay1Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1HoloDisplay1" />
					<Property name="NameHash" value="267820539" />
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
							<Property name="Value" value="1368" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="594" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="921" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="900" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="327" />
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
							<Property name="Value" value="87" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="116" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.658200" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.077432" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="0.310351" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.968220" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.819021" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.754267" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="821364100185675536" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\HOLOSTATIC_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="HoloDisplay1Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="HoloGlow" />
			<Property name="NameHash" value="2007643330" />
			<Property name="Type" value="MESH" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="1.275410" />
				<Property name="TransZ" value="-0.370452" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="90.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.026430" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="BATCHSTARTPHYSI" />
					<Property name="Value" value="2268" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="922" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="965" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="120" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="43" />
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
					<Property name="Value" value="116" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="132" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.305966" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="-0.493891" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-0.312576" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.010838" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="0.493891" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.312573" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="10380784083781025093" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\HOLOSTATIC_MAT1.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="HoloGlowShape" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="3">
			<Property name="Name" value="BiggsStorageLOD0" />
			<Property name="NameHash" value="179996201" />
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
					<Property name="Value" value="2388" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="966" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="1025" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="59" />
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
					<Property name="Value" value="132" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="162" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.012354" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-1.372392" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="1.072133" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.812816" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="2917754011398359237" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="BiggsStorageLOD0Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1BiggsStorageLOD0" />
					<Property name="NameHash" value="3425612470" />
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
							<Property name="Value" value="2490" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="1026" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="1081" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="120" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="55" />
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
							<Property name="Value" value="162" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="197" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.620108" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.598813" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.378644" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.620100" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.045781" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.575106" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="13033939419448447529" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORLIGHTS_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="SUB2BiggsStorageLOD0" />
					<Property name="NameHash" value="933741820" />
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
							<Property name="Value" value="2610" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="1082" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="1273" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="324" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="191" />
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
							<Property name="Value" value="197" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="233" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.647210" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.012333" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.372392" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.642482" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.082252" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.621766" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="8796515697529005414" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="SUB3BiggsStorageLOD0" />
					<Property name="NameHash" value="2496264521" />
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
							<Property name="Value" value="2934" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="1274" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="3636" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="7818" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="2362" />
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
							<Property name="Value" value="233" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="275" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.368909" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.248558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.646434" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="7404519752657076814" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMOPAQUEMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="SUB4BiggsStorageLOD0" />
					<Property name="NameHash" value="3645821382" />
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
							<Property name="Value" value="10752" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="3637" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="3653" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="36" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="16" />
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
							<Property name="Value" value="275" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="291" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.573858" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.067457" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.692222" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.573859" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.071488" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.007777" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="13806341582933624851" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\GLOWSECONDARY_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="SUB5BiggsStorageLOD0" />
					<Property name="NameHash" value="3901112596" />
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
							<Property name="Value" value="10788" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="3654" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="3661" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="12" />
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
							<Property name="Value" value="291" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="295" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.120111" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.321190" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.120126" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.875019" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="1511148355912634523" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD0Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="4">
			<Property name="Name" value="BiggsStorageLOD1" />
			<Property name="NameHash" value="1858293305" />
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
					<Property name="Value" value="10800" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="3662" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="3721" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="59" />
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
					<Property name="Value" value="295" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="325" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.012354" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-1.372392" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="1.072133" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.812816" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="15869878791364074623" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="BiggsStorageLOD1Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1BiggsStorageLOD1" />
					<Property name="NameHash" value="473551571" />
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
							<Property name="Value" value="10902" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="3722" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="3777" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="120" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="55" />
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
							<Property name="Value" value="325" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="360" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.620108" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.598813" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.378644" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.620100" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.045781" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.575106" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="4519635876498616121" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORLIGHTS_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD1Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="SUB2BiggsStorageLOD1" />
					<Property name="NameHash" value="3542088674" />
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
							<Property name="Value" value="11022" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="3778" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="3969" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="324" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="191" />
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
							<Property name="Value" value="360" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="396" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.647210" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.012333" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.372392" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.642482" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.082252" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.621766" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="14869074564489539344" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD1Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="SUB3BiggsStorageLOD1" />
					<Property name="NameHash" value="467994493" />
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
							<Property name="Value" value="11346" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="3970" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="6332" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="7818" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="2362" />
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
							<Property name="Value" value="396" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="438" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.368909" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.248558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.646434" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="6889012902369560075" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMOPAQUEMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD1Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="SUB4BiggsStorageLOD1" />
					<Property name="NameHash" value="4135783478" />
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
							<Property name="Value" value="19164" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="6333" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="6349" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="36" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="16" />
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
							<Property name="Value" value="438" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="454" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.573858" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.067457" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.692222" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.573859" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.071488" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.007777" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="14548808727975104857" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\GLOWSECONDARY_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD1Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="SUB5BiggsStorageLOD1" />
					<Property name="NameHash" value="1739276128" />
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
							<Property name="Value" value="19200" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="6350" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="6357" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="12" />
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
							<Property name="Value" value="1" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="454" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="458" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.120111" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.321190" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.120126" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.875019" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="1473956725381248672" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD1Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="5">
			<Property name="Name" value="BiggsStorageLOD2" />
			<Property name="NameHash" value="2034918215" />
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
					<Property name="Value" value="19212" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="6358" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="6417" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="102" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="59" />
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
					<Property name="Value" value="458" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="488" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.012354" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-1.372392" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="1.072133" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.812816" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="2762939878064552157" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="BiggsStorageLOD2Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1BiggsStorageLOD2" />
					<Property name="NameHash" value="771651164" />
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
							<Property name="Value" value="19314" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="6418" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="6448" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="45" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="30" />
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
							<Property name="Value" value="488" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="522" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.620045" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.598813" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.378644" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.620036" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.045781" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.575106" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="17744737744881066324" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORLIGHTS_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD2Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="SUB2BiggsStorageLOD2" />
					<Property name="NameHash" value="2708543621" />
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
							<Property name="Value" value="19359" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="6449" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="6628" />
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
							<Property name="Value" value="179" />
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
							<Property name="Value" value="522" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.647210" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.012333" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.372392" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.642482" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.082252" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.621766" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="14421236616159575577" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD2Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="SUB3BiggsStorageLOD2" />
					<Property name="NameHash" value="697737952" />
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
							<Property name="Value" value="19647" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="6629" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="8186" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="4494" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="1557" />
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
							<Property name="Value" value="558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="600" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="-0.000001" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.368909" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.248558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.646435" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="12507330147725697831" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMOPAQUEMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD2Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="SUB4BiggsStorageLOD2" />
					<Property name="NameHash" value="3145307676" />
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
							<Property name="Value" value="24141" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="8187" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="8203" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="36" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="16" />
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
							<Property name="Value" value="600" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="616" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.573858" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.067457" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.692222" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.573859" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.071488" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.007777" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="7094981347902326829" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\GLOWSECONDARY_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD2Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="SUB5BiggsStorageLOD2" />
					<Property name="NameHash" value="1433508589" />
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
							<Property name="Value" value="24177" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="8204" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="8211" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="12" />
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
							<Property name="Value" value="2" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="616" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="620" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.120111" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.321190" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.120126" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.875019" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="6829596003649807105" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD2Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="6">
			<Property name="Name" value="BiggsStorageLOD3" />
			<Property name="NameHash" value="1075081436" />
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
					<Property name="Value" value="24189" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="VERTRSTARTPHYSI" />
					<Property name="Value" value="8212" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="VERTRENDPHYSICS" />
					<Property name="Value" value="8266" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="BATCHSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="BATCHCOUNT" />
					<Property name="Value" value="87" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="VERTRSTARTGRAPH" />
					<Property name="Value" value="0" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
					<Property name="Name" value="VERTRENDGRAPHIC" />
					<Property name="Value" value="54" />
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
					<Property name="Value" value="620" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
					<Property name="Name" value="BOUNDHULLED" />
					<Property name="Value" value="650" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
					<Property name="Name" value="AABBMINX" />
					<Property name="Value" value="-0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
					<Property name="Name" value="AABBMINY" />
					<Property name="Value" value="0.012354" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
					<Property name="Name" value="AABBMINZ" />
					<Property name="Value" value="-1.372392" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
					<Property name="Name" value="AABBMAXX" />
					<Property name="Value" value="0.758166" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
					<Property name="Name" value="AABBMAXY" />
					<Property name="Value" value="1.072133" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
					<Property name="Name" value="AABBMAXZ" />
					<Property name="Value" value="0.812816" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
					<Property name="Name" value="HASH" />
					<Property name="Value" value="2687901467706905959" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
					<Property name="Name" value="MATERIAL" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMMAT.MATERIAL.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
					<Property name="Name" value="MESHLINK" />
					<Property name="Value" value="BiggsStorageLOD3Shape" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="SUB1BiggsStorageLOD3" />
					<Property name="NameHash" value="4190440938" />
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
							<Property name="Value" value="24276" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="8267" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="8360" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="138" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="93" />
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
							<Property name="Value" value="650" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="692" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.647210" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.012333" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.372392" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.642482" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.072133" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.577527" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="6663094741572207639" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD3Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="SUB2BiggsStorageLOD3" />
					<Property name="NameHash" value="2929406681" />
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
							<Property name="Value" value="24414" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="8361" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="9529" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="3006" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="1168" />
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
							<Property name="Value" value="692" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="734" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.368909" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.710496" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.248558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="0.646434" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="12586091202058665015" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORTRIMOPAQUEMAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD3Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="SUB3BiggsStorageLOD3" />
					<Property name="NameHash" value="945045595" />
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
							<Property name="Value" value="27420" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="9530" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="9533" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="6" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="3" />
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
							<Property name="Value" value="734" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="738" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.568739" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.598813" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.378644" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="-0.464594" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="0.813518" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-1.378628" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="8250701360367380405" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\INTERIORLIGHTS_MAT1.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD3Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="SUB4BiggsStorageLOD3" />
					<Property name="NameHash" value="3384488607" />
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
							<Property name="Value" value="27426" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="9534" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="9550" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="36" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="VERTRSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="VERTRENDGRAPHIC" />
							<Property name="Value" value="16" />
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
							<Property name="Value" value="738" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="754" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.573858" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="0.067457" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-0.692222" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.573859" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.071488" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.007777" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="3143520016839688823" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\GLOWSECONDARY_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD3Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="SUB5BiggsStorageLOD3" />
					<Property name="NameHash" value="1131968247" />
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
							<Property name="Value" value="27462" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="VERTRSTARTPHYSI" />
							<Property name="Value" value="9551" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="VERTRENDPHYSICS" />
							<Property name="Value" value="9558" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="BATCHSTARTGRAPH" />
							<Property name="Value" value="0" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="BATCHCOUNT" />
							<Property name="Value" value="12" />
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
							<Property name="Value" value="3" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="BOUNDHULLST" />
							<Property name="Value" value="754" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
							<Property name="Name" value="BOUNDHULLED" />
							<Property name="Value" value="758" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
							<Property name="Name" value="AABBMINX" />
							<Property name="Value" value="-0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
							<Property name="Name" value="AABBMINY" />
							<Property name="Value" value="1.120111" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
							<Property name="Name" value="AABBMINZ" />
							<Property name="Value" value="-1.321190" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
							<Property name="Name" value="AABBMAXX" />
							<Property name="Value" value="0.581347" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
							<Property name="Name" value="AABBMAXY" />
							<Property name="Value" value="1.120126" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
							<Property name="Name" value="AABBMAXZ" />
							<Property name="Value" value="-0.875019" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
							<Property name="Name" value="HASH" />
							<Property name="Value" value="4950451372930997866" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\POMSHEET_MAT.MATERIAL.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
							<Property name="Name" value="MESHLINK" />
							<Property name="Value" value="BiggsStorageLOD3Shape" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="7">
			<Property name="Name" value="CorvetteStorageBox" />
			<Property name="NameHash" value="2215239502" />
			<Property name="Type" value="LOCATOR" />
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
					<Property name="Name" value="ATTACHMENT" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX\ENTITIES\CORVETTESTORAGEBOX.ENTITY.MBIN" />
				</Property>
			</Property>
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="INTERACT" />
					<Property name="NameHash" value="3698755080" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="1.570882" />
						<Property name="TransZ" value="0.579193" />
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
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\CORVETTESTORAGEBOX|collisionBox" />
					<Property name="NameHash" value="2196298921" />
					<Property name="Type" value="COLLISION" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.665282" />
						<Property name="TransZ" value="-0.346936" />
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
							<Property name="Value" value="1.503726" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="HEIGHT" />
							<Property name="Value" value="1.330564" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="DEPTH" />
							<Property name="Value" value="1.924332" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="TerminalPoint" />
					<Property name="NameHash" value="3269980410" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="1.850491" />
						<Property name="TransZ" value="-0.347670" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
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
							<Property name="Value" value="12000.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="COL_R" />
							<Property name="Value" value="0.688000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="COL_G" />
							<Property name="Value" value="0.949674" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="COL_B" />
							<Property name="Value" value="1.000000" />
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
		</Property>
		<Property name="Children" value="TkSceneNodeData" _index="8">
			<Property name="Name" value="CraneHoloRef" />
			<Property name="NameHash" value="571447209" />
			<Property name="Type" value="REFERENCE" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="1.321904" />
				<Property name="TransZ" value="-0.347670" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="0.100000" />
				<Property name="ScaleY" value="0.100000" />
				<Property name="ScaleZ" value="0.100000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="SCENEGRAPH" />
					<Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\PROPS\CRANEHOLOGRAM.SCENE.MBIN" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="EMBEDGEOMETRY" />
					<Property name="Value" value="TRUE" />
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