-----------------------------------------------------------------------------------------
local mod_desc = [[
  Add more tech recipes, some factory products, and a larger selection of building parts
  to the construction unit item trees - make it a bit more useful.
]]---------------------------------------------------------------------------------------

local unlockable_items = {
	{--	construction unit: (replace tree) tech
		root	= 'BasicTechParts',
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_TECH_SUB',
		cost	= 'SALVAGE',
		tree	= {
			'BUILDSAVE',{ -- save point
				{
					'BASE_FLAG',{ -- base computer
						{
							'NPCBUILDERTERM',{ -- construction terminal
								{
									'NPCSCIENCETERM',{ -- science terminal
										{
											'NPCFARMTERM' -- agricultural terminal
										}
									}
								},
								{
									'NPCWEAPONTERM',{ -- weapons terminal
										{
											'NPCVEHICLETERM' -- exocraft terminal
										}
									}
								}
							}
						},
						{
							'U_POWERLINE',{ -- electrical wiring
								{
									'U_SOLAR_S',{ -- solar panel
										{
											'U_BATTERY_S' -- battery
										}
									}
								},
								{
									'U_BIOGENERATOR' -- biofuel reactor
								}
							}
						},
						{
							'TELEPORTER',{ -- base teleport module
								{
									'BUILDLANDINGPAD',{ -- landing pad
										{
											'BUILDTERMINAL' -- galactic trade terminal
										}
									}
								}
							}
						},
						{
							'U_PIPELINE',{ -- supply pipe
								{
									'U_SILO_S',{ -- supply depot
										{
											'U_EXTRACTOR_S' -- mineral extractor
										},
										{
											'U_GASEXTRACTOR' -- gas extractor
										}
									}
								}
							}
						}
					}
				},
				{
					'BUILDBEACON',{ -- save beacon
						{
							'BUILDSIGNAL',{ -- signal booster
								{
									'S9_SHIPTREE' -- utopia ship station
								}
							}
						}
					}
				},
				{
					'BUILD_REFINER1',{ -- portable refiner
						{
							'COOKER' -- nutrient processor
						},
						{
							'BUILD_REFINER2' -- medium refiner
						}
					}
				},
				{
					'SMALLLIGHT',{ -- lantern
						{
							'BUILDLIGHT3',{ -- capped standing light
								{
									'S_HANGLAMP3' -- splayed hanging lamp
								}
							}
						}
					}
				},
				{
					'BUILDHARVESTER',{ -- autonomous mining unit
						{
							'BUILDGASHARVEST',{ -- atmosphere harvester
								{
									'O2_HARVESTER' -- oxygen harvester
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (add tree) factory products
		root	= 'BasicTechParts',
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		title   = 'UI_PRODUCT_TREE_CRAFT',
		cost	= 'FACTORY',
		toend	= true,
		tree	= {
			'AM_HOUSING',{ -- antimatter housing
				{
					'CASING',{ -- metal plating
						{
							'NANOTUBES',{ -- carbon nanotubes
								{
									'HYDRALIC' -- hydraulic wiring
								}
							}
						},
						{
							'MICROCHIP',{ -- microprocessor
								{
									'COMPUTER' -- quantum computer
								}
							}
						},
						{
							'CARBON_SEAL',{ -- hermetic seal
								{
									'BIO' -- amino chamber
								}
							}
						},
						{
							'MIRROR',{ -- solar mirror
								{
									'MAGNET' -- magnetic resonator
								}
							}
						}
					}
				},
				{
					'JELLY',{ -- di-hydrogen jelly
						{
							'PRODFUEL2' -- life support gel
						}
					}
				},
				{
					'ANTIMATTER',{ -- antimatter
						{
							'HYPERFUEL1',{ -- warp cell
								{
									'HYPERFUEL2' -- warp hypercore
								}
							}
						}
					}
				},
				{
					'POWERCELL',{ -- ion battery
						{
							'GRENFUEL1' -- unstable plasma
						},
						{
							'SHIPCHARGE' -- starshield battery
						}
					}
				},
				{
					'LAUNCHFUEL',{ -- starship launch fuel
						{
							'SUBFUEL' -- hydrothermal fuel cell
						}
					}
				},
				{
					'ACCESS1',{ -- atlaspass v1
						{
							'ACCESS2',{ -- atlaspass v2
								{
									'ACCESS3' -- atlaspass v3
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (replace tree) timber base parts
		root	= 'BasicTechParts',
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_TIMBER_SUB',
		toend	= true,
		cost	= 'SALVAGE',
		tree	= {
			'T_WALL',{ -- timber wall
				{
					'T_FLOOR',{ -- timber floor panel
						{
							'T_GFLOOR',{ -- timber-framed glass panel
								{
									'T_FLOOR_Q' -- small timber panel
								}
							}
						},
						{
							'T_RAMP',{ -- timber ramp
								{
									'T_RAMP_H',{ -- timber half ramp
										{
											'T_RAMP_Q_TOP' -- timber half ramp platform
										}
									}
								}
							}
						},
						{
							'T_TRIFLOOR',{ -- timber triangle
								{
									'T_TRIFLOOR_Q',{ -- small timber triangle
										{
											'T_WALLDIAGONAL' -- sloping timber panel
										}
									}
								}
							}
						}
					}
				},
				{
					'T_WALL_H',{ -- thin timber wall
						{
							'T_WALL_Q',{ -- small timber wall a
								{
									'T_WALL_Q1' -- small timber wall b
								}
							}
						},
						{
							'T_WALL_Q_H',{ -- short timber wall a
								{
									'T_WALL_Q_H1' -- short timber wall b
								}
							}
						}
					}
				},
				{
					'T_CHEV_WALL',{ -- extruded timber wall a
						{
							'T_CHEV_DOOR',{ -- extruded timber-glass door
								{
									'T_CHEV_WALL_H_C' -- extruded timber wall cap
								}
							}
						},
						{
							'T_CHEV_WIN0',{ -- extruded timber wall b
								{
									'T_CHEV_WIN1',{ -- extruded timber large window
										{
											'T_CHEV_WIN2' -- extruded timber small window
										}
									}
								}
							}
						}
					}
				},
				{
					'T_DOOR_H',{ -- timber doorway
						{
							'T_DOORWINDOW',{ -- timber frontage
								{
									'T_WALL_WIN1',{ -- horizontal timber windows
										{
											'T_WALL_WIN2' -- large timber double window
										},
										{
											'T_WALL_WIN3' -- large timber triple window
										}
									}
								},
								{
									'T_WALL_WINDOW' -- twin timber windows
								}
							}
						},
						{
							'T_DOOR',{ -- timber rectangular door
								{
									'T_DOOR1',{ -- timber angled door
										{
											'T_GDOOR' -- timber power door
										}
									}
								}
							}
						},
						{
							'T_ARCH',{ -- timber arch
								{
									'T_ARCH_H' -- timber half arch
								}
							}
						}
					}
				},
				{
					'T_ROOF6',{ -- flat timber roof
						{
							'T_ROOF_M',{ -- timber roof panel
								{
									'T_ROOF_M_Q',{ -- sloping timber roof panel
										{
											'T_ROOF_E_Q' -- sloping timber roof gable
										}
									}
								}
							}
						},
						{
							'T_ROOF0',{ -- rounded flat timber-glass roof
								{
									'T_ROOF7',{ -- rounded timber roof
										{
											'T_ROOF_M_CAP' -- timber roof cap
										}
									}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (replace tree) alloy base parts
		root	= 'BasicTechParts',
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_FIBREGLASS_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'F_WALL',{ -- alloy wall
				{
					'F_FLOOR',{ -- alloy floor panel
						{
							'F_GFLOOR',{ -- alloy-framed glass panel
								{
									'F_FLOOR_Q' -- small alloy panel
								}
							}
						},
						{
							'F_RAMP',{ -- alloy ramp
								{
									'F_RAMP_H',{ -- alloy half ramp
										{
											'F_RAMP_Q_TOP' -- alloy half ramp platform
										}
									}
								}
							}
						},
						{
							'F_TRIFLOOR',{ -- alloy triangle
								{
									'F_TRIFLOOR_Q',{ -- small alloy triangle
										{
											'F_WALLDIAGONAL' -- sloping alloy panel
										}
									}
								}
							}
						}
					}
				},
				{
					'F_WALL_H',{ -- thin alloy wall
						{
							'F_WALL_Q',{ -- small alloy wall a
								{
									'F_WALL_Q1' -- small alloy wall b
								}
							}
						},
						{
							'F_WALL_Q_H',{ -- short alloy wall a
								{
									'F_WALL_Q_H1' -- short alloy wall b
								}
							}
						}
					}
				},
				{
					'F_CHEV_WALL',{ -- extruded alloy wall
						{
							'F_CHEV_DOOR',{ -- extruded alloy door
								{
									'F_CHEV_WALL_H_C' -- extruded alloy wall cap
								}
							}
						},
						{
							'F_CHEV_WIN0',{ -- extruded alloy window
								{
									'F_CHEV_WIN1',{ -- extruded alloy horizontal window
										{
											'F_CHEV_WIN2' -- extruded alloy small window
										}
									}
								}
							}
						}
					}
				},
				{
					'F_DOOR_H',{ -- alloy doorway
						{
							'F_DOORWINDOW',{ -- alloy frontage
								{
									'F_WALL_WIN1',{ -- irregular alloy window
										{
											'F_WALL_WIN2' -- twin alloy windows
										},
										{
											'F_WALL_WIN3' -- horizontal alloy window
										}
									}
								},
								{
									'F_WALL_WINDOW' -- alloy window
								}
							}
						},
						{
							'F_DOOR',{ -- alloy door a
								{
									'F_DOOR1',{ -- alloy door b
										{
											'F_GDOOR' -- alloy power door
										}
									}
								}
							}
						},
						{
							'F_ARCH',{ -- alloy arch
								{
									'F_ARCH_H' -- alloy half arch
								}
							}
						}
					}
				},
				{
					'F_ROOF7',{ -- flat alloy roof
						{
							'F_ROOF_M',{ -- alloy roof panel
								{
									'F_ROOF_M_Q',{ -- sloping alloy roof panel
										{
											'F_ROOF_E_Q' -- sloping alloy roof gable
										}
									}
								}
							}
						},
						{
							'F_ROOF5',{ -- angled flat alloy roof
								{
									'F_ROOF3',{ -- top-lit flat alloy roof
										{
											'F_ROOF_M_CAP' -- alloy roof cap
										}
									}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (replace tree) stone base parts
		root	= 'BasicTechParts',
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_STONE_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'S_WALL',{ -- stone wall
				{
					'S_FLOOR',{ -- stone floor panel
						{
							'S_GFLOOR',{ -- stone floor grille
								{
									'S_FLOOR_Q' -- small stone panel
								}
							}
						},
						{
							'S_RAMP',{ -- stone ramp
								{
									'S_RAMP_H',{ -- stone half ramp
										{
											'S_RAMP_Q_TOP' -- stone half ramp platform
										}
									}
								}
							}
						},
						{
							'S_TRIFLOOR',{ -- stone triangle
								{
									'S_TRIFLOOR_Q',{ -- small stone triangle
										{
											'S_WALLDIAGONAL' -- sloping stone panel
										}
									}
								}
							}
						}
					}
				},
				{
					'S_WALL_H',{ -- thin stone wall
						{
							'S_WALL_Q',{ -- small stone wall a
								{
									'S_WALL_Q1' -- small stone wall b
								}
							}
						},
						{
							'S_WALL_Q_H',{ -- short stone wall a
								{
									'S_WALL_Q_H1' -- short stone wall b
								}
							}
						}
					}
				},
				{
					'S_CHEV_WALL',{ -- extruded stone wall
						{
							'S_CHEV_DOOR',{ -- extruded stone door
								{
									'S_CHEV_WALL_H_C' -- extruded stone wall cap
								}
							}
						},
						{
							'S_CHEV_WIN0',{ -- extruded stone grille a
								{
									'S_CHEV_WIN1',{ -- extruded stone circle window
										{
											'S_CHEV_WIN2' -- extruded stone grille b
										}
									}
								}
							}
						}
					}
				},
				{
					'S_DOOR_H',{ -- stone doorway
						{
							'S_DOORWINDOW',{ -- stone frontage
								{
									'S_WALL_WIN1',{ -- stone grille window
										{
											'S_WALL_WIN2' -- stone large window
										},
										{
											'S_WALL_WIN3' -- stone circle window
										}
									}
								},
								{
									'S_WALL_WINDOW' -- stone slit window
								}
							}
						},
						{
							'S_DOOR',{ -- stone arch door
								{
									'S_DOOR1',{ -- stone rectangular door
										{
											'S_GDOOR' -- stone power door
										}
									}
								}
							}
						},
						{
							'S_ARCH',{ -- stone arch
								{
									'S_ARCH_H' -- stone half arch
								}
							}
						}
					}
				},
				{
					'S_ROOF3',{ -- flat stone roof
						{
							'S_ROOF_M',{ -- stone roof panel
								{
									'S_ROOF_M_Q',{ -- sloping stone roof panel
										{
											'S_ROOF_E_Q' -- sloping stone roof gable
										}
									}
								}
							}
						},
						{
							'S_ROOF2',{ -- angled flat stone roof
								{
									'S_ROOF0',{ -- rounded flat stone roof
										{
											'S_ROOF_M_CAP' -- stone roof cap
										}
									}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	base parts: re-add basic concrete shelter parts tree
		root	= 'BaseParts',
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		title   = 'UI_BASIC_CONCRETE_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'C_WALL',{ -- concrete wall
				{
					'C_FLOOR',{ -- concrete floor panel
						{
							'C_GFLOOR' -- concrete-framed glass panel
						},
						{
							'C_RAMP',{ -- concrete ramp
								{
									'C_RAMP_H' -- concrete half ramp
								}
							}
						},
						{
							'C_FLOOR_Q' -- small concrete panel
						},
						{
							'C_TRIFLOOR',{ -- concrete triangle
								{
									'C_TRIFLOOR_Q' -- small concrete triangle
								}
							}
						}
					}
				},
				{
					'C_WALL_H',{ -- thin concrete wall
						{
							'C_WALLDIAGONAL' -- sloping concrete panel
						},
						{
							'C_WALL_Q',{ -- small concrete wall
								{
									'C_WALL_Q_H' -- short concrete wall
								}
							}
						}
					}
				},
				{
					'C_DOOR',{ -- concrete door frame
						{
							'C_WALL_WINDOW',{ -- concrete window panel
								{
									'C_DOORWINDOW' -- concrete frontage
								}
							}
						},
						{
							'C_DOOR_H',{ -- concrete doorway
								{
									'C_SDOOR' -- small concrete door
								}
							}
						},
						{
							'C_GDOOR' -- concrete power door
						}
					}
				},
				{
					'C_ROOF',{ -- concrete roof
						{
							'C_ROOF_M' -- concrete roof panel
						},
						{
							'C_ROOF_C',{ -- concrete roof corner
								{
									'C_ROOF_IC' -- concrete inner roof corner
								}
							}
						},
						{
							'C_ARCH',{ -- concrete arch
								{
									'C_ARCH_H' -- concrete half arch
								}
							}
						}
					}
				}
			}
		}
	},
	{--	base parts: re-add basic metal shelter parts tree
		root	= 'BaseParts',
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		title   = 'UI_BASIC_METAL_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'M_WALL',{ -- metal wall
				{
					'M_FLOOR',{ -- metal floor panel
						{
							'M_GFLOOR' -- metal-framed glass panel
						},
						{
							'M_RAMP',{ -- metal ramp
								{
									'M_RAMP_H' -- metal half ramp
								}
							}
						},
						{
							'M_FLOOR_Q' -- small metal panel
						},
						{
							'M_TRIFLOOR',{ -- metal triangle
								{
									'M_TRIFLOOR_Q' -- small metal triangle
								}
							}
						}
					}
				},
				{
					'M_WALL_H',{ -- thin metal wall
						{
							'M_WALLDIAGONAL' -- sloping metal panel
						},
						{
							'M_WALL_Q',{ -- small metal wall
								{
									'M_WALL_Q_H' -- short metal wall
								}
							}
						}
					}
				},
				{
					'M_DOOR',{ -- metal door frame
						{
							'M_WALL_WINDOW',{ -- metal window panel
								{
									'M_DOORWINDOW' -- metal frontage
								}
							}
						},
						{
							'M_DOOR_H',{ -- metal doorway
								{
									'M_SDOOR' -- small metal door
								}
							}
						},
						{
							'M_GDOOR' -- metal power door
						}
					}
				},
				{
					'M_ROOF',{ -- metal roof
						{
							'M_ROOF_M' -- metal roof panel
						},
						{
							'M_ROOF_C',{ -- metal roof corner
								{
									'M_ROOF_IC' -- metal inner roof corner
								}
							}
						},
						{
							'M_ARCH',{ -- metal arch
								{
									'M_ARCH_H' -- metal half arch
								}
							}
						}
					}
				}
			}
		}
	},
	{--	base parts: re-add basic wooden shelter parts tree
		root	= 'BaseParts',
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		title   = 'UI_BASIC_WOOD_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'W_WALL',{ -- wooden wall
				{
					'W_FLOOR',{ -- wooden floor panel
						{
							'W_GFLOOR' -- wooden-framed glass panel
						},
						{
							'W_RAMP',{ -- wooden ramp
								{
									'W_RAMP_H' -- wooden half ramp
								}
							}
						},
						{
							'W_FLOOR_Q' -- small wooden panel
						},
						{
							'W_TRIFLOOR',{ -- wooden triangle
								{
									'W_TRIFLOOR_Q' -- small wooden triangle
								}
							}
						}
					}
				},
				{
					'W_WALL_H',{ -- thin wooden wall
						{
							'W_WALLDIAGONAL' -- sloping wooden panel
						},
						{
							'W_WALL_Q',{ -- small wooden wall
								{
									'W_WALL_Q_H' -- short wooden wall
								}
							}
						}
					}
				},
				{
					'W_DOOR',{ -- wooden door frame
						{
							'W_WALL_WINDOW',{ -- wooden window panel
								{
									'W_DOORWINDOW' -- wooden frontage
								}
							}
						},
						{
							'W_DOOR_H',{ -- wooden doorway
								{
									'W_SDOOR' -- small wooden door
								}
							}
						},
						{
							'W_GDOOR' -- wooden power door
						}
					}
				},
				{
					'W_ROOF',{ -- wooden roof
						{
							'W_ROOF_M' -- wooden roof panel
						},
						{
							'W_ROOF_C',{ -- wooden roof corner
								{
									'W_ROOF_IC' -- wooden inner roof corner
								}
							}
						},
						{
							'W_ARCH',{ -- wooden arch
								{
									'W_ARCH_H' -- wooden half arch
								}
							}
						}
					}
				}
			}
		}
	}
}

---	MXML 2 LUA ... by lMonk ... version: 1.0.01
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate unrelated (instead of nested) mxml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end
---------------------------------------------------------------------------------

-- add the meta for a proper e2l UnlockableItemTree
local function BuildTree(node)
	local function traverse(tree)
		local T = {
			meta = {name='Children', value='GcUnlockableItemTreeNode'},
			Unlockable = tree[1]
		}
		if tree[2] then
			T.Children = { meta = {name='Children'} }
			for _,t in ipairs(tree[2]) do
				T.Children[#T.Children+1] = traverse(t)
			end
		end
		return T
	end
	local e2l = traverse(node.tree)
	if node.cost then e2l.meta.name = 'Root' end
	return e2l
end

local function AddTreeToChangeTable(node)
	if node.cost then
	--- full tree addition ---
		local tree_root = {
			meta	= {name='Trees', value='GcUnlockableItemTree'},
			Title		= node.title or node.rmtree,
			CostTypeID	= node.cost,
			Root		= BuildTree(node)
		}
		if node.after then
			return {
				SKW			= {node.root, 'GcUnlockableItemTrees', 'Title', node.parent, 'Title', node.after},
				ADD_OPTION	= 'AddAfterSection',
				ADD			= ToMxml(tree_root)
			}
		else
			return {
				SKW			= {node.root, 'GcUnlockableItemTrees', 'Title', node.parent},
				PKW			= 'Trees',
				ADD_OPTION	= node.toend and 'AddEndSection' or nil,
				ADD			= ToMxml(tree_root)
			}
		end
	else
	--- regular node ---
		if node.after then
			return  {
				SKW			= {node.root, 'GcUnlockableItemTrees', 'Unlockable', node.parent, 'Unlockable', node.after},
				ADD_OPTION	= 'AddAfterSection',
				ADD			= ToMxml(BuildTree(node))
			}
		else
			return  {
				SKW			= {node.root, 'GcUnlockableItemTrees', 'Unlockable', node.parent},
				PKW			= 'Children',
				ADD_OPTION	= node.toend and 'AddEndSection' or nil,
				CREATE_HOS	= not node.toend,
				ADD			= ToMxml(BuildTree(node))
			}
		end
	end
end

local mx_ct = {}
local rem = #mx_ct + 1
mx_ct[rem] = {SKW={}, REMOVE='Section'}

-- process changes/additions to all trees
for _,node in ipairs(unlockable_items) do
	-- do all REMOVEs before adding
	if node.rmtree then
		mx_ct[rem].SKW[#mx_ct[rem].SKW + 1] = {node.root, 'GcUnlockableItemTrees', 'Title', node.parent, 'Title', node.rmtree}
	end
	mx_ct[#mx_ct+1] = AddTreeToChangeTable(node)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Construction Unit Update.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.71',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		MXML_CHANGE_TABLE	= mx_ct
	}
}}}}