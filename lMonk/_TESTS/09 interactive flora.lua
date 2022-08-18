-------------------------------------------------------------------

local function InsertLight(newlight)
	local light = {
		name = 'light_09',
		tx  = 0,
		ty  = 0,
		tz  = 0,
		rx  = 0,
		ry  = 0,
		rz  = 0,
		sx  = 1,
		sy  = 1,
		sz  = 1,
		fov = 360,
		i   = 10000,
		f   = 'quadratic',
		fr  = 2,
		r   = 1,
		g   = 1,
		b   = 1,
	}
	for k, v in pairs(newlight) do light[k] = v end

	local scene_node_att = [[
		<Property value="scene_node_attributeData.xml">
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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 09 interactive flora.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|fainter resource| lights
		MBIN_FILE_SOURCE	= {
			-- 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT1.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				-- MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 		9000}
				}
			}
		}
	},
	{
	--	|interactive flora|
		MBIN_FILE_SOURCE	= {
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN',
			'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/PLANTLARGECROP.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT.SCENE.MBIN'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/TECHPLANT1.SCENE.MBIN'},
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT.SCENE.MBIN'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FUELPLANT1.SCENE.MBIN'},
				-- }
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT.SCENE.MBIN'},
				VALUE_CHANGE_TABLE	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT2.SCENE.MBIN'},
				}
			},
		}
	},
	{
	--	|interactive flora|
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/COMMODITYPLANT2.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Stalk_1'}, -- _Stalk_1 + _Stalk_2
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= InsertLight({i=9000, r=0.98, g=0.82, b=0})
			},
		}
	},
}}}}
