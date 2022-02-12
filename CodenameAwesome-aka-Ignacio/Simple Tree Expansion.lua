--SETTINGS
PAK_NAME = "Simple Tree Expansion.pak"
FINAL_MODEL_NAME = "MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN" --Must end on .SCENE.MBIN
MODEL_LIST = {-- All entries must have all three keys ("ID","PATH,"SCALE"). "ID" can be any string as long as it does not repeat.
	{
		["PATH"] = "MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF_VANILLA.SCENE.MBIN",
		["SCALE"] = 1,
	},
	{
		["PATH"] = "MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN",
		["SCALE"] = 1.5,
	},
	{
		["PATH"] = "MODELS/PLANETS/BIOMES/COMMON/TREES/LARGETREE1.SCENE.MBIN",
		["SCALE"] = 1.25,
	},
}

--Don't touch this probably
function generate_scene(FINAL_MODEL_NAME,MODEL_LIST)
  text_table = {}
  --Add the scene header
  table.insert(text_table,[[<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.42.0)-->
<Data template="TkSceneNodeData">
  <Property name="Name" value="]]..string.gsub(FINAL_MODEL_NAME,".SCENE.MBIN","")..[[" />
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
]])
  --Add a child reference for every model in the list
  TYPE_ID = "_"..string.match(FINAL_MODEL_NAME,"/(%a+).SCENE").."_"
  for i, option in ipairs(MODEL_LIST) do
  table.insert(text_table,[[    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]]..TYPE_ID..i..[[" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="]]..option["SCALE"]..[[" />
        <Property name="ScaleY" value="]]..option["SCALE"]..[[" />
        <Property name="ScaleZ" value="]]..option["SCALE"]..[[" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]]..option["PATH"]..[[" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]])
	end
  --Add the scene footer
  table.insert(text_table,[[  </Property>
</Data>]])
  return table.concat(text_table)
end

function generate_descriptor_file(FINAL_MODEL_NAME,MODEL_LIST)
	TYPE_ID = "_"..string.match(FINAL_MODEL_NAME,"/(%a+).SCENE").."_"
	
	text_table = {}
	--Insert the header of the descriptor
	table.insert(text_table,[[<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.42.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="]]..TYPE_ID..[[" />
      <Property name="Descriptors">
]])
	
	--Insert each descriptor option  
	for i, option in ipairs(MODEL_LIST) do
		table.insert(text_table,[[        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="]]..TYPE_ID..i..[[" />
          <Property name="Name" value="]]..TYPE_ID..i..[[" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="]]..option["PATH"]..[[" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
]])
	end
  --Insert the footer of the descriptor
  table.insert(text_table,[[      </Property>
    </Property>
  </Property>
</Data>]])
  return table.concat(text_table)
end

ENTITY_ATTRIBUTE = [[	<Property value="TkSceneNodeAttributeData.xml">
	  <Property name="Name" value="ATTACHMENT" />
	  <Property name="AltID" value="" />
	  <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1/ENTITIES/MEDIUMTREE.ENTITY.MBIN" />
	</Property>]]

LARGEETREE1_TRUNK_A_COLLISION = [[        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.047995" />
            <Property name="TransY" value="1.898273" />
            <Property name="TransZ" value="0.06065" />
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
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.455486" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.597437" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        ]]--Is a child of TRUNK A

LARGEETREE1_TRUNK_B_COLLISION = [[        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.159864" />
            <Property name="TransY" value="10.97582" />
            <Property name="TransZ" value="-0.097799" />
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
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.471937" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="22.754761" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>]]

LARGEETREE1_TRUNK_C_COLLISION = [[        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.661988" />
            <Property name="TransY" value="2.061044" />
            <Property name="TransZ" value="-0.742421" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-1E-06" />
            <Property name="RotZ" value="-3.445855" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.802343" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.372029" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.703942" />
            <Property name="TransY" value="7.696336" />
            <Property name="TransZ" value="-1.185314" />
            <Property name="RotX" value="-9.541607" />
            <Property name="RotY" value="0.15952" />
            <Property name="RotZ" value="-15.29688" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.594799" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.577528" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.026986" />
            <Property name="TransY" value="12.5737247" />
            <Property name="TransZ" value="-1.978619" />
            <Property name="RotX" value="-8.96544" />
            <Property name="RotY" value="-2E-06" />
            <Property name="RotZ" value="-13.4764566" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.490588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.021903" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.032976" />
            <Property name="TransY" value="1.9752" />
            <Property name="TransZ" value="0.182844" />
            <Property name="RotX" value="-176.527618" />
            <Property name="RotY" value="4E-06" />
            <Property name="RotZ" value="1.904697" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.945249" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.747490" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.01992" />
            <Property name="TransY" value="6.650661" />
            <Property name="TransZ" value="0.101221" />
            <Property name="RotX" value="-6.179491" />
            <Property name="RotY" value="1E-06" />
            <Property name="RotZ" value="3.696485" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.679297" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.270977" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.133856" />
            <Property name="TransY" value="12.1110859" />
            <Property name="TransZ" value="-0.166393" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="-1.049152" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.632610" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7.370512" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.555212" />
            <Property name="TransY" value="1.612392" />
            <Property name="TransZ" value="0.261679" />
            <Property name="RotX" value="5.367585" />
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
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.826100" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.828011" />
            <Property name="TransY" value="6.296987" />
            <Property name="TransZ" value="0.895853" />
            <Property name="RotX" value="4.577597" />
            <Property name="RotY" value="1E-06" />
            <Property name="RotZ" value="4.828906" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.693003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.894384" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.365835" />
            <Property name="TransY" value="11.3780193" />
            <Property name="TransZ" value="1.568362" />
            <Property name="RotX" value="11.9095383" />
            <Property name="RotY" value="-1.070448" />
            <Property name="RotZ" value="-12.9571276" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.724473" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.137096" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>]]

LARGEETREE1_TRUNK_D_COLLISION = [[        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1" />
          <Property name="NameHash" value="220268251" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.35438" />
            <Property name="TransY" value="13.9152222" />
            <Property name="TransZ" value="0.257717" />
            <Property name="RotX" value="0.846104" />
            <Property name="RotY" value="0.005248" />
            <Property name="RotZ" value="0.355398" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="TYPE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.640220" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="28.473318" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= PAK_NAME,
	["MOD_DESCRIPTION"]		= "",
	["MOD_AUTHOR"]				= "",
	["NMS_VERSION"]				= "",
	["ADD_FILES"] 			= 
	{
		{--Create scene
			["FILE_DESTINATION"] = string.gsub(FINAL_MODEL_NAME,".SCENE.MBIN",".SCENE.EXML"),
			["FILE_CONTENT"] = generate_scene(FINAL_MODEL_NAME,MODEL_LIST)
		},
		{--Create descriptor
			["FILE_DESTINATION"] = string.gsub(FINAL_MODEL_NAME,".SCENE.MBIN",".DESCRIPTOR.EXML"),
			["FILE_CONTENT"] = generate_descriptor_file(FINAL_MODEL_NAME,MODEL_LIST)
		},
	},
	["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Copy the vanilla model somewhere else so we can still use it
					["MBIN_FILE_SOURCE"] 	= {
						{"MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF_VANILLA.SCENE.MBIN"},
						{"MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.DESCRIPTOR.MBIN","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF_VANILLA.DESCRIPTOR.MBIN"},
						},
				},
				{
					["MBIN_FILE_SOURCE"] = {"MODELS/PLANETS/BIOMES/COMMON/TREES/LARGETREE1.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{--Add collisions to _TRUNK_A
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_A","Name","_ACC_ANONE"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = LARGEETREE1_TRUNK_A_COLLISION,
						},
						{--Add collisions to _TRUNK_B
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_B","Name","_ACC_B1"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = LARGEETREE1_TRUNK_B_COLLISION,
						},
						{--Add collisions to _TRUNK_C
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_C","Name","_LEAF_CA"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = LARGEETREE1_TRUNK_C_COLLISION,
						},
						{--Add collisions to _TRUNK_D
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_D","Name","_BRANCH_A"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = LARGEETREE1_TRUNK_D_COLLISION,
						},
						{--Add ENTITY to _TRUNK_A
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_A"},
							["PRECEDING_KEY_WORDS"] = {"Attributes"},
							["ADD"] = ENTITY_ATTRIBUTE,
						},
						{--Add ENTITY to _TRUNK_B
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_B"},
							["PRECEDING_KEY_WORDS"] = {"Attributes"},
							["ADD"] = ENTITY_ATTRIBUTE,
						},
						{--Add ENTITY to _TRUNK_C
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_C"},
							["PRECEDING_KEY_WORDS"] = {"Attributes"},
							["ADD"] = ENTITY_ATTRIBUTE,
						},
						{--Add ENTITY to _TRUNK_D
							["SPECIAL_KEY_WORDS"] = {"Name","_TRUNK_D"},
							["PRECEDING_KEY_WORDS"] = {"Attributes"},
							["ADD"] = ENTITY_ATTRIBUTE,
						},
						{--The bark texture is way too low res so I'm gonna replace it with a newer one
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {--To Do: Replace a lot more (possibly all) materials
								{[[MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1\TREE2MAT.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK1.MATERIAL.MBIN]]},
								{[[MODELS\PLANETS\BIOMES\COMMON\TREES\LARGETREE1\TRUNKMAT.MATERIAL.MBIN]],[[MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1\BARK1.MATERIAL.MBIN]]},
							}
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE

