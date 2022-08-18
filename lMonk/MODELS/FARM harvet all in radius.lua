------------------------------------------------------------------
local desc = [[
  Add 'harvest all' at radius of 24u to sealed container base part
  Add 'harvest all' to large planter
  Duplicates the funcion from the Bioroom:
  MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/...
  ... BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN
]]----------------------------------------------------------------

local base_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

local function AddObjectInteractionNode(path)
	local function NodeAtt(name, val)
		return [[
		<Property value="TkSceneNodeAttributeData.xml">
			<Property name="Name" value="]]..name..[["/>
			<Property name="Value" value="]]..val..[["/>
		</Property>]]
	end
	local function TransData(ty)
		return [[
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransY" value="]]..(ty or 0)..[["/>
			<Property name="ScaleX" value="1"/>
			<Property name="ScaleY" value="1"/>
			<Property name="ScaleZ" value="1"/>
		</Property>]]
	end
	return [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="Interaction"/>
		<Property name="Type" value="LOCATOR"/>
		]]..TransData(1)..[[
		<Property name="Attributes">]]..
			NodeAtt('ATTACHMENT', base_parts..path..'INTERACTION.ENTITY.MBIN')..
		[[</Property>
		<Property name="Children">
			<Property value="TkSceneNodeData.xml">
				<Property name="Name" value="collision99"/>
				<Property name="Type" value="COLLISION"/>
				]]..TransData()..[[
				<Property name="Attributes">]]..
					NodeAtt('TYPE', 'Sphere')..
					NodeAtt('RADIUS', 1)..
				[[</Property>
				<Property name="Children"/>
			</Property>
			<Property value="TkSceneNodeData.xml">
				<Property name="Name" value="interaction2"/>
				<Property name="Type" value="LOCATOR"/>
				]]..TransData()..[[
			</Property>
		</Property>
	</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL harvet all in radius.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			{
				base_parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
				base_parts..'TECH/CUBEROOM_PLANTERMEGA/INTERACTION.ENTITY.MBIN',
			},
			{
				base_parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
				base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= base_parts..'TECH/CUBEROOM_PLANTERMEGA/INTERACTION.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Radius', 3}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Radius', 24}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= base_parts..'TECH/CUBEROOM_PLANTERMEGA.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'INTERACT'},
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= 1,
				ADD 				= AddObjectInteractionNode('TECH/CUBEROOM_PLANTERMEGA/')
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= base_parts..'DECORATION/BAZAAR/WATERVALVE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= 1,
				ADD 				= AddObjectInteractionNode('DECORATION/BAZAAR/WATERVALVE/')
			}
		}
	}

	-- amumss v4
	-- {
		-- MBIN_FILE_SOURCE	= base_parts..'BIOROOM.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'Interaction'},
				-- SECTION_SAVE_TO		= 'harvest_entity_scene_node',
			-- }
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= base_parts..'TECH/CUBEROOM_PLANTERMEGA.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'INTERACT'},
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- SECTION_EDIT 		= 'harvest_entity_scene_node',
				-- SPECIAL_KEY_WORDS	= {'Name', 'Interaction'},
				-- SECTION_ACTIVE		= 1,
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransY',		1},
				-- }
			-- },
			-- {
				-- SECTION_EDIT 		= 'harvest_entity_scene_node',
				-- SPECIAL_KEY_WORDS	= {'Name', 'RADIUS'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value',		1},
				-- }
			-- },
			-- {
				-- SECTION_EDIT 		= 'harvest_entity_scene_node',
				-- SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value', base_parts..'TECH/CUBEROOM_PLANTERMEGA/INTERACTION.ENTITY.MBIN'},
				-- }
			-- },
			-- {
				-- PRECEDING_KEY_WORDS	= 'Children',
				-- SECTION_ACTIVE		= 1,
				-- SECTION_ADD_NAMED 	= 'harvest_entity_scene_node',
			-- }
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= base_parts..'DECORATION/BAZAAR/WATERVALVE.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SECTION_EDIT 		= 'harvest_entity_scene_node',
				-- SPECIAL_KEY_WORDS	= {'Name', 'Interaction'},
				-- SECTION_ACTIVE		= 1,
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransY',		1},
				-- }
			-- },
			-- {
				-- SECTION_EDIT 		= 'harvest_entity_scene_node',
				-- SPECIAL_KEY_WORDS	= {'Name', 'RADIUS'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value',		1},
				-- }
			-- },
			-- {
				-- SECTION_EDIT 		= 'harvest_entity_scene_node',
				-- SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value', base_parts..'DECORATION/BAZAAR/WATERVALVE/INTERACTION.ENTITY.MBIN'},
				-- }
			-- },
			-- {
				-- PRECEDING_KEY_WORDS	= 'Children',
				-- SECTION_ACTIVE		= 1,
				-- SECTION_ADD_NAMED 	= 'harvest_entity_scene_node',
			-- }
		-- }
	-- }

}}}}
