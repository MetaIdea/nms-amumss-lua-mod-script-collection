local KP_BUILD_CHEAT = [[
<Property name="KnownProducts" value="BUILD_CHEAT" />
]]

local BB_BUILD_CHEAT = [[
		<Property name="Objects" value="GcBaseBuildingEntry" _id="BUILD_CHEAT">
			<Property name="ID" value="BUILD_CHEAT" />
			<Property name="IsTemporary" value="false" />
			<Property name="IsFromModFolder" value="true" />
			<Property name="Style" value="GcBaseBuildingPartStyle">
				<Property name="Style" value="None" />
			</Property>
			<Property name="PlacementScene" value="TkModelResource">
				<Property name="Filename" value="CUSTOMMODELS/CHEAT/CHEAT_PLACEMENT.SCENE.MBIN" />
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
			<Property name="OverrideProductID" value="BUILD_CHEAT" />
		</Property>
]]

local PROD_BUILD_CHEAT = [[
		<Property name="Table" value="GcProductData" _id="BUILD_CHEAT">
			<Property name="ID" value="BUILD_CHEAT" />
			<Property name="Name" value="BUILD_CHEAT_NAME" />
			<Property name="NameLower" value="BUILD_CHEAT_NAME_L" />
			<Property name="Subtitle" value="BUILD_CHEAT_SUBTITLE" />
			<Property name="Description" value="BUILD_CHEAT_DESC" />
			<Property name="AltDescription" value="" />
			<Property name="Hint" value="" />
			<Property name="BuildableShipTechID" value="" />
			<Property name="GroupID" value="BUILD_CHEAT" />
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

local PURCH_BUILD_CHEAT = [[
<Property name="Table" value="GcBuildingBlueprint">
	<Property name="ProductID" value="BUILD_CHEAT" />
	<Property name="GroupId" value="0" />
</Property>
]]

local CAT_BUILD_CHEAT = [[
<Property name="Items" value="BUILD_CHEAT" />
]]

local PART_BUILD_CHEAT = [[
		<Property name="Parts" value="GcBaseBuildingPart" _id="_BUILD_CHEAT">
			<Property name="ID" value="_BUILD_CHEAT" />
			<Property name="StyleModels">
				<Property name="StyleModels" value="GcBaseBuildingPartStyleModel" _index="0">
					<Property name="Style" value="GcBaseBuildingPartStyle">
						<Property name="Style" value="None" />
					</Property>
					<Property name="Model" value="TkModelResource">
						<Property name="Filename" value="CUSTOMMODELS/CHEAT/CHEAT.SCENE.MBIN" />
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

local APDDATA_BUILD_CHEAT = [[
		<Property name="PartsData" value="GcBaseBuildingPartData">
			<Property name="PartID" value="_BUILD_CHEAT" />
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

local REW_HCR_FUEL1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_FUEL1">
			<Property name="Id" value="HCR_FUEL1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="FUEL1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_FUEL2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_FUEL2">
			<Property name="Id" value="HCR_FUEL2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="FUEL2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_OXYGEN = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_OXYGEN">
			<Property name="Id" value="HCR_OXYGEN" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="OXYGEN" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_LAUNCHSUB = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_LAUNCHSUB">
			<Property name="Id" value="HCR_LAUNCHSUB" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="LAUNCHSUB" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_LAND1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_LAND1">
			<Property name="Id" value="HCR_LAND1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="LAND1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_LAND2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_LAND2">
			<Property name="Id" value="HCR_LAND2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="LAND2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_LAND3 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_LAND3">
			<Property name="Id" value="HCR_LAND3" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="LAND3" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_SAND1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_SAND1">
			<Property name="Id" value="HCR_SAND1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="SAND1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_CATALYST1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_CATALYST1">
			<Property name="Id" value="HCR_CATALYST1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="CATALYST1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_CATALYST2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_CATALYST2">
			<Property name="Id" value="HCR_CATALYST2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="CATALYST2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_CAVE1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_CAVE1">
			<Property name="Id" value="HCR_CAVE1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="CAVE1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_CAVE2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_CAVE2">
			<Property name="Id" value="HCR_CAVE2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="CAVE2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_WATER1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_WATER1">
			<Property name="Id" value="HCR_WATER1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="WATER1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_WATER2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_WATER2">
			<Property name="Id" value="HCR_WATER2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="WATER2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_LUSH1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_LUSH1">
			<Property name="Id" value="HCR_LUSH1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="LUSH1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_DUSTY1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_DUSTY1">
			<Property name="Id" value="HCR_DUSTY1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="DUSTY1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_TOXIC1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_TOXIC1">
			<Property name="Id" value="HCR_TOXIC1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="TOXIC1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_RADIO1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_RADIO1">
			<Property name="Id" value="HCR_RADIO1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="RADIO1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_COLD1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_COLD1">
			<Property name="Id" value="HCR_COLD1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="COLD1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_HOT1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_HOT1">
			<Property name="Id" value="HCR_HOT1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="HOT1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_LAVA1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_LAVA1">
			<Property name="Id" value="HCR_LAVA1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="LAVA1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_TOXIC = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_TOXIC">
			<Property name="Id" value="HCR_PLANT_TOXIC" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_TOXIC" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_SNOW = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_SNOW">
			<Property name="Id" value="HCR_PLANT_SNOW" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_SNOW" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_RADIO = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_RADIO">
			<Property name="Id" value="HCR_PLANT_RADIO" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_RADIO" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_DUST = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_DUST">
			<Property name="Id" value="HCR_PLANT_DUST" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_DUST" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_HOT = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_HOT">
			<Property name="Id" value="HCR_PLANT_HOT" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_HOT" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_LUSH = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_LUSH">
			<Property name="Id" value="HCR_PLANT_LUSH" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_LUSH" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_CAVE = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_CAVE">
			<Property name="Id" value="HCR_PLANT_CAVE" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_CAVE" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PLANT_WATER = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PLANT_WATER">
			<Property name="Id" value="HCR_PLANT_WATER" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PLANT_WATER" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_WATERPLANT = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_WATERPLANT">
			<Property name="Id" value="HCR_WATERPLANT" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="WATERPLANT" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_YELLOW2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_YELLOW2">
			<Property name="Id" value="HCR_YELLOW2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="YELLOW2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_RED2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_RED2">
			<Property name="Id" value="HCR_RED2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="RED2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_GREEN2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_GREEN2">
			<Property name="Id" value="HCR_GREEN2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="GREEN2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_BLUE2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_BLUE2">
			<Property name="Id" value="HCR_BLUE2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="BLUE2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_PURPLE2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_PURPLE2">
			<Property name="Id" value="HCR_PURPLE2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="PURPLE2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_EX_YELLOW = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_EX_YELLOW">
			<Property name="Id" value="HCR_EX_YELLOW" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="EX_YELLOW" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_EX_RED = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_EX_RED">
			<Property name="Id" value="HCR_EX_RED" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="EX_RED" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_EX_GREEN = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_EX_GREEN">
			<Property name="Id" value="HCR_EX_GREEN" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="EX_GREEN" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_EX_BLUE = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_EX_BLUE">
			<Property name="Id" value="HCR_EX_BLUE" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="EX_BLUE" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_EX_PURPLE = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_EX_PURPLE">
			<Property name="Id" value="HCR_EX_PURPLE" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="EX_PURPLE" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_ASTEROID1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_ASTEROID1">
			<Property name="Id" value="HCR_ASTEROID1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="ASTEROID1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_ASTEROID2 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_ASTEROID2">
			<Property name="Id" value="HCR_ASTEROID2" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="ASTEROID2" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_ASTEROID3 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_ASTEROID3">
			<Property name="Id" value="HCR_ASTEROID3" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="ASTEROID3" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_ROCKETSUB = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_ROCKETSUB">
			<Property name="Id" value="HCR_ROCKETSUB" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="ROCKETSUB" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_GASGIANT1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_GASGIANT1">
			<Property name="Id" value="HCR_GASGIANT1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="GASGIANT1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCR_WATERWORLD1 = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCR_WATERWORLD1">
			<Property name="Id" value="HCR_WATERWORLD1" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardSpecificSubstance">
							<Property name="GcRewardSpecificSubstance">
								<Property name="Default" value="GcDefaultMissionSubstanceEnum">
									<Property name="DefaultSubstanceType" value="None" />
								</Property>
								<Property name="ID" value="WATERWORLD1" />
								<Property name="AmountMin" value="100" />
								<Property name="AmountMax" value="100" />
								<Property name="DisableMultiplier" value="true" />
								<Property name="RewardAsBlobs" value="false" />
								<Property name="UseFuelMultiplier" value="false" />
								<Property name="Silent" value="false" />
								<Property name="UseMissionBoardDifficultyScale" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]

local REW_HCM_REPAIR = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_REPAIR">
			<Property name="Id" value="HCM_REPAIR" />
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
								<Property name="Mission" value="REPAIR_1" />
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

local REW_HCM_MISSING = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_MISSING">
			<Property name="Id" value="HCM_MISSING" />
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
								<Property name="Mission" value="MISSING_PERSON" />
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

local REW_HCM_FACTORY = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_FACTORY">
			<Property name="Id" value="HCM_FACTORY" />
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
								<Property name="Mission" value="FACTORY_RAID" />
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

local REW_HCM_ROBOTS = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_ROBOTS">
			<Property name="Id" value="HCM_ROBOTS" />
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
								<Property name="Mission" value="KILL_ROBOTS" />
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

local REW_HCM_SCAN = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_SCAN">
			<Property name="Id" value="HCM_SCAN" />
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
								<Property name="Mission" value="SCAN_CRE" />
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

local REW_HCM_BOUNTY = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_BOUNTY">
			<Property name="Id" value="HCM_BOUNTY" />
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
								<Property name="Mission" value="BOUNTY_EASY" />
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

local REW_HCM_DELIVER = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_DELIVER">
			<Property name="Id" value="HCM_DELIVER" />
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
								<Property name="Mission" value="DELIVER" />
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

local REW_HCM_COLLECT = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_COLLECT">
			<Property name="Id" value="HCM_COLLECT" />
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
								<Property name="Mission" value="COLLECT1" />
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

local REW_HCM_DIG = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_DIG">
			<Property name="Id" value="HCM_DIG" />
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
								<Property name="Mission" value="DIGGING" />
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

local REW_HCM_DEPOT = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_DEPOT">
			<Property name="Id" value="HCM_DEPOT" />
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
								<Property name="Mission" value="DEPOT_RAID" />
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

local REW_HCM_HIDE = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_HIDE">
			<Property name="Id" value="HCM_HIDE" />
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
								<Property name="Mission" value="HIDE_SEEK_TIMED" />
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

local REW_HCM_FIENDS = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_FIENDS">
			<Property name="Id" value="HCM_FIENDS" />
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
								<Property name="Mission" value="KILL_FIENDS" />
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

local REW_HCM_PRED = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_PRED">
			<Property name="Id" value="HCM_PRED" />
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
								<Property name="Mission" value="KILL_PREDATORS" />
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

local REW_HCM_PHOTO = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_PHOTO">
			<Property name="Id" value="HCM_PHOTO" />
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
								<Property name="Mission" value="PHOTO_CRE" />
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

local REW_HCM_FISH = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="HCM_FISH">
			<Property name="Id" value="HCM_FISH" />
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

local REW_R_HCC_MONEY = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_HCC_MONEY">
			<Property name="Id" value="R_HCC_MONEY" />
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
								<Property name="AmountMin" value="10000000" />
								<Property name="AmountMax" value="10000000" />
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

local REW_R_HCC_NANITES = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_HCC_NANITES">
			<Property name="Id" value="R_HCC_NANITES" />
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
								<Property name="AmountMin" value="100000" />
								<Property name="AmountMax" value="100000" />
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

local REW_R_HCC_QS = [[
		<Property name="InteractionTable" value="GcGenericRewardTableEntry" _id="R_HCC_QS">
			<Property name="Id" value="R_HCC_QS" />
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
								<Property name="AmountMin" value="3000" />
								<Property name="AmountMax" value="3000" />
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

local NP_CHEAT_PUZZLE = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_PUZZLE">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_PUZZLE" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="BUILD_CHEAT_DESC" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="false" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="HCC_MONEY_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_CURRENCY" />
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
						<Property name="Name" value="QSCONV_MISSIONS_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_MISSIONS" />
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
						<Property name="Name" value="HCC_RES_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_CURRENCY = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_CURRENCY">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_CURRENCY" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_CURRENCY_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="HCC_MONEY" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_HCC_MONEY" _index="0" />
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
						<Property name="Name" value="HCC_NANITES" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_HCC_NANITES" _index="0" />
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
						<Property name="Name" value="HCC_QS" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="R_HCC_QS" _index="0" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_PUZZLE" />
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

local NP_CHEAT_MISSIONS = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_MISSIONS">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_MISSIONS" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_MISSIONS_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="QSCONV_M_REPAIR" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_REPAIR" _index="0" />
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
						<Property name="Name" value="QSCONV_M_MISSING" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_MISSING" _index="0" />
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
						<Property name="Name" value="QSCONV_M_FACTORY" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_FACTORY" _index="0" />
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
						<Property name="Name" value="QSCONV_M_BOUNTY" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_BOUNTY" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_MISSIONS2" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_PUZZLE" />
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

local NP_CHEAT_MISSIONS2 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_MISSIONS2">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_MISSIONS2" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_MISSIONS_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="QSCONV_M_DELIVER" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_DELIVER" _index="0" />
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
						<Property name="Name" value="QSCONV_M_COLLECT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_COLLECT" _index="0" />
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
						<Property name="Name" value="QSCONV_M_DIG" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_DIG" _index="0" />
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
						<Property name="Name" value="QSCONV_M_DEPOT" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_DEPOT" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_MISSIONS3" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_PUZZLE" />
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

local NP_CHEAT_MISSIONS3 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_MISSIONS3">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_MISSIONS3" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_MISSIONS_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="QSCONV_M_HIDE" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_HIDE" _index="0" />
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
						<Property name="Name" value="QSCONV_M_ROBOTS" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_ROBOTS" _index="0" />
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
						<Property name="Name" value="QSCONV_M_FIENDS" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_FIENDS" _index="0" />
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
						<Property name="Name" value="QSCONV_M_PRED" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_PRED" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_MISSIONS4" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_PUZZLE" />
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

local NP_CHEAT_MISSIONS4 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_MISSIONS4">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_MISSIONS4" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_MISSIONS_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="QSCONV_M_SCAN" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_SCAN" _index="0" />
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
						<Property name="Name" value="QSCONV_M_PHOTO" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_PHOTO" _index="0" />
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
						<Property name="Name" value="QSCONV_M_FISH" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCM_FISH" _index="0" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_PUZZLE" />
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

local NP_CHEAT_RESOURCES = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RESOURCES">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RESOURCES" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="QSCONV_RES_BASIC_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC" />
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
						<Property name="Name" value="QSCONV_RES_EXOTIC_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_EXOTIC" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_PUZZLE" />
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

local NP_CHEAT_RES_BASIC = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_FUEL_1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_FUEL1" _index="0" />
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
						<Property name="Name" value="UI_FUEL_2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_FUEL2" _index="0" />
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
						<Property name="Name" value="UI_AIR1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_OXYGEN" _index="0" />
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
						<Property name="Name" value="UI_LAUNCHSUB_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_LAUNCHSUB" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC2" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC2 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC2">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC2" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_LAND1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_LAND1" _index="0" />
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
						<Property name="Name" value="UI_LAND2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_LAND2" _index="0" />
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
						<Property name="Name" value="UI_LAND3_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_LAND3" _index="0" />
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
						<Property name="Name" value="UI_SAND1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_SAND1" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC3" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC3 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC3">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC3" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_WATER2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_CATALYST1" _index="0" />
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
						<Property name="Name" value="UI_NEWCATA2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_CATALYST2" _index="0" />
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
						<Property name="Name" value="UI_CAVE1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_CAVE1" _index="0" />
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
						<Property name="Name" value="UI_CAVE2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_CAVE2" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC4" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC4 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC4">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC4" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_WATER1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_WATER1" _index="0" />
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
						<Property name="Name" value="UI_NEWWATER2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_WATER2" _index="0" />
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
						<Property name="Name" value="UI_LUSH1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_LUSH1" _index="0" />
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
						<Property name="Name" value="UI_DUSTY1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_DUSTY1" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC5" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC5 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC5">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC5" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_TOXIC1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_TOXIC1" _index="0" />
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
						<Property name="Name" value="UI_RADIO1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_RADIO1" _index="0" />
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
						<Property name="Name" value="UI_COLD1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_COLD1" _index="0" />
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
						<Property name="Name" value="UI_HOT1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_HOT1" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC6" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC6 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC6">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC6" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_LAVA1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_LAVA1" _index="0" />
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
						<Property name="Name" value="UI_PLANTSUB_TOXIC_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_TOXIC" _index="0" />
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
						<Property name="Name" value="UI_PLANTSUB_SNOW_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_SNOW" _index="0" />
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
						<Property name="Name" value="UI_PLANTSUB_RADIO_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_RADIO" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC7" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC7 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC7">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC7" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_PLANTSUB_BARREN_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_DUST" _index="0" />
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
						<Property name="Name" value="UI_PLANTSUB_SCORCHED_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_HOT" _index="0" />
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
						<Property name="Name" value="UI_PLANTSUB_LUSH_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_LUSH" _index="0" />
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
						<Property name="Name" value="UI_PLANTSUB_CAVE_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_CAVE" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_BASIC8" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_BASIC8 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_BASIC8">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_BASIC8" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_PLANTSUB_WATER_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PLANT_WATER" _index="0" />
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
						<Property name="Name" value="UI_WATERPLANT_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_WATERPLANT" _index="0" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_EXOTIC = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_EXOTIC">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_EXOTIC" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_YELLOW2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_YELLOW2" _index="0" />
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
						<Property name="Name" value="UI_RED2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_RED2" _index="0" />
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
						<Property name="Name" value="UI_GREEN2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_GREEN2" _index="0" />
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
						<Property name="Name" value="UI_BLUE2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_BLUE2" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_EXOTIC2" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_EXOTIC2 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_EXOTIC2">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_EXOTIC2" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_PURPLE2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_PURPLE2" _index="0" />
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
						<Property name="Name" value="UI_EX_YELLOW_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_EX_YELLOW" _index="0" />
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
						<Property name="Name" value="UI_EX_RED_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_EX_RED" _index="0" />
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
						<Property name="Name" value="UI_EX_GREEN_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_EX_GREEN" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_EXOTIC3" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_EXOTIC3 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_EXOTIC3">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_EXOTIC3" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_EX_BLUE_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_EX_BLUE" _index="0" />
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
						<Property name="Name" value="UI_EX_PURPLE_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_EX_PURPLE" _index="0" />
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
						<Property name="Name" value="UI_ASTEROID1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_ASTEROID1" _index="0" />
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
						<Property name="Name" value="UI_ASTEROID2_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_ASTEROID2" _index="0" />
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
						<Property name="Name" value="QSCONV_MORE_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RES_EXOTIC4" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

local NP_CHEAT_RES_EXOTIC4 = [[
		<Property name="Table" value="GcAlienPuzzleEntry" _id="CHEAT_RES_EXOTIC4">
			<Property name="ProgressionIndex" value="-1" />
			<Property name="MinProgressionForSelection" value="0" />
			<Property name="Id" value="CHEAT_RES_EXOTIC4" />
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
			<Property name="Title" value="BUILD_CHEAT_NAME" />
			<Property name="Text" value="HCC_RES_TEXT" />
			<Property name="TextAlien" value="" />
			<Property name="TranslateAlienText" value="false" />
			<Property name="TranslationBrackets" value="false" />
			<Property name="ForceLongTextSplitting" value="false" />
			<Property name="ProgressiveDialogue" value="true" />
			<Property name="RequiresScanEvent" value="" />
			<Property name="Options">
					<Property name="Options" value="GcAlienPuzzleOption">
						<Property name="Name" value="UI_ASTEROID3_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_ASTEROID3" _index="0" />
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
						<Property name="Name" value="UI_ROCKETFUEL_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_ROCKETSUB" _index="0" />
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
						<Property name="Name" value="UI_GASGIANT1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_GASGIANT1" _index="0" />
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
						<Property name="Name" value="UI_WATERWORLD1_NAME" />
						<Property name="Text" value="" />
						<Property name="IsAlien" value="false" />
						<Property name="ResponseLanguageOverride" value="GcAlienRace">
							<Property name="AlienRace" value="None" />
						</Property>
						<Property name="Cost" value="" />
						<Property name="Rewards">
							<Property name="Rewards" value="HCR_WATERWORLD1" _index="0" />
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
						<Property name="Name" value="QSCONV_BACK_OPT" />
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
						<Property name="NextInteraction" value="CHEAT_RESOURCES" />
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

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "PortableNexusCheats.zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = "7.02",
  MOD_DESCRIPTION = "Portable Nexus Suite Cheats",
  MODIFICATIONS   = {
    {
      MBIN_CHANGE_TABLE = {
        { MBIN_FILE_SOURCE = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "KnownProducts", "AMMO" }, ADD_OPTION = "ADDafterSECTION", ADD = KP_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = BB_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PROD_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/PURCHASEABLEBUILDINGBLUEPRINTS.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ProductID", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PURCH_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/CATALOGUEBUILDING.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "Items", "BUILDSIGNAL" }, ADD_OPTION = "ADDafterLINE", ADD = CAT_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "ID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = PART_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "PartID", "_BUILDSIGNAL" }, ADD_OPTION = "ADDafterSECTION", ADD = APDDATA_BUILD_CHEAT },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_FUEL1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_FUEL2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_OXYGEN },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_LAUNCHSUB },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_LAND1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_LAND2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_LAND3 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_SAND1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_CATALYST1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_CATALYST2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_CAVE1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_CAVE2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_WATER1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_WATER2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_LUSH1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_DUSTY1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_TOXIC1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_RADIO1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_COLD1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_HOT1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_LAVA1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_TOXIC },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_SNOW },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_RADIO },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_DUST },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_HOT },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_LUSH },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_CAVE },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PLANT_WATER },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_WATERPLANT },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_YELLOW2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_RED2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_GREEN2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_BLUE2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_PURPLE2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_EX_YELLOW },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_EX_RED },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_EX_GREEN },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_EX_BLUE },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_EX_PURPLE },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_ASTEROID1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_ASTEROID2 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_ASTEROID3 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_ROCKETSUB },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_GASGIANT1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCR_WATERWORLD1 },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_REPAIR },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_MISSING },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_FACTORY },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_ROBOTS },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_SCAN },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_BOUNTY },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_DELIVER },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_COLLECT },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_DIG },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_DEPOT },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_HIDE },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_FIENDS },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_PRED },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_PHOTO },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_HCM_FISH },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HCC_MONEY },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HCC_NANITES },
            { SPECIAL_KEY_WORDS = { "Id", "R_ATLASPLINTH" }, ADD_OPTION = "ADDafterSECTION", ADD = REW_R_HCC_QS },
          } },
        { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          MXML_CHANGE_TABLE = {
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_PUZZLE },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_CURRENCY },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_MISSIONS },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_MISSIONS2 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_MISSIONS3 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_MISSIONS4 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RESOURCES },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC2 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC3 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC4 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC5 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC6 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC7 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_BASIC8 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_EXOTIC },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_EXOTIC2 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_EXOTIC3 },
            { PRECEDING_KEY_WORDS = { "Table" }, ADD_OPTION = "ADDendSECTION", ADD = NP_CHEAT_RES_EXOTIC4 },
          } },
      },
    },
  },
}