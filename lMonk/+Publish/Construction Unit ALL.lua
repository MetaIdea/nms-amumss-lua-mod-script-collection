------------------------------------------------------------------------
local mod_desc = [[
  Adds all base parts and tech recipes to the Construction Research Unit
  * Does not include expedition rewards and quicksilver shop items.
]]----------------------------------------------------------------------

local version = 1.32

local base_tree = {
	{--	FreighterBase
		title	= 'UI_FREIGHTER_TREE',
		subs	= {
			'UI_FRE_BASE_TREE'
		}
	},
	{--	BaseParts
		title	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		subs	= {
			'UI_POSTERS_TREE',
			'UI_DECALS_TREE',
			'UI_SHAPES_TREE',
			'UI_BASIC_STONE_ROOFS_SUB',
			'UI_BASIC_STONE_SUB',
			'UI_BASIC_FIBREGLASS_ROOFS_SUB',
			'UI_BASIC_FIBREGLASS_SUB',
			'UI_BASIC_TIMBER_ROOFS_SUB',
			'UI_BASIC_TIMBER_SUB',
			{'UI_DECORATION_TREE', 5},
			'UI_LIGHTS_TREE',
			'UI_FARMING_TREE',
			'UI_POWER_TREE',
			'UI_WATER_TREE',
			'UI_EXOCRAFT_TREE',
			'UI_STORAGE_TREE',
			'UI_BASETECH_TREE',
			'UI_CUBEROOM_TREE',
			'UI_MAINROOM_TREE',
		}
	}
}
local tech_tree = {
	{--	FreighterTech
		title	= 'UI_FREIGHTER_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{--	CraftProducts
		title	= 'UI_PRODUCT_TREE',
		subs	= {
			'UI_PRODUCT_TREE_FARM',
			'UI_PRODUCT_TREE_CRAFT'
		}
	},
	{--	ExocraftTech
		title	= 'UI_EXOCRAFT_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{--	WeapTech
		title	= 'UI_WEAP_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{--	ShipTech
		title	= 'UI_SHIP_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	},
	{--	SuitTech
		title	= 'UI_SUIT_TECH_TREE',
		subs	= {
			'UI_TECH_TREE_SUB'
		}
	}
}

local ECT = {}
ECT[#ECT+1] = {
	REPLACE_TYPE 		= 'All',
	SPECIAL_KEY_WORDS	= {
		{'Title', 'UI_PURCHASABLE_BASICPARTS_TREE'},
		{'Title', 'UI_PURCHASABLE_BASICTECH_TREE'}
	},
	PRECEDING_KEY_WORDS = 'GcUnlockableItemTree.xml',
	REMOVE				= 'Section'
}

for _,node in ipairs(base_tree) do
	for _,s in ipairs(node.subs) do
		local subt, act = s[1] or s, s[2] or 1
		for i=act, 1, -1 do
			ECT[#ECT+1] = {
				SPECIAL_KEY_WORDS	= {'Title', node.title, 'Title', subt},
				SECTION_ACTIVE		= -i,
				SECTION_SAVE_TO		= 'unlockable_item_tree',
			}
			ECT[#ECT+1] = {
				SPECIAL_KEY_WORDS	= {'Title', 'UI_PURCHASABLE_BASICPARTS_TREE'},
				PRECEDING_KEY_WORDS	= 'Trees',
				SECTION_ADD_NAMED	= 'unlockable_item_tree',
			}
		end
	end
end
for _,node in ipairs(tech_tree) do
	for _,subt in ipairs(node.subs) do
		ECT[#ECT+1] = {
			SPECIAL_KEY_WORDS	= {'Title', node.title, 'Title', subt},
			SECTION_SAVE_TO		= 'unlockable_item_tree',
		}
		ECT[#ECT+1] = {
			SPECIAL_KEY_WORDS	= {'Title', 'UI_PURCHASABLE_BASICTECH_TREE'},
			PRECEDING_KEY_WORDS	= 'Trees',
			SECTION_ADD_NAMED	= 'unlockable_item_tree',
		}
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Construction Unit ALL.'..version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
