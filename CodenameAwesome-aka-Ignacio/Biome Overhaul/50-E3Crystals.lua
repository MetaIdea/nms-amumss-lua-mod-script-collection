function getBiomeList() --Returns all the GcBiomeFileListOption filenames in BIOMEFILENAMES.MBIN
	biomelist_raw = io.open("../MODBUILDER/MOD/METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.EXML"):read("*a")
	biomelist = {}
	for biomepath in string.gmatch(biomelist_raw,'<Property value="GcBiomeFileListOption%.xml">.-<Property name="Filename" value="(.-)"') do
		biomepathstring = biomepath:gsub(".MXML",".MBIN")
		table.insert(biomelist, biomepathstring)
	end
	biomelist_deduped = {}
	seen = {}
	for _, biomepath in ipairs(biomelist) do
		if seen[biomepath] == nil then
			table.insert(biomelist_deduped, biomepath)
			seen[biomepath] = true
		end
	end
	return biomelist_deduped
end

--- RESOURCEROCKSHARDALT = LARGE
--- RESOURCEROCKLARGEALT = MEDIUM
--- RESOURCEROCKALT = SMALL
--- RESOURCEFRAGMENTSALT = FRAGMENTS

FRAGMENT_COLLISION = [[	<Property name="Children" >
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\DEMOS\E32015\MODELS\RESOURCEFRAGMENTSALT" />
          <Property name="NameHash" value="1836578351" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.088428" />
            <Property name="TransY" value="-0.032662" />
            <Property name="TransZ" value="0.042017" />
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
              <Property name="Value" value="0.252197" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.245435" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
	</Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] =  {
				--METADATA
				{
					["MBIN_FILE_SOURCE"] = {
						{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/E3FULL.MBIN"},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/E3FULL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/]],[[CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/]]}
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"MinScale",1.25},
								{"MaxScale",1.5},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = getBiomeList(),
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/E3FULL.MBIN" />
        </Property>]]
						}
					}
				},
				--MODELS
				{--Copy the models
					["MBIN_FILE_SOURCE"] = {
					--RED
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.DESCRIPTOR.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT.DESCRIPTOR.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKLARGEALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL.SCENE.MBIN"},
					--GREEN
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.DESCRIPTOR.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.DESCRIPTOR.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKLARGEALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE.SCENE.MBIN"},
					--BLUE
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.DESCRIPTOR.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_MOUNTAIN.DESCRIPTOR.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_MOUNTAIN.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKLARGEALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_MOUNTAIN.SCENE.MBIN"},
					--YELLOW
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.DESCRIPTOR.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_UNDERWATER.DESCRIPTOR.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEFRAGMENTSALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_UNDERWATER.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKLARGEALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_UNDERWATER.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_UNDERWATER.SCENE.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKALT.SCENE.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_UNDERWATER.SCENE.MBIN"},
					--Create the MATERIALS
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT/MINERALMAT.MATERIAL.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/RED.MATERIAL.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT/MINERALMAT.MATERIAL.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/GREENCAVE.MATERIAL.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT/MINERALMAT.MATERIAL.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/BLUEMOUNTAIN.MATERIAL.MBIN"},
					{"MODELS/COMMON/DEMOS/E32015/MODELS/RESOURCEROCKSHARDALT/MINERALMAT.MATERIAL.MBIN","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/YELLOWUNDERWATER.MATERIAL.MBIN"},
					}
				},
				{--Add collisions to crystal fragments
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_MOUNTAIN.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_UNDERWATER.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[<Property name="Children" />]],FRAGMENT_COLLISION}
							}
						}
					}
				},
				{--Add the normal LARGE entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE/ENTITIES/CRYSTAL_LARGE.ENTITY.MBIN"}
							}
						},
					}
				},
				{--Add the normal MEDIUM entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM/ENTITIES/CRYSTAL_MEDIUM.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the normal SMALL entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ENTITIES\CYSTAL_SMALL.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the normal FRAGMENT entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT\ENTITIES\SHARDS.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the normal CAVE LARGE entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE/ENTITIES/CRYSTAL_LARGE_CAVE.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the CAVE MEDIUM entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE/ENTITIES/CRYSTAL_MEDIUM_CAVE.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the CAVE SMALL entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_CAVE\ENTITIES\CYSTAL_SMALL_CAVE.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the CAVE FRAGMENT entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_CAVE\ENTITIES\SHARDS_CAVE.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the normal MOUNTAIN LARGE entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN/ENTITIES/CRYSTAL_LARGE_MOUNTAIN.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the MOUNTAIN MEDIUM entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN/ENTITIES/CRYSTAL_MEDIUM_MOUNTAIN.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the MOUNTAIN SMALL entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_MOUNTAIN.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_MOUNTAIN\ENTITIES\CYSTAL_SMALL_MOUNTAIN.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the MOUNTAIN FRAGMENT entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_MOUNTAIN.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_MOUNTAIN\ENTITIES\SHARDS_MOUNTAIN.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the normal UNDERWATER LARGE entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_UNDERWATER.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_UNDERWATER/ENTITIES/CRYSTAL_LARGE_UNDERWATER.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the UNDERWATER MEDIUM entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_UNDERWATER.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_UNDERWATER/ENTITIES/CRYSTAL_MEDIUM_UNDERWATER.ENTITY.MBIN"}
							}
						}
					}
				},
				{--Add the UNDERWATER SMALL entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_UNDERWATER.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL_UNDERWATER\ENTITIES\CYSTAL_SMALL_UNDERWATER.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add the UNDERWATER FRAGMENT entity file
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_UNDERWATER.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_UNDERWATER\ENTITIES\SHARDS_UNDERWATER.ENTITY.MBIN" />
        </Property>]]
						}
					}
				},
				{--Replace the texture path in the RED material
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/RED.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map","TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL.RED.DDS"}
							}
						}
					}				
				},
				{--Replace the texture path in the GREEN material
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/GREENCAVE.MATERIAL.MBIN"},
					["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map","TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL.GREEN.DDS"}
							}
						}
					}				
				},
				{--Replace the texture path in the BLUE material
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/BLUEMOUNTAIN.MATERIAL.MBIN"},
					["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map","TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL.BLUE.DDS"}
							}
						}
					}					
				},
				{--Replace the texture path in the YELLOW material
					["MBIN_FILE_SOURCE"] = {"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/YELLOWUNDERWATER.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map","TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL.YELLOW.DDS"}
							}
						},
					}					
				},
				{--Replace the RED materisl in the scene
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/RED.MATERIAL.MBIN"}
							},
						},
					}
				},
				{--Replace the GREEN material in the scene
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/GREENCAVE.MATERIAL.MBIN"}
							},
						},
					}
				},
				{--Replace the BLUE material in the scene
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_MOUNTAIN.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_MOUNTAIN.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/BLUEMOUNTAIN.MATERIAL.MBIN"}
							},
						},
					}
				},
				{--Replace the YELLOW material in the scene
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_FRAGMENT_UNDERWATER.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_UNDERWATER.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE_UNDERWATER.SCENE.MBIN",
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/SMALL/CRYSTAL_SMALL_UNDERWATER.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MATERIAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MATERIALS/YELLOWUNDERWATER.MATERIAL.MBIN"}
							},
						},
					}
				},
				{--Add red pointlights. Only red crystals have light.
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/LARGE/CRYSTAL_LARGE.SCENE.MBIN",
						},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["ADD"] = [[    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLight1" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.083422" />
        <Property name="TransY" value="0.6" />
        <Property name="TransZ" value="-0.040795" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="quadratic" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="20000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.220675" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>]]
						},
					}
				},
				{--Add red pointlights. Only red crystals have light.
					["MBIN_FILE_SOURCE"] = {
						"CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/MEDIUM/CRYSTAL_MEDIUM.SCENE.MBIN",
						},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["ADD"] = [[    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLight1" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.119172" />
        <Property name="TransY" value="0.561503" />
        <Property name="TransZ" value="0.079669" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="quadratic" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="8000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.220675" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>]]
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