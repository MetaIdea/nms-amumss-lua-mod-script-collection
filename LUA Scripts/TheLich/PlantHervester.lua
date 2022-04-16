BASEBUILDINGCOST_ADD = [[
<Property value="GcBaseBuildingEntryCosts.xml">
    <Property name="ID" value="PLANT_HARVESTER"/>
    <Property name="Active0AverageFrameTimeCost" value="0.008604945"/>
    <Property name="Active1AverageFrameTimeCost" value="0.008479338"/>
    <Property name="ActiveTotalNodes" value="27"/>
    <Property name="ActivePhysicsComponents" value="1"/>
    <Property name="Inactive0AverageFrameTimeCost" value="0.0033199212"/>
    <Property name="Inactive1AverageFrameTimeCost" value="1"/>
    <Property name="InactiveTotalNodes" value="4"/>
    <Property name="InactivePhysicsComponents" value="0"/>
</Property>
]]

BASEBUILDINGPARTSGENERATED_ADD = [[
    <Property value="GcBaseBuildingPartData.xml">
      <Property name="PartID" value="_PLANT_HARVESTER" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="MagicData" value="TkMagicModelData.xml">
        <Property name="Vertices">
          <Property value="Vector3f.xml">
            <Property name="x" value="0.045189" />
            <Property name="y" value="1.563417" />
            <Property name="z" value="0.424981" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="0.425149" />
            <Property name="y" value="1.563256" />
            <Property name="z" value="-0.045057" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="0.526943" />
            <Property name="y" value="0.24752" />
            <Property name="z" value="-0.527526" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="0.526943" />
            <Property name="y" value="0.24752" />
            <Property name="z" value="0.527516" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="-0.045152" />
            <Property name="y" value="1.563417" />
            <Property name="z" value="-0.424927" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="-0.424983" />
            <Property name="y" value="1.563336" />
            <Property name="z" value="0.045176" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="-0.527035" />
            <Property name="y" value="0.247038" />
            <Property name="z" value="0.527581" />
          </Property>
          <Property value="Vector3f.xml">
            <Property name="x" value="-0.527163" />
            <Property name="y" value="0.247279" />
            <Property name="z" value="-0.527333" />
          </Property>
        </Property>
        <Property name="Centre" value="Vector3f.xml">
          <Property name="x" value="-0.00011" />
          <Property name="y" value="0.905227" />
          <Property name="z" value="2.7E-05" />
        </Property>
        <Property name="Radius" value="0.849525" />
      </Property>
      <Property name="NodesCost" value="28" />
      <Property name="TimeCost" value="11908" />
      <Property name="PhysicsCost" value="1" />
      <Property name="MeshesCost" value="20" />
      <Property name="InstanceNodesCost" value="4" />
      <Property name="InstanceTimeCost" value="10045" />
      <Property name="InstanceMeshesCost" value="3" />
      <Property name="LastProfiledTimestamp" value="1638171239" />
      <Property name="InstanceLastProfiledTimestamp" value="1638155993" />
    </Property>
]]

BASEBUILDINGPARTS_ADD = [[
    <Property value="GcBaseBuildingPart.xml">
      <Property name="ID" value="_PLANT_HARVESTER" />
      <Property name="StyleModels">
        <Property value="GcBaseBuildingPartStyleModel.xml">
          <Property name="Style" value="GcBaseBuildingPartStyle.xml">
            <Property name="Style" value="None" />
          </Property>
          <Property name="Model" value="TkModelResource.xml">
            <Property name="Filename" value="CUSTOM\PLANT_HARVESTER.SCENE.MBIN" />
          </Property>
          <Property name="Inactive" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/OCTACABINET_LOD.SCENE.MBIN" />
          </Property>
        </Property>
      </Property>
    </Property>
]]

