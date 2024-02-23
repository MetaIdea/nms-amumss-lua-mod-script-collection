--------------------------------------------------------------------------------
local mod_desc = [[
  Rebuild and add to unlockable items tree
  Each consecutive full tree addition is placed BEFORE the last one!
  - The items tree is a classic Tree data structure. The node is a table
   containing an item's id string and a table which contains one or more nodes.
  - A replacement for a full tree needs the ItemTrees title & the tree's own title
   as 1st & 2nd parents.
  - A new tree is inserted as 1st in its ItemTrees by default. Inesrting [after] work
   only on existing trees, not newly-added, and needs the 'after' Title.
]]------------------------------------------------------------------------------
local version = 1.32

local unlockable_items = {
	{--	construction unit: alloy base parts
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_FIBREGLASS_SUB'},
		title   = 'UI_BASIC_FIBREGLASS_SUB',
		cost	= 'SALVAGE',
		isroot  = true,
		issubs	= true,
		tree	= {
			'F_WALL', {
				{
					'F_FLOOR', {
						{
							'F_GFLOOR',
								{'F_FLOOR_Q'}
						},{
							'F_RAMP', {
								{
									'F_RAMP_H',
										{'F_RAMP_Q_TOP'}
								}
							}
						},{
							'F_TRIFLOOR', {
								{
									'F_TRIFLOOR_Q',
										{'F_WALLDIAGONAL'}
								}
							}
						}
					}
				},{
					'F_WALL_H', {
						{
							'F_WALL_Q',
								{'F_WALL_Q1'}
						},{
							'F_WALL_Q_H',
								{'F_WALL_Q_H1'}
						}
					}
				},{
					'F_CHEV_WALL', {
						{
							'F_CHEV_DOOR',
								{'F_CHEV_WALL_H_C'}
						},{
							'F_CHEV_WIN0', {
								{
									'F_CHEV_WIN1',
										{'F_CHEV_WIN2'}
								}
							}
						}
					}
				},{
					'F_DOOR_H', {
						{
							'F_DOORWINDOW', {
								{
									'F_WALL_WIN1', {
										{'F_WALL_WIN2'},
										{'F_WALL_WIN3'}
									}
								},{
									'F_WALL_WINDOW'
								}
							},
						},{
							'F_DOOR', {
								{
									'F_DOOR1',
										{'F_GDOOR'}
								}
							}
						},{
							'F_ARCH',
								{'F_ARCH_H'}
						}
					}
				},{
					'F_ROOF7', {
						{
							'F_ROOF_M', {
								{
									'F_ROOF_M_Q',
										{'F_ROOF_E_Q'}
								}
							}
						},{
							'F_ROOF5', {
								{
									'F_ROOF3',
										{'F_ROOF_M_CAP'}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: stone base parts
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_STONE_SUB'},
		title   = 'UI_BASIC_STONE_SUB',
		cost	= 'SALVAGE',
		isroot  = true,
		issubs	= true,
		tree	= {
			'S_WALL', {
				{
					'S_FLOOR', {
						{
							'S_GFLOOR',
								{'S_FLOOR_Q'}
						},{
							'S_RAMP', {
								{
									'S_RAMP_H',
										{'S_RAMP_Q_TOP'}
								}
							}
						},{
							'S_TRIFLOOR', {
								{
									'S_TRIFLOOR_Q',
										{'S_WALLDIAGONAL'}
								}
							}
						}
					}
				},{
					'S_WALL_H', {
						{
							'S_WALL_Q',
								{'S_WALL_Q1'}
						},{
							'S_WALL_Q_H',
								{'S_WALL_Q_H1'}
						}
					}
				},{
					'S_CHEV_WALL', {
						{
							'S_CHEV_DOOR',
								{'S_CHEV_WALL_H_C'}
						},{
							'S_CHEV_WIN0', {
								{
									'S_CHEV_WIN1',
										{'S_CHEV_WIN2'}
								}
							}
						}
					}
				},{
					'S_DOOR_H', {
						{
							'S_DOORWINDOW', {
								{
									'S_WALL_WIN1', {
										{'S_WALL_WIN2'},
										{'S_WALL_WIN3'}
									}
								},{
									'S_WALL_WINDOW'
								}
							},
						},{
							'S_DOOR', {
								{
									'S_DOOR1',
										{'S_GDOOR'}
								}
							}
						},{
							'S_ARCH',
								{'S_ARCH_H'}
						}
					}
				},{
					'S_ROOF3', {
						{
							'S_ROOF_M', {
								{
									'S_ROOF_M_Q',
										{'S_ROOF_E_Q'}
								}
							}
						},{
							'S_ROOF2', {
								{
									'S_ROOF0',
										{'S_ROOF_M_CAP'}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: timber base parts
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_TIMBER_SUB'},
		title   = 'UI_BASIC_TIMBER_SUB',
		cost	= 'SALVAGE',
		isroot  = true,
		issubs	= true,
		tree	= {
			'T_WALL', {
				{
					'T_FLOOR', {
						{
							'T_GFLOOR',
								{'T_FLOOR_Q'}
						},{
							'T_RAMP', {
								{
									'T_RAMP_H',
										{'T_RAMP_Q_TOP'}
								}
							}
						},{
							'T_TRIFLOOR', {
								{
									'T_TRIFLOOR_Q',
										{'T_WALLDIAGONAL'}
								}
							}
						}
					}
				},{
					'T_WALL_H', {
						{
							'T_WALL_Q',
								{'T_WALL_Q1'}
						},{
							'T_WALL_Q_H',
								{'T_WALL_Q_H1'}
						}
					}
				},{
					'T_CHEV_WALL', {
						{
							'T_CHEV_DOOR',
								{'T_CHEV_WALL_H_C'}
						},{
							'T_CHEV_WIN0', {
								{
									'T_CHEV_WIN1',
										{'T_CHEV_WIN2'}
								}
							}
						}
					}
				},{
					'T_DOOR_H', {
						{
							'T_DOORWINDOW', {
								{
									'T_WALL_WIN1', {
										{'T_WALL_WIN2'},
										{'T_WALL_WIN3'}
									}
								},{
									'T_WALL_WINDOW'
								}
							},
						},{
							'T_DOOR', {
								{
									'T_DOOR1',
										{'T_GDOOR'}
								}
							}
						},{
							'T_ARCH',
								{'T_ARCH_H'}
						}
					}
				},{
					'T_ROOF6', {
						{
							'T_ROOF_M', {
								{
									'T_ROOF_M_Q',
										{'T_ROOF_E_Q'}
								}
							}
						},{
							'T_ROOF0', {
								{
									'T_ROOF7',
										{'T_ROOF_M_CAP'}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: tech
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_TECH_SUB'},
		title   = 'UI_BASIC_TECH_SUB',
		cost	= 'SALVAGE',
		isroot  = true,
		issubs	= true,
		tree	= {
			'BUILDSAVE', {
				{
					'BASE_FLAG', {
						{
							'NPCBUILDERTERM', {
								{
									'NPCSCIENCETERM',
										{'NPCFARMTERM'}
								},{
									'NPCWEAPONTERM',
										{'NPCVEHICLETERM'}
								}
							}
						},{
							'U_POWERLINE', {
								{
									'U_SOLAR_S',
										{'U_BATTERY_S'}
								},{
									'U_BIOGENERATOR'
								}
							}
						},{
							'TELEPORTER', {
								{
									'BUILDLANDINGPAD',
										{'BUILDTERMINAL'}
								}
							}
						},{
							'U_PIPELINE', {
								{
									'U_SILO_S', {
										{'U_EXTRACTOR_S'},
										{'U_GASEXTRACTOR'}
									}
								}
							}
						}
					}
				},{
					'BUILDBEACON', {
						{'BUILDSIGNAL'}
					}
				},{
					'BUILD_REFINER1', {
						{'COOKER'},
						{'BUILD_REFINER2'}
					}
				},{
					'SMALLLIGHT', {
						{
							'BUILDLIGHT3',
								{'S_HANGLAMP3'}
						}
					}
				},{
					'BUILDHARVESTER', {
						{
							'BUILDGASHARVEST',
								{'O2_HARVESTER'}
						}
					}
				}
			}
		}
	}
}

--- root=true if tree is the first node of GcUnlockableItemTree
local function BuildExmlNodes(tree, root)
	local treenode = [[
		<Property %s value="GcUnlockableItemTreeNode.xml">
			<Property name="Unlockable" value="%s"/>%s
		</Property>]]
	local exml = ''
	for i=1, #tree do
		if type(tree[i]) == 'string' then
			if i < #tree then
				return string.format(
					treenode,
					(root and 'name="Root"' or ''),
					tree[i],
					string.format(
						'<Property name="Children">%s</Property>',
						BuildExmlNodes(tree[i+1], false)
					)
				)
			else
				return string.format(treenode, '', tree[i], '')
			end
		else
			exml = exml..BuildExmlNodes(tree[i], false)
		end
	end
	return exml
end

local function AddTreeToChangeTable(node)
	local T = {}
	if node.isroot then
	--- full tree addition ---
		local tree_root = [[
			<Property value="GcUnlockableItemTree.xml">
				<Property name="Title" value="]]..node.title..[["/>
				<Property name="CostTypeID" value="]]..node.cost..[["/>
				]]..BuildExmlNodes(node.tree, node.isroot)..[[
			</Property>]]
		if node.after then
			table.insert(T, {
				SPECIAL_KEY_WORDS	= {'Title', node.parent[1], 'Title', node.after},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= tree_root
			})
		else
			table.insert(T, {
				SPECIAL_KEY_WORDS	= {'Title', node.parent[1]},
				PRECEDING_KEY_WORDS	= 'Trees',
				ADD					= tree_root
			})
		end
	else
	--- regular node ---
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'Unlockable', node.parent[1]},
			PRECEDING_KEY_WORDS = 'Children',
			CREATE_HOS			= true,
			SECTION_ACTIVE		= -1,
			ADD					= BuildExmlNodes(node.tree, false)
		})
	end
	return T
end

local function AddAllTrees()
	local T = {}
	T[1] = { FSKWG={}, REMOVE='Section' }
	for _,tree in ipairs(unlockable_items) do
		-- do all REMOVEs before adding
		if tree.issubs then
			table.insert(T[1].FSKWG, {'Title', tree.parent[1], 'Title', tree.parent[2]})
		end
		for _,n in ipairs(AddTreeToChangeTable(tree)) do
			table.insert(T, n)
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Construction Unit Update.'..version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= AddAllTrees()
	}
}}}}
