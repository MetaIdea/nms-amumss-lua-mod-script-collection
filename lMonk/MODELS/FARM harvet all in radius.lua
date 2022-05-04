------------------------------------------------------------------
local desc = [[
  Add 'harvest all' at radius of 24u to sealed container base part
  Add 'harvest all' to large planter
  Duplicates the funcion from the Bioroom:
  MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/...
  ... BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN
]]----------------------------------------------------------------

local Base_Parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

local function AddObjectInteractionNode(path)
	return [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="Interaction" />
		<Property name="NameHash" value="2476508076" />
		<Property name="Type" value="LOCATOR" />
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="1" />
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
				<Property name="Name" value="ATTACHMENT" />
				<Property name="AltID" value="" />
				<Property name="Value" value="]]..Base_Parts..path..[[INTERACTION.ENTITY.MBIN" />
			</Property>
		</Property>
		<Property name="Children">
			<Property value="TkSceneNodeData.xml">
				<Property name="Name" value="COLLISION99" />
				<Property name="NameHash" value="2419627813" />
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
						<Property name="AltID" value="" />
						<Property name="Value" value="Sphere" />
					</Property>
					<Property value="TkSceneNodeAttributeData.xml">
						<Property name="Name" value="RADIUS" />
						<Property name="AltID" value="" />
						<Property name="Value" value="1.0" />
					</Property>
				</Property>
				<Property name="Children" />
			</Property>
			<Property value="TkSceneNodeData.xml">
				<Property name="Name" value="INTERACT" />
				<Property name="NameHash" value="3698755080" />
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
		</Property>
	</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL harvet all in radius.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			{
				Base_Parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
				Base_Parts..'TECH/CUBEROOM_PLANTERMEGA/INTERACTION.ENTITY.MBIN',
			},
			{
				Base_Parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
				Base_Parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Base_Parts..'TECH/CUBEROOM_PLANTERMEGA/INTERACTION.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Radius', 3}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Base_Parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Radius', 24}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Base_Parts..'TECH/CUBEROOM_PLANTERMEGA.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'INTERACT'},
				REMOVE				= 'SECTION'
			},
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= 1,
				ADD 				= AddObjectInteractionNode('TECH/CUBEROOM_PLANTERMEGA/')
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Base_Parts..'DECORATION/BAZAAR/WATERVALVE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= 1,
				ADD 				= AddObjectInteractionNode('DECORATION/BAZAAR/WATERVALVE/')
			}
		}
	}
}}}}
