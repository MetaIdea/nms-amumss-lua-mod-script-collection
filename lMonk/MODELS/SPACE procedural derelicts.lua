---------------------------------------------------------------------
local desc = [[
  Adds procedural parts, more wrecks and a few space-encounter items
  to the derelict freighter encouter mission.
  * original mod by Redmas
]]-------------------------------------------------------------------

local assets = {
	{
		name	= '_Acc_A',
		form	= {-100, 770, 20, 165, 130, -10, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN'
	},{
		name	= '_Acc_B',
		form	= {-700, 1200, 220, 170, 40, 60, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
	},{
		name	= '_Acc_C',
		form	= {900, -780, 132, 180, 0, 90, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
	},{
		name	= '_Acc_D',
		form	= {700, -840, 132, 90, 90, 0, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
	},{
		name	= '_Acc_E',
		form	= {-700, 1100, 220, 100, 40, 10, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
	},{
		name	= '_Acc_F',
		form	= {-100, 770, 20, 165, 130, -10, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN',
		isnew	= true
	},{
		name	= '_Acc_G',
		form	= {-1100, 660, 140, 10, 30, 210, 4, 4, 4},
		path	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN',
		isnew	= true
	},{
		name	= '_Front_A',
		form	= {410, 475, 532, -20, 80, 60, 2.4, 2.4, 2.4},
		path	= 'MODELS/SPACE/POI/WARRIORSILOS.SCENE.MBIN',
		hasloc	= true
	},{
		name	= '_Front_B',
		form	= {-113, 191, -83, 0, 0, 0, 1, 1, 1},
		path	= 'MODELS/SPACE/POI/WEIRDOBJECT2.SCENE.MBIN',
		hasloc	= true
	},{
		name	= '_Front_C',
		form	= {-110, 185, -87, 0, 0, 0, 1.4, 1.4, 1.4},
		path	= 'MODELS/SPACE/POI/SPACECLOCK.SCENE.MBIN',
		hasloc	= true
	},{
		name	= '_Front_D',
		form	= {-110, 185, -87, 0, 0, 0, 1.4, 1.4, 1.4},
		path	= 'MODELS/SPACE/POI/SPACEGYROSCOPE.SCENE.MBIN',
		hasloc	= true
	},{
		name	= '_Front_E',
		form	= {810, 845, 832, -20, 80, 60, 1.2, 1.2, 1.2},
		path	= 'MODELS/SPACE/POI/ASTEROID_BEACON.SCENE.MBIN',
		hasloc	= true
	},{
		name	= '_Front_F',
		form	= {-510, 555, 500, 330, -25, -55, 1.6, 1.6, 1.6},
		path	= 'MODELS/SPACE/POI/GATE_POI.SCENE.MBIN',
		hasloc	= true
	},{
		name	= '_AccSide_A',
		form	= {410, 375, -800, 120, 210, 190, 0.6, 0.6, 0.6},
		path	= 'MODELS/SPACE/POI/PILLARPOI.SCENE.MBIN',
		hasloc	= true
	}
}

local function AddDescriptors()
	local descriptor = [[
		<Property value="TkResourceDescriptorData.xml">
			<Property name="Id" value="%s"/>
			<Property name="Name" value="%s"/>
		</Property>
	]]
	local T = {}
	for _,scene in pairs(assets) do
		if scene.isnew then
			table.insert(T,{
				SPECIAL_KEY_WORDS	= {'TypeId', scene.name:sub(1, scene.name:len()-1):upper()},
				PRECEDING_KEY_WORDS = 'Descriptors',
				ADD 				= string.format(
										descriptor,
										scene.name:upper(),
										scene.name
									)
			}) 
		end
	end
	return T
end

local function AddSceneNodes()
	local scene_node = [[
		<Property value="TkSceneNodeData.xml">
			<Property name="Name" value="%s"/>
			<Property name="Type" value="%s"/>
			%s
		</Property>
	]]
	local transform = [[
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="%s"/>
			<Property name="TransY" value="%s"/>
			<Property name="TransZ" value="%s"/>
			<Property name="RotX" value="%s"/>
			<Property name="RotY" value="%s"/>
			<Property name="RotZ" value="%s"/>
			<Property name="ScaleX" value="%s"/>
			<Property name="ScaleY" value="%s"/>
			<Property name="ScaleZ" value="%s"/>
		</Property>
	]]
	local attributes = [[
		<Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="SCENEGRAPH"/>
				<Property name="Value" value="%s"/>
			</Property>
		</Property>
	]]
	local exml = {}
	for _,scene in pairs(assets) do
		if not scene.hasloc then
			table.insert(exml,
				string.format(scene_node, scene.name, 'LOCATOR', '')
			)
		end
		table.insert(exml,
			string.format(scene_node,
				scene.name,
				'REFERENCE',
				string.format(transform,
					scene.form[1],
					scene.form[2],
					scene.form[3],
					scene.form[4],
					scene.form[5],
					scene.form[6],
					scene.form[7],
					scene.form[8],
					scene.form[9]
				)
				..
				string.format(attributes, scene.path)
		))
	end
	return table.concat(exml)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL procedural derelicts.pak',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.DESCRIPTOR.MBIN',
				'MODELS/SPACE/POI/DUNGEON.DESCRIPTOR.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/SPACE/POI/DUNGEON.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= AddDescriptors()
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/SPACE/POI/DUNGEON.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefDungeonEntrance'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= AddSceneNodes()
			}
		}
	}
}}}}
