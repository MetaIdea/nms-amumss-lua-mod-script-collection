------------------------------------------------------------------------
local mod_desc = [[
  Adds all base parts and tech recipes to the Construction Research Unit
  * Does not include expedition rewards and quicksilver shop items.
]]----------------------------------------------------------------------

local base_tree = {
	{
		root	= 'BaseParts',
		title	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		subs	= {
			'UI_MAINROOM_TREE',
			'UI_CUBEROOM_TREE',
			'UI_BASETECH_TREE',
			'UI_EXOCRAFT_TREE',
			'UI_WATER_TREE',
			'UI_DECALS_TREE',
			'UI_POSTERS_TREE',
			{'UI_DECORATION_TREE', {1,2,3,4,5,6,7}},
			'UI_FOSSILS_TREE',
			'UI_LIGHTS_TREE',
			'UI_POWER_TREE',
			'UI_FARMING_TREE',
			'UI_BASIC_TIMBER_SUB',
			'UI_BASIC_TIMBER_ROOFS_SUB',
			'UI_BASIC_STONE_SUB',
			'UI_BASIC_STONE_ROOFS_SUB',
			'UI_BASIC_FIBREGLASS_SUB',
			'UI_BASIC_FIBREGLASS_ROOFS_SUB',
			'UI_BASIC_BUILDERS_SUB',
			'UI_BASIC_BUILDERS_ROOFS_SUB',
			'UI_SHAPES_TREE',
			'UI_STORAGE_TREE',
		}
	},
	{
		root	= 'FreighterTech',
		title	= 'UI_FREIGHTER_TREE',
		subs	= {
			'UI_FRE_BASE_TREE'
		}
	},
}
local tech_tree = {
	{
		root	= 'SuitTech',
		title	= 'UI_SUIT_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{
		root	= 'WeapTech',
		title	= 'UI_WEAP_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{
		root	= 'ShipTech',
		title	= 'UI_SHIP_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{
		root	= 'FreighterTech',
		title	= 'UI_FREIGHTER_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{
		root	= 'ExocraftTech',
		title	= 'UI_EXOCRAFT_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{
		root	= 'CraftProducts',
		title	= 'UI_PRODUCT_TREE',
		subs	= {
			'UI_PRODUCT_TREE_FARM',
			'UI_PRODUCT_TREE_CRAFT'
		}
	}
}

local mx_ct = {
	{
		SKW		= {
			{'Title', 'UI_PURCHASABLE_BASICPARTS_TREE', 'Title', 'UI_BASIC_.-'},
			{'Title', 'UI_PURCHASABLE_BASICTECH_TREE',  'Title', 'UI_BASIC_.-'},
		},
		REMOVE	= 'Section'
	}	
}
for _,node in ipairs(base_tree) do
	for _,s in ipairs(node.subs) do
		local subt, act = s[1] or s, s[2] or nil
		mx_ct[#mx_ct+1] = {
			SKW				= {node.root, 'GcUnlockableItemTrees', 'Title', node.title, 'Title', subt},
			SECTION_ACTIVE	= act,
			SEC_COPY		= 'unlockable_item_tree'
		}
		mx_ct[#mx_ct+1] = {
			SKW				= {'BasicBaseParts', 'GcUnlockableItemTrees', 'Title', 'UI_PURCHASABLE_BASICPARTS_TREE'},
			PKW				= 'Trees',
			ADD_OPTION		= 'AddEndSection',
			SEC_PASTE		= 'unlockable_item_tree'
		}
	end
end
for _,node in ipairs(tech_tree) do
	for _,subt in ipairs(node.subs) do
		mx_ct[#mx_ct+1] = {
			SKW				= {node.root, 'GcUnlockableItemTrees', 'Title', node.title, 'Title', subt},
			SEC_COPY		= 'unlockable_item_tree'
		}
		mx_ct[#mx_ct+1] = {
			SKW				= {'BasicTechParts', 'GcUnlockableItemTrees', 'Title', 'UI_PURCHASABLE_BASICTECH_TREE'},
			PKW				= 'Trees',
			ADD_OPTION		= 'AddEndSection',
			SEC_PASTE		= 'unlockable_item_tree'
		}
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Construction Unit ALL.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.71',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		MXML_CHANGE_TABLE	= mx_ct
	}
}}}}