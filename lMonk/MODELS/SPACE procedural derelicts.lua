---------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
---------------------------------------------------------------------------
local mod_desc = [[
  Adds procedural parts, more wrecks and a few wreck -and space-encounter
  items to the derelict freighter encounter mission.
  Adds a slow tumble to floating items to make the scene more dynamic
  * original mod by Redmas
]]-------------------------------------------------------------------------

local assets = {
	{
		name = '_Derelict_',
		node = true,
		{
			form	= {-1000, 900, 200, 30, 20, 100, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN'
		},
		{
			form	= {-1200, 1300, 400, 10, -140, 240, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
		},
		{
			form	= {1200, -1000, 300, 130, 90, 100, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
		},
		{
			form	= {1000, 1000, 1200, 20, -150, 180, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
		},
		{
			form	= {-1100, 1300, 400, 210, 110, 170, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
		},
		{
			form	= {-1200, 800, -1100, -20, 30, -150, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
		},
		{
			form	= {-1100, 1400, -100, 15, 310, 165, 4, 4, 4},
			model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
		}
	},
	{
		name = '_Anomal_F_',
		node = true,
		{
			form	= {410, 475, 532, -20, 80, 60, 2.4, 2.4, 2.4},
			model	= 'MODELS/SPACE/POI/WARRIORSILOS.SCENE.MBIN'
		},
		{
			form	= {-114.5, 195, -80, 16, 16, 16, 1, 1, 1},
			model	= 'MODELS/SPACE/POI/WEIRDOBJECT2.SCENE.MBIN'
		},
		{
			form	= {-114.5, 185, -80, 16, 16, 16, 1.4, 1.4, 1.4},
			model	= 'MODELS/SPACE/POI/SPACEGYROSCOPE.SCENE.MBIN'
		},
		{
			form	= {810, 745, 832, -20, 80, 60, 1, 1, 1},
			model	= 'MODELS/SPACE/POI/ASTEROID_BEACON.SCENE.MBIN'
		},
		{
			form	= {510, 585, 500, 330, 25, 55, 1, 1, 1},
			model	= 'MODELS/SPACE/POI/GATE_POI.SCENE.MBIN'
		},
		{
			form	= {32, 120, -380, 16, 16, 16, 1.4, 1.4, 1.4},
			model	= 'MODELS/SPACE/POI/MEMORYLIFEBOAT.SCENE.MBIN'
		}
	},
	{
		name = '_Anomal_A_',
		node = true,
		{
			form	= {410, 370, -800, 120, 210, 190, 0.6, 0.6, 0.6},
			model	= 'MODELS/SPACE/POI/PILLARPOI.SCENE.MBIN'
		},
		{
			form	= {420, 385, -720, 120, 210, 190, 2, 2, 2},
			model	= 'MODELS/SPACE/POI/SPACECLOCK.SCENE.MBIN'
		},
		{
			form	= {360, 375, -740, 120, 210, 190, 1, 1, 1},
			model	= 'MODELS/SPACE/POI/8PRONGEDSPINNER.SCENE.MBIN'
		},
		{
			form	= {-320, 246, -700, 120, 210, 190, 2, 2, 2},
			model	= 'MODELS/SPACE/POI/ATLASBEACON.SCENE.MBIN'
		}
	},
	{
		-- add descriptor for existing nodes (relies on array length)
		name = '_Front_', 0, 1, 0, 0, 1, 1
	},
	{
		-- add descriptor for existing nodes
		name = '_AccSide_', 1, 0
	}
}

local function AddSceneNodes()
	local T = {}
	for _, asset in ipairs(assets) do
		if asset.node then
			for i, scn in ipairs(asset) do
				T[#T+1] = ScNode(
					asset.name..string.char(64 + i), 'REFERENCE', {
						ScTransform(scn.form),
						ScAttributes({
							{'SCENEGRAPH', scn.model},
						--	add a spin entity to drifting wrecks
							{'ATTACHMENT', 'MODELS/COMMON/SHARED/ENTITIES/SPIN.ENTITY.MBIN'}
						})
					}
				)
			end
		end
	end
	return ToExml(T)
end

local function GenerateDescriptor()
	local T = {
		META = {'template', 'TkModelDescriptorList'},
		List = {META = {'name', 'List'}}
	}
	for _,asset in ipairs(assets) do
		local tmp = {
			META		= {'value', 'TkResourceDescriptorList.xml'},
			TypeId		= asset.name:upper(),
			Descriptors	= {META = {'name', 'Descriptors'}}
		}
		for i,_ in ipairs(asset) do
			tmp.Descriptors[#tmp.Descriptors+1] = {
				META	= {'value', 'TkResourceDescriptorData.xml'},
				Id		= (asset.name..string.char(64 + i)):upper(),
				Name	= asset.name..string.char(64 + i),
			}
		end
		T.List[#T.List+1] = tmp
	end
	return T
end

local spin_entity = {
	META = {'template', 'TkAttachmentData'},
	Components = {
		META = {'name', 'Components'},
		{
			META  = {'value', 'TkRotationComponentData.xml'},
			Speed = 0.001,
			Axis  = {
				META = {'Axis', 'Vector3f.xml'},
				x = 1,
				y = -1,
				z = 1
			},
			AlwaysUpdate = true,
			SyncGroup    = -1
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL procedural derelicts.pak',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
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
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/SPACE/POI/DUNGEON.DESCRIPTOR.EXML',
			FILE_CONTENT	 = FileWrapping(GenerateDescriptor())
		},
		{
			FILE_DESTINATION = 'MODELS/COMMON/SHARED/ENTITIES/SPIN001.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping(spin_entity)
		}
	}
}
