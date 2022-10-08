-- KIBBLES 'N BITS METADATA GENERATION LUA FOR AMUMSS
-- https://www.nexusmods.com/nomanssky/mods/1627
-- THIS FILE IS MADE FOR COMPATIBILITY WITH OTHER MODS THAT EDIT THE SAME METADATA TABLES
-- BUT NOT MODIFIED VANILLA SCENES INCLUDING SNAPPOINTS
-- 
-- PRESS "Y" WHEN ASKED BY AMUMSS TO CREATE A MERGED PAK

POP_IN_RATE =		2		-- RANGES FROM 1 TO 5
							-- 1: NO POP IN, OBJECTS NEVER DISAPPEAR, MAY IMPACT FRAMERATE IF YOU BUILD > 3000 OBJECTS
							-- 2: MINIMAL POP IN, VIRTUALLY NO POP OUT, ~3000 OBJECTS CAN BE LOADED AT ONCE
							-- 3: MAY POP IN SLOWER WHEN FLYING INTO DISTANCE, POPOUT AT MEDIUM TO LONG DISTANCE, MINOR POP IN/POP OUT WILL CYCLE FROM HIGH GROUND, ~2000 OBJECTS CAN BE LOADED AT ONCE
							-- 4: SLOWER POP IN, SLIGHTLY MORE POP IN/OUT CYCLE AND MORE NOTICEABLE FROM HIGH GROUND, ~1900 OBJECTS CAN BE LOADED AT ONCE
							-- 5: SLOWER POP IN EVEN ON FOOT, SLIGHTLY MORE AGGRESSIVE POP OUT, AGGRESSIVE POP IN/POP OUT CYCLE, ~1700 OBJECTS CAN BE LOADED AT ONCE
							-- SEE https://www.nexusmods.com/nomanssky/articles/76 FOR DEMO IMAGES
							
EVERYTHING_CAN_SCALE = false
							-- FORCES EVERY ADDED OBJECT TO BE SCALABLE
							-- SNAPPOINTS WILL NOT SCALE WITH THE OBJECTS
							-- SOME OBJECTS WITH ANIMATIONS MAY NOT WORK PROPERLY
							
FORCE_DECOR_TYPE = "Normal"
							-- CHANGES WHAT SURFACES THE OBJECTS CAN STICK TO
							-- { Normal, SurfaceNormal, Ceiling, Terrain, Substance, Plant, BuildingSurfaceNormal }
							-- EMPTY ("") TO DEFAULT
							-- Normal: ONLY ON FLAT GROUND
							-- SurfaceNormal: STICKS TO ANY SURFACE
							-- Ceiling: ONLY STICKS UPSIDE-DOWN TO CEILINGS
							-- Terrain: ONLY ON TERRAIN, NOT RECOMMENDED
							-- Substance: ONLY STICKS TO ORE DEPOSITS, NOT RECOMMENDED
							-- Plant: ONLY ON APPROPRIATE "Biome" TERRAIN, NOT RECOMMENDED
							-- BuildingSurfaceNormal: STICKS TO ANY SURFACE, BUT ONLY TO OTHER BASE OBJECTS
							
OVERRIDE_INACTIVE = true 	-- OVERWRITES BASEBUILDINGTABLE InactiveModel ENTRIES WITH Model VALUE
							-- BASICALLY SETS LOD MODEL TO ACTUAL MODEL SO OBJECTS DON'T DISAPPEAR AT A DISTANCE
							-- MORE RESOURCE INTENSIVE IF TURNED ON BUT GREAT FOR SCREENSHOTS / IMMERSION
							-- MAY ALSO PREVENT OBJECTS FROM DISAPPEARING
							
BUILD_ANYWHERE = 	false	-- ALLOWS ALL KNB OBJECTS TO BE BUILT ANYWHERE
							-- BY SETTING BuildableOnFreighter & BuildableOnPlanet TO "True"
							-- ANY OBJECTS BUILT OUTSIDE BASE PARAMETERS WILL NOT BE INCLUDED IN THE BASE SECTION OF THE SAVE FILE

SNAPPING_DISTANCE = "0.65"	-- OBJECT SNAPPING DISTANCE MULTIPLIER

-- BUILDING DISTANCE AND OBJECT SCALING OVERRIDE; NOT REALLY NEEDED ANYMORE SINCE SNAPPING DISTANCE CAN NOW BE TWEAKED
-- USERS CAN STILL ENABLE THIS TWEAK BY UNCOMMENTING THE NEXT 3 LINES
-- AND THE "GCBUILDINGGLOBALS.GLOBAL.MBIN" CHANGE TABLE AT THE BOTTOM OF THE FILE
-- BUILD_DISTANCE = 	"1250"
-- OBJECT_SCALE_MIN =	"0.01"
-- OBJECT_SCALE_MAX = 	"4"

BASEBUILDINGDECORATIONTYPE = { "Normal", "SurfaceNormal", "Ceiling", "Terrain", "Substance", "Plant", "BuildingSurfaceNormal" }

KIBBLES_GROUPS = -- BASEBUILDINGTABLE GROUPS
{
	{ ["ID"]= "KIBBLESNBITS", ["Name"] = "Kibbles N Bits", ["Icon"] = [[CUSTOMMODELS/KIBBLES/ICONS/KIBBLES_ICON.DDS]],
		["SubGroups"] =
		{
			{["ID"] = "KNXDECOR1",	["Name"] = "NEXUS DECORATIONS 1"},
			{["ID"] = "KNXDECOR2",	["Name"] = "NEXUS DECORATIONS 2"},
			{["ID"] = "KNXDECOR3",	["Name"] = "NEXUS DECORATIONS 3"},
			{["ID"] = "KNXDECOR4",	["Name"] = "NEXUS DECORATIONS 4"},
			{["ID"] = "KBPNEXUS",	["Name"] = "NEXUS NEXUS BASIC PARTS"},
			{["ID"] = "KPFNEXUS",	["Name"] = "NEXUS PREFAB PARTS"},
			{["ID"] = "KNXDOORS",	["Name"] = "NEXUS DOORS"},
			{["ID"] = "KPIPES",		["Name"] = "CUSTOM PIPES"},
			{["ID"] = "KSPACE",		["Name"] = "SPACE SPAWNS"},
			{["ID"] = "KLTSPOTLIGHT",	["Name"] = "SPOTLIGHTS"},
			{["ID"] = "KLTAMBLIGHT",	["Name"] = "AMBIENT LIGHTS"},
			{["ID"] = "KLTWALLLIGHT",	["Name"] = "WALL LIGHTS"},
			{["ID"] = "KBPTRON",	["Name"] = "TRON PARTS"},
			{["ID"] = "KBPCHROMA",	["Name"] = "CHROMA PARTS"},
		}
	},
}

KIBBLES_LINKGRID = -- BASEBUILDINGTABLE LinkGridData
{	
	["DECOR"] = [[
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
]],
	["BASIC"] = [[
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Power" />
          </Property>
          <Property name="NetworkSubGroup" value="4" />
          <Property name="NetworkMask" value="21" />
          <Property name="ConnectionDistance" value="5" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="0" />
        <Property name="Storage" value="0" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections" />
]],
	["CUBEROOM"] = [[
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Power" />
          </Property>
          <Property name="NetworkSubGroup" value="3" />
          <Property name="NetworkMask" value="1469" />
          <Property name="ConnectionDistance" value="12" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="0" />
        <Property name="Storage" value="0" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections" />
]],
	["SPACECUBE"] = [[
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Power" />
          </Property>
          <Property name="NetworkSubGroup" value="4" />
          <Property name="NetworkMask" value="1464" />
          <Property name="ConnectionDistance" value="6" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="0" />
        <Property name="Storage" value="0" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections" />
]],
	["FARMING"] = [[
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="PlantGrowth" />
          </Property>
          <Property name="NetworkSubGroup" value="0" />
          <Property name="NetworkMask" value="2" />
          <Property name="ConnectionDistance" value="0.1" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="1" />
        <Property name="Storage" value="14400" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections" />
]],
	["PLANTER"] = [[
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Power" />
          </Property>
          <Property name="NetworkSubGroup" value="8" />
          <Property name="NetworkMask" value="540" />
          <Property name="ConnectionDistance" value="1" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="0" />
        <Property name="Storage" value="0" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections" />
]],
	["BATTERY"] = [[
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Power" />
          </Property>
          <Property name="NetworkSubGroup" value="0" />
          <Property name="NetworkMask" value="12" />
          <Property name="ConnectionDistance" value="60" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="0" />
        <Property name="Storage" value="12000" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections" />
]],

}

