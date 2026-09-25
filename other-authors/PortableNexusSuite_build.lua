local BB_BUILD_PNEXUS = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_PNEXUS">
			<Property name="ID" value="BUILD_PNEXUS" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/PNEXUS/PNEXUS_PLACEMENT.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="Normal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="false" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="All" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="true" />
			<Property name="BuildableOnSpaceBase" value="true" />
			<Property name="BuildableOnFreighter" value="true" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="true" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="true" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="true" />
			<Property name="BuildableOnSpaceStationBackSection" value="true" />
			<Property name="BuildableOnSpaceStationExterior" value="true" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="false" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="false" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="HCS_TOOLS" />
					<Property name="SubGroupName" value="HCS_TOOLS" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="LEGACY" />
			<Property name="StationColourPaletteGroupId" value="LEGACY" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="ALL" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="true" />
			<Property name="CanChangeMaterial" value="true" />
			<Property name="CanPickUp" value="true" />
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
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="true" />
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
			<Property name="GhostsCountOverride" value="1" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.100000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="true" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="BUILD_PNEXUS" />
		</Property>
]]

local PROD_BUILD_PNEXUS = [[
		<Property name="Table" value="GcProductData" _id="BUILD_PNEXUS">
			<Property name="ID" value="BUILD_PNEXUS" />
			<Property name="Name" value="BUILD_PNEXUS_NAME" />
			<Property name="NameLower" value="BUILD_PNEXUS_NAME_L" />
			<Property name="Subtitle" value="BUILD_PNEXUS_SUBTITLE" />
			<Property name="Description" value="BUILD_PNEXUS_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_PNEXUS" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="1" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.SIGNAL.DDS" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
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
			<Property name="StackMultiplier" value="0" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
						<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="STELLAR2">
					<Property name="ID" value="STELLAR2" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="800" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="TECH_COMP">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="10" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="BP_SALVAGE">
					<Property name="ID" value="BP_SALVAGE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
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
			<Property name="RecipeCost" value="1" />
			<Property name="SpecificChargeOnly" value="false" />
			<Property name="NormalisedValueOnWorld" value="0.000000" />
			<Property name="NormalisedValueOffWorld" value="0.000000" />
			<Property name="TradeCategory" value="GcTradeCategory">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="Tech" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
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

local PURCH_BUILD_PNEXUS = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_PNEXUS" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_PNEXUS = [[
<Property name="Items" value="BUILD_PNEXUS" />
]]

local NODE_BUILD_PNEXUS = [[
<Property name="Children" value="GcUnlockableItemTreeNode">
	<Property name="Unlockable" value="BUILD_PNEXUS" />
	<Property name="Children" />
</Property>
]]

local PART_BUILD_PNEXUS = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_PNEXUS">
			<Property name="ID" value="_BUILD_PNEXUS" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/PNEXUS/PNEXUS.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER_LOD.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local APDDATA_BUILD_PNEXUS = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_PNEXUS" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property name="Vertices" _index="0">
						<Property name="X" value="-0.660572" />
						<Property name="Y" value="0.010359" />
						<Property name="Z" value="-0.146232" />
					</Property>
					<Property name="Vertices" _index="1">
						<Property name="X" value="-0.529563" />
						<Property name="Y" value="0.333383" />
						<Property name="Z" value="0.529660" />
					</Property>
					<Property name="Vertices" _index="2">
						<Property name="X" value="-0.309219" />
						<Property name="Y" value="1.556760" />
						<Property name="Z" value="-0.336253" />
					</Property>
					<Property name="Vertices" _index="3">
						<Property name="X" value="-0.025040" />
						<Property name="Y" value="0.107209" />
						<Property name="Z" value="-0.731485" />
					</Property>
					<Property name="Vertices" _index="4">
						<Property name="X" value="0.741243" />
						<Property name="Y" value="0.107304" />
						<Property name="Z" value="0.034877" />
					</Property>
					<Property name="Vertices" _index="5">
						<Property name="X" value="0.473888" />
						<Property name="Y" value="1.540136" />
						<Property name="Z" value="0.028880" />
					</Property>
					<Property name="Vertices" _index="6">
						<Property name="X" value="0.139634" />
						<Property name="Y" value="0.011487" />
						<Property name="Z" value="0.657863" />
					</Property>
					<Property name="Vertices" _index="7">
						<Property name="X" value="0.033383" />
						<Property name="Y" value="1.547024" />
						<Property name="Z" value="0.462016" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.040336" />
					<Property name="Y" value="0.783560" />
					<Property name="Z" value="-0.036811" />
				</Property>
				<Property name="Radius" value="1.074769" />
			</Property>
			<Property name="NodesCost" value="61" />
			<Property name="TimeCost" value="256080" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="42" />
			<Property name="InstanceNodesCost" value="41" />
			<Property name="InstanceTimeCost" value="135666" />
			<Property name="InstanceMeshesCost" value="22" />
			<Property name="LastProfiledTimestamp" value="1787295178" />
			<Property name="InstanceLastProfiledTimestamp" value="1787196516" />
		</Property>
]]

local BB_BUILD_PMISSION = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_PMISSION">
			<Property name="ID" value="BUILD_PMISSION" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/PMISSION/PMISSION_PLACEMENT.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="Normal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="false" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="All" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="true" />
			<Property name="BuildableOnSpaceBase" value="true" />
			<Property name="BuildableOnFreighter" value="true" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="true" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="true" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="true" />
			<Property name="BuildableOnSpaceStationBackSection" value="true" />
			<Property name="BuildableOnSpaceStationExterior" value="true" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="false" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="false" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="HCS_TOOLS" />
					<Property name="SubGroupName" value="HCS_TOOLS" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="LEGACY" />
			<Property name="StationColourPaletteGroupId" value="LEGACY" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="ALL" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="true" />
			<Property name="CanChangeMaterial" value="true" />
			<Property name="CanPickUp" value="true" />
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
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="true" />
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
			<Property name="GhostsCountOverride" value="1" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.100000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="true" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="BUILD_PMISSION" />
		</Property>
]]

local PROD_BUILD_PMISSION = [[
		<Property name="Table" value="GcProductData" _id="BUILD_PMISSION">
			<Property name="ID" value="BUILD_PMISSION" />
			<Property name="Name" value="BUILD_PMISSION_NAME" />
			<Property name="NameLower" value="BUILD_PMISSION_NAME_L" />
			<Property name="Subtitle" value="BUILD_PMISSION_SUBTITLE" />
			<Property name="Description" value="BUILD_PMISSION_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_PMISSION" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="1" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.SIGNAL.DDS" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
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
			<Property name="StackMultiplier" value="0" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
						<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="ROBOT1">
					<Property name="ID" value="ROBOT1" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="1000" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="TECH_COMP">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="6" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="BP_SALVAGE">
					<Property name="ID" value="BP_SALVAGE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="15" />
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
			<Property name="RecipeCost" value="1" />
			<Property name="SpecificChargeOnly" value="false" />
			<Property name="NormalisedValueOnWorld" value="0.000000" />
			<Property name="NormalisedValueOffWorld" value="0.000000" />
			<Property name="TradeCategory" value="GcTradeCategory">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="Tech" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
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

local PURCH_BUILD_PMISSION = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_PMISSION" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_PMISSION = [[
<Property name="Items" value="BUILD_PMISSION" />
]]

local NODE_BUILD_PMISSION = [[
<Property name="Children" value="GcUnlockableItemTreeNode">
	<Property name="Unlockable" value="BUILD_PMISSION" />
	<Property name="Children" />
</Property>
]]

local PART_BUILD_PMISSION = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_PMISSION">
			<Property name="ID" value="_BUILD_PMISSION" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/PMISSION/PMISSION.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER_LOD.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local APDDATA_BUILD_PMISSION = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_PMISSION" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property name="Vertices" _index="0">
						<Property name="X" value="-0.660572" />
						<Property name="Y" value="0.010359" />
						<Property name="Z" value="-0.146232" />
					</Property>
					<Property name="Vertices" _index="1">
						<Property name="X" value="-0.529563" />
						<Property name="Y" value="0.333383" />
						<Property name="Z" value="0.529660" />
					</Property>
					<Property name="Vertices" _index="2">
						<Property name="X" value="-0.309219" />
						<Property name="Y" value="1.556760" />
						<Property name="Z" value="-0.336253" />
					</Property>
					<Property name="Vertices" _index="3">
						<Property name="X" value="-0.025040" />
						<Property name="Y" value="0.107209" />
						<Property name="Z" value="-0.731485" />
					</Property>
					<Property name="Vertices" _index="4">
						<Property name="X" value="0.741243" />
						<Property name="Y" value="0.107304" />
						<Property name="Z" value="0.034877" />
					</Property>
					<Property name="Vertices" _index="5">
						<Property name="X" value="0.473888" />
						<Property name="Y" value="1.540136" />
						<Property name="Z" value="0.028880" />
					</Property>
					<Property name="Vertices" _index="6">
						<Property name="X" value="0.139634" />
						<Property name="Y" value="0.011487" />
						<Property name="Z" value="0.657863" />
					</Property>
					<Property name="Vertices" _index="7">
						<Property name="X" value="0.033383" />
						<Property name="Y" value="1.547024" />
						<Property name="Z" value="0.462016" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.040336" />
					<Property name="Y" value="0.783560" />
					<Property name="Z" value="-0.036811" />
				</Property>
				<Property name="Radius" value="1.074769" />
			</Property>
			<Property name="NodesCost" value="61" />
			<Property name="TimeCost" value="256080" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="42" />
			<Property name="InstanceNodesCost" value="41" />
			<Property name="InstanceTimeCost" value="135666" />
			<Property name="InstanceMeshesCost" value="22" />
			<Property name="LastProfiledTimestamp" value="1787295178" />
			<Property name="InstanceLastProfiledTimestamp" value="1787196516" />
		</Property>
]]

local BB_BUILD_PFISHING = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_PFISHING">
			<Property name="ID" value="BUILD_PFISHING" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/PFISHING/PFISHING_PLACEMENT.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="Normal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="false" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="All" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="true" />
			<Property name="BuildableOnSpaceBase" value="true" />
			<Property name="BuildableOnFreighter" value="true" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="true" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="true" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="true" />
			<Property name="BuildableOnSpaceStationBackSection" value="true" />
			<Property name="BuildableOnSpaceStationExterior" value="true" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="false" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="false" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="HCS_TOOLS" />
					<Property name="SubGroupName" value="HCS_TOOLS" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="LEGACY" />
			<Property name="StationColourPaletteGroupId" value="LEGACY" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="ALL" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="true" />
			<Property name="CanChangeMaterial" value="true" />
			<Property name="CanPickUp" value="true" />
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
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="true" />
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
			<Property name="GhostsCountOverride" value="1" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.100000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="true" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="BUILD_PFISHING" />
		</Property>
]]

local PROD_BUILD_PFISHING = [[
		<Property name="Table" value="GcProductData" _id="BUILD_PFISHING">
			<Property name="ID" value="BUILD_PFISHING" />
			<Property name="Name" value="BUILD_PFISHING_NAME" />
			<Property name="NameLower" value="BUILD_PFISHING_NAME_L" />
			<Property name="Subtitle" value="BUILD_PFISHING_SUBTITLE" />
			<Property name="Description" value="BUILD_PFISHING_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_PFISHING" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="1" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.SIGNAL.DDS" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
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
			<Property name="StackMultiplier" value="0" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
						<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="CAVECUBE">
					<Property name="ID" value="CAVECUBE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="30" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="TECH_COMP">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="4" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="BP_SALVAGE">
					<Property name="ID" value="BP_SALVAGE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="8" />
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
			<Property name="RecipeCost" value="1" />
			<Property name="SpecificChargeOnly" value="false" />
			<Property name="NormalisedValueOnWorld" value="0.000000" />
			<Property name="NormalisedValueOffWorld" value="0.000000" />
			<Property name="TradeCategory" value="GcTradeCategory">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="Tech" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
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

local PURCH_BUILD_PFISHING = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_PFISHING" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_PFISHING = [[
<Property name="Items" value="BUILD_PFISHING" />
]]

local NODE_BUILD_PFISHING = [[
<Property name="Children" value="GcUnlockableItemTreeNode">
	<Property name="Unlockable" value="BUILD_PFISHING" />
	<Property name="Children" />
</Property>
]]

local PART_BUILD_PFISHING = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_PFISHING">
			<Property name="ID" value="_BUILD_PFISHING" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/PFISHING/PFISHING.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER_LOD.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local APDDATA_BUILD_PFISHING = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_PFISHING" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property name="Vertices" _index="0">
						<Property name="X" value="-0.660572" />
						<Property name="Y" value="0.010359" />
						<Property name="Z" value="-0.146232" />
					</Property>
					<Property name="Vertices" _index="1">
						<Property name="X" value="-0.529563" />
						<Property name="Y" value="0.333383" />
						<Property name="Z" value="0.529660" />
					</Property>
					<Property name="Vertices" _index="2">
						<Property name="X" value="-0.309219" />
						<Property name="Y" value="1.556760" />
						<Property name="Z" value="-0.336253" />
					</Property>
					<Property name="Vertices" _index="3">
						<Property name="X" value="-0.025040" />
						<Property name="Y" value="0.107209" />
						<Property name="Z" value="-0.731485" />
					</Property>
					<Property name="Vertices" _index="4">
						<Property name="X" value="0.741243" />
						<Property name="Y" value="0.107304" />
						<Property name="Z" value="0.034877" />
					</Property>
					<Property name="Vertices" _index="5">
						<Property name="X" value="0.473888" />
						<Property name="Y" value="1.540136" />
						<Property name="Z" value="0.028880" />
					</Property>
					<Property name="Vertices" _index="6">
						<Property name="X" value="0.139634" />
						<Property name="Y" value="0.011487" />
						<Property name="Z" value="0.657863" />
					</Property>
					<Property name="Vertices" _index="7">
						<Property name="X" value="0.033383" />
						<Property name="Y" value="1.547024" />
						<Property name="Z" value="0.462016" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.040336" />
					<Property name="Y" value="0.783560" />
					<Property name="Z" value="-0.036811" />
				</Property>
				<Property name="Radius" value="1.074769" />
			</Property>
			<Property name="NodesCost" value="61" />
			<Property name="TimeCost" value="256080" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="42" />
			<Property name="InstanceNodesCost" value="41" />
			<Property name="InstanceTimeCost" value="135666" />
			<Property name="InstanceMeshesCost" value="22" />
			<Property name="LastProfiledTimestamp" value="1787295178" />
			<Property name="InstanceLastProfiledTimestamp" value="1787196516" />
		</Property>
]]

