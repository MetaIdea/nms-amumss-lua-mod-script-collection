BUILDABLE_OBJECT_TABLE = 
{
"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN",
"MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
"MODELS/COMMON/SPACECRAFT/DRONE/DRONESHIP.SCENE.MBIN",
"MODELS/PLANETS/BIOMES/RAINFOREST/LARGECREATURE/DIPLODOCUS/DIPLODOCUS.SCENE.MBIN",
"MODELS/PLANETS/CREATURES/TREXRIG/TREX.SCENE.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET.SCENE.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET_R.SCENE.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET_L.SCENE.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_COOLINGTOWER.SCENE.MBIN",
"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_DISTRIBUTOR.SCENE.MBIN"
}

NEW_BUILD_GROUP = "MOD"
OBJECT_LIMIT = 650

OBJECT_COUNT_ID = 1

function CreateXMLCode(BUILDABLE_OBJECT)
ID_NAME_ = GetObjectID(BUILDABLE_OBJECT)
ID_NAME = "#" .. ID_NAME_ .. OBJECT_COUNT_ID

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
		<Property name="Filename" value="]] .. BUILDABLE_OBJECT .. [[" />
      </Property>
      <Property name="InactiveModel" value="TkModelResource.xml">
		<Property name="Filename" value="" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="False" />
      <Property name="IsConnection" value="False" />
      <Property name="PlacementNormalOffset" value="0" />
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
      <Property name="CanPlaceOnItself" value="False" />
      <Property name="CanRotate3D" value="False" />
      <Property name="CanScale" value="False" />
      <Property name="Groups">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="]] .. NEW_BUILD_GROUP .. [[" />
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
      <Property name="Name" value="]] .. ID_NAME_ .. [[" />
      <Property name="NameLower" value="]] .. ID_NAME_ .. [[" />
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
          <Property name="ID" value="LAND1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
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

OBJECT_COUNT_ID = OBJECT_COUNT_ID + 1
end

function GetObjectID(SCENEPATH)
	--return string.gsub(string.match(string.match(SCENEPATH, "^.+/(.+)$"), "(.+)%.(.+)"), ".SCENE", "") .. "_" .. math.random(9999)
	return string.gsub(string.match(string.match(SCENEPATH, "^.+/(.+)$"), "(.+)%.(.+)"), ".SCENE", "")
end

GROUP =
[[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="]] .. NEW_BUILD_GROUP .. [[" />
      <Property name="ParentGroup" value="" />
      <Property name="Name" value="]] .. NEW_BUILD_GROUP .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/RANK/RANK.DISTANCEWARPED.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
	  <Property name="DefaultItem" value="]] .. GetObjectID(BUILDABLE_OBJECT_TABLE[1]) .. [[" />
    </Property>
]]

BASEBUILDINGTABLE_ADDING_ALL = ""
DEFAULTSAVEDATA_KNOWNPRODUCT_ALL = ""
PRODUCT_ALL = ""

function ParseTextFileIntoTable(file)
	local filehandle = assert(io.open(file, "r"),"io.open: Cannot open file to load: "..file)
	local LineTable = {}
	local LineCount = 0
	local FileSize = filehandle:seek("end")
	filehandle:seek("set")
	if FileSize ~= nil and FileSize ~= 0 then
		line = assert(filehandle:read("l"),"read: cannot read line from file: "..file)
		while line ~= nil do 
			LineCount=LineCount+1
			table.insert(LineTable, line) 
			line = filehandle:read("l")
		end
		filehandle:close()
		return LineTable, LineCount
	else
		return {}
	end
end


function CreateAddings()
	DEFAULT_ITEM_FOR_GROUP_INIT = false
	TextFileTable = ParseTextFileIntoTable("..\\NMS_pak_list.txt")
	for i=1,#TextFileTable,1 do
		if OBJECT_COUNT_ID < OBJECT_LIMIT then
			if string.find(TextFileTable[i], ".SCENE.MBIN") then
				local SCENEFILE = string.sub(TextFileTable[i], 1, string.find(TextFileTable[i], " (", 1, true)-1)
				CreateXMLCode(SCENEFILE)
				BASEBUILDINGTABLE_ADDING_ALL = BASEBUILDINGTABLE_ADDING_ALL .. BASEBUILDINGTABLE_ADDING
				DEFAULTSAVEDATA_KNOWNPRODUCT_ALL = DEFAULTSAVEDATA_KNOWNPRODUCT_ALL .. DEFAULTSAVEDATA_KNOWNPRODUCT
				PRODUCT_ALL = PRODUCT_ALL .. PRODUCT
				print("Adding buildable object: " .. ID_NAME)
				if not DEFAULT_ITEM_FOR_GROUP_INIT then
					DEFAULT_ITEM_FOR_GROUP_INIT = true
					DEFAULT_ITEM_FOR_GROUP = ID_NAME
				end		
			end
		end
	end
end
CreateAddings()

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EveryObjectBuilable.pak", 
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
							["ADD"] 				= GROUP
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
	}
}


--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE