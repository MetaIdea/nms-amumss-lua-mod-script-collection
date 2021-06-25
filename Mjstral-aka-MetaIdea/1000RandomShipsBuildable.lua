SHIP_SEED_LIST = --Add your own seeds here, 200 additional random seeds get generated too
{
	["FIGHTER"] =
	{
		
	}, 
	["DROPSHIP"] =
	{
		
	},
	["SCIENTIFIC"] =
	{
		
	},
	["SHUTTLE"] =
	{
		
	}, 
	["ROYAL"] =
	{
		
	}
}

NUMBER_OF_SEEDS_PER_SHIP = 1

CATEGORY = { "FIGHTER"}--, "DROPSHIP", "SCIENTIFIC", "SHUTTLE", "ROYAL" }

BUILDABLE_OBJECT_TABLE = 
{
	["FIGHTER"]={"MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"}, 
	["DROPSHIP"]={"MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"}, 
	["SCIENTIFIC"]={"MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"}, 
	["SHUTTLE"]={"MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"}, 
	["ROYAL"]={"MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"}	
}

CATEGORY_ICON = {
	["FIGHTER"]="TEXTURES/UI/HUD/MENUS/ICON.SHIP.DDS",
	["DROPSHIP"]="TEXTURES/UI/HUD/MENUS/ICON.SHIP.DDS",
	["SCIENTIFIC"]="TEXTURES/UI/HUD/MENUS/ICON.SHIP.DDS",
	["SHUTTLE"]="TEXTURES/UI/HUD/MENUS/ICON.SHIP.DDS",
	["ROYAL"]="TEXTURES/UI/HUD/MENUS/ICON.SHIP.DDS"
}

CATEGORY_OFFSET = {}
ADD_FILES_TABLE = {}
ENABLE_PHYSICS_EXTENDER = true