local BB_BUILD_CASINO = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_CASINO">
			<Property name="ID" value="BUILD_CASINO" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/CASINO/CASINO_PLACEMENT.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="Normal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="false" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="All" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="true" />
			<Property name="BuildableOnSpaceBase" value="true" />
			<Property name="BuildableOnFreighter" value="true" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="true" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="true" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="true" />
			<Property name="BuildableOnSpaceStationBackSection" value="true" />
			<Property name="BuildableOnSpaceStationExterior" value="true" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="false" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="false" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="HCS_TOOLS" />
					<Property name="SubGroupName" value="HCS_TOOLS" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="LEGACY" />
			<Property name="StationColourPaletteGroupId" value="LEGACY" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="ALL" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="true" />
			<Property name="CanChangeMaterial" value="true" />
			<Property name="CanPickUp" value="true" />
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
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="true" />
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
			<Property name="GhostsCountOverride" value="1" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.100000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="true" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="BUILD_CASINO" />
		</Property>
]]

local PROD_BUILD_CASINO = [[
		<Property name="Table" value="GcProductData" _id="BUILD_CASINO">
			<Property name="ID" value="BUILD_CASINO" />
			<Property name="Name" value="BUILD_CASINO_NAME" />
			<Property name="NameLower" value="BUILD_CASINO_NAME_L" />
			<Property name="Subtitle" value="BUILD_CASINO_SUBTITLE" />
			<Property name="Description" value="BUILD_CASINO_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_CASINO" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="1" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.SIGNAL.DDS" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
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
			<Property name="StackMultiplier" value="0" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
						<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="ASTEROID2">
					<Property name="ID" value="ASTEROID2" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="550" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="TECH_COMP">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="8" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="BP_SALVAGE">
					<Property name="ID" value="BP_SALVAGE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
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
			<Property name="RecipeCost" value="1" />
			<Property name="SpecificChargeOnly" value="false" />
			<Property name="NormalisedValueOnWorld" value="0.000000" />
			<Property name="NormalisedValueOffWorld" value="0.000000" />
			<Property name="TradeCategory" value="GcTradeCategory">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="Tech" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
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

local PURCH_BUILD_CASINO = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_CASINO" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_CASINO = [[
<Property name="Items" value="BUILD_CASINO" />
]]

local NODE_BUILD_CASINO = [[
<Property name="Children" value="GcUnlockableItemTreeNode">
	<Property name="Unlockable" value="BUILD_CASINO" />
	<Property name="Children" />
</Property>
]]

local PART_BUILD_CASINO = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_CASINO">
			<Property name="ID" value="_BUILD_CASINO" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/CASINO/CASINO.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER_LOD.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local APDDATA_BUILD_CASINO = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_CASINO" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property name="Vertices" _index="0">
						<Property name="X" value="-0.660572" />
						<Property name="Y" value="0.010359" />
						<Property name="Z" value="-0.146232" />
					</Property>
					<Property name="Vertices" _index="1">
						<Property name="X" value="-0.529563" />
						<Property name="Y" value="0.333383" />
						<Property name="Z" value="0.529660" />
					</Property>
					<Property name="Vertices" _index="2">
						<Property name="X" value="-0.309219" />
						<Property name="Y" value="1.556760" />
						<Property name="Z" value="-0.336253" />
					</Property>
					<Property name="Vertices" _index="3">
						<Property name="X" value="-0.025040" />
						<Property name="Y" value="0.107209" />
						<Property name="Z" value="-0.731485" />
					</Property>
					<Property name="Vertices" _index="4">
						<Property name="X" value="0.741243" />
						<Property name="Y" value="0.107304" />
						<Property name="Z" value="0.034877" />
					</Property>
					<Property name="Vertices" _index="5">
						<Property name="X" value="0.473888" />
						<Property name="Y" value="1.540136" />
						<Property name="Z" value="0.028880" />
					</Property>
					<Property name="Vertices" _index="6">
						<Property name="X" value="0.139634" />
						<Property name="Y" value="0.011487" />
						<Property name="Z" value="0.657863" />
					</Property>
					<Property name="Vertices" _index="7">
						<Property name="X" value="0.033383" />
						<Property name="Y" value="1.547024" />
						<Property name="Z" value="0.462016" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.040336" />
					<Property name="Y" value="0.783560" />
					<Property name="Z" value="-0.036811" />
				</Property>
				<Property name="Radius" value="1.074769" />
			</Property>
			<Property name="NodesCost" value="61" />
			<Property name="TimeCost" value="256080" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="42" />
			<Property name="InstanceNodesCost" value="41" />
			<Property name="InstanceTimeCost" value="135666" />
			<Property name="InstanceMeshesCost" value="22" />
			<Property name="LastProfiledTimestamp" value="1787295178" />
			<Property name="InstanceLastProfiledTimestamp" value="1787196516" />
		</Property>
]]

local BB_BUILD_PSCAN = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_PSCAN">
			<Property name="ID" value="BUILD_PSCAN" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/PSCAN/PSCAN_PLACEMENT.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="Normal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="false" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="All" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="true" />
			<Property name="BuildableOnSpaceBase" value="true" />
			<Property name="BuildableOnFreighter" value="true" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="true" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="true" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="true" />
			<Property name="BuildableOnSpaceStationBackSection" value="true" />
			<Property name="BuildableOnSpaceStationExterior" value="true" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="false" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="false" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="HCS_TOOLS" />
					<Property name="SubGroupName" value="HCS_TOOLS" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="LEGACY" />
			<Property name="StationColourPaletteGroupId" value="LEGACY" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="ALL" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="true" />
			<Property name="CanChangeMaterial" value="true" />
			<Property name="CanPickUp" value="true" />
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
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="true" />
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
			<Property name="GhostsCountOverride" value="1" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.100000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="true" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="BUILD_PSCAN" />
		</Property>
]]

local PROD_BUILD_PSCAN = [[
		<Property name="Table" value="GcProductData" _id="BUILD_PSCAN">
			<Property name="ID" value="BUILD_PSCAN" />
			<Property name="Name" value="BUILD_PSCAN_NAME" />
			<Property name="NameLower" value="BUILD_PSCAN_NAME_L" />
			<Property name="Subtitle" value="BUILD_PSCAN_SUBTITLE" />
			<Property name="Description" value="BUILD_PSCAN_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_PSCAN" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="1" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.SIGNAL.DDS" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
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
			<Property name="StackMultiplier" value="0" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
						<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="ASTEROID1">
					<Property name="ID" value="ASTEROID1" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="900" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="TECH_COMP">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="8" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="BP_SALVAGE">
					<Property name="ID" value="BP_SALVAGE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="12" />
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
			<Property name="RecipeCost" value="1" />
			<Property name="SpecificChargeOnly" value="false" />
			<Property name="NormalisedValueOnWorld" value="0.000000" />
			<Property name="NormalisedValueOffWorld" value="0.000000" />
			<Property name="TradeCategory" value="GcTradeCategory">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="Tech" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
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

local PURCH_BUILD_PSCAN = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_PSCAN" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_PSCAN = [[
<Property name="Items" value="BUILD_PSCAN" />
]]

local NODE_BUILD_PSCAN = [[
<Property name="Children" value="GcUnlockableItemTreeNode">
	<Property name="Unlockable" value="BUILD_PSCAN" />
	<Property name="Children" />
</Property>
]]

local PART_BUILD_PSCAN = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_PSCAN">
			<Property name="ID" value="_BUILD_PSCAN" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/PSCAN/PROBE.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER_LOD.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local APDDATA_BUILD_PSCAN = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_PSCAN" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property name="Vertices" _index="0">
						<Property name="X" value="-0.660572" />
						<Property name="Y" value="0.010359" />
						<Property name="Z" value="-0.146232" />
					</Property>
					<Property name="Vertices" _index="1">
						<Property name="X" value="-0.529563" />
						<Property name="Y" value="0.333383" />
						<Property name="Z" value="0.529660" />
					</Property>
					<Property name="Vertices" _index="2">
						<Property name="X" value="-0.309219" />
						<Property name="Y" value="1.556760" />
						<Property name="Z" value="-0.336253" />
					</Property>
					<Property name="Vertices" _index="3">
						<Property name="X" value="-0.025040" />
						<Property name="Y" value="0.107209" />
						<Property name="Z" value="-0.731485" />
					</Property>
					<Property name="Vertices" _index="4">
						<Property name="X" value="0.741243" />
						<Property name="Y" value="0.107304" />
						<Property name="Z" value="0.034877" />
					</Property>
					<Property name="Vertices" _index="5">
						<Property name="X" value="0.473888" />
						<Property name="Y" value="1.540136" />
						<Property name="Z" value="0.028880" />
					</Property>
					<Property name="Vertices" _index="6">
						<Property name="X" value="0.139634" />
						<Property name="Y" value="0.011487" />
						<Property name="Z" value="0.657863" />
					</Property>
					<Property name="Vertices" _index="7">
						<Property name="X" value="0.033383" />
						<Property name="Y" value="1.547024" />
						<Property name="Z" value="0.462016" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.040336" />
					<Property name="Y" value="0.783560" />
					<Property name="Z" value="-0.036811" />
				</Property>
				<Property name="Radius" value="1.074769" />
			</Property>
			<Property name="NodesCost" value="61" />
			<Property name="TimeCost" value="256080" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="42" />
			<Property name="InstanceNodesCost" value="41" />
			<Property name="InstanceTimeCost" value="135666" />
			<Property name="InstanceMeshesCost" value="22" />
			<Property name="LastProfiledTimestamp" value="1787295178" />
			<Property name="InstanceLastProfiledTimestamp" value="1787196516" />
		</Property>
]]

local BB_BUILD_REFINERY = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_REFINERY">
			<Property name="ID" value="BUILD_REFINERY" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/REFINERY/REFINERY_PLACEMENT.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="SinglePartID" value="" />
			<Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
				<Property name="BaseBuildingDecorationType" value="Normal" />
			</Property>
			<Property name="IsPlaceable" value="true" />
			<Property name="IsPlaceableFloatingInSpace" value="false" />
			<Property name="IsDecoration" value="false" />
			<Property name="Biome" value="GcBiomeType">
				<Property name="Biome" value="All" />
			</Property>
			<Property name="BuildableOnPlanetBase" value="true" />
			<Property name="BuildableOnSpaceBase" value="true" />
			<Property name="BuildableOnFreighter" value="true" />
			<Property name="BuildableInShipStructural" value="false" />
			<Property name="BuildableInShipDecorative" value="true" />
			<Property name="BuildableOnPlanet" value="true" />
			<Property name="BuildableOnPlanetWithProduct" value="false" />
			<Property name="BuildableUnderwater" value="true" />
			<Property name="BuildableAboveWater" value="true" />
			<Property name="BuildableOnSpaceStationBase" value="true" />
			<Property name="BuildableOnSpaceStationBackSection" value="true" />
			<Property name="BuildableOnSpaceStationExterior" value="true" />
			<Property name="PlanetLimit" value="0" />
			<Property name="RegionLimit" value="0" />
			<Property name="PlanetBaseLimit" value="0" />
			<Property name="FreighterBaseLimit" value="0" />
			<Property name="CorvetteBaseLimit" value="0" />
			<Property name="DoesNotCountTowardsComplexity" value="false" />
			<Property name="CheckPlaceholderCollision" value="false" />
			<Property name="CheckPlayerCollision" value="true" />
			<Property name="CanStack" value="false" />
			<Property name="SnapRotateBlocked" value="false" />
			<Property name="CanRotate3D" value="false" />
			<Property name="CanScale" value="false" />
			<Property name="Groups">
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="HCS_TOOLS" />
					<Property name="SubGroupName" value="HCS_TOOLS" />
					<Property name="SubGroup" value="0" />
				</Property>
			</Property>
			<Property name="StorageContainerIndex" value="-1" />
			<Property name="ColourPaletteGroupId" value="LEGACY" />
			<Property name="StationColourPaletteGroupId" value="LEGACY" />
			<Property name="DefaultColourPaletteId" value="" />
			<Property name="MaterialGroupId" value="ALL" />
			<Property name="DefaultMaterialId" value="" />
			<Property name="CanChangeColour" value="true" />
			<Property name="CanChangeMaterial" value="true" />
			<Property name="CanPickUp" value="true" />
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
			<Property name="HasGravity" value="false" />
			<Property name="GravityStrength" value="0.500000" />
			<Property name="GravityFalloff" value="2.000000" />
			<Property name="CloseMenuAfterBuild" value="true" />
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
			<Property name="GhostsCountOverride" value="1" />
			<Property name="ShowGhosts" value="true" />
			<Property name="SnappingDistanceOverride" value="0.100000" />
			<Property name="RegionSpawnLOD" value="1" />
			<Property name="NPCInteractionScene" value="TkModelResource">
				<Property name="Filename" value="" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="IsModularCustomisation" value="false" />
			<Property name="ModularCustomisationBaseID" value="" />
			<Property name="HasDescriptor" value="false" />
			<Property name="DescriptorID" value="" />
			<Property name="FossilDisplayID" value="" />
			<Property name="UseProductIDOverride" value="true" />
			<Property name="UseProductIDOverrideInSpace" value="false" />
			<Property name="OverrideProductID" value="BUILD_REFINERY" />
		</Property>
]]

local PROD_BUILD_REFINERY = [[
		<Property name="Table" value="GcProductData" _id="BUILD_REFINERY">
			<Property name="ID" value="BUILD_REFINERY" />
			<Property name="Name" value="BUILD_REFINERY_NAME" />
			<Property name="NameLower" value="BUILD_REFINERY_NAME_L" />
			<Property name="Subtitle" value="BUILD_REFINERY_SUBTITLE" />
			<Property name="Description" value="BUILD_REFINERY_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_REFINERY" />
			<Property name="DebrisFile" value="TkModelResource">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
				<Property name="Seed" value="0" />
			</Property>
			<Property name="BaseValue" value="10" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.REFINER1.DDS" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource">
				<Property name="Filename" value="" />
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
			<Property name="StackMultiplier" value="0" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
						<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="TECH_COMP">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="250" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="CASING">
					<Property name="ID" value="CASING" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="20" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="BP_SALVAGE">
					<Property name="ID" value="BP_SALVAGE" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="18" />
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
			<Property name="WikiCategory" value="Tech" />
			<Property name="FossilCategory" value="GcFossilCategory">
				<Property name="FossilCategory" value="None" />
			</Property>
			<Property name="CorvettePartCategory" value="GcCorvettePartCategory">
				<Property name="CorvettePartCategory" value="None" />
			</Property>
			<Property name="CorvetteRewardFrequency" value="0.000000" />
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

local PURCH_BUILD_REFINERY = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_REFINERY" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_REFINERY = [[
<Property name="Items" value="BUILD_REFINERY" />
]]

