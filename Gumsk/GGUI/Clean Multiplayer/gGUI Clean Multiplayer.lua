Author = "Gumsk,lMonk"
ModName = "gGUI"
ModNameSub = "Clean Multiplayer"
BaseDescription = ""
GameVersion = "401"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\MESSENGER\MESSENGER.SCENE.MBIN"
FileSource2 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\MESSENGER\ENTITIES\MESSENGER.ENTITY.MBIN"
FileSource3 = "MODELS\EFFECTS\LINES\LINERENDERER.SCENE.MBIN"

Line3D_EMPTY_EXML = [[<?xml version="1.0" encoding="utf-8"?>
	<Data template="TkMaterialData">
		<Property name="Name" value="Line3d"/>
		<Property name="Metamaterial" value=""/>
		<Property name="Class" value="Transparent"/>
		<Property name="TransparencyLayerID" value="0"/>
		<Property name="CastShadow" value="False"/>
		<Property name="DisableZTest" value="False"/>
		<Property name="CreateFur" value="False"/>
		<Property name="Link" value=""/>
		<Property name="Shader" value="SHADERS/LINE3D.SHADER.BIN"/>
		<Property name="Flags"/>
		<Property name="Uniforms">
			<Property value="TkMaterialUniform.xml">
				<Property name="Name" value="gColour"/>
				<Property name="Values" value="Vector4f.xml">
					<Property name="x" value="0"/>
					<Property name="y" value="0"/>
					<Property name="z" value="0"/>
					<Property name="t" value="0"/>
				</Property>
				<Property name="ExtendedValues"/>
			</Property>
		</Property>
		<Property name="Samplers" />
		<Property name="ShaderMillDataHash" value="0"/>
	</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "MATERIALS/LINE3D.EMPTY.MATERIAL.EXML",
			["FILE_CONTENT"]	 		= Line3D_EMPTY_EXML,
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\UI\HUD\ICONS\MESSAGEBEACON.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLANK.DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\UI\HUD\ICONS\BUILDINGS\HEXOUTLINE.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLANK.DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\UI\HUD\ICONS\PLAYER\BASEOTHER.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLANK.DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\UI\HUD\ICONS\PLAYER\BASEOTHERSMALL.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLANK.DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\UI\HUD\ICONS\PLAYER\BEACON.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLANK.DDS",
		},
		{
			["FILE_DESTINATION"] 		= "TEXTURES\UI\HUD\ICONS\PLAYER\GENERICSMALL.DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLANK.DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				
				--=========================================================================
				--Makes the communication station invisible, removes collisions, hides text
				--=========================================================================			
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Type","MESH"},
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Type","COLLISION"},
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL",
						},
					},
				},
				
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
					
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {
								{"AttractDistanceSq",1},
								{"InteractDistance",0.01},
								{"InteractAngle",1},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"InteractionType","MessageBeacon"},
							["LINE_OFFSET"] = "0",
							["VALUE_CHANGE_TABLE"] 	= {
								{"InteractionType","None"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TkAudioComponentData.xml"},
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TkPhysicsComponentData.xml"},
							["REMOVE"] = "SECTION",
						},
					},
				},
				
				--=========================================================================
				--Hides lines, by lMonk
				--=========================================================================
				{["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"]	= {"Name","MATERIAL"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"Value","MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN"}
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Name","MAXNUMLINES"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"Value",1}
							},
						},
					},
				},
			}
		}
	}
}