BASEBUILDINGOBJECT_ADD = [[
    <Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="PLANT_HARVESTER" />
      <Property name="HasProduct" value="True" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource.xml">
        <Property name="Filename" value="CUSTOM\PLANT_HARVESTER_PLACEMENT.SCENE.MBIN" />
      </Property>
      <Property name="SnapPoints" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="InactiveModel" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="SurfaceNormal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="True" />
      <Property name="PlacementNormalOffset" value="0" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="Lush" />
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
      <Property name="CheckPlaceholderCollision" value="True" />
      <Property name="CollisionScale" value="0.75" />
      <Property name="EnableCollision" value="True" />
      <Property name="OptionalPhysics" value="False" />
      <Property name="CanPlaceOnItself" value="True" />
      <Property name="CanRotate3D" value="True" />
      <Property name="CanScale" value="True" />
      <Property name="Groups">
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="BASE_TECH" />
          <Property name="SubGroupName" value="TECHFARMING" />
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
      <Property name="CanPickUp" value="True" />
      <Property name="ScanRadius" value="0" />
      <Property name="RemovesAttachedDecoration" value="False" />
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
      <Property name="NPCInteractionScene" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]

BASEBUILDING_ADD = [[
    <Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="PLANT_HARVESTER" />
      <Property name="HasProduct" value="True" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource.xml">
        <Property name="Filename" value="CUSTOM/PLANT_HARVESTER.SCENE.MBIN" />
      </Property>
      <Property name="SnapPoints" value="TkModelResource.xml">
        <Property name="Filename" value="CUSTOM/PLANT_HARVESTER.SCENE.MBIN" />
      </Property>
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="CUSTOM/PLANT_HARVESTER.SCENE.MBIN" />
      </Property>
      <Property name="InactiveModel" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/OCTACABINET_LOD.SCENE.MBIN" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="SurfaceNormal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="True" />
      <Property name="PlacementNormalOffset" value="0" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="Lush" />
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
      <Property name="CheckPlaceholderCollision" value="True" />
      <Property name="CollisionScale" value="0.75" />
      <Property name="EnableCollision" value="True" />
      <Property name="OptionalPhysics" value="False" />
      <Property name="CanPlaceOnItself" value="True" />
      <Property name="CanRotate3D" value="True" />
      <Property name="CanScale" value="True" />
      <Property name="Groups">
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="BASE_TECH" />
          <Property name="SubGroupName" value="" />
          <Property name="SubGroup" value="1" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="ColourPaletteGroupId" value="" />
      <Property name="DefaultColourPaletteId" value="" />
      <Property name="MaterialGroupId" value="" />
      <Property name="DefaultMaterialId" value="" />
      <Property name="CanChangeColour" value="True" />
      <Property name="CanChangeMaterial" value="True" />
      <Property name="CanPickUp" value="True" />
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
      <Property name="NPCInteractionScene" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]

PRODUCT_ADD = [[
    <Property value="GcProductData.xml">
      <Property name="Id" value="PLANT_HARVESTER" />
      <Property name="Name" value="UI_PLANT_HARVESTER_NAME" />
      <Property name="NameLower" value="UI_PLANT_HARVESTER_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_PLANT_HARVESTER_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_PLANT_HARVESTER_DESC" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
      </Property>
      <Property name="BaseValue" value="1" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.OCTACABINET.DDS" />
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.17254902" />
        <Property name="G" value="0.4862745" />
        <Property name="B" value="0.62352943" />
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
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="LAND2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="10" />
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
      <Property name="RecipeCost" value="1" />
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
    </Property>
]]

BLUEPRINTS_ADD = [[
    <Property value="GcBuildingBlueprint.xml">
      <Property name="ProductID" value="PLANT_HARVESTER" />
      <Property name="GroupId" value="1" />
    </Property>
]]

ITEMTREE_ADD = [[
    <Property value="GcUnlockableItemTreeNode.xml">
       <Property name="Unlockable" value="PLANT_HARVESTER" />
       <Property name="Children" />
    </Property>
]]


LANGS = {
    "English", "French", "Italian", "German", "Spanish", "Russian", "Polish",
    "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese",
    "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish"
}

TEXTS =
{
    {
        ["LANG"] = "English",
        ["VALUES"] = {
            {"UI_PLANT_HARVESTER_NAME", "PLANT HARVESTER"},
            {"UI_PLANT_HARVESTER_NAME_L", "Plant Harvester"},
            {"UI_PLANT_HARVESTER_DESC", "A farming unit, designed to harvest plants around at great radius."},
            {"UI_PLANT_HARVESTER_SUB", "Plant Harvesting Unit"},
        },
    },
    {
        ["LANG"] = "USEnglish",
        ["VALUES"] = {
            {"UI_PLANT_HARVESTER_NAME", "PLANT HARVESTER"},
            {"UI_PLANT_HARVESTER_NAME_L", "Plant Harvester"},
            {"UI_PLANT_HARVESTER_DESC", "A farming unit, designed to harvest plants around at great radius."},
            {"UI_PLANT_HARVESTER_SUB", "Plant Harvesting Unit"},
        },
    },
    {
        ["LANG"] = "Russian",
        ["VALUES"] = {
            {"UI_PLANT_HARVESTER_NAME", "СБОРЩИК РАСТЕНИЙ"},
            {"UI_PLANT_HARVESTER_NAME_L", "Сборщик растений"},
            {"UI_PLANT_HARVESTER_DESC", "Устройство для массового сбора растений, находящихся неподалеку."},
            {"UI_PLANT_HARVESTER_SUB", "Сельскохозяйственная технология"},
        },
    },
    {
        ["LANG"] = "SimplifiedChinese",
        ["VALUES"] = {
            {"UI_PLANT_HARVESTER_NAME", "作物收获装置"},
            {"UI_PLANT_HARVESTER_NAME_L", "作物收获装置"},
            {"UI_PLANT_HARVESTER_DESC", "一个耕作单位，用来收获一定范围内的所有作物"},
            {"UI_PLANT_HARVESTER_SUB", "耕作单元"},
        },
    },
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PlantHarveseter.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.0.3",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BASEBUILDINGCOST_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BASEBUILDING_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BASEBUILDINGOBJECT_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "_OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BASEBUILDINGPARTS_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"PartID", "_OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BASEBUILDINGPARTSGENERATED_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PRODUCT_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\PURCHASEABLEBUILDINGBLUEPRINTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"ProductID", "OCTACABINET"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BLUEPRINTS_ADD,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "PLANTERMEGA"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ITEMTREE_ADD,
						},
					}
				},
      }
    },
	}	
}

