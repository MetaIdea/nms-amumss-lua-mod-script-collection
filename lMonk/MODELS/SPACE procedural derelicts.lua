---------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
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
		node = {
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
		}
	},
	{
		name = '_Anomal_F_',
		node = {
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
		}
	},
	{
		name = '_Anomal_A_',
		node = {
			{
				form	= {410, 370, -800, 120, 210, 190, 0.6, 0.6, 0.6},
				model	= 'MODELS/SPACE/POI/PILLARPOI.SCENE.MBIN'
			},
			{
				form	= {460, 405, -750, 120, 210, 190, 2, 2, 2},
				model	= 'MODELS/SPACE/POI/SPACECLOCK.SCENE.MBIN'
			},
			{
				form	= {360, 375, -740, 120, 210, 190, 1, 1, 1},
				model	= 'MODELS/SPACE/POI/8PRONGEDSPINNER.SCENE.MBIN'
			},
			{
				form	= {-360, 286, -740, 120, 210, 190, 2, 2, 2},
				model	= 'MODELS/SPACE/POI/ATLASBEACON.SCENE.MBIN'
			}
		}
	},
	{
		-- VFX (not a proc scene part - but it works)
		name = '_SpaceStorm_FX_',
		node = {
			{
				form	= {0, 0, 0, 0, 0, 0, 4, 4, 4},
				model	= 'MODELS/EFFECTS/SPACE/DERELICTATMOSPHERICS/DERELICTATMOSPHERICS.SCENE.MBIN'
			}
		}
	},
	{
		-- add description for existing nodes (relies on array length)
		name = '_Front_',
		desc = {0, 1, 0, 0, 1, 1}
	},
	{
		-- add description for existing nodes
		name = '_AccSide_',
		desc = {1, 0}
	}
}

local function AddSpaceAssets()
	local T = {}
	for _,group in ipairs(assets) do
		if group.node then
			for i, scene in ipairs(group.node) do
				T[#T+1] = {
					name	= group.name..string.char(64 + i),
					ntype	= 'REFERENCE',
					form	= scene.form,
					attr	= {
						SCENEGRAPH	= scene.model,
					--	add a spin to 'drifting' wrecks
						ATTACHMENT	= 'MODELS/COMMON/SHARED/ENTITIES/SPIN001.ENTITY.MBIN'
					}
				}
			end
		end
	end
	return AddSceneNodes(T)
end

local function GenerateDescriptor()
	local T = {
		meta = {'template', 'TkModelDescriptorList'},
		List = {meta = {'name', 'List'}}
	}
	for _,group in ipairs(assets) do
		local tmp = {
			meta		= {'value', 'TkResourceDescriptorList.xml'},
			TypeId		= group.name:upper(),
			Descriptors	= {meta = {'name', 'Descriptors'}}
		}
		for i, scene in ipairs(group.node or group.desc) do
			tmp.Descriptors[#tmp.Descriptors+1] = {
				meta	= {'value', 'TkResourceDescriptorData.xml'},
				Id		= (group.name..string.char(64 + i)):upper(),
				Name	= group.name..string.char(64 + i),
				ReferencePaths	= type(scene) == 'table' and {
					meta = {'name','ReferencePaths'},
					{
						meta	= {'value', 'VariableSizeString.xml'},
						Value	= scene.model
					}
				} or nil
			}
		end
		T.List[#T.List+1] = tmp
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL procedural derelicts.pak',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
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
				ADD 				= AddSpaceAssets()
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
			FILE_CONTENT	 = FileWrapping({
				meta = {'template', 'TkAttachmentData'},
				Components = {
					meta = {'name', 'Components'},
					{
						meta = {'value','LinkableNMSTemplate.xml'},
						Template = {
							meta = {'Template','TkRotationComponentData.xml'},
							Speed = 0.001,
							Axis  = {
								meta = {'Axis', 'Vector3f.xml'},
								x = 1,
								y = 1,
								z = 1
							},
							AlwaysUpdate = true,
							SyncGroup    = -1
						},
						Linked	= ''
					}
				}
			})
		}
	}
}
