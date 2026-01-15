BUILDICON = "TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.CUSTOMFREIGHTERCONSOLE.DDS"

BUILDABLE_OBJECT_TABLE =
{
  {["ID_NAME"]="GALTERMINAL", ["P_NAME"]="GALTERMINAL", ["PATH"]="MODELS/CUSTOM/PROPS/", ["GROUP_NAME"]="FURNITURE", ["SUBGROUP_NAME"]="FURNDECOR", ["ICON"]=BUILDICON},
}

function GetBaseBuildingObject(ID_NAME, P_NAME, PATH, GROUP_NAME, SUBGROUP_NAME, COMPO, SHOW)
SHOW_INJECT = "true"
if not SHOW then SHOW_INJECT = "false" end
COMP_ENTRY = ""
if COMPO[1] == "Null" then
  COMP_ENTRY = [[<Property name="CompositePartObjectIDs" />]]
else
  COMP_ENTRY = [[
<Property name="CompositePartObjectIDs">
]]
  for _m,n in ipairs(COMPO) do
  COMP_ENTRY = COMP_ENTRY ..[[
<Property name="CompositePartObjectIDs" value="]] .. n .. [[" />]]
  end
  COMP_ENTRY = COMP_ENTRY .. [[
</Property>
]]
end
BASEBUILDINGOBJECTSTABLE_ADDING =
[[
    <Property name="Objects" value="GcBaseBuildingEntry">
      <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="IsTemporary" value="false" />
      <Property name="IsFromModFolder" value="true" />
      <Property name="Style" value="GcBaseBuildingPartStyle">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource">
        <Property name="Filename" value="]].. PATH .. P_NAME ..[[_PLACEMENT.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="SinglePartID" value="" />
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="true" />
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
      <Property name="BuildableOnPlanetWithProduct" value="true" />
      <Property name="BuildableUnderwater" value="true" />
      <Property name="BuildableAboveWater" value="true" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CorvetteBaseLimit" value="0" />
      <Property name="DoesNotCountTowardsComplexity" value="false" />
      <Property name="CheckPlaceholderCollision" value="false" />
      <Property name="CheckPlayerCollision" value="true" />
      <Property name="CanStack" value="true" />
      <Property name="SnapRotateBlocked" value="false" />
      <Property name="CanRotate3D" value="true" />
      <Property name="CanScale" value="true" />
      <Property name="Groups">
        <Property name="Groups" value="GcBaseBuildingEntryGroup">
          <Property name="Group" value="]].. GROUP_NAME ..[[" />
          <Property name="SubGroupName" value="]].. SUBGROUP_NAME ..[[" />
          <Property name="SubGroup" value="0" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="ColourPaletteGroupId" value="" />
      <Property name="DefaultColourPaletteId" value="" />
      <Property name="MaterialGroupId" value="" />
      <Property name="DefaultMaterialId" value="" />
      <Property name="CanChangeColour" value="true" />
      <Property name="CanChangeMaterial" value="true" />
      <Property name="CanPickUp" value="false" />
      <Property name="ShowInBuildMenu" value="]] .. SHOW_INJECT .. [[" />
]] .. COMP_ENTRY .. [[
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
return BASEBUILDINGOBJECTSTABLE_ADDING
end

function GetBaseBuildingPart(ID_NAME, P_NAME, PATH)
BASEBUILDINGPARTSTABLE_ADDING =
[[
    <Property name="Parts" value="GcBaseBuildingPart">
      <Property name="ID" value="_]].. ID_NAME ..[[" />
      <Property name="StyleModels">
        <Property name="StyleModels" value="GcBaseBuildingPartStyleModel">
          <Property name="Style" value="GcBaseBuildingPartStyle">
            <Property name="Style" value="None" />
          </Property>
          <Property name="Model" value="TkModelResource">
            <Property name="Filename" value="]].. PATH .. P_NAME ..[[.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Inactive" value="TkModelResource">
            <Property name="Filename" value="" />
            <Property name="Seed" value="0" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
return BASEBUILDINGPARTSTABLE_ADDING
end

function GetProduct(ID_NAME, P_NAME, ICON)
PRODUCT_ADDING =
[[
    <Property name="Table" value="GcProductData">
      <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="Name" value="]].. P_NAME ..[[" />
      <Property name="NameLower" value="]].. P_NAME ..[[" />
      <Property name="Subtitle" value="" />
      <Property name="Description" value="" />
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="BaseValue" value="1" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="]].. ICON ..[[" />
      </Property>
      <Property name="HeroIcon" value="TkTextureResource">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour">
        <Property name="R" value="0.172549" />
        <Property name="G" value="0.4862745" />
        <Property name="B" value="0.6235294" />
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
        <Property name="Requirements" value="GcTechnologyRequirement">
          <Property name="ID" value="LAND2" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="50" />
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
      <Property name="RecipeCost" value="2" />
      <Property name="SpecificChargeOnly" value="false" />
      <Property name="NormalisedValueOnWorld" value="0.000000" />
      <Property name="NormalisedValueOffWorld" value="0.000000" />
      <Property name="TradeCategory" value="GcTradeCategory">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Construction" />
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
      <Property name="EggModifierIngredient" value="true" />
      <Property name="IsTechbox" value="false" />
      <Property name="CanSendToOtherPlayers" value="false" />
    </Property>
]]
return PRODUCT_ADDING
end

function GetAutoPartData(ID_NAME)
AUTOPARTDATA_ADDING =
[[
    <Property name="PartsData" value="GcBaseBuildingPartData">
      <Property name="PartID" value="_]] .. ID_NAME .. [[" />
      <Property name="Style" value="GcBaseBuildingPartStyle">
        <Property name="Style" value="None" />
      </Property>
      <Property name="MagicData" value="TkMagicModelData">
        <Property name="Vertices">
          <Property value="Vertices">
            <Property name="X" value="-2.025391" />
            <Property name="Y" value="4.000000" />
            <Property name="Z" value="-2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="-2.025391" />
            <Property name="Y" value="4.000000" />
            <Property name="Z" value="2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="2.025391" />
            <Property name="Y" value="4.000000" />
            <Property name="Z" value="-2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="2.025391" />
            <Property name="Y" value="4.000000" />
            <Property name="Z" value="2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="-2.025391" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="-2.025391" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="2.025391" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-2.025391" />
          </Property>
          <Property name="Vertices">
            <Property name="X" value="2.025391" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="2.025391" />
          </Property>
        </Property>
        <Property name="Centre">
          <Property name="X" value="0.000000" />
          <Property name="Y" value="2.000000" />
          <Property name="Z" value="0.000000" />
        </Property>
        <Property name="Radius" value="2.997921" />
      </Property>
      <Property name="NodesCost" value="7" />
      <Property name="TimeCost" value="29745" />
      <Property name="PhysicsCost" value="1" />
      <Property name="MeshesCost" value="5" />
      <Property name="InstanceNodesCost" value="35" />
      <Property name="InstanceTimeCost" value="52732" />
      <Property name="InstanceMeshesCost" value="25" />
      <Property name="LastProfiledTimestamp" value="1667279869" />
      <Property name="InstanceLastProfiledTimestamp" value="1667186766" />
    </Property>
]]
return AUTOPARTDATA_ADDING
end

function GetBaseBuildingCost(ID_NAME)
BASEBUILDINGCOST_ADDING =
[[
    <Property name="ObjectCosts" value="GcBaseBuildingEntryCosts">
      <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="Active0AverageFrameTimeCost" value="0.008200" />
      <Property name="Active1AverageFrameTimeCost" value="0.008175" />
      <Property name="ActiveTotalNodes" value="36" />
      <Property name="ActivePhysicsComponents" value="12" />
      <Property name="Inactive0AverageFrameTimeCost" value="0.004045" />
      <Property name="Inactive1AverageFrameTimeCost" value="0.004005" />
      <Property name="InactiveTotalNodes" value="25" />
      <Property name="InactivePhysicsComponents" value="15" />
    </Property>
]]
return BASEBUILDINGCOST_ADDING
end

function GetKnownProduct(ID_NAME)
DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING =
[[
        <Property name="KnownProducts" value="]].. ID_NAME ..[[" />
]]
return DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING
end

function GetPlaceDataEntity(ID_NAME)
PLACEMENTDATA_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="TkStaticPhysicsComponentData">
      <Property name="TkStaticPhysicsComponentData">
        <Property name="Data" value="TkPhysicsData">
          <Property name="Mass" value="0.000000" />
          <Property name="Friction" value="0.500000" />
          <Property name="RollingFriction" value="0.200000" />
          <Property name="AngularDamping" value="0.200000" />
          <Property name="LinearDamping" value="0.100000" />
          <Property name="Gravity" value="20.000000" />
        </Property>
        <Property name="NavMeshInclusion" value="TkNavMeshInclusionParams">
          <Property name="InclusionType" value="TkNavMeshInclusionType">
            <Property name="NavMeshInclusionType" value="Auto" />
          </Property>
          <Property name="InclusionMinSize" value="0.000000" />
          <Property name="AreaType" value="TkNavMeshAreaType">
            <Property name="NavMeshAreaType" value="Auto" />
          </Property>
        </Property>
        <Property name="TriggerVolumeType" value="TkVolumeTriggerType">
          <Property name="VolumeTriggerType" value="Open" />
        </Property>
        <Property name="TriggerVolume" value="false" />
        <Property name="Climbable" value="false" />
        <Property name="NoVehicleCollide" value="false" />
        <Property name="NoPlayerCollide" value="false" />
        <Property name="NoTerrainCollide" value="false" />
        <Property name="CameraInvisible" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcBasePlacementComponentData">
      <Property name="GcBasePlacementComponentData">
        <Property name="Rules">
          <Property name="Rules" value="GcBasePlacementRule">
            <Property name="Conditions" />
            <Property name="PositionLocator" value="" />
            <Property name="PartID" value="_]].. ID_NAME ..[[" />
            <Property name="ORConditions" value="false" />
            <Property name="TwinCriteria" value="None" />
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" _index="0" />
    <Property name="LodDistances" value="50.000000" _index="1" />
    <Property name="LodDistances" value="80.000000" _index="2" />
    <Property name="LodDistances" value="150.000000" _index="3" />
    <Property name="LodDistances" value="500.000000" _index="4" />
  </Property>
</Data>
]]
return PLACEMENTDATA_ENTITY
end

function GetPlaceScene(PATH, P_NAME)
PLACEMENT_SCENE =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
  <Property name="Name" value="]].. PATH .. P_NAME ..[[_PLACEMENT" />
  <Property name="NameHash" value="]]..GNH(PATH .. P_NAME ..[[_PLACEMENT]])..[[" />
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
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="]].. PATH .. P_NAME ..[[.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="PlacementData" />
      <Property name="NameHash" value="1551106921" />
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
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="]].. PATH .. P_NAME ..[[_PLACEMENTDATA.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="]].. PATH .. P_NAME ..[[_PLACEMENT" />
          <Property name="NameHash" value="]]..GNH(PATH .. P_NAME ..[[_PLACEMENT]])..[[" />
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
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="NAVIGATION" />
              <Property name="Value" value="FALSE" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="0.429757" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.719027" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="0.484206" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
return PLACEMENT_SCENE
end

function GetEntityAddFile(PATH, P_NAME, ID_NAME)
ADD_PLACEMENTDATA_FILE =
{
  ["FILE_DESTINATION"] = PATH .. P_NAME ..  [[_PLACEMENTDATA.ENTITY.MXML]],
  ["FILE_CONTENT"] = GetPlaceDataEntity(ID_NAME)
}

return ADD_PLACEMENTDATA_FILE
end

function GetSceneAddFile(PATH, P_NAME)
ADD_PLACEMENTSCENE_FILE =
{
  ["FILE_DESTINATION"] = PATH .. P_NAME .. [[_PLACEMENT.SCENE.MXML]],
  ["FILE_CONTENT"] = GetPlaceScene(PATH, P_NAME)
}
return ADD_PLACEMENTSCENE_FILE
end

BASEBUILDINGOBJECTSTABLE_ADDING_ALL = {}
BASEBUILDINGPARTSTABLE_ADDING_ALL = {}
PRODUCT_ADDING_ALL = {}
AUTOPARTDATA_ADDING_ALL = {}
BASEBUILDINGCOST_ADDING_ALL = {}
DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING_ALL = {}
PLACEMENTDATA_ENTITY_ALL = {}
ADD_FILES_TABLE = {}

COMP_HIDE_LIST = {} -- List of object IDs designated as CompositePartObject

for i=1,#BUILDABLE_OBJECT_TABLE,1 do
  local CompositeParts = {}
  local OBJECT_SHOW = true
  -- Add all CompositePartObjectIDs entries into COMP_HIDE_LIST
  if BUILDABLE_OBJECT_TABLE[i]["CompositePartObjectIDs"] ~= nil then
    CompositeParts = BUILDABLE_OBJECT_TABLE[i]["CompositePartObjectIDs"]
    for _,l in ipairs(CompositeParts) do
      table.insert(COMP_HIDE_LIST, l)
    end
  else
    CompositeParts = {"Null"}
  -- Check object ID against COMP_HIDE_LIST and have object hidden from build menu
    for _,n in ipairs(COMP_HIDE_LIST) do
      if BUILDABLE_OBJECT_TABLE[i]["ID_NAME"] == n then
        OBJECT_SHOW = false
        break
      end
    end
  end
    table.insert(BASEBUILDINGOBJECTSTABLE_ADDING_ALL,GetBaseBuildingObject(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["PATH"],BUILDABLE_OBJECT_TABLE[i]["GROUP_NAME"], BUILDABLE_OBJECT_TABLE[i]["SUBGROUP_NAME"], CompositeParts, OBJECT_SHOW))
    table.insert(BASEBUILDINGPARTSTABLE_ADDING_ALL,GetBaseBuildingPart(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["PATH"]))
    table.insert(PRODUCT_ADDING_ALL,GetProduct(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["ICON"]))
    table.insert(AUTOPARTDATA_ADDING_ALL,GetAutoPartData(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
    table.insert(BASEBUILDINGCOST_ADDING_ALL,GetBaseBuildingCost(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
    table.insert(DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING_ALL,GetKnownProduct(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
    table.insert(PLACEMENTDATA_ENTITY_ALL,GetPlaceDataEntity(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
    table.insert(ADD_FILES_TABLE,GetEntityAddFile(BUILDABLE_OBJECT_TABLE[i]["PATH"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
    table.insert(ADD_FILES_TABLE,GetSceneAddFile(BUILDABLE_OBJECT_TABLE[i]["PATH"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Build Custom Freighter Console",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.18",
["ADD_FILES"]     = ADD_FILES_TABLE,
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Objects"},
              ["ADD"] = table.concat(BASEBUILDINGOBJECTSTABLE_ADDING_ALL)
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "_O2_HARVESTER"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = table.concat(BASEBUILDINGPARTSTABLE_ADDING_ALL)
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Table"},
              ["ADD"] = table.concat(PRODUCT_ADDING_ALL)
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"PartsData"},
              ["ADD"] = table.concat(AUTOPARTDATA_ADDING_ALL)
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ObjectCosts"},
              ["ADD"] = table.concat(BASEBUILDINGCOST_ADDING_ALL)
            }
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
              ["ADD"] = table.concat(DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING_ALL)
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL.SCENE.MBIN", "MODELS\CUSTOM\PROPS\GALTERMINAL.SCENE.MBIN","REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\CUSTOM\PROPS\GALTERMINAL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",     "MODELS\CUSTOM\PROPS\GALTERMINAL"},
                {"NameHash", "4011656333"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Logo14"},
                {"Name", "Logo15"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "72.04727"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FleetTerminal"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
    <Property name="Children" value="TkSceneNodeData" _index="16">
      <Property name="Name" value="GALAXYGLOBE" />
      <Property name="NameHash" value="2910429869" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.500000" />
        <Property name="ScaleY" value="1.500000" />
        <Property name="ScaleZ" value="1.500000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TOY_CORE.SCENE.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="EMBEDGEOMETRY" />
          <Property name="Value" value="TRUE" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["AUTO_GNH"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="BRIDGESCANNER" />
          <Property name="NameHash" value="1123079334" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="2.000000" />
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
              <Property name="Value" value="MODELS\CUSTOM\PROPS\GALTERMINAL\ENTITIES\GALTERMINAL.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MiddleEffect"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "REFBridgeFloorMistVFX", "Name", "SCENEGRAPH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "ODELS\EFFECTS\SPACECRAFT\BRIDGEFLOORMIST.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN", "MODELS\CUSTOM\PROPS\GALTERMINAL\ENTITIES\GALTERMINAL.ENTITY.MBIN","REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\CUSTOM\PROPS\GALTERMINAL\ENTITIES\GALTERMINAL.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcMaintenanceComponentData"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    },
  },
}