local NODE_BUILD_REFINERY = [[
<Property name="Children" value="GcUnlockableItemTreeNode">
	<Property name="Unlockable" value="BUILD_REFINERY" />
	<Property name="Children" />
</Property>
]]

local PART_BUILD_REFINERY = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_REFINERY">
			<Property name="ID" value="_BUILD_REFINERY" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/REFINERY/REFINERY.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Inactive" value="TkModelResource">
						<Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/REFINER1_LOD.SCENE.MBIN" />
						<Property name="Seed" value="0" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local APDDATA_BUILD_REFINERY = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_REFINERY" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="MagicData" value="TkMagicModelData">
				<Property name="Vertices">
					<Property name="Vertices" _index="0">
						<Property name="X" value="-0.909948" />
						<Property name="Y" value="1.444180" />
						<Property name="Z" value="-0.009208" />
					</Property>
					<Property name="Vertices" _index="1">
						<Property name="X" value="-0.887175" />
						<Property name="Y" value="0.589574" />
						<Property name="Z" value="0.528032" />
					</Property>
					<Property name="Vertices" _index="2">
						<Property name="X" value="-0.722537" />
						<Property name="Y" value="0.048266" />
						<Property name="Z" value="0.034410" />
					</Property>
					<Property name="Vertices" _index="3">
						<Property name="X" value="-0.712582" />
						<Property name="Y" value="0.836116" />
						<Property name="Z" value="-0.615253" />
					</Property>
					<Property name="Vertices" _index="4">
						<Property name="X" value="1.094305" />
						<Property name="Y" value="0.896749" />
						<Property name="Z" value="0.169797" />
					</Property>
					<Property name="Vertices" _index="5">
						<Property name="X" value="0.755554" />
						<Property name="Y" value="0.013985" />
						<Property name="Z" value="-0.523160" />
					</Property>
					<Property name="Vertices" _index="6">
						<Property name="X" value="0.709011" />
						<Property name="Y" value="0.666131" />
						<Property name="Z" value="0.601868" />
					</Property>
					<Property name="Vertices" _index="7">
						<Property name="X" value="0.652911" />
						<Property name="Y" value="1.460136" />
						<Property name="Z" value="-0.032464" />
					</Property>
					<Property name="Vertices" _index="8">
						<Property name="X" value="0.433591" />
						<Property name="Y" value="0.945756" />
						<Property name="Z" value="-0.538366" />
					</Property>
					<Property name="Vertices" _index="9">
						<Property name="X" value="0.084901" />
						<Property name="Y" value="-0.099198" />
						<Property name="Z" value="0.630878" />
					</Property>
					<Property name="Vertices" _index="10">
						<Property name="X" value="-0.227987" />
						<Property name="Y" value="1.466780" />
						<Property name="Z" value="0.500367" />
					</Property>
					<Property name="Vertices" _index="11">
						<Property name="X" value="-0.607625" />
						<Property name="Y" value="0.101212" />
						<Property name="Z" value="-0.584863" />
					</Property>
				</Property>
				<Property name="Centre">
					<Property name="X" value="0.092178" />
					<Property name="Y" value="0.683791" />
					<Property name="Z" value="0.007812" />
				</Property>
				<Property name="Radius" value="1.196784" />
			</Property>
			<Property name="NodesCost" value="37" />
			<Property name="TimeCost" value="73872" />
			<Property name="PhysicsCost" value="1" />
			<Property name="MeshesCost" value="16" />
			<Property name="InstanceNodesCost" value="7" />
			<Property name="InstanceTimeCost" value="40259" />
			<Property name="InstanceMeshesCost" value="6" />
			<Property name="LastProfiledTimestamp" value="1788753610" />
			<Property name="InstanceLastProfiledTimestamp" value="1786938825" />
		</Property>
]]

local GRP_HCS_TOOLS = [[
			<Property name="Groups" value="GcBaseBuildingGroup" _id="HCS_TOOLS">
				<Property name="ID" value="HCS_TOOLS" />
				<Property name="Name" value="UI_BUILD_TAB_HCS" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/TABS/BUILDTAB_TECH.DDS" />
			</Property>
				<Property name="DefaultColourIdx" value="0" />
			<Property name="SubGroups">
				<Property name="SubGroups" value="GcBaseBuildingSubGroup" _id="HCS_TOOLS">
					<Property name="Id" value="HCS_TOOLS" />
					<Property name="Name" value="UI_BUILD_SUB_HCS" />
				</Property>
			</Property>
			</Property>
]]

