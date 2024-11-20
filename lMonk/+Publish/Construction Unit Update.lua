--------------------------------------------------------------------------------
local mod_desc = [[
  Add more items to the construction unit item trees - make it a bit more useful  
]]------------------------------------------------------------------------------

local unlockable_items = {
	{--	construction unit: (replace tree) tech
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_TECH_SUB',
		cost	= 'SALVAGE',
		tree	= {
			'BUILDSAVE', -- save point
			{
				{
					'BASE_FLAG', -- base computer
					{
						{
							'NPCBUILDERTERM', -- construction terminal
							{
								{
									'NPCSCIENCETERM', -- science terminal
									{
										{'NPCFARMTERM'} -- agricultural terminal
									}
								},
								{
									'NPCWEAPONTERM', -- weapons terminal
									{
										{'NPCVEHICLETERM'} -- exocraft terminal
									}
								}
							}
						},
						{
							'U_POWERLINE', -- electrical wiring
							{
								{
									'U_SOLAR_S', -- solar panel
									{
										{'U_BATTERY_S'} -- battery
									}
								},
								{
									'U_BIOGENERATOR' -- biofuel reactor
								}
							}
						},
						{
							'TELEPORTER', -- base teleport module
							{
								{
									'BUILDLANDINGPAD', -- landing pad
									{
										{'BUILDTERMINAL'} -- galactic trade terminal
									}
								}
							}
						},
						{
							'U_PIPELINE', -- supply pipe
							{
								{
									'U_SILO_S', -- supply depot
									{
										{'U_EXTRACTOR_S'}, -- mineral extractor
										{'U_GASEXTRACTOR'} -- gas extractor
									}
								}
							}
						}
					}
				},
				{
					'BUILDBEACON', -- save beacon
					{
						{
							'BUILDSIGNAL', -- signal booster
							{
								{'S9_SHIPTREE'} -- utopia ship station
							}
						}
					}
				},
				{
					'BUILD_REFINER1', -- portable refiner
					{
						{'COOKER'}, -- nutrient processor
						{'BUILD_REFINER2'} -- medium refiner
					}
				},
				{
					'SMALLLIGHT', -- lantern
					{
						{
							'BUILDLIGHT3', -- capped standing light
							{
								{'S_HANGLAMP3'} -- splayed hanging lamp
							}
						}
					}
				},
				{
					'BUILDHARVESTER', -- autonomous mining unit
					{
						{
							'BUILDGASHARVEST', -- atmosphere harvester
							{
								{'O2_HARVESTER'} -- oxygen harvester
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (add tree) factory products
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		title   = 'UI_PRODUCT_TREE_CRAFT',
		cost	= 'FACTORY',
		toend	= true,
		tree	= {
			'AM_HOUSING', -- antimatter housing
			{
				{
					'CASING', -- metal plating
					{
						{
							'NANOTUBES', -- carbon nanotubes
							{
								{'HYDRALIC'} -- hydraulic wiring
							}
						},
						{
							'MICROCHIP', -- microprocessor
							{
								{'COMPUTER'} -- quantum computer
							}
						},
						{
							'CARBON_SEAL', -- hermetic seal
							{
								{'BIO'} -- amino chamber
							}
						},
						{
							'MIRROR', -- solar mirror
							{
								{'MAGNET'} -- magnetic resonator
							}
						},
					}
				},
				{
					'JELLY', -- di-hydrogen jelly
					{
						{'PRODFUEL2'} -- life support gel
					}
				},
				{
					'ANTIMATTER', -- antimatter
					{
						{
							'HYPERFUEL1', -- warp cell
							{
								{'HYPERFUEL2'} -- warp hypercore
							}
						}
					}
				},
				{
					'POWERCELL', -- ion battery
					{
						{'GRENFUEL1'}, -- unstable plasma
						{'SHIPCHARGE'} -- starshield battery
					}
				},
				{
					'LAUNCHFUEL', -- starship launch fuel
					{
						{'SUBFUEL'} -- hydrothermal fuel cell
					}
				},
				{
					'ACCESS1', -- atlaspass v1
					{
						{
							'ACCESS2', -- atlaspass v2
							{
								{'ACCESS3'} -- atlaspass v3
							}
						}
					}
				},
				{
					'TECH_COMP', -- wiring loom
					{
						{
							'POI_LOCATOR', -- anomaly detector
							{
								{'RAMMOULD5'}, -- (custom) rampant mold
								{'ULTRAPRODX40'} -- (custom) fused stasis enabler
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (replace tree) timber base parts
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_TIMBER_SUB',
		toend	= true,
		cost	= 'SALVAGE',
		tree	= {
			'T_WALL', -- timber wall
			{
				{
					'T_FLOOR', -- timber floor panel
					{
						{
							'T_GFLOOR', -- timber-framed glass panel
							{
								{'T_FLOOR_Q'} -- small timber panel
							}
						},
						{
							'T_RAMP', -- timber ramp
							{
								{
									'T_RAMP_H', -- timber half ramp
									{
										{'T_RAMP_Q_TOP'} -- timber half ramp platform
									}
								}
							}
						},
						{
							'T_TRIFLOOR', -- timber triangle
							{
								{
									'T_TRIFLOOR_Q', -- small timber triangle
									{
										{'T_WALLDIAGONAL'} -- sloping timber panel
									}
								}
							}
						}
					}
				},
				{
					'T_WALL_H', -- thin timber wall
					{
						{
							'T_WALL_Q', -- small timber wall a
							{
								{'T_WALL_Q1'} -- small timber wall b
							}
						},
						{
							'T_WALL_Q_H', -- short timber wall a
							{
								{'T_WALL_Q_H1'} -- short timber wall b
							}
						}
					}
				},
				{
					'T_CHEV_WALL', -- extruded timber wall a
					{
						{
							'T_CHEV_DOOR', -- extruded timber-glass door
							{
								{'T_CHEV_WALL_H_C'} -- extruded timber wall cap
							}
						},
						{
							'T_CHEV_WIN0', -- extruded timber wall b
							{
								{
									'T_CHEV_WIN1', -- extruded timber large window
									{
										{'T_CHEV_WIN2'} -- extruded timber small window
									}
								}
							}
						}
					}
				},
				{
					'T_DOOR_H', -- timber doorway
					{
						{
							'T_DOORWINDOW', -- timber frontage
							{
								{
									'T_WALL_WIN1', -- horizontal timber windows
									{
										{'T_WALL_WIN2'}, -- large timber double window
										{'T_WALL_WIN3'} -- large timber triple window
									}
								},
								{
									'T_WALL_WINDOW' -- twin timber windows
								}
							}
						},
						{
							'T_DOOR', -- timber rectangular door
							{
								{
									'T_DOOR1', -- timber angled door
									{
										{'T_GDOOR'} -- timber power door
									}
								}
							}
						},
						{
							'T_ARCH', -- timber arch
							{
								{'T_ARCH_H'} -- timber half arch
							}
						}
					}
				},
				{
					'T_ROOF6', -- flat timber roof
					{
						{
							'T_ROOF_M', -- timber roof panel
							{
								{
									'T_ROOF_M_Q', -- sloping timber roof panel
									{
										{'T_ROOF_E_Q'} -- sloping timber roof gable
									}
								}
							}
						},
						{
							'T_ROOF0', -- rounded flat timber-glass roof
							{
								{
									'T_ROOF7', -- rounded timber roof
									{
										{'T_ROOF_M_CAP'} -- timber roof cap
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
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_FIBREGLASS_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'F_WALL', -- alloy wall
			{
				{
					'F_FLOOR', -- alloy floor panel
					{
						{
							'F_GFLOOR', -- alloy-framed glass panel
							{
								{'F_FLOOR_Q'} -- small alloy panel
							}
						},
						{
							'F_RAMP', -- alloy ramp
							{
								{
									'F_RAMP_H', -- alloy half ramp
									{
										{'F_RAMP_Q_TOP'} -- alloy half ramp platform
									}
								}
							}
						},
						{
							'F_TRIFLOOR', -- alloy triangle
							{
								{
									'F_TRIFLOOR_Q', -- small alloy triangle
									{
										{'F_WALLDIAGONAL'} -- sloping alloy panel
									}
								}
							}
						}
					}
				},
				{
					'F_WALL_H', -- thin alloy wall
					{
						{
							'F_WALL_Q', -- small alloy wall a
							{
								{'F_WALL_Q1'} -- small alloy wall b
							}
						},
						{
							'F_WALL_Q_H', -- short alloy wall a
							{
								{'F_WALL_Q_H1'} -- short alloy wall b
							}
						}
					}
				},
				{
					'F_CHEV_WALL', -- extruded alloy wall
					{
						{
							'F_CHEV_DOOR', -- extruded alloy door
							{
								{'F_CHEV_WALL_H_C'} -- extruded alloy wall cap
							}
						},
						{
							'F_CHEV_WIN0', -- extruded alloy window
							{
								{
									'F_CHEV_WIN1', -- extruded alloy horizontal window
									{
										{'F_CHEV_WIN2'} -- extruded alloy small window
									}
								}
							}
						}
					}
				},
				{
					'F_DOOR_H', -- alloy doorway
					{
						{
							'F_DOORWINDOW', -- alloy frontage
							{
								{
									'F_WALL_WIN1', -- irregular alloy window
									{
										{'F_WALL_WIN2'}, -- twin alloy windows
										{'F_WALL_WIN3'} -- horizontal alloy window
									}
								},
								{
									'F_WALL_WINDOW' -- alloy window
								}
							}
						},
						{
							'F_DOOR', -- alloy door a
							{
								{
									'F_DOOR1', -- alloy door b
									{
										{'F_GDOOR'} -- alloy power door
									}
								}
							}
						},
						{
							'F_ARCH', -- alloy arch
							{
								{'F_ARCH_H'} -- alloy half arch
							}
						}
					}
				},
				{
					'F_ROOF7', -- flat alloy roof
					{
						{
							'F_ROOF_M', -- alloy roof panel
							{
								{
									'F_ROOF_M_Q', -- sloping alloy roof panel
									{
										{'F_ROOF_E_Q'} -- sloping alloy roof gable
									}
								}
							}
						},
						{
							'F_ROOF5', -- angled flat alloy roof
							{
								{
									'F_ROOF3', -- top-lit flat alloy roof
									{
										{'F_ROOF_M_CAP'} -- alloy roof cap
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
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_STONE_SUB',
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'S_WALL', -- stone wall
			{
				{
					'S_FLOOR', -- stone floor panel
					{
						{
							'S_GFLOOR', -- stone floor grille
							{
								{'S_FLOOR_Q'} -- small stone panel
							}
						},
						{
							'S_RAMP', -- stone ramp
							{
								{
									'S_RAMP_H', -- stone half ramp
									{
										{'S_RAMP_Q_TOP'} -- stone half ramp platform
									}
								}
							}
						},
						{
							'S_TRIFLOOR', -- stone triangle
							{
								{
									'S_TRIFLOOR_Q', -- small stone triangle
									{
										{'S_WALLDIAGONAL'} -- sloping stone panel
									}
								}
							}
						}
					}
				},
				{
					'S_WALL_H', -- thin stone wall
					{
						{
							'S_WALL_Q', -- small stone wall a
							{
								{'S_WALL_Q1'} -- small stone wall b
							}
						},
						{
							'S_WALL_Q_H', -- short stone wall a
							{
								{'S_WALL_Q_H1'} -- short stone wall b
							}
						}
					}
				},
				{
					'S_CHEV_WALL', -- extruded stone wall
					{
						{
							'S_CHEV_DOOR', -- extruded stone door
							{
								{'S_CHEV_WALL_H_C'} -- extruded stone wall cap
							}
						},
						{
							'S_CHEV_WIN0', -- extruded stone grille a
							{
								{
									'S_CHEV_WIN1', -- extruded stone circle window
									{
										{'S_CHEV_WIN2'} -- extruded stone grille b
									}
								}
							}
						}
					}
				},
				{
					'S_DOOR_H', -- stone doorway
					{
						{
							'S_DOORWINDOW', -- stone frontage
							{
								{
									'S_WALL_WIN1', -- stone grille window
									{
										{'S_WALL_WIN2'}, -- stone large window
										{'S_WALL_WIN3'} -- stone circle window
									}
								},
								{
									'S_WALL_WINDOW' -- stone slit window
								}
							}
						},
						{
							'S_DOOR', -- stone arch door
							{
								{
									'S_DOOR1', -- stone rectangular door
									{
										{'S_GDOOR'} -- stone power door
									}
								}
							}
						},
						{
							'S_ARCH', -- stone arch
							{
								{'S_ARCH_H'} -- stone half arch
							}
						}
					}
				},
				{
					'S_ROOF3', -- flat stone roof
					{
						{
							'S_ROOF_M', -- stone roof panel
							{
								{
									'S_ROOF_M_Q', -- sloping stone roof panel
									{
										{'S_ROOF_E_Q'} -- sloping stone roof gable
									}
								}
							}
						},
						{
							'S_ROOF2', -- angled flat stone roof
							{
								{
									'S_ROOF0', -- rounded flat stone roof
									{
										{'S_ROOF_M_CAP'} -- stone roof cap
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
--------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.84.2) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
---	Helper functions for color class, vector class and string arrays
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
local function ToExml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
	end
	--	get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	local function len2(t)
		i=0; for _ in pairs(t) do i=i+1 end; return i
	end
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'meta' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.meta then
					local att, val = cls['meta'][1], cls['meta'][2]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val, '">'})
					else
						exml:add({'name="', att, '" value="', val, '">'})
					end
					exml:add({exml_r(cls), '</Property>'})
				else
					-- add a regular property
					if type(cls) == 'table' then
						key, cls = next(cls)
					end
					if key == 'name' or key == 'value' then
						exml:add({key, '="', bool(cls), '"/>'})
					else
						exml:add({'name="', key, '" value="', bool(cls), '"/>'})
					end
				end
			end
		end
		return table.concat(exml)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].meta then
		return exml_r(class)
	elseif class.meta and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end
--------------------------------------------------------------------------------

-- add the meta for a proper e2l UnlockableItemTree
local function BuildTree(node)
	local function traverse(tree)
		local T = {
			meta = {'value', 'GcUnlockableItemTreeNode.xml'},
			Unlockable = tree[1]
		}
		if tree[2] then
			T.Children = { meta = {'name', 'Children'} }
			for _,t in ipairs(tree[2]) do
				T.Children[#T.Children+1] = traverse(t)
			end
		end
		return T
	end
	local e2l = traverse(node.tree)
	if node.cost then e2l.meta[1] = 'Root' end
	return e2l
end

local function AddTreeToChangeTable(node)
	if node.cost then
	--- full tree addition ---
		local tree_root = {
			meta	= {'value', 'GcUnlockableItemTree.xml'},
			Title		= node.title or node.rmtree,
			CostTypeID	= node.cost,
			ItemTree	= BuildTree(node)
		}
		if node.after then
			return {
				SPECIAL_KEY_WORDS	= {'Title', node.parent, 'Title', node.after},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml(tree_root)
			}
		else
			return {
				SPECIAL_KEY_WORDS	= {'Title', node.parent},
				PRECEDING_KEY_WORDS	= 'Trees',
				ADD_OPTION			= node.toend and 'AddEndSection' or nil,
				ADD					= ToExml(tree_root)
			}
		end
	else
	--- regular node ---
		if node.after then
			return  {
				SPECIAL_KEY_WORDS	= {'Unlockable', node.parent, 'Unlockable', node.after},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml(BuildTree(node))
			}
		else
			return  {
				SPECIAL_KEY_WORDS	= {'Unlockable', node.parent},
				PRECEDING_KEY_WORDS = 'Children',
				SECTION_ACTIVE		= -1,
				ADD_OPTION			= node.toend and 'AddEndSection' or nil,
				CREATE_HOS			= not node.toend,
				ADD					= ToExml(BuildTree(node))
			}
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Construction Unit Update.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.27',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',	
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = { { SKW={}, REMOVE='Section' } }

				for _,node in ipairs(unlockable_items) do
					if not node.unused then
						-- do all REMOVEs before adding
						if node.rmnode then
							T[1].SKW[#T[1].SKW + 1] = {'Unlockable', node.rmnode}
						elseif node.rmtree then
							T[1].SKW[#T[1].SKW + 1] = {'Title', node.parent, 'Title', node.rmtree}
						end
						T[#T+1] = AddTreeToChangeTable(node)
					end
				end
				return T
			end
		)()
	}
}}}}