-- BASEBUILDINGTABLE OBJECTS & PRODCUTTABLE PRODUCTS & BASEBUILDINGCOSTSTABLE COST & DEFAULTSAVEDATA KnownProducts & PURCHASEABLESPECIALS FOR WDSPEC OBJECTS
-- "ID" IS USED UNIVERSALLY AS TABLE IDs (REQUIRED) AND OBJECT ICON NAME IF "Icon" FIELD IS LEFT EMPTY
KIBBLES_OBJPROD = -- ENTRIES WITH SNAPPOINTS
{
	{
		["OBJECT"] = {
			["ID"] = "KNXCPNTTBLE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCPNTTBLE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/CENTRALPOINTTABLE.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Central Point Table",
			["NameLower"] = "Central Point Table",
			["Subtitle"] = "Central Point Table",
			["Description"] = "Central Point Table",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCPNTTBLE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCPNTCAGE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCPNTCAGE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/CENTRALPOINTCAGE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Central Point Cage",
			["NameLower"] = "Central Point Cage",
			["Subtitle"] = "Central Point Cage",
			["Description"] = "Central Point Cage",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCPNTCAGE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPPCDESK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPPCDESK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/PLANTER_COMMONDESK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Planter Common Desk",
			["NameLower"] = "Planter Common Desk",
			["Subtitle"] = "Planter Common Desk",
			["Description"] = "Planter Common Desk",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPPCDESK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPDRCDSK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPDRCDSK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/DRONE_COMMONDESK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Drone Common Desk",
			["NameLower"] = "Drone Common Desk",
			["Subtitle"] = "Drone Common Desk",
			["Description"] = "Drone Common Desk",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPDRCDSK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPCODESK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPCODESK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/COMMONDESK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Common Desk",
			["NameLower"] = "Common Desk",
			["Subtitle"] = "Common Desk",
			["Description"] = "Common Desk",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPCODESK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPHECONT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPHECONT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/HELMCONTROL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Helm Control",
			["NameLower"] = "Helm Control",
			["Subtitle"] = "Helm Control",
			["Description"] = "Helm Control",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPHECONT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCURSDESK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCURSDESK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BRIDGE/CURVEDSIDEDESK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Curved Side Desk",
			["NameLower"] = "Curved Side Desk",
			["Subtitle"] = "Curved Side Desk",
			["Description"] = "Curved Side Desk",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCURSDESK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSMALMONI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSMALMONI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/SHOPSMALLMONITORS.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Small Monitors",
			["NameLower"] = "Small Monitors",
			["Subtitle"] = "Small Monitors",
			["Description"] = "Small Monitors",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSMALMONI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBRENGINE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBRENGINE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BRIDGE/BRIDGEENGINE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Bridge Engine",
			["NameLower"] = "Bridge Engine",
			["Subtitle"] = "Bridge Engine",
			["Description"] = "Bridge Engine",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBRENGINE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCIRCDESK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCIRCDESK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BRIDGE/CIRCULARDESK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Circular Desk",
			["NameLower"] = "Circular Desk",
			["Subtitle"] = "Circular Desk",
			["Description"] = "Circular Desk",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCIRCDESK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCPSITERM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCPSITERM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/PARTS/CP_SIDETERMINAL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Side Terminal",
			["NameLower"] = "Side Terminal",
			["Subtitle"] = "Side Terminal",
			["Description"] = "Side Terminal",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCPSITERM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCPFLOCAP",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCPFLOCAP_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/PARTS/CP_FLOORCAP.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Floor Cap",
			["NameLower"] = "Floor Cap",
			["Subtitle"] = "Floor Cap",
			["Description"] = "Floor Cap",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCPFLOCAP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCRCHAMBR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCRCHAMBR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/CHAMBER.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Chamber",
			["NameLower"] = "Chamber",
			["Subtitle"] = "Chamber",
			["Description"] = "Chamber",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCRCHAMBR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLBFRPLAT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLBFRPLAT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/FRONTPLATFORM.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Front Platform",
			["NameLower"] = "Front Platform",
			["Subtitle"] = "Front Platform",
			["Description"] = "Front Platform",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLBFRPLAT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXHOVETROL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXHOVETROL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/HOVERTROLLEY.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Hover Trolley",
			["NameLower"] = "Hover Trolley",
			["Subtitle"] = "Hover Trolley",
			["Description"] = "Hover Trolley",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXHOVETROL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCRDRAPE1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCRDRAPE1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/CONTROLROOMDRAPE1.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "False",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Control Room Drape 1",
			["NameLower"] = "Control Room Drape 1",
			["Subtitle"] = "Control Room Drape 1",
			["Description"] = "Control Room Drape 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCRDRAPE1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCRDRAPE2",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCRDRAPE2_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/CONTROLROOMDRAPE2.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "False",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Control Room Drape 2",
			["NameLower"] = "Control Room Drape 2",
			["Subtitle"] = "Control Room Drape 2",
			["Description"] = "Control Room Drape 2",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCRDRAPE2_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSSCLOTH",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSSCLOTH_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/SHOPCLOTH.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Shop Cloth",
			["NameLower"] = "Shop Cloth",
			["Subtitle"] = "Shop Cloth",
			["Description"] = "Shop Cloth",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSSCLOTH_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBOOK1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBOOK1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/BOOK_1.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Book 1",
			["NameLower"] = "Book 1",
			["Subtitle"] = "Book 1",
			["Description"] = "Book 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBOOK1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCANNISTE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCANNISTE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/CANNISTER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Cannister",
			["NameLower"] = "Cannister",
			["Subtitle"] = "Cannister",
			["Description"] = "Cannister",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCANNISTE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCANNLARG",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCANNLARG_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/CANNISTERLARGE.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Cannister Large",
			["NameLower"] = "Cannister Large",
			["Subtitle"] = "Cannister Large",
			["Description"] = "Cannister Large",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCANNLARG_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCIRCUBOX",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCIRCUBOX_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/CIRCUITBOX.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Circuit Box",
			["NameLower"] = "Circuit Box",
			["Subtitle"] = "Circuit Box",
			["Description"] = "Circuit Box",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCIRCUBOX_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCRATE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCRATE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Crate",
			["NameLower"] = "Crate",
			["Subtitle"] = "Crate",
			["Description"] = "Crate",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCRATE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXHDDRIVE1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXHDDRIVE1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/HARDDRIVE_1.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Hard Drive 1",
			["NameLower"] = "Hard Drive 1",
			["Subtitle"] = "Hard Drive 1",
			["Description"] = "Hard Drive 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXHDDRIVE1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLARGCANN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLARGCANN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/PROPS/LARGECANNISTER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Cannister",
			["NameLower"] = "Large Cannister",
			["Subtitle"] = "Large Cannister",
			["Description"] = "Large Cannister",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLARGCANN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPCANNIS",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPCANNIS_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/CANNISTERS.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Cannisters",
			["NameLower"] = "Cannisters",
			["Subtitle"] = "Cannisters",
			["Description"] = "Cannisters",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPCANNIS_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPFAN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPFAN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/FAN.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Fan",
			["NameLower"] = "Fan",
			["Subtitle"] = "Fan",
			["Description"] = "Fan",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPFAN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCPMTMONI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCPMTMONI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/PARTS/CP_MAINTERMMONITOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Main Term Monitor",
			["NameLower"] = "Main Term Monitor",
			["Subtitle"] = "Main Term Monitor",
			["Description"] = "Main Term Monitor",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCPMTMONI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXDSTATION",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXDSTATION_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/DOCKSTATION.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Dock Station",
			["NameLower"] = "Dock Station",
			["Subtitle"] = "Dock Station",
			["Description"] = "Dock Station",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXDSTATION_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXMECHCORE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXMECHCORE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CORE/MECHANICALCORE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Mechanical Core",
			["NameLower"] = "Mechanical Core",
			["Subtitle"] = "Mechanical Core",
			["Description"] = "Mechanical Core",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXMECHCORE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSTEAVENT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSTEAVENT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/DETAILS/STEAMVENT.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Steam Vent",
			["NameLower"] = "Steam Vent",
			["Subtitle"] = "Steam Vent",
			["Description"] = "Steam Vent",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSTEAVENT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCPFLCABL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCPFLCABL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/PARTS/CP_FLOORCABLES.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Floor Cables",
			["NameLower"] = "Floor Cables",
			["Subtitle"] = "Floor Cables",
			["Description"] = "Floor Cables",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCPFLCABL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXANHEXPLO",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXANHEXPLO_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/COMPUTER/ANOMALY_HOLOEXPLORER.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Anomaly Holo Explorer",
			["NameLower"] = "Anomaly Holo Explorer",
			["Subtitle"] = "Anomaly Holo Explorer",
			["Description"] = "Anomaly Holo Explorer",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXANHEXPLO_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLBFLLITE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLBFLLITE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/FLOORLIGHT1.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Floor Light",
			["NameLower"] = "Floor Light",
			["Subtitle"] = "Floor Light",
			["Description"] = "Floor Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLBFLLITE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSFLSCRN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSFLSCRN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/FLOORSCREEN1.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Floor Screen",
			["NameLower"] = "Floor Screen",
			["Subtitle"] = "Floor Screen",
			["Description"] = "Floor Screen",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSFLSCRN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSPISPIR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSPISPIR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/PILLARSPIRAL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pillar Spiral",
			["NameLower"] = "Pillar Spiral",
			["Subtitle"] = "Pillar Spiral",
			["Description"] = "Pillar Spiral",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSPISPIR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSPILDYE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSPILDYE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/PILLARDYE.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pillar Dye",
			["NameLower"] = "Pillar Dye",
			["Subtitle"] = "Pillar Dye",
			["Description"] = "Pillar Dye",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSPILDYE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSMSDLIGH",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSMSDLIGH_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/LANDINGLIGHT.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR1" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Small Side Light",
			["NameLower"] = "Small Side Light",
			["Subtitle"] = "Small Side Light",
			["Description"] = "Small Side Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSMSDLIGH_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBALCHOOD",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBALCHOOD_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/BALCONYHOOD.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Balcony Hood",
			["NameLower"] = "Balcony Hood",
			["Subtitle"] = "Balcony Hood",
			["Description"] = "Balcony Hood",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBALCHOOD_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBLFRRBLK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBLFRRBLK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BUILDINGFRONT/BUILDINGFRONTROOFBLOCK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Building Front Roof Block",
			["NameLower"] = "Building Front Roof Block",
			["Subtitle"] = "Building Front Roof Block",
			["Description"] = "Building Front Roof Block",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBLFRRBLK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBLFRAIRV",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBLFRAIRV_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BUILDINGFRONT/BUILDINGFRONTAIRVENT.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Air Vent",
			["NameLower"] = "Air Vent",
			["Subtitle"] = "Air Vent",
			["Description"] = "Air Vent",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBLFRAIRV_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXWADETAIL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXWADETAIL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/MAINHALLWAY/PARTS/WALLDETAIL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Wall Detail",
			["NameLower"] = "Wall Detail",
			["Subtitle"] = "Wall Detail",
			["Description"] = "Wall Detail",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXWADETAIL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBLFRRAMP",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBLFRRAMP_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BUILDINGFRONT/BUILDINGFRONTRAMP.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Building Front Ramp",
			["NameLower"] = "Building Front Ramp",
			["Subtitle"] = "Building Front Ramp",
			["Description"] = "Building Front Ramp",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBLFRRAMP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRFSIDCAP",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRFSIDCAP_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/MAINHALLWAY/ROOFSIDECAP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Roof Side Cap",
			["NameLower"] = "Roof Side Cap",
			["Subtitle"] = "Roof Side Cap",
			["Description"] = "Roof Side Cap",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRFSIDCAP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXROBOARM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXROBOARM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/MAINHALLWAY/ROBOARM.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Robo Arm",
			["NameLower"] = "Robo Arm",
			["Subtitle"] = "Robo Arm",
			["Description"] = "Robo Arm",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXROBOARM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRARMWALL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRARMWALL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/MAINHALLWAY/ROBOARMWALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Robo Arm Wall",
			["NameLower"] = "Robo Arm Wall",
			["Subtitle"] = "Robo Arm Wall",
			["Description"] = "Robo Arm Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRARMWALL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCOMPUTER",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCOMPUTER_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/COMPUTER/COMPUTER.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Computer",
			["NameLower"] = "Computer",
			["Subtitle"] = "Computer",
			["Description"] = "Computer",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCOMPUTER_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSHOPCOLU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSHOPCOLU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/SPECIALSHOPCOLUMN.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Shop Column",
			["NameLower"] = "Shop Column",
			["Subtitle"] = "Shop Column",
			["Description"] = "Shop Column",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSPECSHOP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCRFKDOOR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCRFKDOOR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/FAKEDOOR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Fake Door",
			["NameLower"] = "Fake Door",
			["Subtitle"] = "Fake Door",
			["Description"] = "Fake Door",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCRFKDOOR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPDOORWA",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPDOORWA_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/DOORWAY.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Doorway",
			["NameLower"] = "Doorway",
			["Subtitle"] = "Doorway",
			["Description"] = "Doorway",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPDOORWA_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNPMSUPPO",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNPMSUPPO_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/PARTS/MIDDLESUPPORT.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Middle Support",
			["NameLower"] = "Middle Support",
			["Subtitle"] = "Middle Support",
			["Description"] = "Middle Support",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNPMSUPPO_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXMHSUPPOR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXMHSUPPOR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/MAINHALLWAY/PARTS/SUPPORT.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "MH Support",
			["NameLower"] = "MH Support",
			["Subtitle"] = "MH Support",
			["Description"] = "MH Support",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXMHSUPPOR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPILLAR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPILLAR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/PILLAR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pillar",
			["NameLower"] = "Pillar",
			["Subtitle"] = "Pillar",
			["Description"] = "Pillar",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPILLAR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLIGHCOLU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLIGHCOLU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LIGHTING/LIGHTCOLLUMN.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Lighting Column",
			["NameLower"] = "Lighting Column",
			["Subtitle"] = "Lighting Column",
			["Description"] = "Lighting Column",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLIGHCOLU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSLIGCOLU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSLIGCOLU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LIGHTING/SMALLLIGHTCOLLUMN.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Small Lighting Column",
			["NameLower"] = "Small Lighting Column",
			["Subtitle"] = "Small Lighting Column",
			["Description"] = "Small Lighting Column",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSLIGCOLU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLALIPILL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLALIPILL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LEFTAREA/LIGHTPILLAR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Light Pillar",
			["NameLower"] = "Light Pillar",
			["Subtitle"] = "Light Pillar",
			["Description"] = "Light Pillar",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLALIPILL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLBPIWALL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLBPIWALL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/PIPEWALL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pipe Wall",
			["NameLower"] = "Pipe Wall",
			["Subtitle"] = "Pipe Wall",
			["Description"] = "Pipe Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLBPIWALL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLARGTERM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLARGTERM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BRIDGE/LARGETERMINAL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Terminal",
			["NameLower"] = "Large Terminal",
			["Subtitle"] = "Large Terminal",
			["Description"] = "Large Terminal",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLARGTERM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNEXBANAL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNEXBANAL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/TERMINALS/NEXUSBLUEPRINTANALYSER.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Blueprint Anal",
			["NameLower"] = "Nexus Blueprint Anal",
			["Subtitle"] = "Nexus Blueprint Anal",
			["Description"] = "Nexus Blueprint Anal",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNEXBANAL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXNEXRTERM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXNEXRTERM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/TERMINALS/NEXUSRECIPETERMINAL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Recipe Terminal",
			["NameLower"] = "Nexus Recipe Terminal",
			["Subtitle"] = "Nexus Recipe Terminal",
			["Description"] = "Nexus Recipe Terminal",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXNEXRTERM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLANDPAD1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLANDPAD1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/LANDINGPAD.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Landing Pad 1",
			["NameLower"] = "Landing Pad 1",
			["Subtitle"] = "Landing Pad 1",
			["Description"] = "Landing Pad 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLANDPAD1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLANDPAD2",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLANDPAD2_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGPAD/LANDINGPAD.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Landing Pad 2",
			["NameLower"] = "Landing Pad 2",
			["Subtitle"] = "Landing Pad 2",
			["Description"] = "Landing Pad 2",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLANDPAD2_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCRPIPES",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCRPIPES_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/CONTROLROOMPIPES.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "False",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Control Room Pipes",
			["NameLower"] = "Control Room Pipes",
			["Subtitle"] = "Control Room Pipes",
			["Description"] = "Control Room Pipes",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCRPIPES_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBACKRING",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBACKRING_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/NEXUSBACKRING.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Back Ring",
			["NameLower"] = "Nexus Back Ring",
			["Subtitle"] = "Nexus Back Ring",
			["Description"] = "Nexus Back Ring",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBACKRING_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLANDSIGN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLANDSIGN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/LANDINGSIGN.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR2" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Landing Sign",
			["NameLower"] = "Nexus Landing Sign",
			["Subtitle"] = "Nexus Landing Sign",
			["Description"] = "Nexus Landing Sign",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLANDSIGN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP1.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 1",
			["NameLower"] = "Large Prop 1",
			["Subtitle"] = "Large Prop 1",
			["Description"] = "Large Prop 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP1S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP1S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP1SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 1 Small",
			["NameLower"] = "Large Prop 1 Small",
			["Subtitle"] = "Large Prop 1 Small",
			["Description"] = "Large Prop 1 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP1S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP2",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP2_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP2.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 2",
			["NameLower"] = "Large Prop 2",
			["Subtitle"] = "Large Prop 2",
			["Description"] = "Large Prop 2",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP2_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP2S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP2S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP2SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 2 Small",
			["NameLower"] = "Large Prop 2 Small",
			["Subtitle"] = "Large Prop 2 Small",
			["Description"] = "Large Prop 2 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP2S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP3",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP3_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP3.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 3",
			["NameLower"] = "Large Prop 3",
			["Subtitle"] = "Large Prop 3",
			["Description"] = "Large Prop 3",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP3_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP3S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP3S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP3SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 3 Small",
			["NameLower"] = "Large Prop 3 Small",
			["Subtitle"] = "Large Prop 3 Small",
			["Description"] = "Large Prop 3 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP3S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP4",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP4_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP4.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 4",
			["NameLower"] = "Large Prop 4",
			["Subtitle"] = "Large Prop 4",
			["Description"] = "Large Prop 4",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP4_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBVFEATR1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBVFEATR1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/VISTAFEATURE1.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Vista Feature 1",
			["NameLower"] = "Vista Feature 1",
			["Subtitle"] = "Vista Feature 1",
			["Description"] = "Vista Feature 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBVFEATR1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBVFEATR2",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBVFEATR2_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/VISTAFEATURE2.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Vista Feature 2",
			["NameLower"] = "Vista Feature 2",
			["Subtitle"] = "Vista Feature 2",
			["Description"] = "Vista Feature 2",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBVFEATR2_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP5",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP5_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP5.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 5",
			["NameLower"] = "Large Prop 5",
			["Subtitle"] = "Large Prop 5",
			["Description"] = "Large Prop 5",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP5_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP5S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP5S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP5SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 5 Small",
			["NameLower"] = "Large Prop 5 Small",
			["Subtitle"] = "Large Prop 5 Small",
			["Description"] = "Large Prop 5 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP5S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP6",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP6_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP6.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 6",
			["NameLower"] = "Large Prop 6",
			["Subtitle"] = "Large Prop 6",
			["Description"] = "Large Prop 6",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP6_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP6S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP6S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP6SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 6 Small",
			["NameLower"] = "Large Prop 6 Small",
			["Subtitle"] = "Large Prop 6 Small",
			["Description"] = "Large Prop 6 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP6S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP7",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP7_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP7.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 7",
			["NameLower"] = "Large Prop 7",
			["Subtitle"] = "Large Prop 7",
			["Description"] = "Large Prop 7",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP7_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP7S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP7S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP7SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 7 Small",
			["NameLower"] = "Large Prop 7 Small",
			["Subtitle"] = "Large Prop 7 Small",
			["Description"] = "Large Prop 7 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP7S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSSBLOCK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSSBLOCK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/SIDEBLOCK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Side Block",
			["NameLower"] = "Side Block",
			["Subtitle"] = "Side Block",
			["Description"] = "Side Block",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSSBLOCK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXHEAVPILL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXHEAVPILL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/HEAVYPILLAR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Heavy Pillar",
			["NameLower"] = "Heavy Pillar",
			["Subtitle"] = "Heavy Pillar",
			["Description"] = "Heavy Pillar",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXHEAVPILL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXHEAVPILS",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXHEAVPILS_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/HEAVYPILLARSMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Heavy Pillar Small",
			["NameLower"] = "Heavy Pillar Small",
			["Subtitle"] = "Heavy Pillar Small",
			["Description"] = "Heavy Pillar Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXHEAVPILL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXEXTERLEG",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXEXTERLEG_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/EXTERIORLEG/EXTERIORLEG.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Exterior Leg",
			["NameLower"] = "Exterior Leg",
			["Subtitle"] = "Exterior Leg",
			["Description"] = "Exterior Leg",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXEXTERLEG_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXEXTERLGS",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXEXTERLGS_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/EXTERIORLEG/EXTERIORLEGSMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Exterior Leg Small",
			["NameLower"] = "Exterior Leg Small",
			["Subtitle"] = "Exterior Leg Small",
			["Description"] = "Exterior Leg Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXEXTERLEGS_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBVPLATFM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBVPLATFM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/VISTAPLATFORM.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Vista Platform",
			["NameLower"] = "Vista Platform",
			["Subtitle"] = "Vista Platform",
			["Description"] = "Vista Platform",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBVPLATFM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLBLDAREA",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLBLDAREA_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/LANDINGAREA.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Landing Area",
			["NameLower"] = "Landing Area",
			["Subtitle"] = "Landing Area",
			["Description"] = "Landing Area",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLBLDAREA_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGP8",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGP8_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP8.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 8",
			["NameLower"] = "Large Prop 8",
			["Subtitle"] = "Large Prop 8",
			["Description"] = "Large Prop 8",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP8_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLP8S",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLP8S_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGEPROP8SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Prop 8 Small",
			["NameLower"] = "Large Prop 8 Small",
			["Subtitle"] = "Large Prop 8 Small",
			["Description"] = "Large Prop 8 Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGP8S_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXVISTLGRI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXVISTLGRI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/SECTIONS/VISTALARGERINGS.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Large Rings",
			["NameLower"] = "Large Rings",
			["Subtitle"] = "Large Rings",
			["Description"] = "Large Rings",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXVISTLGRI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXTOWER",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXTOWER_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/TOWER/NEXUSTOWER.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tower",
			["NameLower"] = "Tower",
			["Subtitle"] = "Tower",
			["Description"] = "Tower",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXTOWER_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXTOWERS",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXTOWERS_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/TOWER/NEXUSTOWERSMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tower Small",
			["NameLower"] = "Tower Small",
			["Subtitle"] = "Tower Small",
			["Description"] = "Tower Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXTOWERS_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXTOWERTOP",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXTOWERTOP_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/TOWER/NEXUSTOWERTOP.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tower Top",
			["NameLower"] = "Tower Top",
			["Subtitle"] = "Tower Top",
			["Description"] = "Tower Top",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXTOWERTOP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSARCH",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSARCH_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/ARCH.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Arch",
			["NameLower"] = "Nexus Arch",
			["Subtitle"] = "Nexus Arch",
			["Description"] = "Nexus Arch",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSARCH_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXRSARCHS",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXRSARCHS_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/ARCHSMALL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR3" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Arch Small",
			["NameLower"] = "Nexus Arch Small",
			["Subtitle"] = "Nexus Arch Small",
			["Description"] = "Nexus Arch Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXRSARCHS_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBRIDROOM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBRIDROOM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BRIDGE/BRIDGEROOM.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Bridge Room",
			["NameLower"] = "Bridge Room",
			["Subtitle"] = "Bridge Room",
			["Description"] = "Bridge Room",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBRIDROOM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBACKWALL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBACKWALL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BRIDGE/BACKWALL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Backwall",
			["NameLower"] = "Backwall",
			["Subtitle"] = "Backwall",
			["Description"] = "Backwall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBACKWALL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBLDFRONT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBLDFRONT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BUILDINGFRONT/BUILDINGFRONT.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Building Front",
			["NameLower"] = "Building Front",
			["Subtitle"] = "Building Front",
			["Description"] = "Building Front",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBLDFRONT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXBLFRWALL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXBLFRWALL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/BUILDINGFRONT/BUILDINGFRONTWALL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Building Front Wall",
			["NameLower"] = "Building Front Wall",
			["Subtitle"] = "Building Front Wall",
			["Description"] = "Building Front Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXBLFRWALL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCENPOINT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCENPOINT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/CENTRALPOINT.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Central Point",
			["NameLower"] = "Central Point",
			["Subtitle"] = "Central Point",
			["Description"] = "Central Point",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCENPOINT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXMIDDPLAT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXMIDDPLAT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/MIDDLEPLATFORM.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Middle Platform",
			["NameLower"] = "Middle Platform",
			["Subtitle"] = "Middle Platform",
			["Description"] = "Middle Platform",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXMIDDPLAT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLEFTAREA",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLEFTAREA_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/LEFTAREA/LEFTAREA.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Left Area",
			["NameLower"] = "Left Area",
			["Subtitle"] = "Left Area",
			["Description"] = "Left Area",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLEFTAREA_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXHALLWAY",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXHALLWAY_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/MAINHALLWAY/HALLWAY.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Hallway",
			["NameLower"] = "Hallway",
			["Subtitle"] = "Hallway",
			["Description"] = "Hallway",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXHALLWAY_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXAIRLOCK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXAIRLOCK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/AIRLOCK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Airlock",
			["NameLower"] = "Airlock",
			["Subtitle"] = "Airlock",
			["Description"] = "Airlock",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXAIRLOCK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXCONTROOM",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXCONTROOM_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/NADAPOLOROOM/CONTROLROOM.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Control Room",
			["NameLower"] = "Control Room",
			["Subtitle"] = "Control Room",
			["Description"] = "Control Room",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXCONTROOM_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSPECSHOP",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSPECSHOP_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/SPECIALSHOP.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Special Shop",
			["NameLower"] = "Special Shop",
			["Subtitle"] = "Special Shop",
			["Description"] = "Special Shop",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSPECSHOP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSHOPBIG",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSHOPBIG_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/SHOPBIG.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "False",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Shop Big",
			["NameLower"] = "Shop Big",
			["Subtitle"] = "Shop Big",
			["Description"] = "Shop Big",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSHOPBIG_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSHOPBIGC",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSHOPBIGC_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/SHOPBIGCHEF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Shop Big Chef",
			["NameLower"] = "Shop Big Chef",
			["Subtitle"] = "Shop Big Chef",
			["Description"] = "Shop Big Chef",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSHOPBIGC_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXSHOPSMAL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXSHOPSMAL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/SHOPSMALL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Shop Small",
			["NameLower"] = "Shop Small",
			["Subtitle"] = "Shop Small",
			["Description"] = "Shop Small",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXSHOPSMAL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXEGGMACHI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXEGGMACHI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/EGGMACHINE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDECOR4" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Egg Machine",
			["NameLower"] = "Egg Machine",
			["Subtitle"] = "Egg Machine",
			["Description"] = "Egg Machine",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXEGGMACHI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFLORNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFLORNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_FLOOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Floor Panel",
			["NameLower"] = "Nexus Floor Panel",
			["Subtitle"] = "Nexus Floor Panel",
			["Description"] = "Nexus Floor Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFLORNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFLCUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFLCUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_FLOOR_CURVED.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Floor Panel",
			["NameLower"] = "Nexus Curved Floor Panel",
			["Subtitle"] = "Nexus Curved Floor Panel",
			["Description"] = "Nexus Curved Floor Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFLCUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFTRINEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFTRINEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_FLOOR_TRI.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Triangle",
			["NameLower"] = "Nexus Triangle",
			["Subtitle"] = "Nexus Triangle",
			["Description"] = "Nexus Triangle",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFTRINEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFTRQNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFTRQNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_FLOOR_TRI_QUARTER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Small Triangle",
			["NameLower"] = "Nexus Small Triangle",
			["Subtitle"] = "Nexus Small Triangle",
			["Description"] = "Nexus Small Triangle",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFTRQNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFLGLNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFLGLNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_GLASS_FLOOR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Framed Glass Panel",
			["NameLower"] = "Nexus Framed Glass Panel",
			["Subtitle"] = "Nexus Framed Glass Panel",
			["Description"] = "Nexus Framed Glass Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFGLPNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFSMLNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFSMLNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_FLOOR_QUARTER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Small Panel",
			["NameLower"] = "Nexus Small Panel",
			["Subtitle"] = "Nexus Small Panel",
			["Description"] = "Nexus Small Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFSMLNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFSCUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFSCUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_FLOOR_QUARTER_C.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Small Panel",
			["NameLower"] = "Nexus Curved Small Panel",
			["Subtitle"] = "Nexus Curved Small Panel",
			["Description"] = "Nexus Curved Small Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFSCUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRAMPNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRAMPNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_RAMP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Ramp",
			["NameLower"] = "Nexus Ramp",
			["Subtitle"] = "Nexus Ramp",
			["Description"] = "Nexus Ramp",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRAMPNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRTHINEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRTHINEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_RAMP_THIN.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Half Ramp",
			["NameLower"] = "Nexus Half Ramp",
			["Subtitle"] = "Nexus Half Ramp",
			["Description"] = "Nexus Half Ramp",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRTHINEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRCCUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRCCUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_ROOF_CORNER_C.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Roof Corner",
			["NameLower"] = "Nexus Curved Roof Corner",
			["Subtitle"] = "Nexus Curved Roof Corner",
			["Description"] = "Nexus Curved Roof Corner",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRCCUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPARCHNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPARCHNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_ARCH.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Arch",
			["NameLower"] = "Nexus Arch",
			["Subtitle"] = "Nexus Arch",
			["Description"] = "Nexus Arch",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPARCHNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPAHLFNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPAHLFNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_ARCHHALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Half Arch",
			["NameLower"] = "Nexus Half Arch",
			["Subtitle"] = "Nexus Half Arch",
			["Description"] = "Nexus Half Arch",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPAHLFNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWALLNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWALLNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Wall",
			["NameLower"] = "Nexus Wall",
			["Subtitle"] = "Nexus Wall",
			["Description"] = "Nexus Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWALLNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWACUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWACUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_CURVED.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Wall",
			["NameLower"] = "Nexus Curved Wall",
			["Subtitle"] = "Nexus Curved Wall",
			["Description"] = "Nexus Curved Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWACUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWHLFNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWHLFNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_HALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Thin Wall",
			["NameLower"] = "Nexus Thin Wall",
			["Subtitle"] = "Nexus Thin Wall",
			["Description"] = "Nexus Thin Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWHLFNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWHCUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWHCUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_HALF_C.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Thin Wall",
			["NameLower"] = "Nexus Curved Thin Wall",
			["Subtitle"] = "Nexus Curved Thin Wall",
			["Description"] = "Nexus Curved Thin Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWHCUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWSMLNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWSMLNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Small Wall",
			["NameLower"] = "Nexus Small Wall",
			["Subtitle"] = "Nexus Small Wall",
			["Description"] = "Nexus Small Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWSMLNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWSCUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWSCUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_SMALL_C.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Small Wall",
			["NameLower"] = "Nexus Curved Small Wall",
			["Subtitle"] = "Nexus Curved Small Wall",
			["Description"] = "Nexus Curved Small Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWSCUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWSHLNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWSHLNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_SMALL_HALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Short Wall",
			["NameLower"] = "Nexus Short Wall",
			["Subtitle"] = "Nexus Short Wall",
			["Description"] = "Nexus Short Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWSHLNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWSHCNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWSHCNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_SMALL_HALF_C.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Short Wall",
			["NameLower"] = "Nexus Curved Short Wall",
			["Subtitle"] = "Nexus Curved Short Wall",
			["Description"] = "Nexus Curved Short Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWSHCNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWWINNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWWINNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_WINDOW.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Window Panel",
			["NameLower"] = "Nexus Window Panel",
			["Subtitle"] = "Nexus Window Panel",
			["Description"] = "Nexus Window Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWWINNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWTRINEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWTRINEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_TRI.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Sloping Panel",
			["NameLower"] = "Nexus Sloping Panel",
			["Subtitle"] = "Nexus Sloping Panel",
			["Description"] = "Nexus Sloping Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWTRINEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWDORNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWDORNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_DOOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Door Frame",
			["NameLower"] = "Nexus Door Frame",
			["Subtitle"] = "Nexus Door Frame",
			["Description"] = "Nexus Door Frame",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWDORNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWDHFNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWDHFNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_DOOR_HALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Doorway",
			["NameLower"] = "Nexus Doorway",
			["Subtitle"] = "Nexus Doorway",
			["Description"] = "Nexus Doorway",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWDHFNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWDWNNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWDWNNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_WALL_DOORWINDOWL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Frontage",
			["NameLower"] = "Nexus Frontage",
			["Subtitle"] = "Nexus Frontage",
			["Description"] = "Nexus Frontage",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWDWNNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRAILNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRAILNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_RAILING.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Railing",
			["NameLower"] = "Nexus Railing",
			["Subtitle"] = "Nexus Railing",
			["Description"] = "Nexus Railing",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRAILNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRACUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRACUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_RAILING_CURVED.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Railing",
			["NameLower"] = "Nexus Curved Railing",
			["Subtitle"] = "Nexus Curved Railing",
			["Description"] = "Nexus Curved Railing",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRACUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRSCUNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRSCUNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_RAILING_CURVED_SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Curved Small Railing",
			["NameLower"] = "Nexus Curved Small Railing",
			["Subtitle"] = "Nexus Curved Small Railing",
			["Description"] = "Nexus Curved Small Railing",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRSCUNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPCUBENEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPCUBENEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_CUBE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Cube",
			["NameLower"] = "Nexus Cube",
			["Subtitle"] = "Nexus Cube",
			["Description"] = "Nexus Cube",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPCUBENEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPPIPENEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPPIPENEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_PIPE.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe",
			["NameLower"] = "Nexus Pipe",
			["Subtitle"] = "Nexus Pipe",
			["Description"] = "Nexus Pipe",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPPIPENEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPPIPCNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPPIPCNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/NEXUS/NEXUS_PIPE_CURVED.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe Curved",
			["NameLower"] = "Nexus Pipe Curved",
			["Subtitle"] = "Nexus Pipe Curved",
			["Description"] = "Nexus Pipe Curved",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPPIPCNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KPFTUSTNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KPFTUSTNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PREFAB/NEXUS/NEXUS_TUBE_STRAIGHT.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KPFNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "True",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Straight Tube",
			["NameLower"] = "Nexus Straight Tube",
			["Subtitle"] = "Nexus Straight Tube",
			["Description"] = "Nexus Straight Tube",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KPFTUSTNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KPFTUCONEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KPFTUCONEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PREFAB/NEXUS/NEXUS_TUBE_CORNER.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KPFNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "True",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Corner Tube",
			["NameLower"] = "Nexus Corner Tube",
			["Subtitle"] = "Nexus Corner Tube",
			["Description"] = "Nexus Corner Tube",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KPFTUCONEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KPFTUBTNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KPFTUBTNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PREFAB/NEXUS/NEXUS_TUBE_T.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KPFNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "True",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus T Tube",
			["NameLower"] = "Nexus T Tube",
			["Subtitle"] = "Nexus T Tube",
			["Description"] = "Nexus T Tube",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KPFTUBTNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KPFTUBXNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KPFTUBXNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PREFAB/NEXUS/NEXUS_TUBE_X.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KPFNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "True",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus X Tube",
			["NameLower"] = "Nexus X Tube",
			["Subtitle"] = "Nexus X Tube",
			["Description"] = "Nexus X Tube",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KPFTUBXNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KPFDOORNEXU",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KPFDOORNEXU_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PREFAB/NEXUS/NEXUS_TUBE_DOOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KPFNEXUS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Tube Door",
			["NameLower"] = "Nexus Tube Door",
			["Subtitle"] = "Nexus Tube Door",
			["Description"] = "Nexus Tube Door",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KPFDOORNEXU_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXFORWDOOR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXFORWDOOR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/DOORS/FORWARDDOOR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDOORS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Forward Door",
			["NameLower"] = "Forward Door",
			["Subtitle"] = "Forward Door",
			["Description"] = "Forward Door",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXFORWDOOR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXLEFTDOOR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXLEFTDOOR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/DOORS/LEFTDOOR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDOORS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Left Door",
			["NameLower"] = "Left Door",
			["Subtitle"] = "Left Door",
			["Description"] = "Left Door",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXLEFTDOOR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXMAIRLOCK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXMAIRLOCK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/DOORS/MAINAIRLOCK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDOORS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Main Airlock",
			["NameLower"] = "Main Airlock",
			["Subtitle"] = "Main Airlock",
			["Description"] = "Main Airlock",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXMAIRLOCK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXMARKDOOR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXMARKDOOR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/NEXUS/PARTS/DOORS/MARKETDOOR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXDOORS" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Market Door",
			["NameLower"] = "Market Door",
			["Subtitle"] = "Market Door",
			["Description"] = "Market Door",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXMARKDOOR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPES",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPES_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_S.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe",
			["NameLower"] = "Nexus Pipe",
			["Subtitle"] = "Nexus Pipe",
			["Description"] = "Nexus Pipe",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPES_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPESX3",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPESX3_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_S_X3.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe X3",
			["NameLower"] = "Nexus Pipe X3",
			["Subtitle"] = "Nexus Pipe X3",
			["Description"] = "Nexus Pipe X3",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPESX3_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPEL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPEL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_L.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe Elbow",
			["NameLower"] = "Nexus Pipe Elbow",
			["Subtitle"] = "Nexus Pipe Elbow",
			["Description"] = "Nexus Pipe Elbow",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPEL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPEY",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPEY_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_Y.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe Y",
			["NameLower"] = "Nexus Pipe Y",
			["Subtitle"] = "Nexus Pipe Y",
			["Description"] = "Nexus Pipe Y",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPEY_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPET",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPET_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_T.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe T",
			["NameLower"] = "Nexus Pipe T",
			["Subtitle"] = "Nexus Pipe T",
			["Description"] = "Nexus Pipe T",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPET_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPEX",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPEX_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_X.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe X",
			["NameLower"] = "Nexus Pipe X",
			["Subtitle"] = "Nexus Pipe X",
			["Description"] = "Nexus Pipe X",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPEX_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KNXPIPEN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KNXPIPEN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/PIPES/NEXUS/NEXUS_PIPE_N.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KNXPIPES" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Nexus Pipe N",
			["NameLower"] = "Nexus Pipe N",
			["Subtitle"] = "Nexus Pipe N",
			["Description"] = "Nexus Pipe N",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KNXPIPEN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPASTEBEAC",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPASTEBEAC_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/ASTEROID_BEACONREF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Asteroid Beacon",
			["NameLower"] = "Asteroid Beacon",
			["Subtitle"] = "Asteroid Beacon",
			["Description"] = "Asteroid Beacon",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPASTEBEAC_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPATLBEAC1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPATLBEAC1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/ATLAS_BEACON.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Atlas Beacon",
			["NameLower"] = "Atlas Beacon",
			["Subtitle"] = "Atlas Beacon",
			["Description"] = "Atlas Beacon",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPATLBEAC1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPCHARGBAR",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPCHARGBAR_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/CHARGEBARREF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Charge Bar",
			["NameLower"] = "Charge Bar",
			["Subtitle"] = "Charge Bar",
			["Description"] = "Charge Bar",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPCHARGBAR_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPCRYSTAL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPCRYSTAL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/CRYSTAL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Crystal",
			["NameLower"] = "Crystal",
			["Subtitle"] = "Crystal",
			["Description"] = "Crystal",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPCRYSTAL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPCUBEPOI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPCUBEPOI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/CUBE_POIREF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Cube",
			["NameLower"] = "Cube",
			["Subtitle"] = "Cube",
			["Description"] = "Cube",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPCUBEPOI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPEYE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPEYE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/EYE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Eye",
			["NameLower"] = "Eye",
			["Subtitle"] = "Eye",
			["Description"] = "Eye",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPEYE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPGATEPOI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPGATEPOI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/GATE_POI.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Gate",
			["NameLower"] = "Gate",
			["Subtitle"] = "Gate",
			["Description"] = "Gate",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPGATEPOI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPGEKHEAD",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPGEKHEAD_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/GEK_HEAD.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Gek Head",
			["NameLower"] = "Gek Head",
			["Subtitle"] = "Gek Head",
			["Description"] = "Gek Head",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPGEKHEAD_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPLINEGEO",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPLINEGEO_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/LINEGEO.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Line Geo",
			["NameLower"] = "Line Geo",
			["Subtitle"] = "Line Geo",
			["Description"] = "Line Geo",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPLINEGEO_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPPILLAPOI",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPPILLAPOI_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/PILLARPOIREF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pillar",
			["NameLower"] = "Pillar",
			["Subtitle"] = "Pillar",
			["Description"] = "Pillar",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPPILLAPOI_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPSKULL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPSKULL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SKULL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Skull",
			["NameLower"] = "Skull",
			["Subtitle"] = "Skull",
			["Description"] = "Skull",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPSKULL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPSKCRYST1",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPSKCRYST1_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SKULLCRYSTAL01REF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Crystal 1",
			["NameLower"] = "Crystal 1",
			["Subtitle"] = "Crystal 1",
			["Description"] = "Crystal 1",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPSKCRYST1_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPPRISON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPPRISON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SPACE_PRISON.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Prison",
			["NameLower"] = "Prison",
			["Subtitle"] = "Prison",
			["Description"] = "Prison",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPPRISON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPCLOCK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPCLOCK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SPACECLOCK.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Clock",
			["NameLower"] = "Clock",
			["Subtitle"] = "Clock",
			["Description"] = "Clock",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPCLOCK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPEGG",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPEGG_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SPACEEGG.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Egg",
			["NameLower"] = "Egg",
			["Subtitle"] = "Egg",
			["Description"] = "Egg",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPEGG_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPGRABBY",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPGRABBY_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SPACEGRABBY.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Grabby",
			["NameLower"] = "Grabby",
			["Subtitle"] = "Grabby",
			["Description"] = "Grabby",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPGRABBY_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPGYROSCOP",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPGYROSCOP_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/SPACEGYROSCOPE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Gyroscope",
			["NameLower"] = "Gyroscope",
			["Subtitle"] = "Gyroscope",
			["Description"] = "Gyroscope",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPGYROSCOP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPWARRSILO",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPWARRSILO_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/WARRIORSILOS.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Warrior Silos",
			["NameLower"] = "Warrior Silos",
			["Subtitle"] = "Warrior Silos",
			["Description"] = "Warrior Silos",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPWARRSILO_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPWOBJECT2",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPWOBJECT2_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/WEIRDOBJECT2.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Weird Object 2",
			["NameLower"] = "Weird Object 2",
			["Subtitle"] = "Weird Object 2",
			["Description"] = "Weird Object 2",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPWOBJECT2_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPWOBJECT3",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPWOBJECT3_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/WEIRDOBJECT3REF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Weird Object 3",
			["NameLower"] = "Weird Object 3",
			["Subtitle"] = "Weird Object 3",
			["Description"] = "Weird Object 3",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPWOBJECT3_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSPWOBJECT5",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSPWOBJECT5_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/SPACE/POI/WEIRDOBJECT5REF.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KSPSPAWN" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Weird Object 5",
			["NameLower"] = "Weird Object 5",
			["Subtitle"] = "Weird Object 5",
			["Description"] = "Weird Object 5",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSPWOBJECT5_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTRED",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTRED_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Red Spotlight",
			["NameLower"] = "Red Spotlight",
			["Subtitle"] = "Red Spotlight",
			["Description"] = "Red Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTRED_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTORAN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTORAN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTO.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Orange Spotlight",
			["NameLower"] = "Orange Spotlight",
			["Subtitle"] = "Orange Spotlight",
			["Description"] = "Orange Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTORAN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTYELL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTYELL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTY.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Yellow Spotlight",
			["NameLower"] = "Yellow Spotlight",
			["Subtitle"] = "Yellow Spotlight",
			["Description"] = "Yellow Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTYELL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTGREE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTGREE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTG.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Green Spotlight",
			["NameLower"] = "Green Spotlight",
			["Subtitle"] = "Green Spotlight",
			["Description"] = "Green Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTGREE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTTEAL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTTEAL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTT.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Teal Spotlight",
			["NameLower"] = "Teal Spotlight",
			["Subtitle"] = "Teal Spotlight",
			["Description"] = "Teal Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTTEAL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTBLUE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTBLUE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTB.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Blue Spotlight",
			["NameLower"] = "Blue Spotlight",
			["Subtitle"] = "Blue Spotlight",
			["Description"] = "Blue Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTBLUE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTPINK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTPINK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pink Spotlight",
			["NameLower"] = "Pink Spotlight",
			["Subtitle"] = "Pink Spotlight",
			["Description"] = "Pink Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTPINK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTSPOTWHIT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTSPOTWHIT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTSPOTW.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTSPOTLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "White Spotlight",
			["NameLower"] = "White Spotlight",
			["Subtitle"] = "White Spotlight",
			["Description"] = "White Spotlight",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTSPOTWHIT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIRED",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIRED_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Red Ambient Light",
			["NameLower"] = "Red Ambient Light",
			["Subtitle"] = "Red Ambient Light",
			["Description"] = "Red Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIRED_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIORAN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIORAN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBO.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Orange Ambient Light",
			["NameLower"] = "Orange Ambient Light",
			["Subtitle"] = "Orange Ambient Light",
			["Description"] = "Orange Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIORAN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIYELL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIYELL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBY.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Yellow Ambient Light",
			["NameLower"] = "Yellow Ambient Light",
			["Subtitle"] = "Yellow Ambient Light",
			["Description"] = "Yellow Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIYELL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIGREE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIGREE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBG.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Green Ambient Light",
			["NameLower"] = "Green Ambient Light",
			["Subtitle"] = "Green Ambient Light",
			["Description"] = "Green Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIGREE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBITEAL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBITEAL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBT.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Teal Ambient Light",
			["NameLower"] = "Teal Ambient Light",
			["Subtitle"] = "Teal Ambient Light",
			["Description"] = "Teal Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBITEAL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIBLUE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIBLUE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBB.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Blue Ambient Light",
			["NameLower"] = "Blue Ambient Light",
			["Subtitle"] = "Blue Ambient Light",
			["Description"] = "Blue Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIBLUE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIPINK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIPINK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pink Ambient Light",
			["NameLower"] = "Pink Ambient Light",
			["Subtitle"] = "Pink Ambient Light",
			["Description"] = "Pink Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIPINK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTAMBIWHIT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTAMBIWHIT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTAMBW.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTAMBLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "White Ambient Light",
			["NameLower"] = "White Ambient Light",
			["Subtitle"] = "White Ambient Light",
			["Description"] = "White Ambient Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTAMBIWHIT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLRED",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLRED_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Red Wall Light",
			["NameLower"] = "Red Wall Light",
			["Subtitle"] = "Red Wall Light",
			["Description"] = "Red Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLRED_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLORAN",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLORAN_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLO.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Orange Wall Light",
			["NameLower"] = "Orange Wall Light",
			["Subtitle"] = "Orange Wall Light",
			["Description"] = "Orange Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLORAN_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLYELL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLYELL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLY.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Yellow Wall Light",
			["NameLower"] = "Yellow Wall Light",
			["Subtitle"] = "Yellow Wall Light",
			["Description"] = "Yellow Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLYELL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLGREE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLGREE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLG.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Green Wall Light",
			["NameLower"] = "Green Wall Light",
			["Subtitle"] = "Green Wall Light",
			["Description"] = "Green Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLGREE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLTEAL",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLTEAL_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLT.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Teal Wall Light",
			["NameLower"] = "Teal Wall Light",
			["Subtitle"] = "Teal Wall Light",
			["Description"] = "Teal Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLTEAL_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLBLUE",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLBLUE_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLB.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Blue Wall Light",
			["NameLower"] = "Blue Wall Light",
			["Subtitle"] = "Blue Wall Light",
			["Description"] = "Blue Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLBLUE_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLPINK",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLPINK_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Pink Wall Light",
			["NameLower"] = "Pink Wall Light",
			["Subtitle"] = "Pink Wall Light",
			["Description"] = "Pink Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLPINK_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KLTWALLWHIT",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KLTWALLWHIT_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/LIGHTS/LTWALLW.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KLTWALLLIGHT" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "White Wall Light",
			["NameLower"] = "White Wall Light",
			["Subtitle"] = "White Wall Light",
			["Description"] = "White Wall Light",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KLTWALLWHIT_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFLORTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFLORTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_FLOOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Floor Panel",
			["NameLower"] = "Tron Floor Panel",
			["Subtitle"] = "Tron Floor Panel",
			["Description"] = "Tron Floor Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFLORTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFTRITRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFTRITRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_FLOOR_TRI.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Triangle",
			["NameLower"] = "Tron Triangle",
			["Subtitle"] = "Tron Triangle",
			["Description"] = "Tron Triangle",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFTRITRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFTRQTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFTRQTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Small Triangle",
			["NameLower"] = "Tron Small Triangle",
			["Subtitle"] = "Tron Small Triangle",
			["Description"] = "Tron Small Triangle",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFTRQTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFGLPTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFGLPTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_GFLOOR.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Framed Glass Panel",
			["NameLower"] = "Tron Framed Glass Panel",
			["Subtitle"] = "Tron Framed Glass Panel",
			["Description"] = "Tron Framed Glass Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFGLPTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFSMLTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFSMLTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_FLOOR_QUARTER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Small Panel",
			["NameLower"] = "Tron Small Panel",
			["Subtitle"] = "Tron Small Panel",
			["Description"] = "Tron Small Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFSMLTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRAMPTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRAMPTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_RAMP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Ramp",
			["NameLower"] = "Tron Ramp",
			["Subtitle"] = "Tron Ramp",
			["Description"] = "Tron Ramp",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRAMPTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "35"
				},
				{
					["ID"] = "LAND2",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRTHITRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRTHITRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_RAMP_THIN.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Half Ramp",
			["NameLower"] = "Tron Half Ramp",
			["Subtitle"] = "Tron Half Ramp",
			["Description"] = "Tron Half Ramp",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRTHITRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "15"
				},
				{
					["ID"] = "LAND2",
					["InventoryType"] = "Substance",
					["Amount"] = "5"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPROOFTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPROOFTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_ROOF_TOP.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Roof",
			["NameLower"] = "Tron Roof",
			["Subtitle"] = "Tron Roof",
			["Description"] = "Tron Roof",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPROOFTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRMIDTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRMIDTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_ROOF_MIDDLE.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Roof Panel",
			["NameLower"] = "Tron Roof Panel",
			["Subtitle"] = "Tron Roof Panel",
			["Description"] = "Tron Roof Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRMIDTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				},
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRCORTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRCORTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_ROOF_CORNER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Roof Corner",
			["NameLower"] = "Tron Roof Corner",
			["Subtitle"] = "Tron Roof Corner",
			["Description"] = "Tron Roof Corner",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRCORTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				},
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPRCINTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPRCINTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_ROOF_CORNERINNER.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Roof Corner Inner",
			["NameLower"] = "Tron Roof Corner Inner",
			["Subtitle"] = "Tron Roof Corner Inner",
			["Description"] = "Tron Roof Corner Inner",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPRCINTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				},
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPARCHTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPARCHTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_ARCH.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Arch",
			["NameLower"] = "Tron Arch",
			["Subtitle"] = "Tron Arch",
			["Description"] = "Tron Arch",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPARCHTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPAHLFTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPAHLFTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_ARCHHALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Half Arch",
			["NameLower"] = "Tron Half Arch",
			["Subtitle"] = "Tron Half Arch",
			["Description"] = "Tron Half Arch",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPAHLFTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWALLTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWALLTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Wall",
			["NameLower"] = "Tron Wall",
			["Subtitle"] = "Tron Wall",
			["Description"] = "Tron Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWALLTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWHLFTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWHLFTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_HALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Thin Wall",
			["NameLower"] = "Tron Thin Wall",
			["Subtitle"] = "Tron Thin Wall",
			["Description"] = "Tron Thin Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWHLFTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWSMLTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWSMLTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_SMALL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Small Wall",
			["NameLower"] = "Tron Small Wall",
			["Subtitle"] = "Tron Small Wall",
			["Description"] = "Tron Small Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWSMLTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWSHLTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWSHLTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_SMALL_HALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Short Wall",
			["NameLower"] = "Tron Short Wall",
			["Subtitle"] = "Tron Short Wall",
			["Description"] = "Tron Short Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWSHLTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWWINTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWWINTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_WINDOW.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Window Panel",
			["NameLower"] = "Tron Window Panel",
			["Subtitle"] = "Tron Window Panel",
			["Description"] = "Tron Window Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWWINTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				},
				{
					["ID"] = "FARMPROD3",
					["InventoryType"] = "Product",
					["Amount"] = "1"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWTRITRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWTRITRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_TRI.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Sloping Panel",
			["NameLower"] = "Tron Sloping Panel",
			["Subtitle"] = "Tron Sloping Panel",
			["Description"] = "Tron Sloping Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWTRITRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWDORTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWDORTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_DOOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Door Frame",
			["NameLower"] = "Tron Door Frame",
			["Subtitle"] = "Tron Door Frame",
			["Description"] = "Tron Door Frame",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWDORTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWDHFTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWDHFTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_DOOR_HALF.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Doorway",
			["NameLower"] = "Tron Doorway",
			["Subtitle"] = "Tron Doorway",
			["Description"] = "Tron Doorway",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWDHFTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPGDORTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPGDORTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_GARAGEDOOR.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Power Door",
			["NameLower"] = "Tron Power Door",
			["Subtitle"] = "Tron Power Door",
			["Description"] = "Tron Power Door",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPGDORTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "FUEL1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWDWNTRON",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWDWNTRON_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/TRON/BASIC_WALL_DOORWINDOWL.SCENE.MBIN",
			["DecorationType"] = "SurfaceNormal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPTRON" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Tron Frontage",
			["NameLower"] = "Tron Frontage",
			["Subtitle"] = "Tron Frontage",
			["Description"] = "Tron Frontage",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWDWNTRON_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				},
				{
					["ID"] = "LAND2",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFLORCHRG",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFLORCHRG_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/CHROMA/CHROMA_FLOOR_GREEN.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPCHROMA" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Green Chroma Floor Panel",
			["NameLower"] = "Green Chroma Floor Panel",
			["Subtitle"] = "Green Chroma Floor Panel",
			["Description"] = "Green Chroma Floor Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFLORCHRG_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWALLCHRG",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWALLCHRG_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/CHROMA/CHROMA_WALL_GREEN.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPCHROMA" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Green Chroma Wall",
			["NameLower"] = "Green Chroma Wall",
			["Subtitle"] = "Green Chroma Wall",
			["Description"] = "Green Chroma Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWALLCHRG_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPFLORCHRB",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPFLORCHRB_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/CHROMA/CHROMA_FLOOR_BLUE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPCHROMA" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Blue Chroma Floor Panel",
			["NameLower"] = "Blue Chroma Floor Panel",
			["Subtitle"] = "Blue Chroma Floor Panel",
			["Description"] = "Blue Chroma Floor Panel",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPFLORCHRB_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "10"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KBPWALLCHRB",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KBPWALLCHRB_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "CUSTOMMODELS/KIBBLES/BASICPARTS/CHROMA/CHROMA_WALL_BLUE.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "KBPCHROMA" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Blue Chroma Wall",
			["NameLower"] = "Blue Chroma Wall",
			["Subtitle"] = "Blue Chroma Wall",
			["Description"] = "Blue Chroma Wall",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KBPWALLCHRB_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
	{
		["OBJECT"] = {
			["ID"] = "KSHIPSALV",
			["PlacementScene"] = "CUSTOMMODELS/KIBBLES/PLACEMENT/KSHIPSALV_PLACEMENT.SCENE.MBIN",
			["Style"] = "None",
			["Model"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN",
			["DecorationType"] = "Normal",
			["IsPlaceable"] = "True",
			["IsDecoration"] = "False",
			["Biome"] = "Lush",
			["BuildableOnFreighter"] = "True",
			["BuildableOnPlanet"] = "False",
			["CheckPlaceholderCollision"] = "False",
			["EnableCollision"] = "True",
			["CanScale"] = "True",
			--["Group"] = "KIBBLESNBITS",
			["SubGroupName"] = { "TECHTECH" },
			["StorageContainerIndex"] = "-1",
			["CanChangeColour"] = "True",
			["CanChangeMaterial"] = "False",
			["RemovesAttachedDecoration"] = "False",
			["EditsTerrain"] = "False",
			["BaseTerrainEditShape"] = "Cube",
			["IsSealed"] = "False",
			["Connection"] = "DECOR",
		},
 		["PRODUCT"] = {	
			["Name"] = "Ship Salvage Station",
			["NameLower"] = "Ship Salvage Station",
			["Subtitle"] = "Ship Salvage Station",
			["Description"] = "Ship Salvage Station",
			["Icon"] = "CUSTOMMODELS/KIBBLES/ICONS/KSHIPSCRAP_ICON.DDS",
			["Requirements"] = {	
				{
					["ID"] = "LAND1",
					["InventoryType"] = "Substance",
					["Amount"] = "25"
				}
			}
		}
	},
}

function GetBaseBuildingCost(ID, POPIN)
BUILDING_COST =
{
[[      <Property name="Active0AverageFrameTimeCost" value="0" />
      <Property name="Active1AverageFrameTimeCost" value="1" />
      <Property name="ActiveTotalNodes" value="2" />
      <Property name="ActivePhysicsComponents" value="0" />
      <Property name="Inactive0AverageFrameTimeCost" value="1" />
      <Property name="Inactive1AverageFrameTimeCost" value="1" />
      <Property name="InactiveTotalNodes" value="1000" />
      <Property name="InactivePhysicsComponents" value="100" />]],
[[      <Property name="Active0AverageFrameTimeCost" value="0.0082" />
      <Property name="Active1AverageFrameTimeCost" value="0.008175" />
      <Property name="ActiveTotalNodes" value="36" />
      <Property name="ActivePhysicsComponents" value="12" />
      <Property name="Inactive0AverageFrameTimeCost" value="0.00809" />
      <Property name="Inactive1AverageFrameTimeCost" value="0.00801" />
      <Property name="InactiveTotalNodes" value="25" />
      <Property name="InactivePhysicsComponents" value="1" />]],
[[      <Property name="Active0AverageFrameTimeCost" value="0.0082" />
      <Property name="Active1AverageFrameTimeCost" value="0.008175" />
      <Property name="ActiveTotalNodes" value="64" />
      <Property name="ActivePhysicsComponents" value="12" />
      <Property name="Inactive0AverageFrameTimeCost" value="0.00805" />
      <Property name="Inactive1AverageFrameTimeCost" value="0.008003" />
      <Property name="InactiveTotalNodes" value="60" />
      <Property name="InactivePhysicsComponents" value="1" />]],
[[      <Property name="Active0AverageFrameTimeCost" value="0.0082" />
      <Property name="Active1AverageFrameTimeCost" value="0.008131" />
      <Property name="ActiveTotalNodes" value="128" />
      <Property name="ActivePhysicsComponents" value="12" />
      <Property name="Inactive0AverageFrameTimeCost" value="0.00805" />
      <Property name="Inactive1AverageFrameTimeCost" value="0" />
      <Property name="InactiveTotalNodes" value="64" />
      <Property name="InactivePhysicsComponents" value="1" />]],
[[      <Property name="Active0AverageFrameTimeCost" value="0.00835" />
      <Property name="Active1AverageFrameTimeCost" value="0.0082" />
      <Property name="ActiveTotalNodes" value="256" />
      <Property name="ActivePhysicsComponents" value="17" />
      <Property name="Inactive0AverageFrameTimeCost" value="0.00813" />
      <Property name="Inactive1AverageFrameTimeCost" value="0.00795" />
      <Property name="InactiveTotalNodes" value="120" />
      <Property name="InactivePhysicsComponents" value="1" />]],
}				
return [[
    <Property value="GcBaseBuildingEntryCosts.xml">
      <Property name="ID" value="]] .. ID .. [[" />
]] .. BUILDING_COST[POPIN] .. [[  
    </Property>
]]
end

function GetGroupData(ID, NAME, ICON, CHILDREN)
SUBGROUP_INJECT = ""
for _,n in pairs(CHILDREN) do
	SUBGROUP_INJECT = SUBGROUP_INJECT .. [[
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="]] .. n["ID"] .. [[" />
          <Property name="Name" value="]] .. string.upper(n["Name"]) .. [[" />
        </Property>
]]
end
return [[
    <Property value="GcBaseBuildingGroup.xml">
      <Property name="ID" value="]] .. ID .. [[" />
      <Property name="Name" value="]] .. string.upper(NAME) .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="DefaultColourIdx" value="0" />
      <Property name="SubGroups">
	  ]] .. SUBGROUP_INJECT .. [[
      </Property>
    </Property>
	]]
end

function GetKnownProducts(ID)
return [[
<Property value="NMSString0x10.xml">
<Property name="Value" value="]] .. ID .. [[" />
</Property>
]]
end

function GetBaseBuildingObject(ID, PLACEMENT, STYLE, DTYPE, PLACE, ISDECOR, BIOME, FREIGHTER, PLANET, CHECKCOLL, ENCOLL, SCALEABLE, GROUPS, STORAGE, COLOUR, MAT, RAD, TERRAIN, T_SHAPE, SEAL, POWER, SNAP_SHORT)
GROUP_INJECT = ""
POWER_INJECT = ""
POWER_INJECT = KIBBLES_LINKGRID[POWER]

if BUILD_ANYWHERE then
	FREIGHTER = "True"
	PLANET = "True"
end

GROUPS_TEMP = {}
for _,n in pairs(GROUPS) do
	TOP_GROUP = ""
	for _,p in pairs(KIBBLES_GROUPS) do
		for _,r in pairs(p["SubGroups"]) do
			if n == r["ID"] then TOP_GROUP = p["ID"] 
			end 
		end
	end
	for _,t in pairs(GROUPS_TEMP) do
		if TOP_GROUP == t then TOP_GROUP = "" 
		end
	end
	if TOP_GROUP ~= "" then
	GROUP_INJECT = GROUP_INJECT .. [[
<Property value="GcBaseBuildingEntryGroup.xml">
<Property name="Group" value="]] .. TOP_GROUP .. [[" />
<Property name="SubGroupName" value="]] .. n .. [[" />
<Property name="SubGroup" value="0" />
</Property>
]]
	table.insert(GROUPS_TEMP, TOP_GROUP)
	end
end

return [[ 
    <Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="]] .. ID .. [[" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="True" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="]] .. STYLE .. [[" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource.xml">
        <Property name="Filename" value="]] .. PLACEMENT .. [[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="]] .. DTYPE .. [[" />
      </Property>
      <Property name="IsPlaceable" value="]] .. PLACE .. [[" />
      <Property name="IsDecoration" value="]] .. ISDECOR .. [[" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="]] .. BIOME .. [[" />
      </Property>
      <Property name="BuildableOnPlanetBase" value="True" />
      <Property name="BuildableOnSpaceBase" value="True" />
      <Property name="BuildableOnFreighter" value="]] .. FREIGHTER .. [[" />
      <Property name="BuildableOnPlanet" value="]] .. PLANET .. [[" />
      <Property name="BuildableOnPlanetWithProduct" value="False" />
      <Property name="BuildableUnderwater" value="True" />
      <Property name="BuildableAboveWater" value="True" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="]] .. CHECKCOLL .. [[" />
	  <Property name="CheckPlayerCollision" value="]] .. ENCOLL .. [[" />
      <Property name="CanRotate3D" value="True" />
      <Property name="CanScale" value="]] .. SCALEABLE .. [[" />
      <Property name="Groups">
]] .. GROUP_INJECT .. [[
      </Property>
      <Property name="StorageContainerIndex" value="]] .. STORAGE .. [[" />
      <Property name="ColourPaletteGroupId" value="" />
      <Property name="DefaultColourPaletteId" value="" />
      <Property name="MaterialGroupId" value="" />
      <Property name="DefaultMaterialId" value="" />
      <Property name="CanChangeColour" value="]] .. COLOUR .. [[" />
      <Property name="CanChangeMaterial" value="]] .. MAT .. [[" />
      <Property name="CanPickUp" value="False" />
      <Property name="ShowInBuildMenu" value="True" />
      <Property name="CompositePartObjectIDs" />
      <Property name="FamilyIDs" />
      <Property name="BuildEffectAccelerator" value="1" />
      <Property name="RemovesAttachedDecoration" value="]] .. RAD .. [[" />
      <Property name="RemovesWhenUnsnapped" value="False" />
      <Property name="EditsTerrain" value="]] .. TERRAIN .. [[" />
      <Property name="BaseTerrainEditShape" value="]] .. T_SHAPE .. [[" />
      <Property name="MinimumDeleteDistance" value="1" />
      <Property name="IsSealed" value="]] .. SEAL .. [[" />
      <Property name="CloseMenuAfterBuild" value="False" />
      <Property name="LinkGridData" value="GcBaseLinkGridData.xml">
]] .. POWER_INJECT .. [[
      </Property>
      <Property name="GhostsCountOverride" value="2" />
      <Property name="ShowGhosts" value="True" />
      <Property name="SnappingDistanceOverride" value="]] .. SNAP_SHORT .. [[" />
      <Property name="RegionSpawnLOD" value="1" />
      <Property name="NPCInteractionScene" value="TkModelResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
    </Property>
]]
end

function GetBaseProduct(ID, NAMEU, NAMEL, NAMESUB, DESCRIPT, ICON, INGRED)
NAMEUP_INJECT = ""
if NAMEU == "" then NAMEUP_INJECT = string.upper(NAMEL)	
else NAMEUP_INJECT = NAMEU 
end
SUBTITLE_INJECT = ""
if NAMESUB == "" then SUBTITLE_INJECT = NAMEL 
else SUBTITLE_INJECT = NAMESUB 
end
ICON_INJECT = ""
if ICON == "" then
ICON_INJECT = [[CUSTOMMODELS/KIBBLES/ICONS/]] .. ID .. [[_ICON.DDS]]
else ICON_INJECT = ICON 
end
INGRED_INJECT = ""
for _,n in pairs(INGRED) do
	INGRED_INJECT = INGRED_INJECT .. [[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]] .. n["ID"] .. [[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]] .. n["InventoryType"] .. [[" />
          </Property>
          <Property name="Amount" value="]] .. n["Amount"] .. [[" />
        </Property>
]]
end
return [[
    <Property value="GcProductData.xml">
      <Property name="ID" value="]] .. ID .. [[" />
      <Property name="Name" value="]] .. NAMEUP_INJECT .. [[" />
      <Property name="NameLower" value="]] .. NAMEL .. [[" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="]] .. SUBTITLE_INJECT .. [[" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="]] .. DESCRIPT .. [[" />
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
        <Property name="Filename" value="]] .. ICON_INJECT .. [[" />
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
      <Property name="StackMultiplier" value="1" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements">
]] .. INGRED_INJECT .. [[
      </Property>
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="250" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0" />
      <Property name="NormalisedValueOffWorld" value="0" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="NotEnabled" />
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
end

function GetBaseBuildingPart(ID, STYLE, MODEL, INACTIVE)
INACTIVE = ""
if OVERRIDE_INACTIVE then INACTIVE = MODEL 
end
return [[
    <Property value="GcBaseBuildingPart.xml">
      <Property name="ID" value="_]] .. ID .. [[" />
      <Property name="StyleModels">
        <Property value="GcBaseBuildingPartStyleModel.xml">
          <Property name="Style" value="GcBaseBuildingPartStyle.xml">
            <Property name="Style" value="]] .. STYLE .. [[" />
          </Property>
          <Property name="Model" value="TkModelResource.xml">
            <Property name="Filename" value="]] .. MODEL .. [[" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Inactive" value="TkModelResource.xml">
            <Property name="Filename" value="]] .. INACTIVE .. [[" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

function getAutoPartData(ID, STYLE)
return [[
	<Property value="GcBaseBuildingPartData.xml">
      <Property name="PartID" value="_]] .. ID .. [[" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="]] .. STYLE .. [[" />
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
end

function MakePlacementScenePath(ID)
return [[CUSTOMMODELS\KIBBLES\PLACEMENT\]] .. ID .. [[_PLACEMENT.SCENE]]
end

-- BEGIN PUTTING DATA TOGETHER

EXPORT_GROUPS_LIST = {""}
for i,j in pairs(KIBBLES_GROUPS) do
	EXPORT_GROUPS_LIST[i+1] = GetGroupData(j["ID"],j["Name"],j["Icon"],j["SubGroups"])
end

EXPORT_KNOWNPRODUCTS_LIST = {""}
EXPORT_BASEOBJECTS_LIST = {""}
EXPORT_PRODUCTS_LIST = {""}
EXPORT_PARTS_LIST = {""}
EXPORT_AUTOPARTDATA_LIST = {""}
EXPORT_COST_LIST = {""}

-- BUILDING TABLE ENTRIES
for i,j in pairs(KIBBLES_OBJPROD) do
	PLACEMENT_PATH = ""
	if j["OBJECT"]["PlacementScene"] == "" then
		PLACEMENT_PATH = MakePlacementScenePath(j["OBJECT"]["ID"]) .. [[.MBIN]]
	else PLACEMENT_PATH = j["OBJECT"]["PlacementScene"]
	end

	EXPORT_BASEOBJECTS_LIST[i+1] = GetBaseBuildingObject(j["OBJECT"]["ID"], PLACEMENT_PATH, j["OBJECT"]["Style"],j["OBJECT"]["DecorationType"],j["OBJECT"]["IsPlaceable"],j["OBJECT"]["IsDecoration"],j["OBJECT"]["Biome"],j["OBJECT"]["BuildableOnFreighter"],j["OBJECT"]["BuildableOnPlanet"],j["OBJECT"]["CheckPlaceholderCollision"],j["OBJECT"]["EnableCollision"],j["OBJECT"]["CanScale"],j["OBJECT"]["SubGroupName"],j["OBJECT"]["StorageContainerIndex"],j["OBJECT"]["CanChangeColour"],j["OBJECT"]["CanChangeMaterial"],j["OBJECT"]["RemovesAttachedDecoration"],j["OBJECT"]["EditsTerrain"],j["OBJECT"]["BaseTerrainEditShape"],j["OBJECT"]["IsSealed"],j["OBJECT"]["Connection"], SNAPPING_DISTANCE)
	EXPORT_PRODUCTS_LIST[i+1] = GetBaseProduct(j["OBJECT"]["ID"],j["PRODUCT"]["Name"],j["PRODUCT"]["NameLower"],j["PRODUCT"]["Subtitle"],j["PRODUCT"]["Description"],j["PRODUCT"]["Icon"],j["PRODUCT"]["Requirements"])
	EXPORT_PARTS_LIST[i+1] = GetBaseBuildingPart(j["OBJECT"]["ID"], j["OBJECT"]["Style"], j["OBJECT"]["Model"], OVERRIDE_INACTIVE)
	EXPORT_AUTOPARTDATA_LIST[i+1] = getAutoPartData(j["OBJECT"]["ID"], j["OBJECT"]["Style"])
	EXPORT_COST_LIST[i+1] = GetBaseBuildingCost(j["OBJECT"]["ID"], POP_IN_RATE)
	EXPORT_KNOWNPRODUCTS_LIST[#EXPORT_KNOWNPRODUCTS_LIST+1] = GetKnownProducts(j["OBJECT"]["ID"])
end
-- END TAGS FOR MANUAL READING EXML_Helper FILES
EXPORT_KNOWNPRODUCTS_LIST[#EXPORT_KNOWNPRODUCTS_LIST + 1] = ""
EXPORT_COST_LIST[#EXPORT_COST_LIST + 1] = ""
EXPORT_BASEOBJECTS_LIST[#EXPORT_BASEOBJECTS_LIST + 1] = ""
EXPORT_GROUPS_LIST[#EXPORT_GROUPS_LIST + 1] = ""
EXPORT_PRODUCTS_LIST[#EXPORT_PRODUCTS_LIST + 1] = ""
EXPORT_PARTS_LIST[#EXPORT_PARTS_LIST + 1] = ""
EXPORT_AUTOPARTDATA_LIST[#EXPORT_AUTOPARTDATA_LIST + 1] = ""

EXPORT_KNOWNPRODUCTS	= table.concat(EXPORT_KNOWNPRODUCTS_LIST)
EXPORT_COST				= table.concat(EXPORT_COST_LIST)
EXPORT_BASEOBJECTS		= table.concat(EXPORT_BASEOBJECTS_LIST)
EXPORT_GROUPS			= table.concat(EXPORT_GROUPS_LIST)
EXPORT_PRODUCTS			= table.concat(EXPORT_PRODUCTS_LIST)
EXPORT_PARTS			= table.concat(EXPORT_PARTS_LIST)
EXPORT_AUTOPARTDATA		= table.concat(EXPORT_AUTOPARTDATA_LIST)

if EVERYTHING_CAN_SCALE then
EXPORT_BASEOBJECTS = EXPORT_BASEOBJECTS:gsub([[name="CanScale" value="False"]], [[name="CanScale" value="True"]])
end

if FORCE_DECOR_TYPE ~= "" then
	for _,j in pairs(BASEBUILDINGDECORATIONTYPE) do
		if FORCE_DECOR_TYPE == j then
			EXPORT_BASEOBJECTS = EXPORT_BASEOBJECTS:gsub([[name="BaseBuildingDecorationType" value="]] .. "%a+" .. [["]], [[name="BaseBuildingDecorationType" value="]] .. j .. [["]])
		end
	end
end

BASEBUILD_ENTRIES =
{
					{
						-- ["PRECEDING_KEY_WORDS"] = {"Objects"},
						-- ["LINE_OFFSET"] 		= "+0",
						["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml"}, --Changed 04 DEC 2021
						["LINE_OFFSET"] 		= "-3",
						["ADD"] 				= EXPORT_BASEOBJECTS
					},
					{
						["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingGroup.xml",},
						["SECTION_ACTIVE"] = {1,},  --Added 04 DEC 2021
						["LINE_OFFSET"] 		= "-1",
						["ADD"] 				= EXPORT_GROUPS
					},
				}

-- THE FINAL COUNTDOWN
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "~~~KibblesNBits.pak",
["MOD_BATCHNAME"]		= "~~~KibblesNBits_COMPATIBILITY.pak",
["MOD_DESCRIPTION"]		= "Generates Metadata files and patch other mods with this script",
["MOD_AUTHOR"]			= "Kibbles, WinderTP, Babscoole",
["NMS_VERSION"]			= "4.03",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGCOSTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ObjectCosts"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= EXPORT_COST
						}
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= BASEBUILD_ENTRIES
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Table"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= EXPORT_PRODUCTS
						}
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "_O2_HARVESTER"},
							["ADD_OPTION"]          = "ADDafterSECTION",
							["ADD"] 				= EXPORT_PARTS
						}
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGAUTOGENERATEDPARTSDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"PartsData"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= EXPORT_AUTOPARTDATA
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= EXPORT_KNOWNPRODUCTS
						}
					},
				},
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATACREATIVE.MBIN",
					-- ["EXML_CHANGE_TABLE"]	= 
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
							-- ["LINE_OFFSET"] 		= "+0",
							-- ["ADD"] 				= EXPORT_KNOWNPRODUCTS
						-- }
					-- },
				-- },
			}
		}
	},
}