local REW_R_PFISH_GO = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_PFISH_GO">
			<Property name="Id" value="R_PFISH_GO" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionSeeded">
							<Property name="GcRewardMissionSeeded">
								<Property name="Mission" value="GO_FISH" />
								<Property name="MissionNoGroundCombat" value="" />
								<Property name="MissionNoSpaceCombat" value="" />
								<Property name="InheritActiveMultiplayerMissionSeed" value="false" />
								<Property name="SelectMissionAsLocalMissionBoard" value="false" />
								<Property name="ForceUseConversationSeed" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_BIG = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_BIG">
			<Property name="Id" value="R_HF_BIG" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="40" />
								<Property name="AmountMax" value="40" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_10 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_10">
			<Property name="Id" value="R_HF_10" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="25" />
								<Property name="AmountMax" value="25" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_50 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_50">
			<Property name="Id" value="R_HF_50" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="80" />
								<Property name="AmountMax" value="80" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_R1 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_R1">
			<Property name="Id" value="R_HF_R1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="30" />
								<Property name="AmountMax" value="30" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_R25 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_R25">
			<Property name="Id" value="R_HF_R25" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_TOX = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_TOX">
			<Property name="Id" value="R_HF_TOX" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="200" />
								<Property name="AmountMax" value="200" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_EP1 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_EP1">
			<Property name="Id" value="R_HF_EP1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="120" />
								<Property name="AmountMax" value="120" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_EP10 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_EP10">
			<Property name="Id" value="R_HF_EP10" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="350" />
								<Property name="AmountMax" value="350" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_LEG1 = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_LEG1">
			<Property name="Id" value="R_HF_LEG1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="250" />
								<Property name="AmountMax" value="250" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HF_BOSS = [[
		<Property name="MissionBoardTable" value="GcGenericRewardTableEntry" _id="R_HF_BOSS">
			<Property name="Id" value="R_HF_BOSS" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="400" />
								<Property name="AmountMax" value="400" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_HCS_JOBS = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_HCS_JOBS">
			<Property name="Id" value="R_HCS_JOBS" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectAlways" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="20.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_BIG" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="20.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_10" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="2">
						<Property name="PercentageChance" value="15.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_50" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="3">
						<Property name="PercentageChance" value="15.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_R1" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="4">
						<Property name="PercentageChance" value="10.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_R25" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="5">
						<Property name="PercentageChance" value="8.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_TOX" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="6">
						<Property name="PercentageChance" value="8.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_EP1" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="7">
						<Property name="PercentageChance" value="4.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_EP10" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="8">
						<Property name="PercentageChance" value="5.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_LEG1" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="9">
						<Property name="PercentageChance" value="2.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMission">
							<Property name="GcRewardMission">
								<Property name="Mission" value="HCS_FISH_BOSS" />
								<Property name="SetAsSelected" value="false" />
								<Property name="Restart" value="false" />
								<Property name="FailRewardIfMissionActive" value="false" />
								<Property name="AlreadyActiveFailureMessage" value="" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_CASINO_GOLD = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_CASINO_GOLD">
			<Property name="Id" value="R_CASINO_GOLD" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectAlways" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="45.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="12000" />
								<Property name="AmountMax" value="12000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="30.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="25000" />
								<Property name="AmountMax" value="25000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="2">
						<Property name="PercentageChance" value="20.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="50000" />
								<Property name="AmountMax" value="50000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="3">
						<Property name="PercentageChance" value="4.900000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="120000" />
								<Property name="AmountMax" value="120000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="4">
						<Property name="PercentageChance" value="0.100000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="800000" />
								<Property name="AmountMax" value="800000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_CASINO_UNITS = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_CASINO_UNITS">
			<Property name="Id" value="R_CASINO_UNITS" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectAlways" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="50.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="10" />
								<Property name="AmountMax" value="10" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="25.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="40" />
								<Property name="AmountMax" value="40" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="2">
						<Property name="PercentageChance" value="15.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="120" />
								<Property name="AmountMax" value="120" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="3">
						<Property name="PercentageChance" value="8.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="400" />
								<Property name="AmountMax" value="400" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="4">
						<Property name="PercentageChance" value="1.900000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="1200" />
								<Property name="AmountMax" value="1200" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="5">
						<Property name="PercentageChance" value="0.100000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="5000" />
								<Property name="AmountMax" value="5000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_CASINO_NAN = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_CASINO_NAN">
			<Property name="Id" value="R_CASINO_NAN" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectAlways" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="60.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="10" />
								<Property name="AmountMax" value="10" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="25.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="30" />
								<Property name="AmountMax" value="30" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="2">
						<Property name="PercentageChance" value="10.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="80" />
								<Property name="AmountMax" value="80" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="3">
						<Property name="PercentageChance" value="4.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="200" />
								<Property name="AmountMax" value="200" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="4">
						<Property name="PercentageChance" value="0.900000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="500" />
								<Property name="AmountMax" value="500" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="5">
						<Property name="PercentageChance" value="0.100000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="2000" />
								<Property name="AmountMax" value="2000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Specials" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_R_CASINO_BOTE = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_CASINO_BOTE">
			<Property name="Id" value="R_CASINO_BOTE" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="SelectAlways" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="50.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="5000000" />
								<Property name="AmountMax" value="5000000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="1">
						<Property name="PercentageChance" value="35.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMoney">
							<Property name="GcRewardMoney">
								<Property name="AmountMin" value="9000000" />
								<Property name="AmountMax" value="9000000" />
								<Property name="RoundNumber" value="false" />
								<Property name="Currency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="2">
						<Property name="PercentageChance" value="14.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificShip">
							<Property name="GcRewardSpecificShip">
								<Property name="ShipResource" value="GcResourceElement">
									<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN" />
									<Property name="Seed" value="7" />
									<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
										<Property name="Samplers" />
									</Property>
									<Property name="AltId" value="" />
								</Property>
								<Property name="Customisation" value="GcCharacterCustomisationData">
									<Property name="DescriptorGroups" />
									<Property name="PaletteID" value="" />
									<Property name="Colours" />
									<Property name="TextureOptions" />
									<Property name="BoneScales" />
									<Property name="Scale" value="1.000000" />
								</Property>
								<Property name="ShipLayout" value="GcInventoryLayout">
									<Property name="Slots" value="24" />
									<Property name="Seed" value="1" />
									<Property name="Level" value="1" />
								</Property>
								<Property name="ShipInventory" value="GcInventoryContainer">
									<Property name="Slots">
										<Property name="Slots" value="GcInventoryElement" _id="LAUNCHER">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="LAUNCHER" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPJUMP1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPJUMP1" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPGUN1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPGUN1" />
											<Property name="Amount" value="1000" />
											<Property name="MaxAmount" value="1000" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UP_SGUN1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UP_SGUN1" />
											<Property name="Amount" value="-1" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="HYPERDRIVE">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="HYPERDRIVE" />
											<Property name="Amount" value="120" />
											<Property name="MaxAmount" value="120" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UP_HYP2">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UP_HYP2" />
											<Property name="Amount" value="-1" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPSHIELD">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPSHIELD" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
									</Property>
									<Property name="ValidSlotIndices" />
									<Property name="Class" value="GcInventoryClass">
										<Property name="InventoryClass" value="A" />
									</Property>
									<Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
										<Property name="InventoryStackSizeGroup" value="Default" />
									</Property>
									<Property name="BaseStatValues" />
									<Property name="SpecialSlots" />
									<Property name="Width" value="0" />
									<Property name="Height" value="0" />
									<Property name="IsCool" value="false" />
									<Property name="Name" value="" />
									<Property name="Version" value="0" />
									<Property name="NumSlotsFromTech" value="0" />
								</Property>
								<Property name="CostAmount" value="0" />
								<Property name="CostCurrency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
								<Property name="ShipType" value="GcSpaceshipClasses">
									<Property name="ShipClass" value="Scientific" />
								</Property>
								<Property name="UseOverrideSizeType" value="false" />
								<Property name="OverrideSizeType" value="GcInventoryLayoutSizeType">
									<Property name="SizeType" value="SciSmall" />
								</Property>
								<Property name="NameOverride" value="UI_TWIT_SHIP_01_NAME_L" />
								<Property name="IsGift" value="true" />
								<Property name="IsRewardShip" value="true" />
								<Property name="FormatAsSeasonal" value="false" />
								<Property name="ModelViewOverride" value="GcModelViews">
									<Property name="ModelViews" value="None" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="3">
						<Property name="PercentageChance" value="0.900000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificShip">
							<Property name="GcRewardSpecificShip">
								<Property name="ShipResource" value="GcResourceElement">
									<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERSPECIALSWITCH.SCENE.MBIN" />
									<Property name="Seed" value="7" />
									<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
										<Property name="Samplers" />
									</Property>
									<Property name="AltId" value="" />
								</Property>
								<Property name="Customisation" value="GcCharacterCustomisationData">
									<Property name="DescriptorGroups" />
									<Property name="PaletteID" value="" />
									<Property name="Colours" />
									<Property name="TextureOptions" />
									<Property name="BoneScales" />
									<Property name="Scale" value="1.000000" />
								</Property>
								<Property name="ShipLayout" value="GcInventoryLayout">
									<Property name="Slots" value="28" />
									<Property name="Seed" value="1" />
									<Property name="Level" value="1" />
								</Property>
								<Property name="ShipInventory" value="GcInventoryContainer">
									<Property name="Slots">
										<Property name="Slots" value="GcInventoryElement" _id="LAUNCHER">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="LAUNCHER" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPJUMP1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPJUMP1" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPSHIELD">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPSHIELD" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="HYPERDRIVE">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="HYPERDRIVE" />
											<Property name="Amount" value="120" />
											<Property name="MaxAmount" value="120" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPLAS1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPLAS1" />
											<Property name="Amount" value="100" />
											<Property name="MaxAmount" value="1000" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIP_TELEPORT">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIP_TELEPORT" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
									</Property>
									<Property name="ValidSlotIndices" />
									<Property name="Class" value="GcInventoryClass">
										<Property name="InventoryClass" value="S" />
									</Property>
									<Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
										<Property name="InventoryStackSizeGroup" value="Default" />
									</Property>
									<Property name="BaseStatValues" />
									<Property name="SpecialSlots" />
									<Property name="Width" value="0" />
									<Property name="Height" value="0" />
									<Property name="IsCool" value="false" />
									<Property name="Name" value="" />
									<Property name="Version" value="0" />
									<Property name="NumSlotsFromTech" value="0" />
								</Property>
								<Property name="CostAmount" value="0" />
								<Property name="CostCurrency" value="GcCurrency">
									<Property name="Currency" value="Units" />
								</Property>
								<Property name="ShipType" value="GcSpaceshipClasses">
									<Property name="ShipClass" value="Fighter" />
								</Property>
								<Property name="UseOverrideSizeType" value="false" />
								<Property name="OverrideSizeType" value="GcInventoryLayoutSizeType">
									<Property name="SizeType" value="SciSmall" />
								</Property>
								<Property name="NameOverride" value="UI_SWIT_SHIP_01_NAME_L" />
								<Property name="IsGift" value="true" />
								<Property name="IsRewardShip" value="true" />
								<Property name="FormatAsSeasonal" value="false" />
								<Property name="ModelViewOverride" value="GcModelViews">
									<Property name="ModelViews" value="None" />
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem" _index="4">
						<Property name="PercentageChance" value="0.100000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificShip">
							<Property name="GcRewardSpecificShip">
								<Property name="ShipResource" value="GcResourceElement">
									<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/WRACERSE.SCENE.MBIN" />
									<Property name="Seed" value="7" />
									<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
										<Property name="Samplers" />
									</Property>
									<Property name="AltId" value="" />
								</Property>
								<Property name="Customisation" value="GcCharacterCustomisationData">
									<Property name="DescriptorGroups" />
									<Property name="PaletteID" value="" />
									<Property name="Colours" />
									<Property name="TextureOptions" />
									<Property name="BoneScales" />
									<Property name="Scale" value="1.000000" />
								</Property>
								<Property name="ShipLayout" value="GcInventoryLayout">
									<Property name="Slots" value="36" />
									<Property name="Seed" value="1" />
									<Property name="Level" value="1" />
								</Property>
								<Property name="ShipInventory" value="GcInventoryContainer">
									<Property name="Slots">
										<Property name="Slots" value="GcInventoryElement" _id="UP_PULSE3">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UP_PULSE3" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UP_PULSE3" _index="1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UP_PULSE3" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="T_SHIP_GOLD">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="T_SHIP_GOLD" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPLAS1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPLAS1" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPGUN1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPGUN1" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UP_PULSE4">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UP_PULSE4" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="LAUNCHER">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="LAUNCHER" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UT_LAUNCHCHARGE">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UT_LAUNCHCHARGE" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPSHIELD">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPSHIELD" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="SHIPJUMP1">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="SHIPJUMP1" />
											<Property name="Amount" value="200" />
											<Property name="MaxAmount" value="200" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="T_BOBBLE_ATLAS">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="T_BOBBLE_ATLAS" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UT_SHIPLAS">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UT_SHIPLAS" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UT_SHIPGUN">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UT_SHIPGUN" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="HYPERDRIVE">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="HYPERDRIVE" />
											<Property name="Amount" value="120" />
											<Property name="MaxAmount" value="120" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
										<Property name="Slots" value="GcInventoryElement" _id="UT_SHIPSHIELD">
											<Property name="Type" value="GcInventoryType">
												<Property name="InventoryType" value="Technology" />
											</Property>
											<Property name="Id" value="UT_SHIPSHIELD" />
											<Property name="Amount" value="0" />
											<Property name="MaxAmount" value="100" />
											<Property name="DamageFactor" value="0.000000" />
											<Property name="FullyInstalled" value="true" />
											<Property name="AddedAutomatically" value="false" />
											<Property name="Index" value="GcInventoryIndex">
												<Property name="X" value="-1" />
												<Property name="Y" value="-1" />
											</Property>
										</Property>
									</Property>
									<Property name="ValidSlotIndices" />
									<Property name="Class" value="GcInventoryClass">
										<Property name="InventoryClass" value="S" />
									</Property>
									<Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
										<Property name="InventoryStackSizeGroup" value="Default" />
									</Property>
									<Property name="BaseStatValues" />
									<Property name="SpecialSlots" />
									<Property name="Width" value="0" />
									<Property name="Height" value="0" />
									<Property name="IsCool" value="false" />
									<Property name="Name" value="" />
									<Property name="Version" value="0" />
									<Property name="NumSlotsFromTech" value="0" />
								</Property>
								<Property name="CostAmount" value="1600" />
								<Property name="CostCurrency" value="GcCurrency">
									<Property name="Currency" value="Nanites" />
								</Property>
								<Property name="ShipType" value="GcSpaceshipClasses">
									<Property name="ShipClass" value="Royal" />
								</Property>
								<Property name="UseOverrideSizeType" value="true" />
								<Property name="OverrideSizeType" value="GcInventoryLayoutSizeType">
									<Property name="SizeType" value="RoyLarge" />
								</Property>
								<Property name="NameOverride" value="UI_SHIP_TGA_NAME_L" />
								<Property name="IsGift" value="true" />
								<Property name="IsRewardShip" value="true" />
								<Property name="FormatAsSeasonal" value="false" />
								<Property name="ModelViewOverride" value="GcModelViews">
									<Property name="ModelViews" value="None" />
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local COST_C_CASINO_GOLD = [[
		<Property name="InteractionTable" value="GcCostTableEntry" _id="C_CASINO_GOLD">
			<Property name="Id" value="C_CASINO_GOLD" />
			<Property name="DisplayCost" value="true" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostSubstance">
				<Property name="GcCostSubstance">
					<Property name="Default" value="GcDefaultMissionSubstanceEnum">
						<Property name="DefaultSubstanceType" value="None" />
					</Property>
					<Property name="Id" value="ASTEROID2" />
					<Property name="UseScanEventToDetermineLocalSubstance" value="" />
					<Property name="UseSpecificPlanetIndexForLocalSubstance" value="-1" />
					<Property name="UseRandomPlanetIndex" value="false" />
					<Property name="LocalSubstanceType" value="GcLocalSubstanceType">
						<Property name="LocalSubstanceType" value="AnyDeposit" />
					</Property>
					<Property name="Amount" value="100" />
					<Property name="UseDefaultAmount" value="false" />
					<Property name="TakeAmountFromSeasonData" value="false" />
				</Property>
			</Property>
		</Property>
]]

local COST_C_CASINO_UNITS = [[
		<Property name="InteractionTable" value="GcCostTableEntry" _id="C_CASINO_UNITS">
			<Property name="Id" value="C_CASINO_UNITS" />
			<Property name="DisplayCost" value="true" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostMoney">
				<Property name="GcCostMoney">
					<Property name="Cost" value="250000" />
					<Property name="CostCurrency" value="GcCurrency">
						<Property name="Currency" value="Units" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local COST_C_CASINO_NAN = [[
		<Property name="InteractionTable" value="GcCostTableEntry" _id="C_CASINO_NAN">
			<Property name="Id" value="C_CASINO_NAN" />
			<Property name="DisplayCost" value="true" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostMoney">
				<Property name="GcCostMoney">
					<Property name="Cost" value="250" />
					<Property name="CostCurrency" value="GcCurrency">
						<Property name="Currency" value="Nanites" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local COST_C_CASINO_BOTE = [[
		<Property name="InteractionTable" value="GcCostTableEntry" _id="C_CASINO_BOTE">
			<Property name="Id" value="C_CASINO_BOTE" />
			<Property name="DisplayCost" value="true" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostMoney">
				<Property name="GcCostMoney">
					<Property name="Cost" value="10000000" />
					<Property name="CostCurrency" value="GcCurrency">
						<Property name="Currency" value="Units" />
					</Property>
				</Property>
			</Property>
		</Property>
]]

local M_HCS_FISH_BIG = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_BIG">
			<Property name="MissionID" value="HCS_FISH_BIG" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_BIG_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_BIG_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="1" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Junk" />
												</Property>
												<Property name="Size" value="Large">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_BIG" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_10 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_10">
			<Property name="MissionID" value="HCS_FISH_10" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_10_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_10_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="10" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Junk" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_10" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_50 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_50">
			<Property name="MissionID" value="HCS_FISH_50" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_50_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_50_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="50" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Junk" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_50" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_R1 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_R1">
			<Property name="MissionID" value="HCS_FISH_R1" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_R1_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_R1_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="1" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Rare" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_R1" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_R25 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_R25">
			<Property name="MissionID" value="HCS_FISH_R25" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_R25_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_R25_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="25" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Rare" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_R25" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_TOX = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_TOX">
			<Property name="MissionID" value="HCS_FISH_TOX" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="UI_FISH_TOX_EPIC_S1_NAME" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="32" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_TOX_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED18_BONEFISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED18_BONEFISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED18_BONEFISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions">
								<Property name="Conditions" value="GcMissionConditionHasFish">
									<Property name="GcMissionConditionHasFish">
										<Property name="Amount" value="1" />
										<Property name="TargetFishInfo" value="GcFishData">
											<Property name="ProductID" value="F_TOX_LEG_L1" />
											<Property name="Quality" value="GcItemQuality">
												<Property name="ItemQuality" value="Common" />
											</Property>
											<Property name="Size" value="GcFishSize">
												<Property name="FishSize" value="Small" />
											</Property>
											<Property name="Time" value="GcFishingTime">
												<Property name="FishingTime" value="Both" />
											</Property>
											<Property name="Biome">
												<Property name="Lush" value="false" />
												<Property name="Toxic" value="false" />
												<Property name="Scorched" value="false" />
												<Property name="Radioactive" value="false" />
												<Property name="Frozen" value="false" />
												<Property name="Barren" value="false" />
												<Property name="Dead" value="false" />
												<Property name="Weird" value="false" />
												<Property name="Red" value="false" />
												<Property name="Green" value="false" />
												<Property name="Blue" value="false" />
												<Property name="Test" value="false" />
												<Property name="Swamp" value="false" />
												<Property name="Lava" value="false" />
												<Property name="Waterworld" value="false" />
												<Property name="GasGiant" value="false" />
												<Property name="All" value="false" />
											</Property>
											<Property name="NeedsStorm" value="false" />
											<Property name="RequiresMissionActive" value="" />
											<Property name="MissionSeed" value="NONE" />
											<Property name="MissionMustAlsoBeSelected" value="true" />
											<Property name="MissionCatchChanceOverride" value="0.000000" />
											<Property name="CatchIncrementsStat" value="" />
										</Property>
										<Property name="QualityTest" value="TkEqualityEnum">
											<Property name="EqualityEnum" value="Equal" />
										</Property>
										<Property name="SizeTest" value="TkEqualityEnum">
											<Property name="EqualityEnum" value="Equal" />
										</Property>
										<Property name="TakeAmountFromSeasonData" value="false" />
									</Property>
								</Property>
								<Property name="Conditions" value="GcMissionConditionHasFish">
									<Property name="GcMissionConditionHasFish">
										<Property name="Amount" value="1" />
										<Property name="TargetFishInfo" value="GcFishData">
											<Property name="ProductID" value="F_ALL_RARE_L1" />
											<Property name="Quality" value="GcItemQuality">
												<Property name="ItemQuality" value="Common" />
											</Property>
											<Property name="Size" value="GcFishSize">
												<Property name="FishSize" value="Small" />
											</Property>
											<Property name="Time" value="GcFishingTime">
												<Property name="FishingTime" value="Both" />
											</Property>
											<Property name="Biome">
												<Property name="Lush" value="false" />
												<Property name="Toxic" value="false" />
												<Property name="Scorched" value="false" />
												<Property name="Radioactive" value="false" />
												<Property name="Frozen" value="false" />
												<Property name="Barren" value="false" />
												<Property name="Dead" value="false" />
												<Property name="Weird" value="false" />
												<Property name="Red" value="false" />
												<Property name="Green" value="false" />
												<Property name="Blue" value="false" />
												<Property name="Test" value="false" />
												<Property name="Swamp" value="false" />
												<Property name="Lava" value="false" />
												<Property name="Waterworld" value="false" />
												<Property name="GasGiant" value="false" />
												<Property name="All" value="false" />
											</Property>
											<Property name="NeedsStorm" value="false" />
											<Property name="RequiresMissionActive" value="" />
											<Property name="MissionSeed" value="NONE" />
											<Property name="MissionMustAlsoBeSelected" value="true" />
											<Property name="MissionCatchChanceOverride" value="0.000000" />
											<Property name="CatchIncrementsStat" value="" />
										</Property>
										<Property name="QualityTest" value="TkEqualityEnum">
											<Property name="EqualityEnum" value="Equal" />
										</Property>
										<Property name="SizeTest" value="TkEqualityEnum">
											<Property name="EqualityEnum" value="Equal" />
										</Property>
										<Property name="TakeAmountFromSeasonData" value="true" />
									</Property>
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="wait for has fish laser" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED18_BONEFISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED18_BONEFISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED18_BONEFISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED18_BONEFISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED18_BONEFISH_MSG3" />
											<Property name="Amount" value="1" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish">
													<Property name="SpecificFish" value="F_TOX_EPIC_S1" _index="0" />
													<Property name="SpecificFish" value="F_ALL_RARE_L1" _index="1" />
												</Property>
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Rare" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="false" />
													<Property name="Toxic" value="false" />
													<Property name="Scorched" value="false" />
													<Property name="Radioactive" value="false" />
													<Property name="Frozen" value="false" />
													<Property name="Barren" value="false" />
													<Property name="Dead" value="false" />
													<Property name="Weird" value="false" />
													<Property name="Red" value="false" />
													<Property name="Green" value="false" />
													<Property name="Blue" value="false" />
													<Property name="Test" value="false" />
													<Property name="Swamp" value="false" />
													<Property name="Lava" value="false" />
													<Property name="Waterworld" value="false" />
													<Property name="GasGiant" value="false" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="true" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_TOX" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_EP1 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_EP1">
			<Property name="MissionID" value="HCS_FISH_EP1" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_EP1_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_EP1_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="1" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Epic" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_EP1" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_EP10 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_EP10">
			<Property name="MissionID" value="HCS_FISH_EP10" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_EP10_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_EP10_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="10" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Epic" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_EP10" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_LEG1 = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_LEG1">
			<Property name="MissionID" value="HCS_FISH_LEG1" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_LEG1_TXT" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="29" />
					<Property name="Progress" value="4" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="30" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="31" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="32" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="33" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="5">
					<Property name="Version" value="34" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="6">
					<Property name="Version" value="35" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="7">
					<Property name="Version" value="36" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="8">
					<Property name="Version" value="37" />
					<Property name="Progress" value="3" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="9">
					<Property name="Version" value="38" />
					<Property name="Progress" value="3" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="main objective group" />
							<Property name="ObjectiveID" value="HCS_FISH_LEG1_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyFalse" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="None" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
								<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
								<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions" />
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="0" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="0" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceWaitForConditions">
										<Property name="GcMissionSequenceWaitForConditions">
											<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
													<Property name="GcMissionConditionTechnologyKnown">
														<Property name="Technology" value="FISHLASER" />
														<Property name="DependentOnSeasonMilestone" value="false" />
														<Property name="TakeTechFromSeasonData" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="AllowedToFormatObjectives" value="false" />
											<Property name="ForceAllowMissionRestart" value="false" />
											<Property name="ForceAllowMissionRestartEvent" value="" />
											<Property name="DebugText" value="" />
											<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
												<Property name="MissionMarkup" value="None" />
											</Property>
										</Property>
									</Property>
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions">
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
											<Property name="Version" value="29" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
											<Property name="Version" value="30" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
											<Property name="Version" value="31" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
											<Property name="Version" value="32" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
											<Property name="Version" value="33" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
											<Property name="Version" value="34" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
											<Property name="Version" value="35" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
											<Property name="Version" value="36" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
											<Property name="Version" value="37" />
											<Property name="Progress" value="1" />
										</Property>
										<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
											<Property name="Version" value="38" />
											<Property name="Progress" value="1" />
										</Property>
									</Property>
									<Property name="Stage" value="GcMissionSequenceFish">
										<Property name="GcMissionSequenceFish">
											<Property name="Message" value="UI_EXPED_CATCH_FISH_MSG4" />
											<Property name="MessageAvailableNearby" value="UI_EXPED_CATCH_FISH_MSG2" />
											<Property name="MessageNoneInSystem" value="UI_EXPED_CATCH_FISH_MSG1" />
											<Property name="MessageNoFishLaserKnown" value="" />
											<Property name="MessageNoFishLaserKnownNexus" value="" />
											<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_CATCH_FISH_MSG5" />
											<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_CATCH_FISH_MSG3" />
											<Property name="Amount" value="1" />
											<Property name="FromNow" value="true" />
											<Property name="TargetFishInfo" value="GcMissionFishData">
												<Property name="SpecificFish" />
												<Property name="Quality" value="GcItemQuality">
													<Property name="ItemQuality" value="Legendary" />
												</Property>
												<Property name="Size" value="GcFishSize">
													<Property name="FishSize" value="Small" />
												</Property>
												<Property name="Time" value="GcFishingTime">
													<Property name="FishingTime" value="Both" />
												</Property>
												<Property name="Biome">
													<Property name="Lush" value="true" />
													<Property name="Toxic" value="true" />
													<Property name="Scorched" value="true" />
													<Property name="Radioactive" value="true" />
													<Property name="Frozen" value="true" />
													<Property name="Barren" value="true" />
													<Property name="Dead" value="true" />
													<Property name="Weird" value="true" />
													<Property name="Red" value="true" />
													<Property name="Green" value="true" />
													<Property name="Blue" value="true" />
													<Property name="Test" value="true" />
													<Property name="Swamp" value="true" />
													<Property name="Lava" value="true" />
													<Property name="Waterworld" value="true" />
													<Property name="GasGiant" value="true" />
													<Property name="All" value="true" />
												</Property>
												<Property name="NeedsStorm" value="false" />
											</Property>
											<Property name="QualityTestIsEqualOrGreater" value="true" />
											<Property name="SizeTestIsEqualOrGreater" value="true" />
											<Property name="TakeAmountFromDefaultNumber" value="false" />
											<Property name="TakeAmountFromSeasonData" value="false" />
											<Property name="DepthToFormatIntoText" value="0.000000" />
											<Property name="TakeDepthFromSeasonData" value="false" />
											<Property name="NeverCompleteSequence" value="false" />
											<Property name="FormatStatIntoText" value="" />
											<Property name="Multiplayer" value="false" />
											<Property name="DebugText" value="Go fish!" />
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="2" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="2" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="29" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="30" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="31" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="32" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="33" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="5">
							<Property name="Version" value="34" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="6">
							<Property name="Version" value="35" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="7">
							<Property name="Version" value="36" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="8">
							<Property name="Version" value="37" />
							<Property name="Progress" value="3" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="9">
							<Property name="Version" value="38" />
							<Property name="Progress" value="3" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_LEG1" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local M_HCS_FISH_BOSS = [[
		<Property name="Missions" value="GcGenericMissionSequence" _id="HCS_FISH_BOSS">
			<Property name="MissionID" value="HCS_FISH_BOSS" />
			<Property name="MissionClass" value="Secondary" />
			<Property name="MissionIsCritical" value="false" />
			<Property name="MissionObjective" value="" />
			<Property name="MissionTitles" value="GcNumberedTextList">
				<Property name="Format" value="UI_FISH_BOSS_JELLY_NAME" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionSubtitles" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_SUB" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionDescriptions" value="GcNumberedTextList">
				<Property name="Format" value="HCS_FISH_JOB_DESC" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
				<Property name="ApplicableSeasonNumbers" />
				<Property name="MissionTitle" value="" />
				<Property name="MissionSubtitle" value="" />
				<Property name="MissionDescription" value="" />
			</Property>
			<Property name="MissionDescSwitchOverride" value="" />
			<Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionA" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionB" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="MissionProcDescriptionC" value="GcNumberedTextList">
				<Property name="Format" value="" />
				<Property name="Count" value="1" />
			</Property>
			<Property name="UseScanEventDetailsInLogInfo" value="false" />
			<Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
			<Property name="MissionIcon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.MSHOP.DDS" />
			</Property>
			<Property name="MissionIconSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.ON.DDS" />
			</Property>
			<Property name="MissionIconNotSelected" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS" />
			</Property>
			<Property name="MissionPriority" value="0" />
			<Property name="MissionCategory" value="GcMissionCategory">
				<Property name="MissionCategory" value="Mission" />
			</Property>
			<Property name="MissionPageHint" value="GcMissionPageHint">
				<Property name="MissionPageHint" value="None" />
			</Property>
			<Property name="MissionPageLocID" value="" />
			<Property name="MissionBuildMenuHint" value="" />
			<Property name="MissionHasColourOverride" value="false" />
			<Property name="MissionColourOverride">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="BeginCheckFrequency" value="1" />
			<Property name="WikiMissionBlockedBySeasons" />
			<Property name="DefaultItems" value="GcDefaultMissionItemsTable">
				<Property name="PrimarySubstances" />
				<Property name="SecondarySubstances" />
				<Property name="PrimaryProducts" />
				<Property name="SecondaryProducts" />
				<Property name="AmountMin" value="0" />
				<Property name="AmountMax" value="0" />
				<Property name="AmountShouldBeRoundNumber" value="false" />
			</Property>
			<Property name="PrefixTitle" value="true" />
			<Property name="NextMissionHint" value="" />
			<Property name="MessageComplete" value="Default" />
			<Property name="MessageStart" value="Default" />
			<Property name="MissionBoardOptions" value="GcMissionBoardOptions">
				<Property name="Type" value="GcMissionType">
					<Property name="MissionType" value="SpaceCombat" />
				</Property>
				<Property name="Difficulty" value="GcMissionDifficulty">
					<Property name="MissionDifficulty" value="Normal" />
				</Property>
				<Property name="MinRank" value="0" />
				<Property name="CloseMissionGiver" value="false" />
				<Property name="IsGuildShopMission" value="false" />
				<Property name="IsPlanetProcMission" value="false" />
				<Property name="IsMultiplayerEventMission" value="false" />
				<Property name="RewardPenaltyOnAbandon" value="" />
				<Property name="Faction" />
				<Property name="Weighting" value="100" />
				<Property name="IgnoreCalculatedObjective" value="false" />
				<Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
				<Property name="DefaultItemInitialWarpScanEvents" />
				<Property name="DefaultItemTypeForInitialWarp" value="None" />
				<Property name="BasePartBlueprints" />
				<Property name="MandatorySalvageEquipment" />
				<Property name="RequireUncompletedPOI" value="false" />
				<Property name="RequireUncompletedPOIOfType" value="GcSpacePoiType">
					<Property name="SpacePoiType" value="AsteroidBelt" />
				</Property>
			</Property>
			<Property name="AutoStart" value="None" />
			<Property name="RestartOnCompletion" value="false" />
			<Property name="CancelSetsComplete" value="false" />
			<Property name="Dialog" value="GcAlienPuzzleTable">
				<Property name="Table" />
			</Property>
			<Property name="ScanEvents" />
			<Property name="Rewards" />
			<Property name="Costs" />
			<Property name="TradingDataOverride" value="GcTradeData">
				<Property name="AlwaysPresentProducts" />
				<Property name="AlwaysPresentSubstances" />
				<Property name="OptionalProducts" />
				<Property name="OptionalSubstances" />
				<Property name="AlwaysConsideredBarterProducts" />
				<Property name="BarterAcceptanceCurve" value="TkCurveType">
					<Property name="Curve" value="Linear" />
				</Property>
				<Property name="BarterPriceMultiplier" value="1.000000" />
				<Property name="BarterItemPreferenceFloor" value="0.500000" />
				<Property name="MinItemsForSale" value="5" />
				<Property name="MaxItemsForSale" value="15" />
				<Property name="PercentageOfItemsAreProducts" value="0.300000" />
				<Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
				<Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
				<Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
				<Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
				<Property name="ShowSeasonRewards" value="false" />
				<Property name="UseBarterForBuy" value="false" />
				<Property name="MinAmountOfProductAvailable">
					<Property name="Poor" value="10" />
					<Property name="Average" value="10" />
					<Property name="Wealthy" value="10" />
					<Property name="Pirate" value="10" />
				</Property>
				<Property name="MaxAmountOfProductAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MinAmountOfSubstanceAvailable">
					<Property name="Poor" value="100" />
					<Property name="Average" value="100" />
					<Property name="Wealthy" value="100" />
					<Property name="Pirate" value="100" />
				</Property>
				<Property name="MaxAmountOfSubstanceAvailable">
					<Property name="Poor" value="1000" />
					<Property name="Average" value="1000" />
					<Property name="Wealthy" value="1000" />
					<Property name="Pirate" value="1000" />
				</Property>
				<Property name="MinExtraSystemProducts">
					<Property name="Poor" value="2" />
					<Property name="Average" value="2" />
					<Property name="Wealthy" value="2" />
					<Property name="Pirate" value="2" />
				</Property>
				<Property name="MaxExtraSystemProducts">
					<Property name="Poor" value="4" />
					<Property name="Average" value="4" />
					<Property name="Wealthy" value="4" />
					<Property name="Pirate" value="4" />
				</Property>
				<Property name="TradeProductsPriceImprovements">
					<Property name="Poor" value="0.000000" />
					<Property name="Average" value="0.000000" />
					<Property name="Wealthy" value="0.000000" />
					<Property name="Pirate" value="0.000000" />
				</Property>
			</Property>
			<Property name="StartConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="CancelConditionTest" value="GcMissionConditionTest">
				<Property name="ConditionTest" value="AnyFalse" />
			</Property>
			<Property name="StartIsCancel" value="false" />
			<Property name="StartingConditions" />
			<Property name="CancelingConditions" />
			<Property name="FinalStageVersions">
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="0">
					<Property name="Version" value="34" />
					<Property name="Progress" value="8" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="1">
					<Property name="Version" value="35" />
					<Property name="Progress" value="7" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="2">
					<Property name="Version" value="36" />
					<Property name="Progress" value="7" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="3">
					<Property name="Version" value="37" />
					<Property name="Progress" value="7" />
				</Property>
				<Property name="FinalStageVersions" value="GcGenericMissionVersionProgress" _index="4">
					<Property name="Version" value="38" />
					<Property name="Progress" value="7" />
				</Property>
			</Property>
			<Property name="Stages">
				<Property name="Stages" value="GcGenericMissionStage" _index="0">
					<Property name="Versions" />
					<Property name="Stage" value="GcMissionSequenceGroup">
						<Property name="GcMissionSequenceGroup">
							<Property name="Silent" value="false" />
							<Property name="Icon" value="TkTextureResource">
								<Property name="Filename" value="" />
							</Property>
							<Property name="PageHint" value="GcMissionPageHint">
								<Property name="MissionPageHint" value="None" />
							</Property>
							<Property name="GetPageHintFromInventoryHint" value="true" />
							<Property name="PageDataLocID" value="" />
							<Property name="BuildMenuHint" value="" />
							<Property name="InventoryHint" value="" />
							<Property name="TerrainTarget" value="" />
							<Property name="FoodTarget" value="" />
							<Property name="DebugText" value="fight boss group" />
							<Property name="ObjectiveID" value="HCS_FISH_BOSS_OBJ" />
							<Property name="ObjectiveTipID" value="UI_EXPED_KILL_JELLYBOSS_OBJ_TIP" />
							<Property name="HasCategoryOverride" value="false" />
							<Property name="OverrideCategory" value="GcMissionCategory">
								<Property name="MissionCategory" value="Mission" />
							</Property>
							<Property name="HasColourOverride" value="false" />
							<Property name="ColourOverride">
								<Property name="R" value="1.000000" />
								<Property name="G" value="1.000000" />
								<Property name="B" value="1.000000" />
								<Property name="A" value="1.000000" />
							</Property>
							<Property name="PrefixTitle" value="false" />
							<Property name="PrefixTitleText" value="" />
							<Property name="BlockPinning" value="false" />
							<Property name="AutoPinRepairs" value="false" />
							<Property name="BlockSpaceBattles" value="false" />
							<Property name="ConditionTest" value="GcMissionConditionTest">
								<Property name="ConditionTest" value="AnyTrue" />
							</Property>
							<Property name="HideFromLogIfConditionsMet" value="false" />
							<Property name="DoConsequencesIfNeverActivated" value="true" />
							<Property name="RepeatLogic" value="Loop" />
							<Property name="IconStyle" value="Default" />
							<Property name="GalMapPathOverride" value="None" />
							<Property name="SpecialButtonIcon" value="TkInputEnum">
								<Property name="InputButton" value="None" />
							</Property>
							<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
								<Property name="ObjectivesCanBeFormattedBySequences" value="false" />
								<Property name="FormattableObjective" value="" />
								<Property name="FormattableObjectiveTip" value="" />
							</Property>
							<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
								<Property name="ApplicableSeasonNumbers" />
								<Property name="OverrideObjective" value="" />
								<Property name="OverrideObjectiveTip" value="" />
							</Property>
							<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
								<Property name="TargetMissionSurveyId" value="" />
								<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
								<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
								<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
								<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
								<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
								<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
								<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
							</Property>
							<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
								<Property name="HasCustomNotifyTimer" value="false" />
								<Property name="NotifyDisplayTime" value="20.000000" />
								<Property name="NotifyPauseTime" value="30.000000" />
							</Property>
							<Property name="Conditions">
								<Property name="Conditions" value="GcMissionConditionStatChange">
									<Property name="GcMissionConditionStatChange">
										<Property name="Stat" value="S20_JELLYBOSS" />
										<Property name="StatGroup" value="GLOBAL_STATS" />
									</Property>
								</Property>
							</Property>
							<Property name="Consequences" />
							<Property name="Stages">
								<Property name="Stages" value="GcGenericMissionStage" _index="0">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup">
										<Property name="GcMissionSequenceGroup">
											<Property name="Silent" value="true" />
											<Property name="Icon" value="TkTextureResource">
												<Property name="Filename" value="" />
											</Property>
											<Property name="PageHint" value="GcMissionPageHint">
												<Property name="MissionPageHint" value="None" />
											</Property>
											<Property name="GetPageHintFromInventoryHint" value="true" />
											<Property name="PageDataLocID" value="" />
											<Property name="BuildMenuHint" value="" />
											<Property name="InventoryHint" value="" />
											<Property name="TerrainTarget" value="" />
											<Property name="FoodTarget" value="" />
											<Property name="DebugText" value="is not in boss combat" />
											<Property name="ObjectiveID" value="" />
											<Property name="ObjectiveTipID" value="" />
											<Property name="HasCategoryOverride" value="false" />
											<Property name="OverrideCategory" value="GcMissionCategory">
												<Property name="MissionCategory" value="Mission" />
											</Property>
											<Property name="HasColourOverride" value="false" />
											<Property name="ColourOverride">
												<Property name="R" value="1.000000" />
												<Property name="G" value="1.000000" />
												<Property name="B" value="1.000000" />
												<Property name="A" value="1.000000" />
											</Property>
											<Property name="PrefixTitle" value="false" />
											<Property name="PrefixTitleText" value="" />
											<Property name="BlockPinning" value="false" />
											<Property name="AutoPinRepairs" value="false" />
											<Property name="BlockSpaceBattles" value="false" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyTrue" />
											</Property>
											<Property name="HideFromLogIfConditionsMet" value="false" />
											<Property name="DoConsequencesIfNeverActivated" value="true" />
											<Property name="RepeatLogic" value="None" />
											<Property name="IconStyle" value="Default" />
											<Property name="GalMapPathOverride" value="None" />
											<Property name="SpecialButtonIcon" value="TkInputEnum">
												<Property name="InputButton" value="None" />
											</Property>
											<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
												<Property name="ObjectivesCanBeFormattedBySequences" value="false" />
												<Property name="FormattableObjective" value="" />
												<Property name="FormattableObjectiveTip" value="" />
											</Property>
											<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
												<Property name="ApplicableSeasonNumbers" />
												<Property name="OverrideObjective" value="" />
												<Property name="OverrideObjectiveTip" value="" />
											</Property>
											<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
												<Property name="TargetMissionSurveyId" value="" />
												<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
												<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
												<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
												<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
												<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
												<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
												<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
											</Property>
											<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
												<Property name="HasCustomNotifyTimer" value="false" />
												<Property name="NotifyDisplayTime" value="20.000000" />
												<Property name="NotifyPauseTime" value="30.000000" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionInCombat">
													<Property name="GcMissionConditionInCombat">
														<Property name="CombatType" value="JellyBoss" />
														<Property name="OverrideOSDMessage" value="" />
														<Property name="CheckAllFireteamMembers" value="false" />
														<Property name="EncouragesFightingSentinels" value="false" />
														<Property name="SpaceCombatTextCountsSentinels" value="false" />
														<Property name="SpaceCombatTextCountsPirates" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="Consequences" />
											<Property name="Stages">
												<Property name="Stages" value="GcGenericMissionStage" _index="0">
													<Property name="Versions" />
													<Property name="Stage" value="GcMissionSequenceGroup">
														<Property name="GcMissionSequenceGroup">
															<Property name="Silent" value="true" />
															<Property name="Icon" value="TkTextureResource">
																<Property name="Filename" value="" />
															</Property>
															<Property name="PageHint" value="GcMissionPageHint">
																<Property name="MissionPageHint" value="None" />
															</Property>
															<Property name="GetPageHintFromInventoryHint" value="true" />
															<Property name="PageDataLocID" value="" />
															<Property name="BuildMenuHint" value="" />
															<Property name="InventoryHint" value="" />
															<Property name="TerrainTarget" value="" />
															<Property name="FoodTarget" value="" />
															<Property name="DebugText" value="does not have trigger fish" />
															<Property name="ObjectiveID" value="" />
															<Property name="ObjectiveTipID" value="" />
															<Property name="HasCategoryOverride" value="false" />
															<Property name="OverrideCategory" value="GcMissionCategory">
																<Property name="MissionCategory" value="Mission" />
															</Property>
															<Property name="HasColourOverride" value="false" />
															<Property name="ColourOverride">
																<Property name="R" value="1.000000" />
																<Property name="G" value="1.000000" />
																<Property name="B" value="1.000000" />
																<Property name="A" value="1.000000" />
															</Property>
															<Property name="PrefixTitle" value="false" />
															<Property name="PrefixTitleText" value="" />
															<Property name="BlockPinning" value="false" />
															<Property name="AutoPinRepairs" value="false" />
															<Property name="BlockSpaceBattles" value="false" />
															<Property name="ConditionTest" value="GcMissionConditionTest">
																<Property name="ConditionTest" value="AllTrue" />
															</Property>
															<Property name="HideFromLogIfConditionsMet" value="false" />
															<Property name="DoConsequencesIfNeverActivated" value="true" />
															<Property name="RepeatLogic" value="None" />
															<Property name="IconStyle" value="Default" />
															<Property name="GalMapPathOverride" value="None" />
															<Property name="SpecialButtonIcon" value="TkInputEnum">
																<Property name="InputButton" value="None" />
															</Property>
															<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
																<Property name="ObjectivesCanBeFormattedBySequences" value="true" />
																<Property name="FormattableObjective" value="UI_EXPED_CATCH_FISH_OBJ" />
																<Property name="FormattableObjectiveTip" value="UI_EXPED_CATCH_FISH_OBJ_TIP" />
															</Property>
															<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
																<Property name="ApplicableSeasonNumbers" />
																<Property name="OverrideObjective" value="" />
																<Property name="OverrideObjectiveTip" value="" />
															</Property>
															<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
																<Property name="TargetMissionSurveyId" value="" />
																<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
																<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
																<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
																<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
																<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
																<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
																<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
															</Property>
															<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
																<Property name="HasCustomNotifyTimer" value="false" />
																<Property name="NotifyDisplayTime" value="20.000000" />
																<Property name="NotifyPauseTime" value="30.000000" />
															</Property>
															<Property name="Conditions">
																<Property name="Conditions" value="GcMissionConditionHasProduct">
																	<Property name="GcMissionConditionHasProduct">
																		<Property name="Default" value="GcDefaultMissionProductEnum">
																			<Property name="DefaultProductType" value="None" />
																		</Property>
																		<Property name="Product" value="F_BOSS_JELLY" />
																		<Property name="Amount" value="1" />
																		<Property name="UseDefaultAmount" value="false" />
																		<Property name="SyncWithMissionFireteam" value="true" />
																		<Property name="MustBeImmediatelyAccessible" value="false" />
																		<Property name="ForceSearchFreighterAndChests" value="false" />
																		<Property name="SearchEveryShip" value="false" />
																		<Property name="SearchGrave" value="false" />
																		<Property name="SearchCookingIngredients" value="false" />
																		<Property name="TakeAmountFromSeasonData" value="false" />
																		<Property name="TakeIdFromSeasonData" value="false" />
																		<Property name="DependentOnSeasonMilestone" value="false" />
																		<Property name="UseAmountToAffordRecipe" value="" />
																		<Property name="TakeAffordRecipeFromSeasonData" value="false" />
																		<Property name="UseAffordRecipeForTextFormatting" value="false" />
																		<Property name="Purpose" value="GcItemNeedPurpose">
																			<Property name="ItemPurpose" value="None" />
																		</Property>
																		<Property name="AllowedToSetInventoryHint" value="true" />
																		<Property name="ForceInventoryHintAtAllTimes" value="false" />
																		<Property name="UseProductIconAsMissionIcon" value="false" />
																		<Property name="DoNotFormatText" value="false" />
																		<Property name="UseProductCategory" value="false" />
																		<Property name="ProductCategory" value="GcProductCategory">
																			<Property name="ProductCategory" value="Consumable" />
																		</Property>
																		<Property name="TeachIfNotKnown" value="false" />
																	</Property>
																</Property>
															</Property>
															<Property name="Consequences" />
															<Property name="Stages">
																<Property name="Stages" value="GcGenericMissionStage" _index="0">
																	<Property name="Versions">
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
																			<Property name="Version" value="34" />
																			<Property name="Progress" value="0" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
																			<Property name="Version" value="35" />
																			<Property name="Progress" value="0" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
																			<Property name="Version" value="36" />
																			<Property name="Progress" value="0" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
																			<Property name="Version" value="37" />
																			<Property name="Progress" value="0" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
																			<Property name="Version" value="38" />
																			<Property name="Progress" value="0" />
																		</Property>
																	</Property>
																	<Property name="Stage" value="GcMissionSequenceWaitForConditions">
																		<Property name="GcMissionSequenceWaitForConditions">
																			<Property name="Message" value="UI_EXPED_KILL_JELLYBOSS_MSG0" />
																			<Property name="ConditionTest" value="GcMissionConditionTest">
																				<Property name="ConditionTest" value="AnyTrue" />
																			</Property>
																			<Property name="Conditions">
																				<Property name="Conditions" value="GcMissionConditionMissionCompleted">
																					<Property name="GcMissionConditionMissionCompleted">
																						<Property name="MissionID" value="BIGGS_POI_ALT" />
																						<Property name="SeasonalMissionSeed" value="41" />
																						<Property name="TakeIDFromSeasonData" value="false" />
																						<Property name="CalculateTextMissionTargetFromStageIndex" value="false" />
																						<Property name="CalculateSeasonalSeedFromStageIndexOffset" value="999" />
																					</Property>
																				</Property>
																			</Property>
																			<Property name="AllowedToFormatObjectives" value="false" />
																			<Property name="ForceAllowMissionRestart" value="false" />
																			<Property name="ForceAllowMissionRestartEvent" value="" />
																			<Property name="DebugText" value="finish the milestones first" />
																			<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
																				<Property name="MissionMarkup" value="None" />
																			</Property>
																		</Property>
																	</Property>
																</Property>
																<Property name="Stages" value="GcGenericMissionStage" _index="1">
																	<Property name="Versions">
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
																			<Property name="Version" value="34" />
																			<Property name="Progress" value="1" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
																			<Property name="Version" value="35" />
																			<Property name="Progress" value="1" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
																			<Property name="Version" value="36" />
																			<Property name="Progress" value="1" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
																			<Property name="Version" value="37" />
																			<Property name="Progress" value="1" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
																			<Property name="Version" value="38" />
																			<Property name="Progress" value="1" />
																		</Property>
																	</Property>
																	<Property name="Stage" value="GcMissionSequenceWaitForConditions">
																		<Property name="GcMissionSequenceWaitForConditions">
																			<Property name="Message" value="UI_EXPED_GET_FISHLASER_MSG1" />
																			<Property name="ConditionTest" value="GcMissionConditionTest">
																				<Property name="ConditionTest" value="AnyTrue" />
																			</Property>
																			<Property name="Conditions">
																				<Property name="Conditions" value="GcMissionConditionTechnologyKnown">
																					<Property name="GcMissionConditionTechnologyKnown">
																						<Property name="Technology" value="FISHLASER" />
																						<Property name="DependentOnSeasonMilestone" value="true" />
																						<Property name="TakeTechFromSeasonData" value="false" />
																					</Property>
																				</Property>
																			</Property>
																			<Property name="AllowedToFormatObjectives" value="false" />
																			<Property name="ForceAllowMissionRestart" value="false" />
																			<Property name="ForceAllowMissionRestartEvent" value="" />
																			<Property name="DebugText" value="has fishlaser?" />
																			<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
																				<Property name="MissionMarkup" value="None" />
																			</Property>
																		</Property>
																	</Property>
																</Property>
																<Property name="Stages" value="GcGenericMissionStage" _index="2">
																	<Property name="Versions">
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
																			<Property name="Version" value="34" />
																			<Property name="Progress" value="2" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
																			<Property name="Version" value="35" />
																			<Property name="Progress" value="2" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
																			<Property name="Version" value="36" />
																			<Property name="Progress" value="2" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
																			<Property name="Version" value="37" />
																			<Property name="Progress" value="2" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
																			<Property name="Version" value="38" />
																			<Property name="Progress" value="2" />
																		</Property>
																	</Property>
																	<Property name="Stage" value="GcMissionSequenceFish">
																		<Property name="GcMissionSequenceFish">
																			<Property name="Message" value="UI_EXPED_KILL_JELLYBOSS_MSG4" />
																			<Property name="MessageAvailableNearby" value="UI_EXPED_KILL_JELLYBOSS_MSG2" />
																			<Property name="MessageNoneInSystem" value="UI_EXPED_KILL_JELLYBOSS_MSG1" />
																			<Property name="MessageNoFishLaserKnown" value="" />
																			<Property name="MessageNoFishLaserKnownNexus" value="" />
																			<Property name="MessageNoFishLaserInstalled" value="UI_EXPED_KILL_JELLYBOSS_MSG5" />
																			<Property name="MessageNoFishLaserEquipped" value="UI_EXPED_KILL_JELLYBOSS_MSG3" />
																			<Property name="Amount" value="1" />
																			<Property name="FromNow" value="true" />
																			<Property name="TargetFishInfo" value="GcMissionFishData">
																				<Property name="SpecificFish">
																					<Property name="SpecificFish" value="F_BOSS_JELLY" _index="0" />
																				</Property>
																				<Property name="Quality" value="GcItemQuality">
																					<Property name="ItemQuality" value="Common" />
																				</Property>
																				<Property name="Size" value="GcFishSize">
																					<Property name="FishSize" value="Small" />
																				</Property>
																				<Property name="Time" value="GcFishingTime">
																					<Property name="FishingTime" value="Both" />
																				</Property>
																				<Property name="Biome">
																					<Property name="Lush" value="false" />
																					<Property name="Toxic" value="false" />
																					<Property name="Scorched" value="false" />
																					<Property name="Radioactive" value="false" />
																					<Property name="Frozen" value="false" />
																					<Property name="Barren" value="false" />
																					<Property name="Dead" value="false" />
																					<Property name="Weird" value="false" />
																					<Property name="Red" value="false" />
																					<Property name="Green" value="false" />
																					<Property name="Blue" value="false" />
																					<Property name="Test" value="false" />
																					<Property name="Swamp" value="false" />
																					<Property name="Lava" value="false" />
																					<Property name="Waterworld" value="false" />
																					<Property name="GasGiant" value="false" />
																					<Property name="All" value="true" />
																				</Property>
																				<Property name="NeedsStorm" value="false" />
																			</Property>
																			<Property name="QualityTestIsEqualOrGreater" value="false" />
																			<Property name="SizeTestIsEqualOrGreater" value="false" />
																			<Property name="TakeAmountFromDefaultNumber" value="false" />
																			<Property name="TakeAmountFromSeasonData" value="false" />
																			<Property name="DepthToFormatIntoText" value="0.000000" />
																			<Property name="TakeDepthFromSeasonData" value="false" />
																			<Property name="NeverCompleteSequence" value="false" />
																			<Property name="FormatStatIntoText" value="" />
																			<Property name="Multiplayer" value="false" />
																			<Property name="DebugText" value="Go fish!" />
																		</Property>
																	</Property>
																</Property>
															</Property>
														</Property>
													</Property>
												</Property>
												<Property name="Stages" value="GcGenericMissionStage" _index="1">
													<Property name="Versions" />
													<Property name="Stage" value="GcMissionSequenceGroup">
														<Property name="GcMissionSequenceGroup">
															<Property name="Silent" value="true" />
															<Property name="Icon" value="TkTextureResource">
																<Property name="Filename" value="" />
															</Property>
															<Property name="PageHint" value="GcMissionPageHint">
																<Property name="MissionPageHint" value="None" />
															</Property>
															<Property name="GetPageHintFromInventoryHint" value="true" />
															<Property name="PageDataLocID" value="" />
															<Property name="BuildMenuHint" value="" />
															<Property name="InventoryHint" value="" />
															<Property name="TerrainTarget" value="" />
															<Property name="FoodTarget" value="" />
															<Property name="DebugText" value="has trigger fish" />
															<Property name="ObjectiveID" value="" />
															<Property name="ObjectiveTipID" value="" />
															<Property name="HasCategoryOverride" value="false" />
															<Property name="OverrideCategory" value="GcMissionCategory">
																<Property name="MissionCategory" value="Mission" />
															</Property>
															<Property name="HasColourOverride" value="false" />
															<Property name="ColourOverride">
																<Property name="R" value="1.000000" />
																<Property name="G" value="1.000000" />
																<Property name="B" value="1.000000" />
																<Property name="A" value="1.000000" />
															</Property>
															<Property name="PrefixTitle" value="false" />
															<Property name="PrefixTitleText" value="" />
															<Property name="BlockPinning" value="false" />
															<Property name="AutoPinRepairs" value="false" />
															<Property name="BlockSpaceBattles" value="false" />
															<Property name="ConditionTest" value="GcMissionConditionTest">
																<Property name="ConditionTest" value="AnyFalse" />
															</Property>
															<Property name="HideFromLogIfConditionsMet" value="false" />
															<Property name="DoConsequencesIfNeverActivated" value="true" />
															<Property name="RepeatLogic" value="None" />
															<Property name="IconStyle" value="Default" />
															<Property name="GalMapPathOverride" value="None" />
															<Property name="SpecialButtonIcon" value="TkInputEnum">
																<Property name="InputButton" value="None" />
															</Property>
															<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
																<Property name="ObjectivesCanBeFormattedBySequences" value="false" />
																<Property name="FormattableObjective" value="" />
																<Property name="FormattableObjectiveTip" value="" />
															</Property>
															<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
																<Property name="ApplicableSeasonNumbers" />
																<Property name="OverrideObjective" value="" />
																<Property name="OverrideObjectiveTip" value="" />
															</Property>
															<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
																<Property name="TargetMissionSurveyId" value="" />
																<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
																<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
																<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
																<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
																<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
																<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
																<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
															</Property>
															<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
																<Property name="HasCustomNotifyTimer" value="false" />
																<Property name="NotifyDisplayTime" value="20.000000" />
																<Property name="NotifyPauseTime" value="30.000000" />
															</Property>
															<Property name="Conditions">
																<Property name="Conditions" value="GcMissionConditionHasProduct">
																	<Property name="GcMissionConditionHasProduct">
																		<Property name="Default" value="GcDefaultMissionProductEnum">
																			<Property name="DefaultProductType" value="None" />
																		</Property>
																		<Property name="Product" value="F_BOSS_JELLY" />
																		<Property name="Amount" value="1" />
																		<Property name="UseDefaultAmount" value="false" />
																		<Property name="SyncWithMissionFireteam" value="true" />
																		<Property name="MustBeImmediatelyAccessible" value="false" />
																		<Property name="ForceSearchFreighterAndChests" value="false" />
																		<Property name="SearchEveryShip" value="false" />
																		<Property name="SearchGrave" value="false" />
																		<Property name="SearchCookingIngredients" value="false" />
																		<Property name="TakeAmountFromSeasonData" value="false" />
																		<Property name="TakeIdFromSeasonData" value="false" />
																		<Property name="DependentOnSeasonMilestone" value="false" />
																		<Property name="UseAmountToAffordRecipe" value="" />
																		<Property name="TakeAffordRecipeFromSeasonData" value="false" />
																		<Property name="UseAffordRecipeForTextFormatting" value="false" />
																		<Property name="Purpose" value="GcItemNeedPurpose">
																			<Property name="ItemPurpose" value="None" />
																		</Property>
																		<Property name="AllowedToSetInventoryHint" value="true" />
																		<Property name="ForceInventoryHintAtAllTimes" value="false" />
																		<Property name="UseProductIconAsMissionIcon" value="false" />
																		<Property name="DoNotFormatText" value="false" />
																		<Property name="UseProductCategory" value="false" />
																		<Property name="ProductCategory" value="GcProductCategory">
																			<Property name="ProductCategory" value="Consumable" />
																		</Property>
																		<Property name="TeachIfNotKnown" value="false" />
																	</Property>
																</Property>
															</Property>
															<Property name="Consequences" />
															<Property name="Stages">
																<Property name="Stages" value="GcGenericMissionStage" _index="0">
																	<Property name="Versions">
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
																			<Property name="Version" value="34" />
																			<Property name="Progress" value="3" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
																			<Property name="Version" value="35" />
																			<Property name="Progress" value="3" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
																			<Property name="Version" value="36" />
																			<Property name="Progress" value="3" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
																			<Property name="Version" value="37" />
																			<Property name="Progress" value="3" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
																			<Property name="Version" value="38" />
																			<Property name="Progress" value="3" />
																		</Property>
																	</Property>
																	<Property name="Stage" value="GcMissionSequenceWaitForConditions">
																		<Property name="GcMissionSequenceWaitForConditions">
																			<Property name="Message" value="UI_EXPED_KILL_JELLYBOSS_MSG6" />
																			<Property name="ConditionTest" value="GcMissionConditionTest">
																				<Property name="ConditionTest" value="AnyTrue" />
																			</Property>
																			<Property name="Conditions">
																				<Property name="Conditions" value="GcMissionConditionInCombat">
																					<Property name="GcMissionConditionInCombat">
																						<Property name="CombatType" value="JellyBoss" />
																						<Property name="OverrideOSDMessage" value="" />
																						<Property name="CheckAllFireteamMembers" value="false" />
																						<Property name="EncouragesFightingSentinels" value="false" />
																						<Property name="SpaceCombatTextCountsSentinels" value="false" />
																						<Property name="SpaceCombatTextCountsPirates" value="false" />
																					</Property>
																				</Property>
																			</Property>
																			<Property name="AllowedToFormatObjectives" value="true" />
																			<Property name="ForceAllowMissionRestart" value="false" />
																			<Property name="ForceAllowMissionRestartEvent" value="" />
																			<Property name="DebugText" value="release trigger fish" />
																			<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
																				<Property name="MissionMarkup" value="None" />
																			</Property>
																		</Property>
																	</Property>
																</Property>
																<Property name="Stages" value="GcGenericMissionStage" _index="1">
																	<Property name="Versions">
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
																			<Property name="Version" value="34" />
																			<Property name="Progress" value="4" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
																			<Property name="Version" value="35" />
																			<Property name="Progress" value="4" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
																			<Property name="Version" value="36" />
																			<Property name="Progress" value="4" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
																			<Property name="Version" value="37" />
																			<Property name="Progress" value="4" />
																		</Property>
																		<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
																			<Property name="Version" value="38" />
																			<Property name="Progress" value="4" />
																		</Property>
																	</Property>
																	<Property name="Stage" value="GcMissionSequenceWait">
																		<Property name="GcMissionSequenceWait">
																			<Property name="Time" value="2.000000" />
																			<Property name="DebugText" value="short wait for the jelly to spawn" />
																			<Property name="SuppressMessages" value="true" />
																			<Property name="MultiplyTimeBySeasonValue" value="false" />
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
								</Property>
								<Property name="Stages" value="GcGenericMissionStage" _index="1">
									<Property name="Versions" />
									<Property name="Stage" value="GcMissionSequenceGroup">
										<Property name="GcMissionSequenceGroup">
											<Property name="Silent" value="true" />
											<Property name="Icon" value="TkTextureResource">
												<Property name="Filename" value="" />
											</Property>
											<Property name="PageHint" value="GcMissionPageHint">
												<Property name="MissionPageHint" value="None" />
											</Property>
											<Property name="GetPageHintFromInventoryHint" value="true" />
											<Property name="PageDataLocID" value="" />
											<Property name="BuildMenuHint" value="" />
											<Property name="InventoryHint" value="" />
											<Property name="TerrainTarget" value="" />
											<Property name="FoodTarget" value="" />
											<Property name="DebugText" value="is in boss combat" />
											<Property name="ObjectiveID" value="" />
											<Property name="ObjectiveTipID" value="" />
											<Property name="HasCategoryOverride" value="false" />
											<Property name="OverrideCategory" value="GcMissionCategory">
												<Property name="MissionCategory" value="Mission" />
											</Property>
											<Property name="HasColourOverride" value="false" />
											<Property name="ColourOverride">
												<Property name="R" value="1.000000" />
												<Property name="G" value="1.000000" />
												<Property name="B" value="1.000000" />
												<Property name="A" value="1.000000" />
											</Property>
											<Property name="PrefixTitle" value="false" />
											<Property name="PrefixTitleText" value="" />
											<Property name="BlockPinning" value="false" />
											<Property name="AutoPinRepairs" value="false" />
											<Property name="BlockSpaceBattles" value="false" />
											<Property name="ConditionTest" value="GcMissionConditionTest">
												<Property name="ConditionTest" value="AnyFalse" />
											</Property>
											<Property name="HideFromLogIfConditionsMet" value="false" />
											<Property name="DoConsequencesIfNeverActivated" value="true" />
											<Property name="RepeatLogic" value="None" />
											<Property name="IconStyle" value="Default" />
											<Property name="GalMapPathOverride" value="None" />
											<Property name="SpecialButtonIcon" value="TkInputEnum">
												<Property name="InputButton" value="None" />
											</Property>
											<Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
												<Property name="ObjectivesCanBeFormattedBySequences" value="false" />
												<Property name="FormattableObjective" value="" />
												<Property name="FormattableObjectiveTip" value="" />
											</Property>
											<Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
												<Property name="ApplicableSeasonNumbers" />
												<Property name="OverrideObjective" value="" />
												<Property name="OverrideObjectiveTip" value="" />
											</Property>
											<Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
												<Property name="TargetMissionSurveyId" value="" />
												<Property name="TargetMissionSurveyDefinitelyExists" value="false" />
												<Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
												<Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="" />
												<Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
												<Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
												<Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
												<Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
											</Property>
											<Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
												<Property name="HasCustomNotifyTimer" value="false" />
												<Property name="NotifyDisplayTime" value="20.000000" />
												<Property name="NotifyPauseTime" value="30.000000" />
											</Property>
											<Property name="Conditions">
												<Property name="Conditions" value="GcMissionConditionInCombat">
													<Property name="GcMissionConditionInCombat">
														<Property name="CombatType" value="JellyBoss" />
														<Property name="OverrideOSDMessage" value="" />
														<Property name="CheckAllFireteamMembers" value="false" />
														<Property name="EncouragesFightingSentinels" value="false" />
														<Property name="SpaceCombatTextCountsSentinels" value="false" />
														<Property name="SpaceCombatTextCountsPirates" value="false" />
													</Property>
												</Property>
											</Property>
											<Property name="Consequences" />
											<Property name="Stages">
												<Property name="Stages" value="GcGenericMissionStage" _index="0">
													<Property name="Versions">
														<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
															<Property name="Version" value="34" />
															<Property name="Progress" value="5" />
														</Property>
														<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
															<Property name="Version" value="35" />
															<Property name="Progress" value="5" />
														</Property>
														<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
															<Property name="Version" value="36" />
															<Property name="Progress" value="5" />
														</Property>
														<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
															<Property name="Version" value="37" />
															<Property name="Progress" value="5" />
														</Property>
														<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
															<Property name="Version" value="38" />
															<Property name="Progress" value="5" />
														</Property>
													</Property>
													<Property name="Stage" value="GcMissionSequenceWaitForConditions">
														<Property name="GcMissionSequenceWaitForConditions">
															<Property name="Message" value="UI_EXPED_KILL_JELLYBOSS_MSG7" />
															<Property name="ConditionTest" value="GcMissionConditionTest">
																<Property name="ConditionTest" value="AnyTrue" />
															</Property>
															<Property name="Conditions">
																<Property name="Conditions" value="GcMissionConditionStatChange">
																	<Property name="GcMissionConditionStatChange">
																		<Property name="Stat" value="S20_JELLYBOSS" />
																		<Property name="StatGroup" value="GLOBAL_STATS" />
																	</Property>
																</Property>
															</Property>
															<Property name="AllowedToFormatObjectives" value="true" />
															<Property name="ForceAllowMissionRestart" value="false" />
															<Property name="ForceAllowMissionRestartEvent" value="" />
															<Property name="DebugText" value="fight!" />
															<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
																<Property name="MissionMarkup" value="None" />
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
					</Property>
				</Property>
				<Property name="Stages" value="GcGenericMissionStage" _index="1">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="34" />
							<Property name="Progress" value="6" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="35" />
							<Property name="Progress" value="6" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="36" />
							<Property name="Progress" value="6" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="37" />
							<Property name="Progress" value="6" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="38" />
							<Property name="Progress" value="6" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceWaitForConditions">
<Property name="GcMissionSequenceWaitForConditions">
<Property name="Message" value="HCS_FISH_RETURN" />
<Property name="ConditionTest" value="GcMissionConditionTest">
<Property name="ConditionTest" value="AnyTrue" />
</Property>
<Property name="Conditions">
<Property name="Conditions" value="GcMissionConditionBasePartNear">
<Property name="GcMissionConditionBasePartNear">
<Property name="PartID" value="BUILD_PFISHING" />
<Property name="TakeIDFromSeasonData" value="false" />
<Property name="Distance" value="20" />
</Property>
</Property>
</Property>
<Property name="AllowedToFormatObjectives" value="false" />
<Property name="ForceAllowMissionRestart" value="false" />
<Property name="ForceAllowMissionRestartEvent" value="" />
<Property name="DebugText" value="" />
<Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
<Property name="MissionMarkup" value="None" />
</Property>
</Property>
</Property>

				</Property>
<Property name="Stages" value="GcGenericMissionStage">
					<Property name="Versions">
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="0">
							<Property name="Version" value="34" />
							<Property name="Progress" value="7" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="1">
							<Property name="Version" value="35" />
							<Property name="Progress" value="7" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="2">
							<Property name="Version" value="36" />
							<Property name="Progress" value="7" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="3">
							<Property name="Version" value="37" />
							<Property name="Progress" value="7" />
						</Property>
						<Property name="Versions" value="GcGenericMissionVersionProgress" _index="4">
							<Property name="Version" value="38" />
							<Property name="Progress" value="7" />
						</Property>
					</Property>
<Property name="Stage" value="GcMissionSequenceReward">
<Property name="GcMissionSequenceReward">
<Property name="Message" value="UI_REWARD_FAILED_MSG" />
<Property name="Reward" value="R_HF_BOSS" />
<Property name="DoMissionBoardOverride" value="false" />
<Property name="Silent" value="false" />
<Property name="RewardInventoryOverride" value="None" />
<Property name="DebugText" value="" />
</Property>
</Property>
</Property>
			</Property>
			<Property name="ForcesBuildMenuHint" value="false" />
			<Property name="IsProceduralAllowed" value="false" />
			<Property name="IsRecurring" value="false" />
			<Property name="IsLegacy" value="false" />
			<Property name="BlocksPinning" value="false" />
			<Property name="CanRenounce" value="false" />
			<Property name="UseCommunityMissionForLog" value="" />
			<Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
			<Property name="TelemetryUpload" value="false" />
			<Property name="UseSeasonTitleOverride" value="false" />
			<Property name="RequiresSettlement" value="false" />
			<Property name="SettlementAbandonOSD" value="" />
		</Property>

]]

local NP_PNEXUS_PUZZLE = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="PNEXUS_PUZZLE">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="PNEXUS_PUZZLE" />
			<Property name="Race" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="Type" value="GcInteractionType">
				<Property name="InteractionType" value="MessageBeacon" />
			</Property>
			<Property name="Category" value="GcAlienPuzzleCategory">
				<Property name="AlienPuzzleCategory" value="Default" />
			</Property>
			<Property name="AdditionalOptions" value="None" />
			<Property name="Title" value="BUILD_PNEXUS_NAME" />
			<Property name="Text" value="PNEXUS_CHOOSE_DESC" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="false" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="PNEXUS_OPTION" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="true" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="PNEXUS_RESEARCH" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="ALL_REQUEST_LEAVE" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
			</Property>
			<Property name="AdditionalText" />
			<Property name="AdditionalTextAlien" />
			<Property name="Mood" value="GcAlienMood">
				<Property name="Mood" value="Neutral" />
			</Property>
			<Property name="Prop" value="GcNPCPropType">
				<Property name="NPCProp" value="DontCare" />
			</Property>
			<Property name="AdvancedInteractionFlow" />
			<Property name="PersistancyBufferOverride" value="None" />
			<Property name="CustomFreighterTextIndex" value="-1" />
			<Property name="RadialInteraction" value="false" />
			<Property name="UseTitleOverrideInLabel" value="true" />
			<Property name="AllowNoOptions" value="false" />
			<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
		</Property>
]]

local NP_PNEXUS_RESEARCH = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="PNEXUS_RESEARCH">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="PNEXUS_RESEARCH" />
			<Property name="Race" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="Type" value="GcInteractionType">
				<Property name="InteractionType" value="MessageBeacon" />
			</Property>
			<Property name="Category" value="GcAlienPuzzleCategory">
				<Property name="AlienPuzzleCategory" value="Default" />
			</Property>
			<Property name="AdditionalOptions" value="None" />
			<Property name="Title" value="BUILD_PNEXUS_NAME" />
			<Property name="Text" value="PNEXUS_CHOOSE_DESC" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="BLD_AM_SHIP_NAME_L" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="TREE_SHIP" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_BP_ANALYSER_NAME_L" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="TREE_BASE" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="BLD_AM_SUIT_NAME_L" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="TREE_SUIT" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="BLD_AM_WEAPON_NAME_L" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="TREE_WEAP" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="PNEXUS_MORE_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="true" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="PNEXUS_RESEARCH2" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="PNEXUS_BACK_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="true" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="PNEXUS_PUZZLE" />
						<Property name="SelectedOnBackOut" value="true" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
			</Property>
			<Property name="AdditionalText" />
			<Property name="AdditionalTextAlien" />
			<Property name="Mood" value="GcAlienMood">
				<Property name="Mood" value="Neutral" />
			</Property>
			<Property name="Prop" value="GcNPCPropType">
				<Property name="NPCProp" value="DontCare" />
			</Property>
			<Property name="AdvancedInteractionFlow" />
			<Property name="PersistancyBufferOverride" value="None" />
			<Property name="CustomFreighterTextIndex" value="-1" />
			<Property name="RadialInteraction" value="false" />
			<Property name="UseTitleOverrideInLabel" value="true" />
			<Property name="AllowNoOptions" value="false" />
			<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
		</Property>
]]

