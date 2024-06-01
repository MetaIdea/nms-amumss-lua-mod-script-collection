--SETTINGS
PAK_NAME = "SpaceStationRestoration.pak"
FINAL_MODEL_NAME = "CUSTOMMODELS/SPACE/SPACESTATION/PROCSTATION.SCENE.MBIN" --Must end on .SCENE.MBIN
MODEL_LIST = {-- All entries must have all three keys ("ID","PATH,"SCALE"). "ID" can be any string as long as it does not repeat.
	{
		["PATH"] = "MODELS/SPACE/SPACESTATION/SPACESTATION.SCENE.MBIN",
		["SCALE"] = 1,
	},
	{
		["PATH"] = "MODELS/SPACE/SPACESTATION/SPACESTATIONTYPEB.SCENE.MBIN",
		["SCALE"] = 1,
		["WEIGHT"] = 19,
	},
}

--Don't touch this probably
function generate_scene(FINAL_MODEL_NAME,MODEL_LIST)
  text_table = {}
  --Add the scene header
  table.insert(text_table,[[<?xml version="1.0" encoding="utf-8"?>
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
		if option["WEIGHT"] == nil then
			option["WEIGHT"] = 1
		end
		
		for w = 1, option["WEIGHT"] do
			w = w
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
	end
  --Insert the footer of the descriptor
  table.insert(text_table,[[      </Property>
    </Property>
  </Property>
</Data>]])
  return table.concat(text_table)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= PAK_NAME,
	["MOD_DESCRIPTION"]		= "Space stations have a 5% chance of spawning with pre-Orbital Update design.",
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
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSIMULATIONGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"SpaceStationFile","CUSTOMMODELS/SPACE/SPACESTATION/PROCSTATION.SCENE.MBIN"}
							}
						}
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE

