Author = "Gumsk,lMonk"
ModName = "gGUI Clean Multiplayer"
ModNameSub = "Full"
BaseDescription = ""
GameVersion = "6.0.3.0"
ModVersion = "a"

--[[Files Modified
MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/MESSENGER.SCENE.MBIN
MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/ENTITIES/MESSENGER.ENTITY.MBIN
MODELS/EFFECTS/LINES/LINERENDERER.SCENE.MBIN
]]

Line3D_EMPTY_MXML = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkMaterialData">
	<Property name="Name" value="Line3d" />
	<Property name="Metamaterial" value="" />
	<Property name="Class" value="Transparent" />
	<Property name="TransparencyLayerID" value="0" />
	<Property name="CastShadow" value="false" />
	<Property name="DisableZTest" value="false" />
	<Property name="CreateFur" value="false" />
	<Property name="EnableLodFade" value="false" />
	<Property name="UseShaderMill" value="false" />
	<Property name="Link" value=""/>
	<Property name="Shader" value="SHADERS/LINE3D.SHADER.BIN" />
	<Property name="Flags" />
	<Property name="FxFlags" />
	<Property name="Uniforms_Float">
		<Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
			<Property name="Name" value="gColour"/>
			<Property name="Values">
				<Property name="X" value="0.000000" />
				<Property name="Y" value="0.000000" />
				<Property name="Z" value="0.000000" />
				<Property name="W" value="0.000000" />
			</Property>
			<Property name="ExtendedValues" />
		</Property>
	</Property>
	<Property name="Uniforms_UInt" />
	<Property name="Samplers" />
	<Property name="ShaderMillDataHash" value="0" />
</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	ADD_FILES = {
		{
			FILE_DESTINATION		 = "MATERIALS/LINE3D.EMPTY.MATERIAL.MXML",
			FILE_CONTENT			 = Line3D_EMPTY_MXML,
		},
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/MESSAGEBEACON.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/BUILDINGS/HEXOUTLINE.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/PLAYER/BASEOTHER.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/PLAYER/BASEOTHERSMALL.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/PLAYER/BEACON.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
		{
			FILE_DESTINATION		 = "TEXTURES/UI/HUD/ICONS/PLAYER/GENERICSMALL.DDS",
			EXTERNAL_FILE_SOURCE	 = "BLANK.DDS",
		},
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				
				--=========================================================================
				--Makes the communication station invisible, removes collisions, hides text
				--=========================================================================			
				{
					MBIN_FILE_SOURCE = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/MESSENGER.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Type","MESH"},
							REMOVE = "SECTION",
							REPLACE_TYPE = "ALL",
						},
						{
							SPECIAL_KEY_WORDS = {"Type","COLLISION"},
							REMOVE = "SECTION",
							REPLACE_TYPE = "ALL",
						},
					},
				},
				{
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\MESSENGER\ENTITIES\MESSENGER.ENTITY.MBIN",
					MXML_CHANGE_TABLE = {
					
						{
							INTEGER_TO_FLOAT = "PRESERVE",
							VALUE_CHANGE_TABLE	 = {
								{"AttractDistanceSq",0.000001},
								{"InteractDistance",0.000001},
								{"InteractAngle",0.000001},
							}
						},
						{
							SPECIAL_KEY_WORDS	= {"InteractionType","MessageBeacon"},
							LINE_OFFSET = "0",
							VALUE_CHANGE_TABLE	 = {
								{"InteractionType","None"}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Components","TkAnimationComponentData"},
							REMOVE = "SECTION",
						},
						{
							SPECIAL_KEY_WORDS = {"Components","TkPhysicsComponentData"},
							REMOVE = "SECTION",
						},
						{
							SPECIAL_KEY_WORDS = {"Components","TkAudioComponentData"},
							REMOVE = "SECTION",
						},
						{
							PRECEDING_KEY_WORDS = {"LodDistances"},
							REPLACE_TYPE = "ALL",
							VALUE_CHANGE_TABLE = {
								{"LodDistances", "0.000000"},
							},
						},
					},
				},
				--=========================================================================
				--Hides lines, by lMonk
				--=========================================================================
				{
					MBIN_FILE_SOURCE = "MODELS/EFFECTS/LINES/LINERENDERER.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS	= {"Name","MATERIAL"},
							VALUE_CHANGE_TABLE	 = {
								{"Value","MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN"}
							},
						},
						{
							SPECIAL_KEY_WORDS	= {"Name","MAXNUMLINES"},
							VALUE_CHANGE_TABLE	 = {
								{"Value",1}
							},
						},
					},
				},
			}
		}
	}
}