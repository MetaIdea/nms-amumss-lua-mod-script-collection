------------------------------------------------------------
local mod_desc = [[
  Make huge tree and rock spawns active like all others.
]]----------------------------------------------------------

local source_mbins = {
	{
		mbin = {
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGERING/HUGEROCKRING.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGEPLATFORMROCK.SCENE.MBIN'
		},
		cat  = 'ROCK',
		node = { '_base_1LOD0' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEROCK/HUGESPIKEROCK.SCENE.MBIN'},
		cat  = 'ROCK',
		node = {
			'_base_1LOD0',
			'_base_2LOD0',
			'_base_3LOD0',
			'_base_5LOD0',
			'_base_6LOD0'
		}
	},
	{
		mbin = {
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/PARTS/HUGESPIRE01.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/PARTS/HUGESPIRE02.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGESCORCHED/PARTS/HUGESPIRE03.SCENE.MBIN'
		},
		cat  = 'PLANT',
		node = { '_TRUNK_01' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/PARTS/FUNGALTREE01.SCENE.MBIN'},
		cat  = 'PLANT',
		node = { '_FUNG_A' }
	},
	{
		mbin = {
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/PARTS/HUGETENDRIL01.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGETOXIC/PARTS/HUGETENDRIL02.SCENE.MBIN'
		},
		cat  = 'PLANT',
		node = { '_BIGTend_01' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESTRANDS.SCENE.MBIN'},
		cat  = 'PLANT',
		node = { '_Strand_1' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/HUGEPROPS/HUGEUW/HUGESWIRLPLANT.SCENE.MBIN'},
		cat  = 'PLANT',
		node = {
			'_base_1LOD0',
			'_base_2LOD0',
			'_base_3LOD0'
		}
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONESPINE.SCENE.MBIN'},
		cat  = 'PLANT',
		node = { 'BoneSpine' }
	},
	{
		mbin = {'MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN'},
		cat  = 'PLANT',
		node = { 'Tower' }
	}
}

local MBIN_CT = {
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/PLANTS/LARGEPLANT/ENTITIES/LARGEPLANT.ENTITY.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEPLANT.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEPLANT.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GcDestructableComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'DestroyForce',		2},
					{'DestroyForceRadius',	5},
					{'DestroyEffectTime',	4},
					{'GrenadeSingleHit',	false}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'GcShootableComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Health',		20000},
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEPLANT.ENTITY.MBIN',
				'MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE/ENTITIES/MANGROVELARGE.ENTITY.MBIN'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/LARGEROCK/ENTITIES/LARGEROCK.ENTITY.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEROCK.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGEROCK.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GcDestructableComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'DestroyForce',		2},
					{'DestroyForceRadius',	5},
					{'DestroyEffectTime',	4},
					{'GrenadeSingleHit',	false}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'GcShootableComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Health',		24000},
					{'RequiredTech',''},
				}
			}
		}
	}
}
for _,src in ipairs(source_mbins) do 
	local ect = {}
	for _,node in ipairs(src.node) do 
		ect[#ect+1] = {
			SPECIAL_KEY_WORDS	= {'Name', node},
			PRECEDING_KEY_WORDS = 'Attributes',
			ADD 				= [[
				<Property value="TkSceneNodeAttributeData.xml">
					<Property name="Name" value="ATTACHMENT"/>
					<Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/SHARED/ENTITIES/HUGE]]..src.cat..[[.ENTITY.MBIN"/>
				</Property>]]
		}
	end
	MBIN_CT[#MBIN_CT+1] = {
		MBIN_FILE_SOURCE	= src.mbin,
		EXML_CHANGE_TABLE	= ect
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Huge Props Activated.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= MBIN_CT
}}}