local NP_PNEXUS_RESEARCH2 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="PNEXUS_RESEARCH2">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="PNEXUS_RESEARCH2" />
			<Property name="Race" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="Type" value="GcInteractionType">
				<Property name="InteractionType" value="MessageBeacon" />
			</Property>
			<Property name="Category" value="GcAlienPuzzleCategory">
				<Property name="AlienPuzzleCategory" value="Default" />
			</Property>
			<Property name="AdditionalOptions" value="None" />
			<Property name="Title" value="BUILD_PNEXUS_NAME" />
			<Property name="Text" value="PNEXUS_CHOOSE_DESC" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_NEXUS_PRODUCTLAB_LABEL" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="TREE_CRAFT" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="BLD_AM_EXOCRAFT_NAME_L" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="TREE_EXO" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="PNEXUS_BACK_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="true" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="PNEXUS_PUZZLE" />
						<Property name="SelectedOnBackOut" value="true" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
			</Property>
			<Property name="AdditionalText" />
			<Property name="AdditionalTextAlien" />
			<Property name="Mood" value="GcAlienMood">
				<Property name="Mood" value="Neutral" />
			</Property>
			<Property name="Prop" value="GcNPCPropType">
				<Property name="NPCProp" value="DontCare" />
			</Property>
			<Property name="AdvancedInteractionFlow" />
			<Property name="PersistancyBufferOverride" value="None" />
			<Property name="CustomFreighterTextIndex" value="-1" />
			<Property name="RadialInteraction" value="false" />
			<Property name="UseTitleOverrideInLabel" value="true" />
			<Property name="AllowNoOptions" value="false" />
			<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
		</Property>
]]