function GetSeed()
	local SEED = "0x"
	local HEX = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
	--math.randomseed(77*os.time())
	math.random() math.random() math.random()
	for i=1,16,1 do
		SEED = SEED .. HEX[math.random(1, #HEX)]
	end
	return SEED
end

function HexToDec(number)
	if string.find(tostring(number),"0x") then return tonumber(number)
	else return tonumber(number,16) end
end

for i=1,#CATEGORY,1 do
	for j=1,NUMBER_OF_SEEDS_PER_SHIP,1 do
		table.insert(SHIP_SEED_LIST[CATEGORY[i]], GetSeed())
	end
end

SHIP_ID_COUNTER = 1

function AddToBuildmenu(BUILDABLE_OBJECT, CATEGORY, SEED)
--ID_NAME_ = GetObjectID(BUILDABLE_OBJECT)
--ID_NAME = "#" .. ID_NAME_
ID_NAME_ = "CUSTOMSHIP" .. SHIP_ID_COUNTER
ID_NAME = "#" .. ID_NAME_
BUILDABLE_OBJECT = [[MODELS/CUSTOM/]] .. ID_NAME_ .. ".SCENE.MBIN"
REWARD_ID = ID_NAME .. "_REWARD"
SHIP_ID_COUNTER = SHIP_ID_COUNTER + 1

BASEBUILDINGTABLE_ADDING = 
[[
    <Property value="GcBaseBuildingEntry.xml">
	  <Property name="ID" value="]] .. ID_NAME .. [[" />
      <Property name="HasProduct" value="True" />
      <Property name="IsTemporary" value="False" />
      <Property name="SnapPoints" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Model" value="TkModelResource.xml">
		<Property name="Filename" value="MODELS\CUSTOM\]] .. ID_NAME_ .. [[.SCENE.MBIN" />
      </Property>
      <Property name="InactiveModel" value="TkModelResource.xml">
		<Property name="Filename" value="MODELS\CUSTOM\]] .. ID_NAME_ .. [[.SCENE.MBIN" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="False" />
      <Property name="IsConnection" value="False" />
      <Property name="PlacementNormalOffset" value="]] .. OFFSET .. [[" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="All" />
      </Property>
      <Property name="BuildableOnPlanetBase" value="True" />
      <Property name="BuildableOnSpaceBase" value="True" />
      <Property name="BuildableOnFreighter" value="True" />
      <Property name="BuildableOnPlanet" value="True" />
      <Property name="BuildableOnPlanetWithProduct" value="True" />
      <Property name="BuildableUnderwater" value="True" />
      <Property name="BuildableAboveWater" value="True" />
      <Property name="GlobalLimit" value="0" />
      <Property name="SystemLimit" value="0" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="False" />
      <Property name="CollisionScale" value="0.9" />
      <Property name="EnableCollision" value="True" />
      <Property name="CanPlaceOnItself" value="True" />
      <Property name="CanRotate3D" value="True" />
      <Property name="CanScale" value="True" />
      <Property name="Groups">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="]] .. CATEGORY .. [[" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="CanChangeColour" value="True" />
      <Property name="CanChangeMaterial" value="True" />
      <Property name="CanPickUp" value="False" />
      <Property name="ScanRadius" value="0" />
      <Property name="RemovesAttachedDecoration" value="True" />
      <Property name="EditsTerrain" value="False" />
      <Property name="BaseTerrainEditShape" value="Cube" />
      <Property name="TerrainEditBaseYOffset" value="0" />
      <Property name="TerrainEditTopYOffset" value="0" />
      <Property name="TerrainEditBoundsScalar" value="1" />
      <Property name="IsSealed" value="False" />
      <Property name="CloseMenuAfterBuild" value="False" />
      <Property name="LinkGridData" value="GcBaseLinkGridData.xml">
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Power" />
          </Property>
          <Property name="NetworkSubGroup" value="0" />
          <Property name="NetworkMask" value="0" />
          <Property name="ConnectionDistance" value="0.1" />
          <Property name="UseMinDistance" value="False" />
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
      <Property name="SnappingDistanceOverride" value="0" />
      <Property name="RegionSpawnLOD" value="1" />
    </Property>
]]

PRODUCT = 
[[
    <Property value="GcProductData.xml">
	  <Property name="Id" value="]] .. ID_NAME .. [[" />
      <Property name="Name" value="]] .. SEED .. [[" />
      <Property name="NameLower" value="]] .. SEED .. [[" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
      </Property>
      <Property name="BaseValue" value="1" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkModelResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.CUBEROOM.DDS" />
      </Property>
      <Property name="HeroIcon" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.172549" />
        <Property name="G" value="0.4862745" />
        <Property name="B" value="0.6235294" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SubstanceCategory" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="BuildingPart" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="BuildingPart" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="False" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="0" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="LAND2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
        </Property>
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="2" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0" />
      <Property name="NormalisedValueOffWorld" value="0" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradingClass" value="None" />
      </Property>
      <Property name="WikiCategory" value="Construction" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjeective" value="" />
      <Property name="PinObjeectiveTip" value="" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
    </Property>	
]]

DEFAULTSAVEDATA_KNOWNPRODUCT =
[[
      <Property value="NMSString0x10.xml">
		<Property name="Value" value="]] .. ID_NAME .. [[" />
      </Property>
]]

REWARDTABLE =
[[
    <Property value="GcRewardTableEntitlementItem.xml">
      <Property name="RewardId" value="]] .. REWARD_ID .. [[" />
      <Property name="EntitlementId" value="]] .. ID_NAME_ .. [[_ENTID" />
      <Property name="Reward" value="GcRewardSpecificShip.xml">
        <Property name="ShipResource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. BUILDABLE_OBJECT_TABLE[CATEGORY][1] .. [[" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="]] .. HexToDec(SEED) .. [[" />
            <Property name="UseSeedValue" value="True" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="ShipLayout" value="GcInventoryLayout.xml">
          <Property name="Slots" value="15" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="1" />
            <Property name="UseSeedValue" value="True" />
          </Property>
          <Property name="Level" value="1" />
        </Property>
        <Property name="ShipInventory" value="GcInventoryContainer.xml">
          <Property name="Slots">
            <Property value="GcInventoryElement.xml">
              <Property name="Type" value="GcInventoryType.xml">
                <Property name="InventoryType" value="Technology" />
              </Property>
              <Property name="Id" value="LAUNCHER" />
              <Property name="Amount" value="0" />
              <Property name="MaxAmount" value="300" />
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
              <Property name="Id" value="SHIPJUMP1" />
              <Property name="Amount" value="0" />
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
              <Property name="Id" value="SHIPSHIELD" />
              <Property name="Amount" value="200" />
              <Property name="MaxAmount" value="200" />
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
              <Property name="Id" value="SHIPGUN1" />
              <Property name="Amount" value="1000" />
              <Property name="MaxAmount" value="1000" />
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
              <Property name="Id" value="HYPERDRIVE" />
              <Property name="Amount" value="24" />
              <Property name="MaxAmount" value="120" />
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
              <Property name="Id" value="SHIPLAS1" />
              <Property name="Amount" value="1000" />
              <Property name="MaxAmount" value="1000" />
              <Property name="DamageFactor" value="0" />
              <Property name="FullyInstalled" value="True" />
              <Property name="Index" value="GcInventoryIndex.xml">
                <Property name="X" value="-1" />
                <Property name="Y" value="-1" />
              </Property>
            </Property>
          </Property>
          <Property name="ValidSlotIndices" />
          <Property name="Class" value="GcInventoryClass.xml">
            <Property name="InventoryClass" value="C" />
          </Property>
          <Property name="SubstanceMaxStorageMultiplier" value="0" />
          <Property name="ProductMaxStorageMultiplier" value="0" />
          <Property name="BaseStatValues" />
          <Property name="SpecialSlots" />
          <Property name="Width" value="0" />
          <Property name="Height" value="0" />
          <Property name="IsCool" value="False" />
          <Property name="Version" value="0" />
        </Property>
      </Property>
    </Property>
]]

REWARD_SCENE =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS//CUSTOM//]] .. ID_NAME_ .. [[" />
  <Property name="NameHash" value="0" />
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
      <Property name="Value" value="" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="MODELS//CUSTOM//]] .. ID_NAME_ .. [[_REF" />
	  <Property name="NameHash" value="0" />
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
		  <Property name="Value" value="MODELS//CUSTOM//]] .. ID_NAME_ .. [[.ENTITY.MBIN]] .. [[" />
		</Property>
	  </Property>
	  <Property name="Children" />
	</Property>	
  </Property>  
</Data>
]]

