--[[
for the latest mod updates, visit: https://github.com/SunnySummit/LasagnaBiomeGeneration2

feel free to make your own changes. in order to distribute (paks or lua scripts) you must:
    1. provide full credits in a readme file included with the archive.
    2. use open (GPLv3) licensing and/or open nexus mods permissions (include these 5 points in the readme/description page).
    3. you cannot sell or profit from this mod.
    4. you cannot distribute this mod for other games or media besides No Man's Sky.
    5. don't re-upload these lua scripts verbatim, instead, link to this repo (or create a fork).
	
thank.
--]]

--[[
LUA script created using PLUMGEN: https://github.com/SunnySummit/PLUMGEN
script may include unused identifiers.
import EXML back into PLUMGEN for swift and easy editing.
--]]


--Adds basic collisions to shield plant that replaces hazard plants:
local AddShieldPlantCollisions =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CHILD1" />
      <Property name="NameHash" value="182068161" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.852212" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.24" />
        <Property name="ScaleY" value="0.5" />
        <Property name="ScaleZ" value="0.24" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT\ENTITIES\SHIELDPLANT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="CUSTOMMODELS\TREESPINE\PINETREE_RED" />
          <Property name="NameHash" value="793066182" />
          <Property name="Type" value="COLLISION" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.000000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]

local replaceGrassMatFlags =
[[
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F02_SKINNED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F11_ALPHACUTOUT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F25_ROUGHNESS_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F36_DOUBLESIDED" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F29_VBCOLOUR" />
    </Property>
  </Property>
]]

local replaceCGDesc =
[[
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_7" />
          <Property name="Name" value="_lushgrass_7" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_1" />
          <Property name="Name" value="_lushgrass_1" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_3" />
          <Property name="Name" value="_lushgrass_3" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_6" />
          <Property name="Name" value="_lushgrass_6" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_5" />
          <Property name="Name" value="_lushgrass_5" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_4" />
          <Property name="Name" value="_lushgrass_4" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_8" />
          <Property name="Name" value="_lushgrass_8" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LUSHGRASS_2" />
          <Property name="Name" value="_lushgrass_2" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "___Las_LessHaz_ImproveGrass_v1.41.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
			
				--Replace 2 hazard plants with shield plants
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TENTACLEPLANT.MBIN",
						--"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SPOREVENTPLANT.MBIN",
						
					},
					["EXML_CHANGE_TABLE"] 	=
					{

						{
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	

					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FULLSAFE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{

						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVE/SPOREVENT.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
							}
						},	
						--{
						--	["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/VENUSFLYTRAP.SCENE.MBIN"},
						--	["VALUE_CHANGE_TABLE"] 	=
						--	{			
						--		{ "Filename",	"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN" },
						--	}
						--},	

					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\SHIELDPLANT1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = { "TkSceneNodeData.xml", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = AddShieldPlantCollisions,
						},
					}
				},
				
				-- --Change original dandelion grass material flags (= multishade & white dandelion)
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- "MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS\LUSHGRASS1MAT1.MATERIAL.MBIN",
					-- },
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- --Replace material flags:
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Flags",},
							-- ["ADD"] = replaceGrassMatFlags,
							-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Flags",},
							-- ["REMOVE"] = "SECTION"
						-- },
					-- },
				-- },
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\NEWCROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						--REMOVE new grass_curly option (no old version of this model)
						{
							["SPECIAL_KEY_WORDS"] = {"Id","_GRASS_CURLY",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\GRASS\CROSSGRASS.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						--Reorder descriptor to match newcrossgrass
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["ADD"] = replaceCGDesc,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Descriptors",},
							["REMOVE"] = "SECTION"
						},

					},
				},
				

				--REMOVE grass, doubles up = crash.. maybe
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BUILDINGDRESSINGGLOW.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},

					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BUILDINGDRESSING.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/FOLIAGE/BARRENGRASSLARGE.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},

					},
				},
				
				--WORLDS Part 1 - Make solid islands --v5.05 = not necessary
				-- {
					-- ["MBIN_FILE_SOURCE"] 	=
					-- {
						-- "MODELS/PLANETS/BIOMES/ROCKY/LARGEPROPS/ISLANDLARGEBARE.SCENE.MBIN"
						
					-- },
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\LAVA\LARGEPROPS\LARGEVOLCANO\ENTITIES\VOLCANOLODDATA.ENTITY.MBIN"},
							-- ["VALUE_CHANGE_TABLE"] 	=
							-- {			
								-- { "Value",	"MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\ENTITIES\LARGEPLANTWATER.ENTITY.MBIN" },
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","IslandLargeBare_imposter",},
							-- ["REMOVE"] = "SECTION"
						-- },
					-- },
				-- },
				-- {
					-- ["MBIN_FILE_SOURCE"] 	=
					-- {
						-- "MODELS/PLANETS/BIOMES/ROCKY/MEDIUMPROPS/ISLANDMEDIUMBARE.SCENE.MBIN"
						
					-- },
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- --{
							-- --["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\ROCKY\MEDIUMPROPS\ISLANDMEDIUM\ENTITIES\ISLANDMEDIUMLODDATA.ENTITY.MBIN"},
							-- --["VALUE_CHANGE_TABLE"] 	=
							-- --{			
							-- --	{ "Value",	"MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\ENTITIES\LARGEPLANTWATER.ENTITY.MBIN" },
							-- --}
						-- --},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","IslandMediumBare_imposter",},
							-- ["REMOVE"] = "SECTION"
						-- },
					-- },
				-- },
					
					
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE