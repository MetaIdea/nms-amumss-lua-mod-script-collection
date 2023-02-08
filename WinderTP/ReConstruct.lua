-- OVERRIDE TO TURN OFF REPLACEMENTS
CONSTRUCT_TRADING_POSTS = true
CONSTRUCT_PLANET_RINGS = true

-- MAIN CONSTRUCT SCENES LIST
-- SCENE NODE NAME/ID IN DESCRIPTOR & FILE PATHS
-- A FOR NON PROC-GEN MODELS, B FOR PROC GEN
CONSTRUCT_SCENES =
{
	{
		["NAME"] = "CNSTRCT_A",
		["Children"] =
		{	
			{	["NAME"] = "NPROC_BGUN", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTBIGGUN\CONSTRUCTBIGGUN.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_ARING", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTACHAIARING\CONSTRUCTACHAIARING.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_FTOWER", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFATTOWER\CONSTRUCTFATTOWER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_BRSHLD", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTBRONZESHIELD\CONSTRUCTFTBRONZESHIELD.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_CFORK", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTCLUTCHFORK\CONSTRUCTFTCLUTCHFORK.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_GDONUT", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTGIANTDONUT\CONSTRUCTFTGIANTDONUT.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_PYRA", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTPYRAMID\CONSTRUCTFTPYRAMID.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_RMAST", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTRADARMAST\CONSTRUCTFTRADARMAST.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_FIN", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTTALLFIN\CONSTRUCTFTTALLFIN.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_TRINGT", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTTOWERRINGTALL\CONSTRUCTFTTOWERRINGTALL.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_2CLAW", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTTWOCLAW\CONSTRUCTFTTWOCLAW.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_VTOWER", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTVANILLATOWER\CONSTRUCTFTVANILLATOWER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_GTOWER", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTGLUEGUNTOWER\CONSTRUCTGLUEGUNTOWER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_MTOWER", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTMUSHROOMTOWER\CONSTRUCTMUSHROOMTOWER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_NFLOATER", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTNINJASTARFLOATER\CONSTRUCTNINJASTARFLOATER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_RAMP1", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTRAMP\CONSTRUCTRAMP.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_OUTPOST", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTOUTPOST\CONSTRUCTOUTPOST.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_SOLAR", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTSOLARTOWER\CONSTRUCTSOLARTOWER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_THRSTR", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTPLANETTHRUSTER\CONSTRUCTPLANETTHRUSTER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_SSPHRE", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTSTRETCHEDSPHERE\CONSTRUCTSTRETCHEDSPHERE.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_STOWER", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTSWORDTOWER\CONSTRUCTSWORDTOWER.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_MACET", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTTOWERMACE\CONSTRUCTTOWERMACE.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_TRIPOD", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTTRIPOD\CONSTRUCTTRIPOD.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_WTRAP", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTWINDTRAP\CONSTRUCTWINDTRAP.SCENE.MBIN",
			},
			{	["NAME"] = "VAN_ALIENRING", 
				["SCENEGRAPH"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/BUILDINGSIZEDPROPS/ALIENRING.SCENE.MBIN",
			},
		},
	},
	{
		["NAME"] = "CNSTRCT_B",
		["Children"] =
		{	
			{	["NAME"] = "PROC_A", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTPROCSPIRE\CONSTRUCTFTPROCSPIRE.SCENE.MBIN",
			},
			{	["NAME"] = "PROC_B", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTFTTOWERPROC\CONSTRUCTFTTOWERPROC.SCENE.MBIN",
			},
			{	["NAME"] = "NPROC_SILOS", 
				["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTSILOPROC\CONSTRUCTSILOPROC.SCENE.MBIN",
			},
		},
	},
}

-- REPLACEMENT PROC-GEN SCENE/DESCRIPTOR FOR TRADING POSTS
-- SEPERATED BY RACE
TRADINGPOST_PROC_SCENE =
{
	["Traders"] =
		{
			["SCENE"] =
			{
				["Path"] = "CUSTOMMODELS\MSSP\SPAWNERS\TRADINGPOSTTRADER_PROC.SCENE.EXML",
				["Contents"] = "",
			},
			["DESCRIPTOR"] =
			{
				["Path"] = "",
				["Contents"] = "",
			}
		},
	["Warriors"] =
		{
			["SCENE"] =
			{
				["Path"] = "CUSTOMMODELS\MSSP\SPAWNERS\TRADINGPOSTWARRIOR_PROC.SCENE.EXML",
				["Contents"] = "",
			},
			["DESCRIPTOR"] =
			{
				["Path"] = "",
				["Contents"] = "",
			}
		},
	["Explorers"] =
		{
			["SCENE"] =
			{
				["Path"] = "CUSTOMMODELS\MSSP\SPAWNERS\TRADINGPOSTSCIENTIFIC_PROC.SCENE.EXML",
				["Contents"] = "",
			},
			["DESCRIPTOR"] =
			{
				["Path"] = "",
				["Contents"] = "",
			}
		},
}

-- VANILLA TRADING POST SCENE PATHS
-- TO BE INCLUDED IN REPLACEMENT PROC-GEN SCENE
TRADINGPOST_VANILLA = 
{
	{	["NAME"] = "Traders", 
		["SCENEGRAPH"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/TRADINGPOST/TRADINGPOSTTRADER.SCENE.MBIN",
	},
	{	["NAME"] = "Warriors", 
		["SCENEGRAPH"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/TRADINGPOST/TRADINGPOSTWARRIOR.SCENE.MBIN",
	},
	{	["NAME"] = "Explorers", 
		["SCENEGRAPH"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/TRADINGPOST/TRADINGPOSTSCIENTIFIC.SCENE.MBIN",
	},
}

-- CONSTRUCT TRADING POST SCENE LIST
CONSTRUCT_TRADINGPOST = 
{
	{	["NAME"] = "NPROC_OUTPOST", 
		["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTOUTPOST\CONSTRUCTOUTPOST.SCENE.MBIN",
	}
}

-- CONSTRUCT PLANET RING SCENE LIST
CONSTRUCT_PLANETRING = 
{
	{	["NAME"] = "CNSTRCT_RING", 
		["SCENEGRAPH"] = "CUSTOMMODELS\MSSP\CONSTRUCTSKYRING\CONSTRUCTSKYRINGFULL.SCENE.MBIN"
	}
}

-- CONSTRUCT PROC GEN "HUB" SCENE
-- CONTAINS ALL CONSTRUCT_SCENES SCENES
PROC_SCENE =
{
	["SCENE"] =
	{
		["Path"] = "CUSTOMMODELS\MSSP\SPAWNERS\CONSTRUCTSPAWNER.SCENE.EXML",
		["Contents"] = "",
	},
	["DESCRIPTOR"] =
	{
		["Path"] = "",
		["Contents"] = "",
	}
}

-- LIST OF CHANGES TO PLANETBUILDINGTABLE
-- SEPARATED BY RACE
TABLE_TABLE =
{
	{	["Type"] = "Traders",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Beacon", "LargeBuilding", "Factory", "Harvester", "MissionTower", "CrashedFreighter"}
	},
	{	["Type"] = "Warriors",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Beacon", "LargeBuilding", "Factory", "Harvester", "MissionTower", "CrashedFreighter"}
	},
	{	["Type"] = "Explorers",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Beacon", "LargeBuilding", "Factory", "Harvester", "MissionTower", "CrashedFreighter"}
	},
	{	["Type"] = "None",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Beacon" }
	},
}

-- CHANGE TABLE FOR PLANETBUILDINGTABLE
-- FOREACH_SKW_GROUP DEFINED BY TABLE_TABLE
PLANETBUILDINGTABLE_CHANGES =
{
		["FOREACH_SKW_GROUP"] = {},
		["PRECEDING_KEY_WORDS"] = {"Scene"},
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Value", (PROC_SCENE["SCENE"]["Path"]:gsub(".EXML", ".MBIN"))},
		}
}

-- PROC_SCENE DESCRIPTOR TYPE ID
DESCRIPTOR_TYPEID = "CNSTRCT_"
DESCRIPTOR_LIST = {}
SCENE_LIST_LOCATORS = {}

-- TOP LEVEL DESCRIPTOR ELEMENT
function GetDescriptorParent(NAME, CHILDREN)
return [[
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_]] .. string.upper(NAME) .. [[" />
          <Property name="Name" value="_]] .. NAME .. [[" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children">
            <Property value="TkModelDescriptorList.xml">
              <Property name="List">
]] .. CHILDREN .. [[
              </Property>
            </Property>
          </Property>
        </Property>
]]
end

-- 2ND LEVEL DESCRIPTOR ELEMENT
-- SEPARATING A & B LISTS IN CONSTRUCT_SCENES
-- CHILD OF GetDescriptorParent
function GetDescriptorChild(NAME, DESCRIPTORS)
return [[
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_]] .. string.upper(NAME) .. [[" />
                  <Property name="Descriptors">
]] .. DESCRIPTORS .. [[
                  </Property>
                </Property>
]]
end

-- INDIVIDUAL DESCRIPTOR ENTRY
-- CHILD OF GetDescriptorChild
function GetDescriptorEntry(NAME, SCENE)
return [[
					<Property value="TkResourceDescriptorData.xml">
					  <Property name="Id" value="_]] .. string.upper(NAME) .. [[" />
					  <Property name="Name" value="_]] .. NAME .. [[" />
					  <Property name="ReferencePaths">
						<Property value="NMSString0x80.xml">
						  <Property name="Value" value="]] .. SCENE .. [[" />
						</Property>
					  </Property>
					  <Property name="Chance" value="0" />
					  <Property name="Children" />
					</Property>
]]
end

-- TOP LEVEL PROC-GEN SCENE LOCATOR
function GetSceneLocator(NAME, CHILDREN)
return [[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="_]] .. NAME .. [[" />
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
		  <Property name="Attributes" />
		  <Property name="Children" >
]] .. CHILDREN .. [[
		  </Property>
		</Property>
]]
end

-- INDIVIDUAL PROC-GEN SCENE REFERENCE
-- CHILD OF GetSceneLocator
function GetSceneReference(NAME, SCENEGRAPH)
return [[
			<Property value="TkSceneNodeData.xml">
			  <Property name="Name" value="_]] .. NAME .. [[" />
			  <Property name="NameHash" value="0" />
			  <Property name="Type" value="REFERENCE" />
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
				  <Property name="Name" value="SCENEGRAPH" />
				  <Property name="AltID" value="" />
				  <Property name="Value" value="]] .. SCENEGRAPH .. [[" />
				</Property>
			  </Property>
			  <Property name="Children" />
			</Property>
]]
end

function GetInsertConstructChange(TYPE, SUBTYPE)
return
	{ TYPE, "GcBuildingFilenameList.xml", SUBTYPE, "GcBuildingFilename.xml" }
end

function GetTradingPostTableChange(TYPE, SUBTYPE, FILEPATH)
return
	{
			["SPECIAL_KEY_WORDS"] = {TYPE, "GcBuildingFilenameList.xml", SUBTYPE, "GcBuildingFilename.xml" },
			["PRECEDING_KEY_WORDS"] = {"Scene"},
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"Value", (FILEPATH:gsub(".EXML", ".MBIN"))},
			}
	}
end

-- PROCESSING CONSTRUCT_SCENES TO BUILD CHANGE TABLE
for _i,j in pairs(CONSTRUCT_SCENES) do
	-- SUB1 CONTAINS THE COMPLETE A & B LISTS
	-- SUB2 CONTAINS LISTS OF INDIVIDUAL DESCRIPTOR ENTRIES
	DESCRIPTOR_LIST_SUB2 = {}
	DESCRIPTOR_LIST_SUB1 = ""
	SCENE_LIST_REFERENCES = {}
	-- MAKE DIFFERENT SCENE/DESCRIPTOR TREES FROM A AND B LISTS
	for _k,l in pairs(j["Children"]) do
		-- GENERATING SUB2 DESCRIPTOR ENTRIES & REFERENCE NODE IN PROC-GEN SCENE
		table.insert(DESCRIPTOR_LIST_SUB2, GetDescriptorEntry(l["NAME"],l["SCENEGRAPH"]))
		table.insert(SCENE_LIST_REFERENCES, GetSceneReference(l["NAME"],l["SCENEGRAPH"]))
	end
	-- GENERATING SUB1 LIST
	DESCRIPTOR_LIST_SUB1 = GetDescriptorChild(j["NAME"] .. "_SUB1", table.concat(DESCRIPTOR_LIST_SUB2))
	-- INSERTING SUB1 LIST INTO COMPLETE TOP LEVEL DESCRIPTOR ELEMENT
	table.insert(DESCRIPTOR_LIST, GetDescriptorParent(j["NAME"], DESCRIPTOR_LIST_SUB1))
	-- INSERTING LIST OF REFERENCE NODES INTO TOP LEVEL LOCATOR
	table.insert(SCENE_LIST_LOCATORS, GetSceneLocator(j["NAME"], table.concat(SCENE_LIST_REFERENCES)))
end

-- PARSING TABLE_TABLE BY RACE TO INSERT KEYWORDS FOR PLANETBUILDINGTABLE CHANGES 
-- REROUTES ALL SPECIFIED BUILDING TYPES IN PLANETBUILDINGTABLE TO CONSTRUCTS MAIN PROC-GEN SCENE
for _i,j in pairs(TABLE_TABLE) do
	for _k,l in pairs(j["SubType"])do
		table.insert(PLANETBUILDINGTABLE_CHANGES["FOREACH_SKW_GROUP"], GetInsertConstructChange(j["Type"], l))
	end
end

-- COMPLETING CONSTRUCT MAIN PROC-GEN SCENE & DESCRIPTOR DATA
PROC_SCENE["SCENE"]["Contents"] =
[[<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.37.0)-->
<Data template="TkSceneNodeData">
  <Property name="Name" value="CUSTOMMODELS\SPAWNERS\CONSTRUCTSPAWNER" />
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
    <!-- <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="CUSTOMMODELS\SPAWNERS\CONSTRUCTSPAWNER.GEOMETRY.MBIN" />
    </Property> -->
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]] .. DESCRIPTOR_TYPEID .. [[" />
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
      <Property name="Attributes" />
      <Property name="Children">
]] .. table.concat(SCENE_LIST_LOCATORS) .. [[
      </Property>
    </Property>
  </Property>
</Data>]]

PROC_SCENE["DESCRIPTOR"]["Contents"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.37.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_]] .. DESCRIPTOR_TYPEID .. [[" />
      <Property name="Descriptors">
]] .. table.concat(DESCRIPTOR_LIST) .. [[
</Property>
    </Property>
  </Property>
</Data>]]

-- MAKING THE DESCRIPTOR PATH FROM THE SCENE PATH
PROC_SCENE["DESCRIPTOR"]["Path"] = PROC_SCENE["SCENE"]["Path"]:gsub(".SCENE.", ".DESCRIPTOR.")


MBIN_CHANGE_TABLE_FINAL = 
{ 
	{
		["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
		["EXML_CHANGE_TABLE"]	= { PLANETBUILDINGTABLE_CHANGES }
	},
}

ADD_FILES_FINAL =
{	
	{
		["FILE_DESTINATION"] = PROC_SCENE["SCENE"]["Path"],
		["FILE_CONTENT"] 	 = PROC_SCENE["SCENE"]["Contents"]
	},
	{
		["FILE_DESTINATION"] = PROC_SCENE["DESCRIPTOR"]["Path"],
		["FILE_CONTENT"] 	 = PROC_SCENE["DESCRIPTOR"]["Contents"]
	},
}


if CONSTRUCT_PLANET_RINGS then

	ATMOSPHERE_RING_INJECT = {}
	ATMOSPHERE_RING_DESCRIPTOR = {}

	-- GENERATING ADDITIONAL PLANET RINGS SCENE & DESCRIPTOR DATA FOR VANILLA ATMOSPHERE SCENE
	table.insert(ATMOSPHERE_RING_INJECT,[[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="_RINGS_NULL" />
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
		  <Property name="Attributes" />
		  <Property name="Children" />
		</Property>
	]])
	
	for _i,j in pairs(CONSTRUCT_PLANETRING) do
		table.insert(ATMOSPHERE_RING_DESCRIPTOR, GetDescriptorEntry(j["NAME"],j["SCENEGRAPH"]))
		table.insert(ATMOSPHERE_RING_INJECT,GetSceneReference(j["NAME"], j["SCENEGRAPH"]))
	end
	-- COMPLETING VANILLA ATMOSPHERE DESCRIPTOR FOR PLANET RINGS
	ATMOSPHERE_RING_DESCRIPTOR_EXPORT =
	[[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkModelDescriptorList">
	  <Property name="List">
		<Property value="TkResourceDescriptorList.xml">
		  <Property name="TypeId" value="_RINGS_" />
		  <Property name="Descriptors">
			<Property value="TkResourceDescriptorData.xml">
			  <Property name="Id" value="_RINGS_NULL" />
			  <Property name="Name" value="_RINGS_NULL" />
			  <Property name="ReferencePaths" />
			  <Property name="Chance" value="0" />
			  <Property name="Children" />
			</Property>
	]] .. table.concat(ATMOSPHERE_RING_DESCRIPTOR) .. [[
	</Property>
		</Property>
	  </Property>
	</Data>]]
	-- CHANGE TABLE FOR VANILLA ATMOSPHERE SCENE
	-- ADDS PROC-GEN PLANET RING REFERENCE NODES
	ATMOSPHERE_RING_REFERENCE = 
	{
			["SPECIAL_KEY_WORDS"] = {"Type", "MESH"},
			["ADD_OPTION"]  = "ADDafterSECTION",
			-- ["PRECEDING_KEY_WORDS"] = {"Children"},
			["REPLACE_TYPE"] = "ONCE",
			["ADD"] = table.concat(ATMOSPHERE_RING_INJECT)
	}
	table.insert(MBIN_CHANGE_TABLE_FINAL,
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHERE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= { ATMOSPHERE_RING_REFERENCE }
				})
	table.insert(ADD_FILES_FINAL, 
				{
					["FILE_DESTINATION"] = "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHERE.DESCRIPTOR.EXML",
					["FILE_CONTENT"] 	 = ATMOSPHERE_RING_DESCRIPTOR_EXPORT
				})
end

if CONSTRUCT_TRADING_POSTS then
	-- INSERTING ADDITIONAL CHANGE TABLE DATA INTO NMS_MOD_DEFINITION_CONTAINER
	TRADING_POST_SCENE_LIST = {}
	TRADING_POST_DESCRIPTOR_LIST = {}

	-- GENERATING CONSTRUCTS PROC-GEN TRADING POST REFERENCE & DESCRIPTOR DATA
	-- USED FOR ALL RACES
	for _i,j in pairs(CONSTRUCT_TRADINGPOST) do
		table.insert(TRADING_POST_SCENE_LIST, GetSceneReference(j["NAME"], j["SCENEGRAPH"]))
		table.insert(TRADING_POST_DESCRIPTOR_LIST, GetDescriptorEntry(j["NAME"], j["SCENEGRAPH"]))
	end

	-- GENERATING INDIVIDUAL TRADING POST REPLACEMENT SCENE & DESCRIPTOR DATA
	-- SEPARATED BECAUSE EACH RACE USES DIFFERENT TRADING POST MODEL
	for _i,j in pairs(TRADINGPOST_VANILLA) do
		TRADING_POST_VANILLA = ""
		TRADING_POST_VANILLA_DESCRIPTOR = ""
		-- GENERATING VANILLA TRADING POST REFERENCE NODE & DESCRIPTOR ID
		TRADING_POST_VANILLA = GetSceneReference("VANILLA_" .. j["NAME"], j["SCENEGRAPH"])
		TRADING_POST_VANILLA_DESCRIPTOR = GetDescriptorEntry("VANILLA_" .. j["NAME"], j["SCENEGRAPH"])
		-- COMPLETING PROC-GEN TRADING POST SCENE DATA
		-- COMBINES TRADING_POST_SCENE_LIST & TRADING_POST_VANILLA
		TRADINGPOST_PROC_SCENE[j["NAME"]]["SCENE"]["Contents"] =
	[[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkSceneNodeData">
	  <Property name="Name" value="CUSTOMMODELS\SPAWNERS\CONSTRUCTSPAWNER" />
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
		  <Property name="Name" value="NUMLODS" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="1" />
		</Property>
	  </Property>
	  <Property name="Children">
	]] .. TRADING_POST_VANILLA .. table.concat(TRADING_POST_SCENE_LIST) .. [[
	  </Property>
	</Data>]]
		-- COMPLETING PROC-GEN TRADING POST DESCRIPTOR DATA
		-- COMBINES TRADING_POST_DESCRIPTOR_LIST & TRADING_POST_VANILLA_DESCRIPTOR
		TRADINGPOST_PROC_SCENE[j["NAME"]]["DESCRIPTOR"]["Contents"] =
	[[<?xml version="1.0" encoding="utf-8"?>
	<!--File created using MBINCompiler version (3.37.0)-->
	<Data template="TkModelDescriptorList">
	  <Property name="List">
		<Property value="TkResourceDescriptorList.xml">
		  <Property name="TypeId" value="_TRADINGPOST_" />
		  <Property name="Descriptors">
	]] .. TRADING_POST_VANILLA_DESCRIPTOR .. table.concat(TRADING_POST_DESCRIPTOR_LIST) .. [[
	</Property>
		</Property>
	  </Property>
	</Data>]]
		-- GENERATING PROC-GEN TRADING POST DESCRIPTOR BASED ON SCENE NAME
		TRADINGPOST_PROC_SCENE[j["NAME"]]["DESCRIPTOR"]["Path"] = TRADINGPOST_PROC_SCENE[j["NAME"]]["SCENE"]["Path"]:gsub(".SCENE.", ".DESCRIPTOR.")
		-- INSERTING TRADING POST CHANGE TABLE FOR PLANETBUILDINGTABLE
		-- REROUTES TRADING POSTS TO CONSTRUCTS PROC-GEN TRADING POST SCENE
		table.insert(MBIN_CHANGE_TABLE_FINAL[1]["EXML_CHANGE_TABLE"], GetTradingPostTableChange(j["NAME"], "Outpost", TRADINGPOST_PROC_SCENE[j["NAME"]]["SCENE"]["Path"]))
		-- EXPORTS CONSTRUCTS PROC-GEN TRADING POST SCENE & DESCRIPTOR
		table.insert(ADD_FILES_FINAL,
		{
				["FILE_DESTINATION"] = TRADINGPOST_PROC_SCENE[j["NAME"]]["SCENE"]["Path"],
				["FILE_CONTENT"] 	 = TRADINGPOST_PROC_SCENE[j["NAME"]]["SCENE"]["Contents"]
		})
		table.insert(ADD_FILES_FINAL,
		{
				["FILE_DESTINATION"] = TRADINGPOST_PROC_SCENE[j["NAME"]]["DESCRIPTOR"]["Path"],
				["FILE_CONTENT"] 	 = TRADINGPOST_PROC_SCENE[j["NAME"]]["DESCRIPTOR"]["Contents"]
		})
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~ReConstruct_METADATA.pak",
["MOD_BATCHNAME"]			= "~ReConstruct_Combined.pak",
["MOD_AUTHOR"]				= "MsrSgtShooterPerson",
["MOD_DESCRIPTION"]			= "Generation of proc scene files and metadata tables",
["NMS_VERSION"]				= "4.08+",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE_FINAL
		}
	},
["ADD_FILES"] = ADD_FILES_FINAL
}