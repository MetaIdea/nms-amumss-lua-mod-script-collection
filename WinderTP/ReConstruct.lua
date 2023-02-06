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
		},
	},
}

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

TABLE_TABLE =
{
	{	["Type"] = "Traders",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Outpost", "LargeBuilding", "Factory", "Harvester", "MissionTower", "CrashedFreighter"}
	},
	{	["Type"] = "Warriors",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Outpost", "LargeBuilding", "Factory", "Harvester", "MissionTower", "CrashedFreighter"}
	},
	{	["Type"] = "Explorers",
		["SubType"] = { "None", "Terminal", "StoryGlitch", "Outpost", "LargeBuilding", "Factory", "Harvester", "MissionTower", "CrashedFreighter"}
	},
	{	["Type"] = "None",
		["SubType"] = { "None", "Terminal", "Beacon", "StoryGlitch"}
	},
}

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

DESCRIPTOR_TYPEID = "CNSTRCT_"
DESCRIPTOR_LIST = {}
SCENE_LIST_LOCATORS = {}

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

for _i,j in pairs(CONSTRUCT_SCENES) do
	DESCRIPTOR_LIST_SUB2 = {}
	DESCRIPTOR_LIST_SUB1 = ""
	SCENE_LIST_REFERENCES = {}
	for _k,l in pairs(j["Children"]) do
		table.insert(DESCRIPTOR_LIST_SUB2, GetDescriptorEntry(l["NAME"],l["SCENEGRAPH"]))
		table.insert(SCENE_LIST_REFERENCES, GetSceneReference(l["NAME"],l["SCENEGRAPH"]))
	end
	DESCRIPTOR_LIST_SUB1 = GetDescriptorChild(j["NAME"] .. "_SUB1", table.concat(DESCRIPTOR_LIST_SUB2))
	table.insert(DESCRIPTOR_LIST, GetDescriptorParent(j["NAME"], DESCRIPTOR_LIST_SUB1))
	table.insert(SCENE_LIST_LOCATORS, GetSceneLocator(j["NAME"], table.concat(SCENE_LIST_REFERENCES)))
end

for _i,j in pairs(TABLE_TABLE) do
	for _k,l in pairs(j["SubType"])do
		table.insert(PLANETBUILDINGTABLE_CHANGES["FOREACH_SKW_GROUP"], GetInsertConstructChange(j["Type"], l))
	end
end

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




NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~ReConstruct_METADATA.pak",
["MOD_BATCHNAME"]			= "~ReConstruct_Combined.pak",
["MOD_AUTHOR"]				= "MsrSgtShooterPerson",
["MOD_DESCRIPTION"]			= "Generation of proc scene files and metadata tables",
["NMS_VERSION"]				= "4.08+",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= { PLANETBUILDINGTABLE_CHANGES }
				}
			}
		}
	},
["ADD_FILES"] 				= 
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
}