REWARD_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="GenericReward" />
      <Property name="InteractDistance" value="5" />
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Medium" />
      </Property>
      <Property name="TriggerAction" value="DESTROY" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="EggCollected" />
      </Property>
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="UI_FIENDCORE_NAME_L" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="BINOC_INTERACTABLE" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="GcDiscoveryTypes.xml">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
    </Property>
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="1" />
        <Property name="Friction" value="0.8" />
        <Property name="RollingFriction" value="0.9" />
        <Property name="AngularDamping" value="0.9" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="Open" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="False" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="SPAWN" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Action" />
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action" />
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DESTROY" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]]

SPAWN_ENTITY = --unused
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcCreatureSpawnComponentData.xml">
      <Property name="TriggerID" value="" />
      <Property name="Model" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_A.SCENE.MBIN" />
      <Property name="Creature" value="" />
      <Property name="CreatureType" value="GcCreatureTypes.xml">
        <Property name="CreatureType" value="None" />
      </Property>
      <Property name="ShipAIOverride" value="GcAISpaceshipTypes.xml">
        <Property name="ShipType" value="None" />
      </Property>
      <Property name="Seed" value="GcSeed.xml">
        <Property name="Seed" value="0" />
        <Property name="UseSeedValue" value="False" />
      </Property>
      <Property name="FunctionKey" value="0" />
      <Property name="TriggerDistance" value="0" />
      <Property name="Scale" value="1" />
      <Property name="StartTimeMin" value="0" />
      <Property name="StartTimeMax" value="0" />
      <Property name="SpawnAlert" value="True" />
      <Property name="SpawnerMode" value="Visible" />
      <Property name="SpecificModel" value="GcResourceElement.xml">
        <Property name="Filename" value="" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="AltId" value="" />
        <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
          <Property name="Samplers" />
        </Property>
      </Property>
      <Property name="SpawnOptionList" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]]

