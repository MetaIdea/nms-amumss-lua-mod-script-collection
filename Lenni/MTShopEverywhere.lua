top = [[
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="WeaponTest" />
      <Property name="NameHash" value="0" /> <!--695426536-->
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
]]

bottom = [[
  </Property>
  </Property>
]]

BLDGICON = "TEXTURES/UI/FRONTEND/ICONS/WIKI/BASE4.DDS"


BUILDABLE_OBJECT_TABLE =
{
	{ ["ID_NAME"]="SHOPWEAPON", 	["P_NAME"]="SHOPWEAPON", 	    	["PATH"]="MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/",	["ICON"]=BLDGICON },
}

function GetBaseBuildingObject(ID_NAME, P_NAME, PATH)
BASEBUILDINGOBJECTSTABLE_ADDING =
[[
    <Property value="GcBaseBuildingEntry.xml">
	  <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="True" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource.xml">
        <Property name="Filename" value="]].. PATH .. P_NAME ..[[_PLACEMENT.SCENE.MBIN" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="False" />
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
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="False" />
      <Property name="CheckPlayerCollision" value="True" />
      <Property name="CanRotate3D" value="False" />
      <Property name="CanScale" value="False" />
      <Property name="Groups">
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="PLANET_TECH" />
          <Property name="SubGroupName" value="PLANETPORTABLE" />
          <Property name="SubGroup" value="0" />
        </Property>
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="ColourPaletteGroupId" value="" />
      <Property name="DefaultColourPaletteId" value="" />
      <Property name="MaterialGroupId" value="" />
      <Property name="DefaultMaterialId" value="" />
      <Property name="CanChangeColour" value="True" />
      <Property name="CanChangeMaterial" value="True" />
      <Property name="CanPickUp" value="False" />
      <Property name="ShowInBuildMenu" value="True" />
      <Property name="CompositePartObjectIDs" />
      <Property name="FamilyIDs" />
      <Property name="BuildEffectAccelerator" value="1" />
      <Property name="RemovesAttachedDecoration" value="True" />
      <Property name="RemovesWhenUnsnapped" value="False" />
      <Property name="EditsTerrain" value="False" />
      <Property name="BaseTerrainEditShape" value="Cube" />
      <Property name="MinimumDeleteDistance" value="1" />
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
      <Property name="ShowGhosts" value="True" />
      <Property name="SnappingDistanceOverride" value="0" />
      <Property name="RegionSpawnLOD" value="1" />
      <Property name="NPCInteractionScene" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
return BASEBUILDINGOBJECTSTABLE_ADDING
end

function GetBaseBuildingPart(ID_NAME, P_NAME, PATH)
BASEBUILDINGPARTSTABLE_ADDING =
[[
    <Property value="GcBaseBuildingPart.xml">
      <Property name="ID" value="_]].. ID_NAME ..[[" />
      <Property name="StyleModels">
        <Property value="GcBaseBuildingPartStyleModel.xml">
          <Property name="Style" value="GcBaseBuildingPartStyle.xml">
            <Property name="Style" value="None" />
          </Property>
          <Property name="Model" value="TkModelResource.xml">
            <Property name="Filename" value="]].. PATH .. P_NAME ..[[.SCENE.MBIN" />
          </Property>
          <Property name="Inactive" value="TkModelResource.xml">
            <Property name="Filename" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
return BASEBUILDINGPARTSTABLE_ADDING
end

function GetProduct(ID_NAME, ICON)
PRODUCT_ADDING =
[[
    <Property value="GcProductData.xml">
	  <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="Name" value="]].. ID_NAME ..[[" />
      <Property name="NameLower" value="]].. ID_NAME ..[[" />
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
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="1" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]].. ICON ..[[" />
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
        <Property name="R" value="0.172549" />
        <Property name="G" value="0.4862745" />
        <Property name="B" value="0.6235294" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
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
      <Property name="Requirements" />
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
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Construction" />
      <Property name="IsCraftable" value="True" />
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
    </Property>
]]
return PRODUCT_ADDING
end

function GetAutoPartData(ID_NAME)
AUTOPARTDATA_ADDING =
[[
	<Property value="GcBaseBuildingPartData.xml">
      <Property name="PartID" value="_]] .. ID_NAME .. [[" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="MagicData" value="TkMagicModelData.xml">
        <Property name="Vertices">
          <Property value="Vector3f.xml">
            <Property name="x" value="0.163574" />
            <Property name="y" value="0.066406" />
            <Property name="z" value="1" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="-0.163574" />
            <Property name="y" value="-0.066406" />
            <Property name="z" value="1" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="-0.163574" />
            <Property name="y" value="0.066406" />
            <Property name="z" value="0" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="0.163574" />
            <Property name="y" value="-0.066406" />
            <Property name="z" value="0" />
          </Property>
        </Property>
        <Property name="Centre" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0.5" />
        </Property>
        <Property name="Radius" value="0.37417" />
      </Property>
      <Property name="NodesCost" value="4" />
      <Property name="TimeCost" value="20" />
      <Property name="PhysicsCost" value="1" />
      <Property name="MeshesCost" value="1" />
      <Property name="InstanceNodesCost" value="0" />
      <Property name="InstanceTimeCost" value="100" />
      <Property name="InstanceMeshesCost" value="0" />
      <Property name="LastProfiledTimestamp" value="1638162922" />
      <Property name="InstanceLastProfiledTimestamp" value="0" />
    </Property>
]]
return AUTOPARTDATA_ADDING
end

function GetBaseBuildingCost(ID_NAME)
BASEBUILDINGCOST_ADDING =
[[
    <Property value="GcBaseBuildingEntryCosts.xml">
      <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="Active0AverageFrameTimeCost" value="0.0082" />
      <Property name="Active1AverageFrameTimeCost" value="0.008175" />
      <Property name="ActiveTotalNodes" value="36" />
      <Property name="ActivePhysicsComponents" value="12" />
      <Property name="Inactive0AverageFrameTimeCost" value="0.00809" />
      <Property name="Inactive1AverageFrameTimeCost" value="0.00801" />
      <Property name="InactiveTotalNodes" value="25" />
      <Property name="InactivePhysicsComponents" value="1" />
    </Property>
]]
return BASEBUILDINGCOST_ADDING
end	

function GetKnownProduct(ID_NAME)
DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING =
[[
      <Property value="NMSString0x10.xml">
		<Property name="Value" value="]].. ID_NAME ..[[" />
      </Property>
]]
return DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING
end

function GetPlaceDataEntity(ID_NAME)
PLACEMENTDATA_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="TriggerVolumeType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="Open" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="Floor" value="False" />
      <Property name="IgnoreModelOwner" value="False" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
      <Property name="DisableGravity" value="False" />
      <Property name="SpinOnCreate" value="0" />
      <Property name="UseBasePartOptimisation" value="False" />
    </Property>
    <Property value="GcBasePlacementComponentData.xml">
      <Property name="Rules">
        <Property value="GcBasePlacementRule.xml">
          <Property name="Conditions" />
          <Property name="PositionLocator" value="" />
          <Property name="PartID" value="_]].. ID_NAME ..[[" />
          <Property name="ORConditions" value="False" />
          <Property name="TwinCriteria" value="None" />
        </Property>
      </Property>
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
return PLACEMENTDATA_ENTITY
end

function GetPlaceScene(PATH, P_NAME)
PLACEMENT_SCENE =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="]].. PATH .. P_NAME ..[[_PLACEMENT" />
  <Property name="NameHash" value="2385968370" />
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
      <Property name="Value" value="]].. PATH .. P_NAME ..[[.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PlacementData" />
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
          <Property name="Value" value="]].. PATH .. P_NAME ..[[_PLACEMENTDATA.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="]].. PATH .. P_NAME ..[[_PLACEMENT" />
          <Property name="NameHash" value="2385968370" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5" />
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
	["FILE_DESTINATION"] = PATH .. P_NAME ..  [[_PLACEMENTDATA.ENTITY.EXML]],
	["FILE_CONTENT"] 	 = GetPlaceDataEntity(ID_NAME)
}

return ADD_PLACEMENTDATA_FILE
end

function GetSceneAddFile(PATH, P_NAME)
ADD_PLACEMENTSCENE_FILE =
{
	["FILE_DESTINATION"] = PATH .. P_NAME .. [[_PLACEMENT.SCENE.EXML]],
	["FILE_CONTENT"] 	 = GetPlaceScene(PATH, P_NAME)
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

for i=1,#BUILDABLE_OBJECT_TABLE,1 do
	table.insert(BASEBUILDINGOBJECTSTABLE_ADDING_ALL,GetBaseBuildingObject(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["PATH"]))
	table.insert(BASEBUILDINGPARTSTABLE_ADDING_ALL,GetBaseBuildingPart(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["PATH"]))
	table.insert(PRODUCT_ADDING_ALL,GetProduct(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["ICON"]))
	table.insert(AUTOPARTDATA_ADDING_ALL,GetAutoPartData(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
	table.insert(BASEBUILDINGCOST_ADDING_ALL,GetBaseBuildingCost(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))	
	table.insert(DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING_ALL,GetKnownProduct(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
	table.insert(PLACEMENTDATA_ENTITY_ALL,GetPlaceDataEntity(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
	table.insert(ADD_FILES_TABLE,GetEntityAddFile(BUILDABLE_OBJECT_TABLE[i]["PATH"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
	table.insert(ADD_FILES_TABLE,GetSceneAddFile(BUILDABLE_OBJECT_TABLE[i]["PATH"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"]))
end

NMS_MOD_DEFINITION_CONTAINER	=
{
["MOD_FILENAME"] 			=	"MTShopEverywhere.pak",
["MOD_AUTHOR"]				=	"Lenni",
["Contributors"]			=	"Babscoole, ApexFatality, WinderTP",
["NMS_VERSION"]				=	"3.99.1",
["ADD_FILES"]				=	ADD_FILES_TABLE,
["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
                    ["MBIN_FILE_SOURCE"]    = {{[[MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPON.SCENE.MBIN]],[[MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPONOLD.SCENE.MBIN]]}},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
						
						
							["PRECEDING_KEY_WORDS"]	=	"Attributes",
							["SECTION_ACTIVE"]		=	1,
							["ADD_OPTION"]			=	"ADDafterSECTION",
							["ADD"]					=	top,
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name","LargeCrate36"},
							["ADD_OPTION"]			=	"ADDafterSECTION",
							["ADD"]					=	bottom,
						},
					},
				},
				
                {
                    ["MBIN_FILE_SOURCE"]	= "MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION_PIRATE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"]	=   {"Name","ShopMissionREF1"},
                            ["VALUE_CHANGE_TABLE"]	=
                            {
                                {"Value","MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/SHOPWEAPONOLD.SCENE.MBIN"},
                            },
                        },
                    },
				},

				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects"},
							["LINE_OFFSET"]			= "+0",
							["ADD"]					= table.concat(BASEBUILDINGOBJECTSTABLE_ADDING_ALL)
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "_O2_HARVESTER"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= table.concat(BASEBUILDINGPARTSTABLE_ADDING_ALL)
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Table"},
							["LINE_OFFSET"]			= "+0",
							["ADD"]					= table.concat(PRODUCT_ADDING_ALL)
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"PartsData"},
							["LINE_OFFSET"]			= "+0",
							["ADD"]					= table.concat(AUTOPARTDATA_ADDING_ALL)
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"ObjectCosts"},
							["LINE_OFFSET"]			= "+0",
							["ADD"]					= table.concat(BASEBUILDINGCOST_ADDING_ALL)
						}
					},
				},				
				{
					["MBIN_FILE_SOURCE"]	= [[METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN]],
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"KnownProducts"},
							["LINE_OFFSET"]			= "+0",
							["ADD"]					= table.concat(DEFAULTSAVEDATA_KNOWNPRODUCT_ADDING_ALL)
						},
					},
				},
			}
		},
	},
}