local NP_PFISH_PUZZLE = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="PFISH_PUZZLE">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="PFISH_PUZZLE" />
			<Property name="Race" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="Type" value="GcInteractionType">
				<Property name="InteractionType" value="MessageBeacon" />
			</Property>
			<Property name="Category" value="GcAlienPuzzleCategory">
				<Property name="AlienPuzzleCategory" value="Default" />
			</Property>
			<Property name="AdditionalOptions" value="None" />
			<Property name="Title" value="BUILD_PFISHING_NAME" />
			<Property name="Text" value="PFISH_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="false" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="PFISH_GO_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_PFISH_GO" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="PFISH_CUSTOM_OPT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_HCS_JOBS" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="ALL_REQUEST_LEAVE" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
			</Property>
			<Property name="AdditionalText" />
			<Property name="AdditionalTextAlien" />
			<Property name="Mood" value="GcAlienMood">
				<Property name="Mood" value="Neutral" />
			</Property>
			<Property name="Prop" value="GcNPCPropType">
				<Property name="NPCProp" value="DontCare" />
			</Property>
			<Property name="AdvancedInteractionFlow" />
			<Property name="PersistancyBufferOverride" value="None" />
			<Property name="CustomFreighterTextIndex" value="-1" />
			<Property name="RadialInteraction" value="false" />
			<Property name="UseTitleOverrideInLabel" value="true" />
			<Property name="AllowNoOptions" value="false" />
			<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
		</Property>
]]

