-----------------------------------------------------------------------------------------
local desc = [[
  - Add hazard protection and a small light to beacon, cooker and signal booster (cheat)
  - Increase freighter extractor storage capacity
  - align freighter teleporter to 90d
]]---------------------------------------------------------------------------------------

local function InsertNewLight(newlight)
	local light = {
		name = 'new_light_09',
		tx = 0,
		ty = 1.8,
		tz = 0,
		rx = 0,
		ry = 0,
		rz = 0,
		sx = 1,
		sy = 1,
		sz = 1,
		fov = 360,
		i = 20000,
		f = 'quadratic',
		fr = 3.8,
		r = 0.78,
		g = 0.2,
		b = 0.28
	}
	for k, v in pairs(newlight) do light[k] = v end
	
	local scene_node_att = [[
		<Property value="TkSceneNodeAttributeData.xml">
			<Property name="Name" value="%s"/>
			<Property name="Value" value="%s"/>
		</Property>
	]]	
	return [[
		<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="]]..light.name..[["/>
		<Property name="Type" value="LIGHT"/>
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="]]..light.tx..[["/>
			<Property name="TransY" value="]]..light.ty..[["/>
			<Property name="TransZ" value="]]..light.tz..[["/>
			<Property name="RotX" value="]]..light.rx..[["/>
			<Property name="RotY" value="]]..light.ry..[["/>
			<Property name="RotZ" value="]]..light.rz..[["/>
			<Property name="ScaleX" value="]]..light.sx..[["/>
			<Property name="ScaleY" value="]]..light.sy..[["/>
			<Property name="ScaleZ" value="]]..light.sz..[["/>
		</Property>
		<Property name="Attributes">
			]]..string.format(scene_node_att, 'FOV',		 light.fov)..[[
			]]..string.format(scene_node_att, 'FALLOFF',	 light.f)..[[
			]]..string.format(scene_node_att, 'FALLOFF_RATE',light.fr)..[[
			]]..string.format(scene_node_att, 'INTENSITY',	 light.i)..[[
			]]..string.format(scene_node_att, 'COL_R',		 light.r)..[[
			]]..string.format(scene_node_att, 'COL_G',		 light.g)..[[
			]]..string.format(scene_node_att, 'COL_B',		 light.b)..[[
			]]..string.format(scene_node_att, 'COOKIE_IDX',	 -1)..[[
			]]..string.format(scene_node_att, 'VOLUMETRIC',	 0)..[[
			]]..string.format(scene_node_att, 'MATERIAL', 'MATERIALS/LIGHT.MATERIAL.MBIN')..[[
		</Property>
	</Property>]]
end

local function AddShieldSphere(entity, radius)
	local function NodeAtt(name, val)
		return [[
		<Property value="TkSceneNodeAttributeData.xml">
			<Property name="Name" value="]]..name..[["/>
			<Property name="Value" value="]]..val..[["/>
		</Property>]]
	end
	local transform_data = [[
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="ScaleX" value="1"/>
			<Property name="ScaleY" value="1"/>
			<Property name="ScaleZ" value="1"/>
		</Property>]]
	return [[
	<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="ShieldSphere"/>
		<Property name="Type" value="LOCATOR"/>
		]]..transform_data..[[
		<Property name="Attributes">]]..
			NodeAtt('ATTACHMENT', entity)..[[
		</Property>
		<Property name="Children">
			<Property value="TkSceneNodeData.xml">
				<Property name="Name" value="HeaterCollision"/>
				<Property name="Type" value="COLLISION"/>
				]]..transform_data..[[
				<Property name="Attributes">]]..
					NodeAtt('TYPE', 'Sphere')..
					NodeAtt('RADIUS', radius)..[[
				</Property>
			</Property>
		</Property>
	</Property>]]
end

local heater = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BEACON/ENTITIES/HEATER.ENTITY.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL tech additions.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BEACON.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/COOKER.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SIGNALSCANNER.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= 1,
				ADD 				= InsertNewLight({}) .. AddShieldSphere(heater, 8)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/STANDINGLIGHT_SMALL/ENTITIES/HEATER.ENTITY.MBIN',
				heater,
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= heater,
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'VolumeTriggerType', 'HazardProtection'}
				}
			}
		}
	},
	{
	---	|freighter extractor| capacity
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/EXTRROOM/PARTS/FLOOR0/ENTITIES/EXTRACTORTERMINAL.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				VALUE_MATCH_OPTIONS = '>',
				VALUE_CHANGE_TABLE 	= {
					{'MaxCapactiy',	10000}
				}
			}
		}
	},
	-- {
	-- ---	|aligned freighter teleporter|
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/TELEPOROOM/PARTS/FLOOR0.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {  -- Missing power icon
				-- SPECIAL_KEY_WORDS	= {'Name','NotConOn1_'},
				-- REMOVE				= 'Section'
			-- },
			-- {  -- Wire snapping point
				-- SPECIAL_KEY_WORDS	= {'Name', 'RefSnapScene5'},
				-- REMOVE				= 'Section'
			-- },
			-- {  --Wire box
				-- SPECIAL_KEY_WORDS	= {'Name', 'SolarPanelLOD0'},
				-- REMOVE				= 'Section'
			-- },
			-- {  -- Teleporter
				-- SPECIAL_KEY_WORDS	= {'Name', 'TeleporterGeo'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'RotY',		45}
				-- }
			-- },
			-- {  -- Interaction
				-- SPECIAL_KEY_WORDS	= {'Name', 'Data'}, -- TeleporterInteraction at -45 ??
				-- VALUE_CHANGE_TABLE	= {
					-- {'RotY',		45}
				-- }
			-- },
			-- {  -- Blue Effects
				-- SPECIAL_KEY_WORDS	= {'Name', 'ConON1_'},
				-- VALUE_CHANGE_TABLE	= {
					-- {'RotY',		0}
				-- }
			-- }
		-- }
	-- },
}}}}