REWARD_SCENE = string.gsub(REWARD_SCENE, [[//]], string.char(92))
REWARD_ENTITY = string.gsub(REWARD_ENTITY, [[//]], string.char(92))
ADD_SCENE_FILE =
{
	["FILE_DESTINATION"] = [[MODELS\CUSTOM\]] .. ID_NAME_ .. [[.SCENE.EXML]],
	["FILE_CONTENT"] 	 = REWARD_SCENE
}	
ADD_ENTITY_FILE =
{
	["FILE_DESTINATION"] = [[MODELS\CUSTOM\]] .. ID_NAME_ .. [[.ENTITY.EXML]],
	["FILE_CONTENT"] 	 = REWARD_ENTITY
}
table.insert(ADD_FILES_TABLE, ADD_SCENE_FILE)
table.insert(ADD_FILES_TABLE, ADD_ENTITY_FILE)
end

function GetObjectID(SCENEPATH)
	--return string.gsub(string.match(string.match(SCENEPATH, "^.+/(.+)$"), "(.+)%.(.+)"), ".SCENE", "") .. "_" .. math.random(9999)
	return string.gsub(string.match(string.match(SCENEPATH, "^.+/(.+)$"), "(.+)%.(.+)"), ".SCENE", "")
end

GROUPS_ALL = ""

function AddGroup(NEW_BUILD_GROUP, DEFAULT_ITEM, PARENT_GROUP, ICON)
if PARENT_GROUP == nil then PARENT_GROUP = "MOD" end
if ICON == nil or ICON == "" then ICON = "TEXTURES/UI/FRONTEND/ICONS/RANK/RANK.DISTANCEWARPED.DDS" end
GROUP =
[[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="]] .. NEW_BUILD_GROUP .. [[" />
      <Property name="ParentGroup" value="]] .. PARENT_GROUP .. [[" />
      <Property name="Name" value="]] .. NEW_BUILD_GROUP .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
	  <Property name="DefaultItem" value="]] .. DEFAULT_ITEM .. [[" />
    </Property>
]]
GROUPS_ALL = GROUPS_ALL .. GROUP
end

AddGroup("MOD", CATEGORY[1], "")

BASEBUILDINGTABLE_ADDING_ALL = ""
DEFAULTSAVEDATA_KNOWNPRODUCT_ALL = ""
PRODUCT_ALL = ""
REWARDTABLE_ALL = ""
OFFSET = "0"

for i=1,#CATEGORY,1 do
	AddGroup(CATEGORY[i], BUILDABLE_OBJECT_TABLE[CATEGORY[i]][1], "MOD", CATEGORY_ICON[CATEGORY[i]])
	if CATEGORY_OFFSET[CATEGORY[i]] == nil or CATEGORY_OFFSET[CATEGORY[i]] == "" then
		OFFSET = "0"
	else
		OFFSET = CATEGORY_OFFSET[CATEGORY[i]]
	end	
	for j=1,#SHIP_SEED_LIST[CATEGORY[i]],1 do
		AddToBuildmenu(BUILDABLE_OBJECT_TABLE[CATEGORY[i]][1], CATEGORY[i], SHIP_SEED_LIST[CATEGORY[i]][j])
		BASEBUILDINGTABLE_ADDING_ALL = BASEBUILDINGTABLE_ADDING_ALL .. BASEBUILDINGTABLE_ADDING
		DEFAULTSAVEDATA_KNOWNPRODUCT_ALL = DEFAULTSAVEDATA_KNOWNPRODUCT_ALL .. DEFAULTSAVEDATA_KNOWNPRODUCT
		PRODUCT_ALL = PRODUCT_ALL .. PRODUCT
		REWARDTABLE_ALL = REWARDTABLE_ALL .. REWARDTABLE
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BuildableCustomShipCollection.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= BASEBUILDINGTABLE_ADDING_ALL
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml"},
							["LINE_OFFSET"] 		= "-1",
							["ADD"] 				= GROUPS_ALL
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Table"}, --"GcProductTable"
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= PRODUCT_ALL
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"EntitlementTable"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= REWARDTABLE_ALL
						}
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATACREATIVE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= DEFAULTSAVEDATA_KNOWNPRODUCT_ALL
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= DEFAULTSAVEDATA_KNOWNPRODUCT_ALL
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = ADD_FILES_TABLE
}


--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE