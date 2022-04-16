NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Better Build Menu 2.5.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod reworks build menu",
	["NMS_VERSION"]		= "3.52",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						-- MOVE ITEMS --
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_PORTALLINE",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_MINIPORTAL",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANTPOT3"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="PLANTPOT" />
      <Property name="HasProduct" value="True" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="SnapPoints" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOTWALL.SCENE.MBIN" />
      </Property>
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOTWALL.SCENE.MBIN" />
      </Property>
      <Property name="InactiveModel" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOTWALL_LOD.SCENE.MBIN" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="BuildingSurfaceNormal" />
      </Property>
      <Property name="IsPlaceable" value="True" />
      <Property name="IsDecoration" value="True" />
      <Property name="IsConnection" value="False" />
      <Property name="PlacementNormalOffset" value="0" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="Lush" />
      </Property>
      <Property name="BuildableOnPlanetBase" value="True" />
      <Property name="BuildableOnSpaceBase" value="False" />
      <Property name="BuildableOnFreighter" value="True" />
      <Property name="BuildableOnPlanet" value="False" />
      <Property name="BuildableOnPlanetWithProduct" value="False" />
      <Property name="BuildableUnderwater" value="True" />
      <Property name="BuildableAboveWater" value="True" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="True" />
      <Property name="CollisionScale" value="0.75" />
      <Property name="EnableCollision" value="True" />
      <Property name="CanPlaceOnItself" value="False" />
      <Property name="CanRotate3D" value="True" />
      <Property name="CanScale" value="True" />
      <Property name="Groups">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FARM" />
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
]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLANDINGPAD"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
	<Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="U_PORTALLINE" />
      <Property name="HasProduct" value="True" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="SnapPoints" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/CONDUIT_PORTALWIRE.SCENE.MBIN" />
      </Property>
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/CONDUIT_PORTALWIRE.SCENE.MBIN" />
      </Property>
      <Property name="InactiveModel" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="SurfaceNormal" />
      </Property>
      <Property name="IsPlaceable" value="False" />
      <Property name="IsDecoration" value="False" />
      <Property name="IsConnection" value="True" />
      <Property name="PlacementNormalOffset" value="0.2" />
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
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="False" />
      <Property name="CollisionScale" value="0.75" />
      <Property name="EnableCollision" value="False" />
      <Property name="CanPlaceOnItself" value="True" />
      <Property name="CanRotate3D" value="False" />
      <Property name="CanScale" value="False" />
      <Property name="Groups">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="BASE_TECH" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UTILITY_TECH" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="CanChangeColour" value="False" />
      <Property name="CanChangeMaterial" value="False" />
      <Property name="CanPickUp" value="False" />
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
            <Property name="LinkNetworkType" value="Portals" />
          </Property>
          <Property name="NetworkSubGroup" value="1" />
          <Property name="NetworkMask" value="1" />
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
      <Property name="GhostsCountOverride" value="16" />
      <Property name="SnappingDistanceOverride" value="0.1" />
      <Property name="RegionSpawnLOD" value="1" />
    </Property>
	<Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="U_MINIPORTAL" />
      <Property name="HasProduct" value="False" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="SnapPoints" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MINIPORTAL.SCENE.MBIN" />
      </Property>
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MINIPORTAL.SCENE.MBIN" />
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
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="True" />
      <Property name="CollisionScale" value="0.75" />
      <Property name="EnableCollision" value="True" />
      <Property name="CanPlaceOnItself" value="True" />
      <Property name="CanRotate3D" value="False" />
      <Property name="CanScale" value="False" />
      <Property name="Groups">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="BASE_TECH" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="UTILITY_TECH" />
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
            <Property name="LinkNetworkType" value="Portals" />
          </Property>
          <Property name="NetworkSubGroup" value="0" />
          <Property name="NetworkMask" value="2" />
          <Property name="ConnectionDistance" value="0.1" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="0" />
        <Property name="Storage" value="0" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections">
          <Property value="GcBaseLinkGridConnectionDependency.xml">
            <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
              <Property name="Network" value="GcLinkNetworkTypes.xml">
                <Property name="LinkNetworkType" value="Power" />
              </Property>
              <Property name="NetworkSubGroup" value="0" />
              <Property name="NetworkMask" value="12" />
              <Property name="ConnectionDistance" value="0.1" />
              <Property name="UseMinDistance" value="False" />
              <Property name="LinkSocketPositions" />
              <Property name="LinkSocketSubGroups" />
            </Property>
            <Property name="DependentRateRate" value="-5" />
            <Property name="DependentEffect" value="None" />
            <Property name="DisableWhenOffline" value="False" />
            <Property name="TransfersConnections" value="True" />
          </Property>
        </Property>
      </Property>
      <Property name="GhostsCountOverride" value="0" />
      <Property name="SnappingDistanceOverride" value="0" />
      <Property name="RegionSpawnLOD" value="1" />
    </Property>
]],
						},
						
						-- CHANGE ITEM GROUPS --
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "L_FLOOR_Q", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LIGHTBOX", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LIGHTBOX", "Value", "LIGHTS"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "NOISEBOX", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "PLANTPOT1"},
							["VALUE_CHANGE_TABLE"] 	= {{"Value", "INT_DECOR"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "PLANTPOT2"},
							["VALUE_CHANGE_TABLE"] 	= {{"Value", "INT_DECOR"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_POWERLINE", "Value", "UTILITY_SUPPLY"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_POWERLINE", "Value", "UTILITY_SWITCH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_POWERLINE", "Value", "UTILITY_POWER"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "U_POWERLINE"},
							["VALUE_CHANGE_TABLE"] 	= {{"Value", "UTILITY"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "U_BYTEBEATLINE", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SPAWNER_BALL", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CREATURE_FARM", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CREATURE_FEED", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDHARVESTER", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDGASHARVEST", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "O2_HARVESTER"},
							["VALUE_CHANGE_TABLE"] 	= {{"Value", "PLANET_TECH"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BYTEBEAT", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "POWERLINE_HIDER", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BYTEBEATSWITCH", "Value", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						
						-- GROUPS --						
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "TECH_ROOT"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="PLANET_TECH" />
      <Property name="ParentGroup" value="" />
      <Property name="Name" value="UI_BUILD_PATH_PLANET_TECH" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.SMALLTECH.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="BUILD_REFINER1" />
    </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "TECH_ROOT"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANET_TECH"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="VEHICLES" />
      <Property name="ParentGroup" value="" />
      <Property name="Name" value="UI_BUILD_PATH_VEHICLES" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.VEHICLES.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="GARAGE_M" />
    </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "PLANET_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLES"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TECH"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="PLANET_TECH" />
      <Property name="ParentGroup" value="" />
      <Property name="Name" value="UI_BUILD_PATH_PLANET_TECH" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.SMALLTECH.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="BUILD_REFINER1" />
    </Property>
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="VEHICLES" />
      <Property name="ParentGroup" value="" />
      <Property name="Name" value="UI_BUILD_PATH_VEHICLES" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.VEHICLES.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="GARAGE_M" />
    </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "STORAGE"},
							["VALUE_CHANGE_TABLE"] 	= {{"DefaultItem", "CONTAINER0"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BASE_TECH"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLES"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="BASE_TECH" />
      <Property name="ParentGroup" value="TECH_ROOT" />
      <Property name="Name" value="UI_BUILD_PATH_BASE_TECH" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.LARGETECH.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="TELEPORTER" />
    </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "TECH_ADV"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "STORAGE"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="UTILITY" />
      <Property name="ParentGroup" value="TECH_ROOT" />
      <Property name="Name" value="UI_BUILD_PATH_UTILITY" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.UTILITY.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="UTILITY_POWER" />
    </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "TERMINALS"},
							["VALUE_CHANGE_TABLE"] 	= {{"ParentGroup", "TECH_ROOT"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "FARM"},
							["VALUE_CHANGE_TABLE"] 	= {{"ParentGroup", "TECH_ROOT"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BASIC_ROOT"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONSTRUCTION"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="TECH_ROOT" />
      <Property name="ParentGroup" value="" />
      <Property name="Name" value="UI_BUILD_TECH_PATH" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.TECHNOLOGY.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="UTILITY" />
    </Property>
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="BASIC_ROOT" />
      <Property name="ParentGroup" value="CONSTRUCTION" />
      <Property name="Name" value="UI_BUILD_PATH_BASIC_ROOT" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.BASIC.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="BASIC_W" />
    </Property>]],
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "FRAMES"},
							["VALUE_CHANGE_TABLE"] 	= {{"ParentGroup", "CONSTRUCTION"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONSTRUCT_ADV"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 	= {{"ParentGroup", "CONSTRUCTION"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "UNDERWATER"},
							["VALUE_CHANGE_TABLE"] 	= {{"ParentGroup", "CONSTRUCTION"}}							
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UTILITY"},
							["REMOVE"] = "SECTION",						
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "UTILITY_SWITCH"},
							["VALUE_CHANGE_TABLE"] 	= {{"ParentGroup", "UTILITY"}}							
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "STORAGE"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="UTILITY" />
      <Property name="ParentGroup" value="TECH_ROOT" />
      <Property name="Name" value="UI_BUILD_PATH_UTILITY" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GROUPS/BUILDGROUP.UTILITY.DDS" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="DefaultItem" value="UTILITY_POWER" />
    </Property>]],
						},		
					},
				},
			},
		},
	},
}