local NP_CASINO_PUZZLE = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CASINO_PUZZLE">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CASINO_PUZZLE" />
			<Property name="Race" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="Type" value="GcInteractionType">
				<Property name="InteractionType" value="MessageBeacon" />
			</Property>
			<Property name="Category" value="GcAlienPuzzleCategory">
				<Property name="AlienPuzzleCategory" value="Default" />
			</Property>
			<Property name="AdditionalOptions" value="None" />
			<Property name="Title" value="BUILD_CASINO_NAME" />
			<Property name="Text" value="CASINO_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="false" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="CASINO_OPT_GOLD" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="C_CASINO_GOLD" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_CASINO_GOLD" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="CASINO_OPT_UNITS" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="C_CASINO_UNITS" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_CASINO_UNITS" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="CASINO_OPT_NAN" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="C_CASINO_NAN" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_CASINO_NAN" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="CASINO_OPT_BOTE" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="C_CASINO_BOTE" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_CASINO_BOTE" _index="0" />
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="ALL_REQUEST_LEAVE" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
						</Property>
						<Property name="Mood" value="GcAlienMood">
							<Property name="Mood" value="Neutral" />
						</Property>
						<Property name="Prop" value="GcNPCPropType">
							<Property name="NPCProp" value="DontCare" />
						</Property>
						<Property name="OverrideWithAlienWord" value="false" />
						<Property name="AlienWordSpecificRace" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="ReseedInteractionOnUse" value="false" />
						<Property name="KeepOpen" value="false" />
						<Property name="DisplayCost" value="true" />
						<Property name="TruncateCost" value="false" />
						<Property name="MarkInteractionComplete" value="false" />
						<Property name="NextInteraction" value="" />
						<Property name="SelectedOnBackOut" value="false" />
						<Property name="AudioEvent" value="GcAudioWwiseEvents">
							<Property name="AkEvent" value="INVALID_EVENT" />
						</Property>
						<Property name="TitleOverride" value="" />
						<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
						<Property name="DisablingConditionTest" value="GcMissionConditionTest">
							<Property name="ConditionTest" value="AnyFalse" />
						</Property>
						<Property name="DisablingConditions" />
						<Property name="DisablingConditionId" value="" />
						<Property name="WordCategory" value="GcWordCategoryTableEnum">
							<Property name="wordcategorytableEnum" value="MISC" />
						</Property>
					</Property>
			</Property>
			<Property name="AdditionalText" />
			<Property name="AdditionalTextAlien" />
			<Property name="Mood" value="GcAlienMood">
				<Property name="Mood" value="Neutral" />
			</Property>
			<Property name="Prop" value="GcNPCPropType">
				<Property name="NPCProp" value="DontCare" />
			</Property>
			<Property name="AdvancedInteractionFlow" />
			<Property name="PersistancyBufferOverride" value="None" />
			<Property name="CustomFreighterTextIndex" value="-1" />
			<Property name="RadialInteraction" value="false" />
			<Property name="UseTitleOverrideInLabel" value="true" />
			<Property name="AllowNoOptions" value="false" />
			<Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
		</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "PortableNexusSuite_build.zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = "7.02",
  MOD_DESCRIPTION = "Portable Nexus Suite (6 new buildable devices)",
  MODIFICATIONS   = {
    {
      MBIN_CHANGE_TABLE = {
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "ID", "BUILD_REFINER1" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_REFINERY },
            { SPECIAL_KEY_WORDS = { "Groups", "GcBaseBuildingGroup" }, ADD_OPTION = "ADDafterSECTION", ADD = GRP_HCS_TOOLS },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "ID", "BUILD_REFINER1" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_REFINERY },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/PURCHASEABLEBUILDINGBLUEPRINTS.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILD_REFINER1" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_REFINERY },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/CATALOGUEBUILDING.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "Items", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "Items", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "Items", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "Items", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "Items", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "Items", "BUILD_REFINER1" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_REFINERY },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "Unlockable", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = NODE_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "Unlockable", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = NODE_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "Unlockable", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = NODE_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "Unlockable", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = NODE_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "Unlockable", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = NODE_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "Unlockable", "BUILD_REFINER1" }, ADD_OPTION = "ADDafterSECTION", ADD = NODE_BUILD_REFINERY },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "ID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "ID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "ID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "ID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "ID", "_BUILD_REFINER1" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_REFINERY },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_PNEXUS },
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_PMISSION },
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_PFISHING },
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_CASINO },
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_PSCAN },
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILD_REFINER1" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_REFINERY },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_PFISH_GO },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_BIG },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_10 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_50 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_R1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_R25 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_TOX },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_EP1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_EP10 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_LEG1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_MB_HIGH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HF_BOSS },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HCS_JOBS },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_CASINO_GOLD },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_CASINO_UNITS },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_CASINO_NAN },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_CASINO_BOTE },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/COSTTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "Id", "C_ALLIANCE_FMT" }, ADD_OPTION = "ADDafterSECTION", ADD = COST_C_CASINO_GOLD },
            { SPECIAL_KEY_WORDS = { "Id", "C_ALLIANCE_FMT" }, ADD_OPTION = "ADDafterSECTION", ADD = COST_C_CASINO_UNITS },
            { SPECIAL_KEY_WORDS = { "Id", "C_ALLIANCE_FMT" }, ADD_OPTION = "ADDafterSECTION", ADD = COST_C_CASINO_NAN },
            { SPECIAL_KEY_WORDS = { "Id", "C_ALLIANCE_FMT" }, ADD_OPTION = "ADDafterSECTION", ADD = COST_C_CASINO_BOTE },
          } },
        { MBIN_FILE_SOURCE = "METADATA/SIMULATION/MISSIONS/TABLES/NPCMISSIONTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_BIG },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_10 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_50 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_R1 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_R25 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_TOX },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_EP1 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_EP10 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_LEG1 },
            { SPECIAL_KEY_WORDS = { "MissionID", "GO_FISH" }, ADD_OPTION = "ADDafterSECTION", ADD = M_HCS_FISH_BOSS },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_PNEXUS_PUZZLE },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_PNEXUS_RESEARCH },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_PNEXUS_RESEARCH2 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_PFISH_PUZZLE },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CASINO_PUZZLE },
          } },
      },
    },
  },
}