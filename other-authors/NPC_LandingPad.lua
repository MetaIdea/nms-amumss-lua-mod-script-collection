BLDGICON = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.LANDINGPAD.DDS"
ALTBLDGICON = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BAZAAR.LANDINGZONE.DDS"

BUILDABLE_OBJECT_TABLE =
{
	{ ["ID_NAME"]="_U_NPCLANDING", ["P_NAME"]="NPCLANDINGPAD", ["PATH"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/", ["ICON"]=BLDGICON, ["NAME"]= "NPC_LANDING_NAME", ["NAMELOWER"]="NPC_LANDING_NAME_L", ["DESCRIPTION"]="NPC_LANDING_DESC", ["PLACEMENT"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGPAD_PLACEMENT.SCENE.MBIN" },
	{ ["ID_NAME"]="ALT_NPCLANDING", ["P_NAME"]="NPCLANDINGZONE", ["PATH"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/", ["ICON"]=ALTBLDGICON, ["NAME"]="NPC_LANDING_ALT_NAME", ["NAMELOWER"]="NPC_LANDING_ALT_NAME_L", ["DESCRIPTION"]="NPC_LANDING_DESC", ["PLACEMENT"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGZONE_PLACEMENT.SCENE.MBIN" },
}

LANGUAGES = {
	NPC_LANDING_NAME = {
		ENGLISH = "NPC LANDING PAD",
		GERMAN = "NPC LANDEFELD",
	},
	NPC_LANDING_NAME_L = {
		ENGLISH = "NPC Landing Pad",
		GERMAN = "NPC Landefeld",
	},
	NPC_LANDING_ALT_NAME = {
		ENGLISH = "ALTERNATIVE NPC LANDING PAD",
		GERMAN = "ALTERNATIVES NPC LANDEFELD",
	},
	NPC_LANDING_ALT_NAME_L= {
		ENGLISH = "Alternative NPC Landing Pad",
		GERMAN = "Alternatives NPC Landefeld",
	},
	UI_LANDINGPAD_TREE= {
		ENGLISH = "Landing Pads",
		GERMAN = "Landefelder",
	},
}

function GetBaseBuildingObject(ID_NAME, PLACEMENT)
BASEBUILDINGOBJECTSTABLE_ADDING =
[[
	    <Property value="GcBaseBuildingEntry.xml">
	  <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource.xml">
        <Property name="Filename" value="]].. PLACEMENT ..[[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="False" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="Lush" />
      </Property>
      <Property name="BuildableOnPlanetBase" value="True" />
      <Property name="BuildableOnSpaceBase" value="False" />
      <Property name="BuildableOnFreighter" value="False" />
      <Property name="BuildableOnPlanet" value="False" />
      <Property name="BuildableOnPlanetWithProduct" value="False" />
      <Property name="BuildableUnderwater" value="True" />
      <Property name="BuildableAboveWater" value="True" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="9" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="True" />
      <Property name="CheckPlayerCollision" value="True" />
      <Property name="CanRotate3D" value="False" />
      <Property name="CanScale" value="False" />
      <Property name="Groups">
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="BASE_TECH" />
          <Property name="SubGroupName" value="TECHTECH" />
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
      <Property name="SnappingDistanceOverride" value="0.1" />
      <Property name="RegionSpawnLOD" value="1" />
      <Property name="NPCInteractionScene" value="TkModelResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
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

function GetProduct(ID_NAME, ICON, NAME, NAMELOWER, DESC)
PRODUCT_ADDING =
[[
    <Property value="GcProductData.xml">
	  <Property name="ID" value="]].. ID_NAME ..[[" />
      <Property name="Name" value="]].. NAME ..[[" />
      <Property name="NameLower" value="]].. NAMELOWER ..[[" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="BLD_LANDINGPAD_SUBTITLE" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="]].. DESC ..[[" />
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
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="CASING" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="10" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="POWERCELL" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="MICROCHIP" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
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
      <Property name="RecipeCost" value="5" />
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
      <Property name="CanSendToOtherPlayers" value="True" />
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

function GetLanguageSection(ID, String)
LOC_ENTRY = [[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]].. ID ..[[" />
      <Property name="English" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="French" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Italian" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="German" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Spanish" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Russian" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Polish" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Dutch" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Portuguese" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="BrazilianPortuguese" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="SimplifiedChinese" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="TraditionalChinese" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="TencentChinese" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Korean" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="Japanese" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
      <Property name="USEnglish" value="VariableSizeString.xml">
        <Property name="Value" value="]].. String ..[[" />
      </Property>
    </Property>
]]
return LOC_ENTRY
end

BASEBUILDINGPARTSTABLE_ADDING_ALL = {}
PRODUCT_ADDING_ALL = {}
AUTOPARTDATA_ADDING_ALL = {}
BASEBUILDINGCOST_ADDING_ALL = {}
LANGUAGE_ENGLISH_ALL = {}
LANGUAGE_GERMAN_ALL = {}

for i=1,#BUILDABLE_OBJECT_TABLE,1 do
	table.insert(BASEBUILDINGPARTSTABLE_ADDING_ALL,GetBaseBuildingPart(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["P_NAME"], BUILDABLE_OBJECT_TABLE[i]["PATH"]))
	table.insert(PRODUCT_ADDING_ALL,GetProduct(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"], BUILDABLE_OBJECT_TABLE[i]["ICON"], BUILDABLE_OBJECT_TABLE[i]["NAME"], BUILDABLE_OBJECT_TABLE[i]["NAMELOWER"], BUILDABLE_OBJECT_TABLE[i]["DESCRIPTION"]))
	table.insert(AUTOPARTDATA_ADDING_ALL,GetAutoPartData(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
	table.insert(BASEBUILDINGCOST_ADDING_ALL,GetBaseBuildingCost(BUILDABLE_OBJECT_TABLE[i]["ID_NAME"]))
end

for key, value in pairs(LANGUAGES) do
	table.insert(LANGUAGE_ENGLISH_ALL,GetLanguageSection(key, value.ENGLISH))
	table.insert(LANGUAGE_GERMAN_ALL,GetLanguageSection(key, value.GERMAN))
end

NMS_MOD_DEFINITION_CONTAINER	=
{
["MOD_FILENAME"] 			=	"NPC_LandingPad.pak",
["MOD_AUTHOR"]				=	"XiNaaru",
["MOD_VERSION"]				=	"1.1",
["LUA_AUTHOR"]				=	"Lenni",
["NMS_VERSION"]				=	"4.43",
["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				-- Landing Pad
				{
                    ["MBIN_FILE_SOURCE"]    = {
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGPAD.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGPAD.SCENE.MBIN]], "REMOVE"},
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGZONE.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGZONE.SCENE.MBIN]], "REMOVE"}
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGPAD.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name","ATTACHMENT"},
							["VCT"]					=	{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\NPCLANDINGPAD\ENTITIES\LANDINGDATA.ENTITY.MBIN"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGZONE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name","ATTACHMENT"},
							["VCT"]					=	{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\NPCLANDINGZONE\ENTITIES\LANDINGZONEDATA.ENTITY.MBIN"},
							}
						},
					},
				},

				{
                    ["MBIN_FILE_SOURCE"]    = {
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGPAD/ENTITIES/LANDINGDATA.ENTITY.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/NPCLANDINGPAD/ENTITIES/LANDINGDATA.ENTITY.MBIN]]},
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/LANDINGZONE/ENTITIES/LANDINGZONEDATA.ENTITY.MBIN]],[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\NPCLANDINGZONE\ENTITIES\LANDINGZONEDATA.ENTITY.MBIN]]}
					},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["VCT"]	=	{
								{"AIDestination", "False"},
							}
						},
					},
				},

				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]	= {"ID", "BUILDLANDINGPAD"},
							["ADD_OPTION"]	=	"ADDAFTERSECTION",
							["ADD"]	= GetBaseBuildingObject(BUILDABLE_OBJECT_TABLE[1]["ID_NAME"], BUILDABLE_OBJECT_TABLE[1]["PLACEMENT"])
						},
						{
							["SKW"]	= {"ID", "S_LANDINGZONE"},
							["ADD_OPTION"]	=	"ADDAFTERSECTION",
							["ADD"]	= GetBaseBuildingObject(BUILDABLE_OBJECT_TABLE[2]["ID_NAME"], BUILDABLE_OBJECT_TABLE[2]["PLACEMENT"])
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
							["ADD"]					= table.concat(BASEBUILDINGCOST_ADDING_ALL)
						}
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"StartWithAllItemsKnownEnabledData", "KnownProducts"},
							["ADD"]	=	[[
								<Property value="NMSString0x10.xml">
									<Property name="Value" value="_U_NPCLANDING" />
								</Property>
								<Property value="NMSString0x10.xml">
									<Property name="Value" value="ALT_NPCLANDING" />
								</Property>
							]],
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDLANDINGPAD"},
							["SEC_SAVE_TO"] = "ITEM_TREE",
						},
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "S_LANDINGZONE"},
							["SEC_SAVE_TO"] = "MISC_ITEM_TREE",
						},
						{
							["SEC_EDIT"] = "MISC_ITEM_TREE",
							["SKW"] = {"Unlockable", "U_MINIPORTAL"},
							["REMOVE"] = "SECTION",
						},
						{
							["SEC_EDIT"] = "MISC_ITEM_TREE",
							["SKW"] = {"Unlockable", "S_LANDINGZONE"},
							["VCT"] = {
								{"Unlockable", "U_MINIPORTAL"},
							},
						},
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDLANDINGPAD"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["SEC_ADD_NAMED"] = "MISC_ITEM_TREE",
						},
						{
							["SKW"] = {"Title", "UI_BASETECH_TREE", "Unlockable", "BUILDLANDINGPAD"},
							["REMOVE"] = "SECTION",
						},


						{
							["SKW"] = {"Title", "UI_BASETECH_TREE"},
							["SEC_SAVE_TO"] = "UNLOCK_TREE",
						},
						{
							["SEC_EDIT"] = "UNLOCK_TREE",
							["PKW"] = "Root",
							["REMOVE"] = "SECTION",
						},
						{
							["SEC_EDIT"] = "UNLOCK_TREE",
							["SKW"] = {"Title", "UI_BASETECH_TREE"},
							["VCT"] = {
								{"Title", "UI_LANDINGPAD_TREE"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["ADD_OPTION"] = "REPLACEatLINE",
							["ADD"] = '<Property name="Root" value="GcUnlockableItemTreeNode.xml">',
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "BUILDLANDINGPAD"},
							["VCT"] = {
								{"Unlockable", "_U_NPCLANDING"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "S_LANDINGZONE"},
							["ADD_OPTION"] = "ADDAFTERSECTION",
							["ADD"] = [[
								<Property value="GcUnlockableItemTreeNode.xml">
									<Property name="Unlockable" value="BUILDLANDINGPAD" />
									<Property name="Children" />
								</Property>
							]],
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "U_MINIPORTAL"},
							["VCT"] = {
								{"Unlockable", "S_LANDINGZONE"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "S_LANDINGZONE"},
							["VCT"] = {
								{"Unlockable", "ALT_NPCLANDING"},
							},
						},
						{
							["SEC_EDIT"] = "ITEM_TREE",
							["SKW"]	= {"Unlockable", "U_PORTALLINE"},
							["REMOVE"] = "SECTION",
						},
						{
							["SEC_EDIT"] = "UNLOCK_TREE",
							["SKW"] = {"CostTypeID", "SALVAGE"},
							["SEC_ADD_NAMED"] = "ITEM_TREE",
						},

						{
							["SKW"] = {"Title", "UI_BASETECH_TREE"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["SEC_ADD_NAMED"] = "UNLOCK_TREE",
						},
					},
				},
				
				-- Languages
				
				{
					["MBIN_FILE_SOURCE"] =	"LANGUAGE/NMS_LOC1_GERMAN.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SKW"] = {"Id", "BLD_LANDINGPAD_DESCRIPTION"},
							["SEC_SAVE_TO"] = "GER_LANG",
						},
						{
							["SEC_EDIT"] = "GER_LANG",
							["VCT"] = {
								{"Id", "NPC_LANDING_DESC"},
							}
						},
						{
							["SKW"] = {"Id", "BLD_LANDINGPAD_DESCRIPTION"},
							["REPLACE_TYPE"] = "ALL",
							["VCT"] = {
								{"Value", "{:} Hier können keine NPCs landen."},
							}
						},
						{
							["PKW"] = "Table",
							["SEC_ADD_NAMED"] = "GER_LANG",
						},
						{
							["PKW"] = "Table",
							["ADD"] = table.concat(LANGUAGE_GERMAN_ALL),
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= {
						"LANGUAGE/NMS_LOC1_ENGLISH.MBIN",
						"LANGUAGE/NMS_LOC1_USENGLISH.MBIN",
					},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SKW"] = {"Id", "BLD_LANDINGPAD_DESCRIPTION"},
							["SEC_SAVE_TO"] = "ENG_LANG",
						},
						{
							["SEC_EDIT"] = "ENG_LANG",
							["VCT"] = {
								{"Id", "NPC_LANDING_DESC"},
							}
						},
						{
							["SKW"] = {"Id", "BLD_LANDINGPAD_DESCRIPTION"},
							["REPLACE_TYPE"] = "ALL",
							["VCT"] = {
								{"Value", "{:} No NPCs can land here."},
							}
						},
						{
							["PKW"] = "Table",
							["SEC_ADD_NAMED"] = "ENG_LANG",
						},
						{
							["PKW"] = "Table",
							["ADD"] = table.concat(LANGUAGE_ENGLISH_ALL),
						},
					},
				},
			}
		},
	},
}