local Mbin_Table_Ref = {}

for i=1,#TEXTS do
  local TEXT_DEF = TEXTS[i]
  local LANG = TEXT_DEF["LANG"]
  local MBIN_NAME = "LANGUAGE\NMS_LOC5_"..LANG:upper()..".MBIN"
  local TMP_ADD = ""
  for _, values in ipairs(TEXT_DEF["VALUES"]) do
    TMP_ADD = TMP_ADD..[[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]]..values[1]..[[" />
]]
    for _, lang in ipairs(LANGS) do
        local value = ""
        if lang == LANG then
            value = values[2]
        end
        TMP_ADD = TMP_ADD..[[
      <Property name="]]..lang..[[" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
      </Property>
]]
    end
    TMP_ADD = TMP_ADD..[[
    </Property>
]]
  end

  local temp_table = 
  {
    ["MBIN_FILE_SOURCE"] 	= MBIN_NAME,
    ["EXML_CHANGE_TABLE"] 	= 
    {
      {
        ["SPECIAL_KEY_WORDS"] = {"Id", "UI_CREATURE_FARM_TUT_SUB"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["ADD"] = TMP_ADD
      },
    }
  }
  Mbin_Table_Ref[#Mbin_Table_Ref + 1] = temp_table
end

NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][#NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"]+1] =
{
    ["MBIN_CHANGE_TABLE"] 	= Mbin_Table_Ref
}

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE